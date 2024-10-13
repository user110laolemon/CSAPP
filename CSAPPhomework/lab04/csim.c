// Lifang 10214602404  hw04
#include "cachelab.h"
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <getopt.h>

/*
int getopt(int argc, char * const argv[], const char *optstring);
1.argc argv are same as those in main()
2.optstring is used to receive the comment-line parameters
optarg：当前选项对应的参数值。
optind：argv里下一个元素的索引。
opterr：默认情况下，opterr有一个非零值，opterr设置为零，那么getopt()不会打印错误消息。
optopt：表示错误选项字符。
*/
extern char *optarg;
extern int optind, opterr, optopt;

long HexadecimalToDecimal(char *s); // 十六进制字符转成十进制整数的函数

struct Row
{
    int valid_bit; // 有效位
    int tag_bit;   // 标记位
};

struct Node
{
    struct Node *pre;  // 前趋
    struct Node *next; // 后继
    int tag_node;      // 标记
};

struct LRURow
{
    struct Node *head; // 链表头
    struct Row *ERow;  // 组
};

int main(int argc, char *argv[])
{
    int hit_count = 0, miss_count = 0, eviction_count = 0; // 输出参数初始化

    int opt;
    int s = 0;       // S=2^s
    int E = 0;       // 行
    int b = 0;       // B=2^b
    int verbose = 0; // 是否-v

    char *file_name;
    FILE *file;
    // -h会出现的信息
    char help[] = "Usage: %s [-hv] -s <s> -E <E> -b <b> -t <tracefile>\n"
                  "• -h: Optional help flag that prints usage info\n"
                  "• -v: Optional verbose flag that displays trace info\n"
                  "• -s <s>: Number of set index bits (S = 2s is the number of sets)\n"
                  "• -E <E>: Associativity (number of lines per set)\n"
                  "• -b <b>: Number of block bits (B = 2b is the block size)\n"
                  "• -t <tracefile>: Name of the valgrind trace to replay\n"
                  "Examples:\n"
                  "linux>     %s  -s 4 -E 1 -b 4 -t traces/yi.trace\n"
                  "linux>     %s  -v -s 8 -E 2 -b 4 -t traces/yi.trace\n";

    // "sEbt:hv"中-s、-E、-b、-t需接受储存，-h和-v返回特定信息
    while ((opt = getopt(argc, argv, "sEbt:hv")) != -1)
    {
        switch (opt)
        {
        case 'h':
            fprintf(stderr, help, argv[0], argv[0], argv[0]); // argv[0]命令行参数第一个值就是运行的可执行文件名
            break;
        case 'v':
            verbose = 1;
            break;
        case 's':
            s = atoi(argv[optind]); // atoi字符转十进制
            break;
        case 'E':
            E = atoi(argv[optind]);
            break;

        case 'b':
            b = atoi(argv[optind]);
            break;

        case 't':
            file_name = argv[optind - 1]; // 获取文件名

            file = fopen(file_name, "r"); // 打开文件
            if (file == NULL)
            {
                perror(file_name);
                exit(EXIT_FAILURE); // 1
            }
            break;

        default:
            fprintf(stderr, help, argv[0], argv[0], argv[0]);
            exit(EXIT_FAILURE);
        }
    }

    // 模拟cache初始化.S=2^s组,1<<s;B=2^b字节,1<<b
    int S = 1 << s;
    // int block_size=1<<b;    // 数据块的大小

    struct LRURow cache_line[S];
    for (int i = 0; i < S; i++)
    {
        cache_line[i].head = (struct Node *)malloc(sizeof(struct Node));
        cache_line[i].head->tag_node = -1;
        cache_line[i].ERow = malloc(sizeof(struct Row) * E);
        for (int j = 0; j < E; j++)
        {
            cache_line[i].ERow[j].valid_bit = 0;
            cache_line[i].ERow[j].tag_bit = -1;
        }
    }

    // int mask_b = (int)pow(2,b)-1;           // 创建块偏移b位的掩码
    int mask_s = ((int)pow(2, s) - 1) << b;    // 创建组索引s位的掩码
    char ch[16];                               // 容纳一行数据
    const char Sep[3] = " ,";                  // 分隔符
    char *sub_string;                          // 子串

    while (fgets(ch, 16, file) != NULL)
    {

        sub_string = strtok(ch, Sep);
        char *instruction = sub_string; // 内存访问的类型
        if (*instruction == 'I')        // 'I'类不处理
        {
            continue;
        }
        sub_string = strtok(NULL, Sep);
        char *address_char = sub_string;                   // 地址的字符表示
        long address = HexadecimalToDecimal(address_char); // 地址的十进制表示
        sub_string = strtok(NULL, Sep);
        int size = atoi(sub_string);

        int cacheline_index = (address & mask_s) >> b; // 组索引
        int tag = address >> s >> b;                   // 标记位

        if (verbose)
        {
            printf("%s %s,%d ", instruction, address_char, size);
        }

        int TagM = *instruction == 'M' ? 2 : 1; // 'M' 循环两遍,'S''I'一遍
        do
        {
            struct LRURow *cache_lru_row = &cache_line[cacheline_index]; // 获取该组
            struct Node *temp_node = cache_lru_row->head;                // 获取该组的链表头
            
            
            // 有效且标记相同则命中
            for (int i = 0; i < E; i++)
            {
                struct Row *temp_row = &cache_lru_row->ERow[i]; // 获取一行
                if (temp_row->valid_bit && temp_row->tag_bit == tag)
                {
                    // 找到链表中命中的缓存，准备放到链表头
                    while (temp_node != NULL)
                    {
                        if (temp_node->tag_node == tag)
                        {
                            break;
                        }
                        temp_node = temp_node->next;
                    }

                    // 放到链表头，要判断，是不是本身就是头，是头就跳过
                    if (temp_node != cache_lru_row->head)
                    {
                        temp_node->pre->next = temp_node->next;

                        // 判断是不是链表尾，是尾就跳过
                        if (temp_node->next != NULL)
                        {
                            temp_node->next->pre = temp_node->pre;
                        }

                        temp_node->pre = NULL;
                        temp_node->next = cache_lru_row->head;
                        cache_lru_row->head->pre = temp_node;
                        cache_lru_row->head = temp_node;
                    }
                    hit_count++;
                    if (verbose)
                        printf("hit ");
                    goto end;
                }
            }

            // 无效：未命中，要写入无效的缓存区
            for (int i = 0; i < E; i++)
            {
                struct Row *temp_row = &cache_lru_row->ERow[i];
                if (!(temp_row->valid_bit))
                {

                    // 准备放入链表的新结点
                    struct Node *temp = (struct Node *)malloc(sizeof(struct Node));
                    temp->pre = NULL;
                    temp->next = NULL;
                    temp->tag_node = tag;

                    // 判断是不是链表中的第一个结点，是就跳过
                    if (temp_node->tag_node != -1)
                    {
                        temp->next = temp_node;
                        temp_node->pre = temp;
                    }
                    // 设置尾头结点
                    cache_lru_row->head = temp;

                    miss_count++;
                    temp_row->valid_bit = 1;
                    temp_row->tag_bit = tag;

                    if (verbose)
                        printf("miss ");
                    goto end;
                }
            }


            // 既没命中，又没多余的缓存，就把链表的最后一个移到开头并设置tag
            while (temp_node->next != NULL)
            {
                temp_node = temp_node->next;
            }
            // 判断链表中是不是只有一个结点，是就跳过
            if (temp_node != cache_lru_row->head)
            {
                temp_node->pre->next = NULL;
                temp_node->next = cache_lru_row->head;
                cache_lru_row->head->pre = temp_node;
            }
            cache_lru_row->head = temp_node;

            // 找到在缓存中对应与链表最后一个的缓存，移除，更新。
            struct Row *temp_row;
            for (int j = 0; j < E; j++)
            {
                temp_row = &cache_line[cacheline_index].ERow[j];
                if (temp_node->tag_node == (temp_row->tag_bit))
                {
                    break;
                }
            }
            temp_node->tag_node = tag;

            temp_row->valid_bit = 1;
            temp_row->tag_bit = tag;

            if (verbose)
                printf("miss eviction");
            miss_count++;
            eviction_count++;
        end:
            // 不是'M'就要换行
            if (verbose && !(TagM - 1))
            {
                printf("\n");
            } 
            TagM--;
        } while (TagM);
    }

    // 释放空间
    for (int i = 0; i < S; i++)
    {
        free(cache_line[i].head);
        free(cache_line[i].ERow);
    }

    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}

// 十六转十函数
long HexadecimalToDecimal(char *s)
{
    long n = 0;
    for (int i = 0; (s[i] >= '0' && s[i] <= '9') || (s[i] >= 'a' && s[i] <= 'f'); i++)
    {
        if (s[i] > '9')
        {
            n = 16 * n + (10 + s[i] - 'a');
        }
        else
        {
            n = 16 * n + (s[i] - '0');
        }
    }
    return n;
}
