/*
 * 显式空闲链表+首次适配+地址顺序维护
 * 实现init、malloc、free、realloc、coalesce，同时增加了函数extend_heap、
 * find_fit、place辅助实现功能
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*****************
 * My information
 *****************/
team_t team = {
	/* Team name */
	"10214602404",
	/* First member's full name */
	"LiFang",
	/* First member's email address */
	"10214602404@ecnu.edu.cn",
	/* Second member's full name (leave blank if none) */
	"",
	/* Second member's email address (leave blank if none) */
	""};


/* 定义一些后续链表操作需要用到的宏和常数 */
#define WSIZE 4				/* 字为四字节（也等于header/footer的长度） */
#define DSIZE 8				/* 双字为八字节 */
#define CHUNKSIZE (1 << 12) /* 每次拓展大小为4096字节的堆 */

/* 定义取最大值函数 */
#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* 把块大小size和是否已分配alloc(分配为1,空闲为0)位或，用来构成头部和脚部 */
#define PACK(size, alloc) ((size) | (alloc))

/* 在地址n处获取四字节值 */
#define GET(n) (*(unsigned int *)(n))
/* 在地址n处写入四字节值val */
#define PUT(n, val) (*(unsigned int *)(n) = val)

/* 在地址n处获取指针值 */
#define GET_PTR_VAL(n) (*(unsigned long *)(n))
/* 在地址n处设置ptr值的指针 */
#define SET_PTR(n, ptr) (*(unsigned long *)(n) = (unsigned long)(ptr))

/* 在地址n处获取pred和succ指针（succ要加上八字节） */
#define GET_PRED(n) ((char *)(*(unsigned long *)(n)))
#define GET_SUCC(n) ((char *)(*(unsigned long *)(n + DSIZE)))
/* 在地址n处设置值为ptr的pred和succ指针（succ要加上八字节） */
#define SET_PRED(n, ptr) (SET_PTR((char *)(n), ptr))
#define SET_SUCC(n, ptr) (SET_PTR(((char *)(n) + (DSIZE)), ptr))

/* 从地址n处获取块大小（与三位二进制0位与得到头尾部储存的块大小信息）*/
#define GET_SIZE(n) (GET(n) & ~0x7)
/* 从地址n处获取该块分配情况(与1位与：0未分配，1已分配) */
#define GET_ALLOC(n) (GET(n) & 0x1)

/* 假设给定块指针bp，计算头部和脚部地址 */
#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* 假设给定块指针bp，计算上一个和下一个块的地址 */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))

/* 空闲链表的表头表尾 */
static char *free_list_headp;
static char *free_list_tailp;

/* 声明所有需要的函数 */
int mm_init(void);
void *mm_malloc(size_t size);
void mm_free(void *ptr);
void *mm_realloc(void *ptr, size_t size);
static void *coalesce(void *ptr);
static void *extend_heap(size_t words);
static void *find_fit(size_t asize);
static void place(void *bp, size_t asize);

/* debug调试预处理及函数 */
//#define DEBUG
#define VERBOSE 0
#ifdef DEBUG
#define VERBOSE 1
#endif

static void mm_check(int verbose, const char* func);
static void mm_checkblock(int verbose, const char* func, void* bp);
static int mm_checkheap(int verbose, const char* func);

/* init实现堆初始化：如果成功返回0，否则返回-1 */
int mm_init(void)
{
	/* 利用mem_sbrk开辟一个大小为40字节的初始空堆，如果开辟出错则返回-1 */
	if ((free_list_headp = mem_sbrk(4 * WSIZE + 3 * DSIZE)) == (void *)-1)
	{
		return -1;
	}
	PUT(free_list_headp, PACK(0, 0));				 /* 对齐填充 */
	PUT(free_list_headp + WSIZE, PACK(24, 1));		 /* 序言块头部（大小24，已分配） */
	free_list_headp += DSIZE;						 /* 空闲链表头节点指针ptr */
	free_list_tailp = NEXT_BLKP(free_list_headp);	 /* 空闲链表尾节点指针ptr */
	SET_PRED(free_list_headp, NULL);				 /* 设置序言块pred指针为NULL */
	SET_SUCC(free_list_headp, free_list_tailp);		 /* 设置序言块succ指针为结尾块 */
	PUT(free_list_headp + (2 * DSIZE), PACK(24, 1)); /* 序言块脚部（大小24，已分配） */

	PUT(HDRP(free_list_tailp), PACK(0, 1));		/* 结尾块头部（大小0，已分配） */
	SET_PRED(free_list_tailp, free_list_headp); /* 设置结尾块pred指向序言块 */
	PUT(free_list_tailp + DSIZE, PACK(0, 0));	/* 对齐填充 */
	
	/* 扩充堆，失败返回-1 */
	if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
	{
		return -1;
	}
	//mm_check(VERBOSE, __func__);
	return 0;
}

/* malloc实现分配：成功则返回已分配块的有效载荷的起始地址，否则返回NULL */
void *mm_malloc(size_t size)
{
	size_t asize;	        /* 调整块大小 */
	size_t extendsize;      /* 如果不满足fit需要扩大堆的大小 */
	char *bp;

	/* 大小为0的无意义请求 */
	if (size == 0)
		return NULL;
	
	/* 如果大小小于16字节，就用最小块大小24字节 */
	if (size <= 2 * DSIZE)
	{
		asize = 3 * DSIZE;
	}
	/* 否则调整块大小为向上最接近8的倍数 */
	else
	{
		asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
	}

	/* 搜索合适的不为NULL的空闲块放置 */
	if ((bp = find_fit(asize)) != NULL)
	{
		place(bp, asize);
		//mm_check(VERBOSE, __func__);
		return bp;
	}
	/* 都不合适，开辟所需大小和CHUNKSIZE二者更大的存储 */
	extendsize = MAX(asize, CHUNKSIZE);
	if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
		return NULL;                      /* 开辟不成功，返回NULL */
	
	place(bp, asize);                     /* 开辟后把要求大小的块放置并返回有效载荷的起始位置 */
	//mm_check(VERBOSE, __func__);
	return bp;
}

/* free实现释放块，利用地址顺序查找加首次适配查找维护空闲列表 */
void mm_free(void *ptr)
{
	char *p;
	size_t size = GET_SIZE(HDRP(ptr));      /* 获取当前块的头部大小 */

	for (p = GET_SUCC(free_list_headp);; p = GET_SUCC(p)) /* 按照地址顺序维护空闲链表 */
	{
		if (ptr < (void *)p)                /* 找到按照地址顺序位于被释放块后第一个空闲块位置 */
		{
			PUT(HDRP(ptr), PACK(size, 0));  /* 设置被释放块头脚部，并且标记未分配0 */
			PUT(FTRP(ptr), PACK(size, 0));
			SET_SUCC(ptr, p);               /* 设置被释放块的succ为找到空闲块 */
			SET_PRED(ptr, GET_PRED(p));     /* 设置被释放块的pred为找到空闲块的上一个空闲块 */
			SET_SUCC(GET_PRED(p), ptr);     /* 设置找到空闲块的上一个空闲块的succ为被释放块 */
			SET_PRED(p, ptr);               /* 设置找到空闲块的pred为被释放块 */
			break;
		}
	}
	coalesce(ptr);                          /* 合并被释放块 */
	//mm_check(VERBOSE, __func__);
}

/* realloc实现重新分配：根据pdf可知分为三种情况，情况三又分为3case，返回已分配块地址 */
void *mm_realloc(void *ptr, size_t size)
{
	size_t bsize;          /* 块大小 */
	size_t esize;          /* 拓展堆大小 */
	size_t asize;          /* 调整后块大小 */
	size_t ssize;          /* 当前块大小+下块大小 */
	void *oldptr = ptr;    /* 旧块地址设置成被操作块地址 */
	void *newptr;          /* 搜索适合的新块地址 */
	void *nextptr;         /* 下一块地址 */
	void *pred;
	void *succ;
	char *p;

	/* 情况一：ptr等于NULL，等价于调用mm_malloc(size) */
	if (ptr == NULL)
	{
		return mm_malloc(size);
	}
	/* 情况二：size等于0，等价于调用mm_free(ptr) */
	else if (size == 0)
	{
		mm_free(ptr);
		return NULL;
	}
	/* 情况三：需要重新分配，就先调整块大小，再分3case */
	if (size <= 2 * DSIZE)
	{
		asize = 3 * DSIZE;
	}
	else
	{
		asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
	}

	bsize = GET_SIZE(HDRP(ptr));  /* 获取指定快大小 */

	/* 情况三：case1:调整后大小等于块原本大小，无需操作 */
	if (asize == bsize)
	{
		//mm_check(VERBOSE, __func__);
		return ptr;
	}
	/* 情况三：case2:调整后大小小于块原本大小，去查二者差值满不满足分割 */
	else if (asize < bsize)
	{

		if (bsize - asize >= 3 * DSIZE)      /* 如果二者差值大于24字节 */
		{
			PUT(HDRP(ptr), PACK(asize, 1));  /* 更改当前块的头部和脚部（大小为调整后大小，已分配） */ 
			PUT(FTRP(ptr), PACK(asize, 1));

			nextptr = NEXT_BLKP(ptr);        /* 再更改剩余空闲块的头部和脚部（大小设置成二者差值，未分配） */
			PUT(HDRP(nextptr), PACK(bsize - asize, 0));
			PUT(FTRP(nextptr), PACK(bsize - asize, 0));
			for (p = GET_SUCC(free_list_headp);; p = GET_SUCC(p)) /* 再去空闲链表里去找合适的位置，把差值这块插进去 */
			{
				if (nextptr < (void *)p)      /* 还是采用地址顺序＋首次适配 */
				{
					SET_PRED(nextptr, GET_PRED(p));   /* 设置下一块的pred为找到空闲块的pred */
					SET_SUCC(nextptr, p);             /* 设置下一块的succ为空闲块 */
					SET_SUCC(GET_PRED(p), nextptr);   /* 设置找到空闲块pred的succ为下一块 */
					SET_PRED(p, nextptr);             /* 设置找到空闲块的pred为下一块 */
					break;
				}
			}
		}
		//mm_check(VERBOSE, __func__);
		return ptr;
	}
	/* 情况三：case3:调整后大小大于块大小，去查下一块 */
	else
	{
		
		nextptr = NEXT_BLKP(ptr);                /* 获取下一块地址 */
		ssize = GET_SIZE(HDRP(nextptr)) + bsize; /* 把当前块和下一块大小相加 */
		
		/* 如果下块刚好是空的并且相加后的大小满足调整大小，就更改空闲链表 */
		if (!GET_ALLOC(HDRP(nextptr)) && ssize >= asize)
		{
			pred = GET_PRED(nextptr);            /* 先保留下块的pred和succ */
			succ = GET_SUCC(nextptr);
			if (ssize - asize >= 3 * DSIZE)      /* 如果满足分割，就把剩下的空闲块插入空闲链表 */
			{
				PUT(HDRP(ptr), PACK(asize, 1));  /* 设置当前块头脚部，大小为调整大小，已分配 */
				PUT(FTRP(ptr), PACK(asize, 1));

				nextptr = NEXT_BLKP(ptr);        /* 再更改剩余空闲块的头部和脚部（大小设置成二者差值，未分配） */
				PUT(HDRP(nextptr), PACK(ssize - asize, 0));
				PUT(FTRP(nextptr), PACK(ssize - asize, 0));
				SET_PRED(nextptr, pred);         /* 把剩余空闲块插入空闲链表 */
				SET_SUCC(nextptr, succ);
				SET_SUCC(pred, nextptr);
				SET_PRED(succ, nextptr);
			}
			else                                 /* 不满足分割，直接更改块大小和分配情况，再把这块从空闲链表删除 */
			{
				PUT(HDRP(ptr), PACK(ssize, 1));
				PUT(FTRP(ptr), PACK(ssize, 1));
				SET_SUCC(pred, succ);
				SET_PRED(succ, pred);
			}
			//mm_check(VERBOSE, __func__);
			return ptr;
		}
		/* 如果下块是已分配的或者想加后大小不满足，就去搜索满足块 */
		else
		{
			newptr = find_fit(asize);
			/* 找不到合适新块就需要去拓展堆 */
			if (newptr == NULL)
			{
				esize = MAX(asize, CHUNKSIZE);  /* 拓展大小取调整应取大小和4096更大值 */
				if ((newptr = extend_heap(esize / WSIZE)) == NULL)
				{
					return NULL;
				}
			}

			/* 把这找到的合适块放入旧块（利用memcpy函数），释放旧块 */
			place(newptr, asize);
			memcpy(newptr, oldptr, bsize - 2 * WSIZE);
			mm_free(oldptr);
			//mm_check(VERBOSE, __func__);
			return newptr;
		}
	}
}

/* coalesce():合并空闲块，根据课本指出的四种情况进行，返回空闲块地址 */
static void *coalesce(void *ptr)
{
	size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(ptr)));  /* 获取被操作块上一块脚部的分配信息 */
	size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));  /* 获取被操作块下一块头部的分配信息 */
	size_t size = GET_SIZE(HDRP(ptr));                    /* 获取被操作块的大小 */

	void *prevptr = PREV_BLKP(ptr);    /* 获取当前被合并块的上下块 */
	void *nextptr = NEXT_BLKP(ptr);

	/* 情况一：上下块已分配，无需操作 */
	if (prev_alloc && next_alloc)                     
	{
		return ptr;
	}
	/* 情况二：上块已分配，下块空闲（合并该块和下块） */
	else if (prev_alloc && !next_alloc)
	{
		size += GET_SIZE(HDRP(nextptr));      /* 块大小增加为该块+下块 */
		SET_SUCC(ptr, GET_SUCC(nextptr));     /* 设置被操作块succ为下块succ */
		SET_PRED(GET_SUCC(nextptr), ptr);     /* 设置下块succ的pred为被操作块 */
		PUT(HDRP(ptr), PACK(size, 0));        /* 设置该块头部和下块脚部，包括块大小和分配情况 */
		PUT(FTRP(nextptr), PACK(size, 0));
	}
	/* 情况三：上块空闲，下块已分配（合并该块和上块） */
	else if (!prev_alloc && next_alloc)
	{
		size += GET_SIZE(FTRP(prevptr));      /* 块大小增加为该块+上块 */
		SET_SUCC(prevptr, GET_SUCC(ptr));     /* 设置上块succ为被操作块的succ */
		SET_PRED(GET_SUCC(ptr), prevptr);     /* 设置被操作块succ的pred为上块 */
		PUT(HDRP(prevptr), PACK(size, 0));    /* 设置该块脚部和上块头部，包括块大小和分配情况 */
		PUT(FTRP(ptr), PACK(size, 0));
		ptr = prevptr;                        /* 更新空闲块地址为上块地址 */
	}
	/* 情况四：上下块空闲（合并三块） */
	else if (!prev_alloc && !next_alloc)
	{
		size += GET_SIZE(HDRP(prevptr)) + GET_SIZE(FTRP(nextptr));      /* 块大小增加为该块+上块+下块 */
		SET_SUCC(prevptr, GET_SUCC(nextptr));  /* 设置上块succ为下块succ */ 
		SET_PRED(GET_SUCC(nextptr), prevptr);  /* 设置下块succ的pred为上块 */
		PUT(HDRP(prevptr), PACK(size, 0));     /* 设置上块头部和下块脚步，包括块大小和分配情况 */
		PUT(FTRP(nextptr), PACK(size, 0));
		ptr = prevptr;                         /* 更新空闲块地址为上块地址 */
	}
	return ptr;
}

/* extend_heap():拓展堆大小 */
static void *extend_heap(size_t words)
{
	char *bp;
	char *ptr;
	size_t size;

	/* 为了保持对齐，将拓展堆大小更改为请求大小向上舍入最接近的8字节倍数，再利用mem_sbrk请求空间 */
	size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
	if ((long)(bp = mem_sbrk(size)) == -1)
		return NULL;

	/* 初始化新分配块头部和脚部 */
	ptr = free_list_tailp;            /* 让ptr指向空闲链表尾节点 */
	PUT(HDRP(ptr), PACK(size, 0));	  /* 初始分配块的头部（大小和未分配） */
	PUT(FTRP(ptr), PACK(size, 0));	  /* 初分配块的脚部（大小和未分配） */
	free_list_tailp = NEXT_BLKP(ptr); /* 更新空闲链表尾节点指向分配块的下一块 */
	SET_SUCC(ptr, free_list_tailp);	  /* 更新分配块的succ为空闲链表尾节点 */

	/* 更新结尾块 */
	PUT(HDRP(free_list_tailp), PACK(0, 1));     /* 设置结尾块头部（大小为0，已分配） */
	SET_PRED(free_list_tailp, ptr);             /* 设置结尾块的pred为空闲块 */
	PUT(free_list_tailp + DSIZE, PACK(0, 0));   /* 对齐填充 */

	return coalesce(ptr);                       /* 返回合并结果 */
}

/* find_fit():先顺序遍历空闲链表，
然后采用首次适配，找到合适的第一个空闲块 */
static void *find_fit(size_t asize)
{
	void *address;
	/* 链表的遍历循环操作，不断访问后继，直至尾节点 */
	for (address = GET_SUCC(free_list_headp); address != free_list_tailp; address = GET_SUCC(address))
	{
		/* 找到空闲块大小大于等于所需放置大小时，返回块地址 */
		if (asize <= GET_SIZE(HDRP(address)))
			return address;
	}

	return NULL;
}

/* place():如果剩余部分大于24字节就分割
(先设置当前块的头尾部大小asize和已分配位，然后获取剩余部分块指针，
把原本空闲块指针删掉，加入分割剩余空闲块);否则不分割放置
(设置好头尾部大小size，然后删除这块空闲块) */
static void place(void *bp, size_t asize)
{
	size_t size = GET_SIZE(HDRP(bp));     /* 获取bp头部处块大小 */
	void *ptr;                            /* 用来承接地址的指针 */

	if (size - asize >= 3 * DSIZE)        /* 当剩余空闲块大小大于24字节时进行分割 */
	{
		PUT(HDRP(bp), PACK(asize, 1));    /* 给当前被分配块设置头尾部，并且标记已分配1 */
		PUT(FTRP(bp), PACK(asize, 1));

		ptr = NEXT_BLKP(bp);              /* 获取剩余部分块地址，把原本属于空闲块的已分配块去除 */
		SET_SUCC(ptr, GET_SUCC(bp));      /* 设置分割后空闲块的succ为被分配块的succ */
		SET_PRED(ptr, GET_PRED(bp));      /* 设置分割后空闲块的pred为被分配块的pred */
		SET_SUCC(GET_PRED(ptr), ptr);     /* 更新上一个空闲块的succ为分割后空闲块 */
		SET_PRED(GET_SUCC(ptr), ptr);     /* 更新下一个空闲块的pred为分割后空闲块 */

		PUT(HDRP(ptr), PACK(size - asize, 0));   /* 给分割后空闲块设置头尾部，并且标记已分配0 */
		PUT(FTRP(ptr), PACK(size - asize, 0));
	}
	else
	{
		PUT(HDRP(bp), PACK(size, 1));     /* 给当前被分配块设置头尾部，并且标记已分配1 */
		PUT(FTRP(bp), PACK(size, 1));

		SET_SUCC(GET_PRED(bp), GET_SUCC(bp));    /* 更新上一个空闲块的succ为当前被分配块的succ */
		SET_PRED(GET_SUCC(bp), GET_PRED(bp));    /* 更新下一个空闲块的pred为当前被分配块的pred */
	}
}

/* mm_check用来打印检查堆块头脚部是否正确、载荷区是否双字对齐、
*序言块和结尾块信息是否正确，以及堆栈是否连续等。
*VERBOSE=1时，进行debug并打印错误以及详细信息。
*每次check先检查heap，再检查block
*/
static void mm_check(int verbose, const char* func)
{
    if (!verbose)  return;

	/* 只有当序言块和结尾块都正确时，才去遍历每一块检查 */
    if (mm_checkheap(verbose, func)) {
        void *curbp;
        for (curbp = free_list_headp; GET_SIZE(HDRP(curbp)) > 0; curbp = NEXT_BLKP(curbp)) {
            mm_checkblock(verbose, func, curbp);
            }
        }
}

/* 检查块：头脚部是否匹配相同、有效载荷区域是否对齐、每块大小是否双字对齐。如果错误会打印错误信息 */
static void mm_checkblock(int verbose, const char* func, void* bp)
{
    if (!verbose) return;
    if (GET(HDRP(bp)) != GET(FTRP(bp))) {
        printf("\n------- %s -------\n" ,func);
        printf("错误：%p头脚部不匹配\n", bp);
        printf("头部大小为： %d, 脚部大小为： %d\n", GET_SIZE(HDRP(bp)), GET_SIZE(FTRP(bp)));
        printf("头部分配情况为： %d, 脚部分配情况为： %d\n", GET_ALLOC(HDRP(bp)), GET_ALLOC(FTRP(bp)));
        printf("下块头部分配情况为： %d, 下块脚部分配情况为： %d\n", GET_ALLOC(HDRP(NEXT_BLKP(bp))), GET_ALLOC(FTRP(NEXT_BLKP(bp))));
        printf("----------------------------------------\n");
    }
    if (((int)bp) % DSIZE != 0) 
        printf("错误：%p的有效载荷区域未对齐。\n", bp);
    if (GET_SIZE(HDRP(bp)) % DSIZE != 0)
        printf("错误：%p载荷大小不是双字对齐的。\n", bp);
}

/* 检查堆的序言块和结尾块，包括头脚部信息以及匹配位置。如果错误会打印错误信息 */
static int mm_checkheap(int verbose, const char* func)
{
    char *endp = free_list_tailp;
	char *curbp;

    /* 检查序言块：如果序言块头部不等于脚部，发生错误；如果序言块头部不为24/1，发生错误 */
    if (GET(HDRP(free_list_headp)) != GET(FTRP(free_list_headp))) {
        printf("错误：序言块没有相同大小/分配位。\n");
        return 0;
    }
    if (GET_ALLOC(HDRP(free_list_headp)) != 1 || GET_SIZE(HDRP(free_list_headp)) != 24) {
        printf("错误：序言块没有特殊大小/分配位。\n");
        return 0;
    }

    /* 检查结尾块：如果遍历空闲链表直至大小为0块，这个块不是结尾块，发生错误；如果结尾块头部不是0/1，发生错误 */
    for (curbp = free_list_headp; GET_SIZE(HDRP(curbp)) > 0; curbp = NEXT_BLKP(curbp)) {}
    if (curbp != endp) {
        printf("错误：大小为0的块不是结尾块\n");
        printf("大小为 %d, 地址为 %p , 分配位为 %d\n", GET_SIZE(HDRP(curbp)), curbp, GET_ALLOC(HDRP(curbp)));
        return 0;
    }
    if (GET_ALLOC(HDRP(endp)) != 1 || GET_SIZE(HDRP(endp)) != 0) {
        printf("错误：结尾块不在特定位置。\n");
        return 0;
    }
    return 1;
}