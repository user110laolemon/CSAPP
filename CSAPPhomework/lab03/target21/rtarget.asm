
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000000da8 <_init>:
 da8:	48 83 ec 08          	sub    $0x8,%rsp
 dac:	48 8b 05 35 42 20 00 	mov    0x204235(%rip),%rax        # 204fe8 <__gmon_start__>
 db3:	48 85 c0             	test   %rax,%rax
 db6:	74 02                	je     dba <_init+0x12>
 db8:	ff d0                	callq  *%rax
 dba:	48 83 c4 08          	add    $0x8,%rsp
 dbe:	c3                   	retq   

Disassembly of section .plt:

0000000000000dc0 <.plt>:
 dc0:	ff 35 02 41 20 00    	pushq  0x204102(%rip)        # 204ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
 dc6:	ff 25 04 41 20 00    	jmpq   *0x204104(%rip)        # 204ed0 <_GLOBAL_OFFSET_TABLE_+0x10>
 dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000dd0 <__errno_location@plt>:
 dd0:	ff 25 02 41 20 00    	jmpq   *0x204102(%rip)        # 204ed8 <__errno_location@GLIBC_2.2.5>
 dd6:	68 00 00 00 00       	pushq  $0x0
 ddb:	e9 e0 ff ff ff       	jmpq   dc0 <.plt>

0000000000000de0 <srandom@plt>:
 de0:	ff 25 fa 40 20 00    	jmpq   *0x2040fa(%rip)        # 204ee0 <srandom@GLIBC_2.2.5>
 de6:	68 01 00 00 00       	pushq  $0x1
 deb:	e9 d0 ff ff ff       	jmpq   dc0 <.plt>

0000000000000df0 <strncmp@plt>:
 df0:	ff 25 f2 40 20 00    	jmpq   *0x2040f2(%rip)        # 204ee8 <strncmp@GLIBC_2.2.5>
 df6:	68 02 00 00 00       	pushq  $0x2
 dfb:	e9 c0 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e00 <strcpy@plt>:
 e00:	ff 25 ea 40 20 00    	jmpq   *0x2040ea(%rip)        # 204ef0 <strcpy@GLIBC_2.2.5>
 e06:	68 03 00 00 00       	pushq  $0x3
 e0b:	e9 b0 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e10 <puts@plt>:
 e10:	ff 25 e2 40 20 00    	jmpq   *0x2040e2(%rip)        # 204ef8 <puts@GLIBC_2.2.5>
 e16:	68 04 00 00 00       	pushq  $0x4
 e1b:	e9 a0 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e20 <write@plt>:
 e20:	ff 25 da 40 20 00    	jmpq   *0x2040da(%rip)        # 204f00 <write@GLIBC_2.2.5>
 e26:	68 05 00 00 00       	pushq  $0x5
 e2b:	e9 90 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e30 <__stack_chk_fail@plt>:
 e30:	ff 25 d2 40 20 00    	jmpq   *0x2040d2(%rip)        # 204f08 <__stack_chk_fail@GLIBC_2.4>
 e36:	68 06 00 00 00       	pushq  $0x6
 e3b:	e9 80 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e40 <mmap@plt>:
 e40:	ff 25 ca 40 20 00    	jmpq   *0x2040ca(%rip)        # 204f10 <mmap@GLIBC_2.2.5>
 e46:	68 07 00 00 00       	pushq  $0x7
 e4b:	e9 70 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e50 <memset@plt>:
 e50:	ff 25 c2 40 20 00    	jmpq   *0x2040c2(%rip)        # 204f18 <memset@GLIBC_2.2.5>
 e56:	68 08 00 00 00       	pushq  $0x8
 e5b:	e9 60 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e60 <alarm@plt>:
 e60:	ff 25 ba 40 20 00    	jmpq   *0x2040ba(%rip)        # 204f20 <alarm@GLIBC_2.2.5>
 e66:	68 09 00 00 00       	pushq  $0x9
 e6b:	e9 50 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e70 <close@plt>:
 e70:	ff 25 b2 40 20 00    	jmpq   *0x2040b2(%rip)        # 204f28 <close@GLIBC_2.2.5>
 e76:	68 0a 00 00 00       	pushq  $0xa
 e7b:	e9 40 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e80 <read@plt>:
 e80:	ff 25 aa 40 20 00    	jmpq   *0x2040aa(%rip)        # 204f30 <read@GLIBC_2.2.5>
 e86:	68 0b 00 00 00       	pushq  $0xb
 e8b:	e9 30 ff ff ff       	jmpq   dc0 <.plt>

0000000000000e90 <signal@plt>:
 e90:	ff 25 a2 40 20 00    	jmpq   *0x2040a2(%rip)        # 204f38 <signal@GLIBC_2.2.5>
 e96:	68 0c 00 00 00       	pushq  $0xc
 e9b:	e9 20 ff ff ff       	jmpq   dc0 <.plt>

0000000000000ea0 <gethostbyname@plt>:
 ea0:	ff 25 9a 40 20 00    	jmpq   *0x20409a(%rip)        # 204f40 <gethostbyname@GLIBC_2.2.5>
 ea6:	68 0d 00 00 00       	pushq  $0xd
 eab:	e9 10 ff ff ff       	jmpq   dc0 <.plt>

0000000000000eb0 <__memmove_chk@plt>:
 eb0:	ff 25 92 40 20 00    	jmpq   *0x204092(%rip)        # 204f48 <__memmove_chk@GLIBC_2.3.4>
 eb6:	68 0e 00 00 00       	pushq  $0xe
 ebb:	e9 00 ff ff ff       	jmpq   dc0 <.plt>

0000000000000ec0 <strtol@plt>:
 ec0:	ff 25 8a 40 20 00    	jmpq   *0x20408a(%rip)        # 204f50 <strtol@GLIBC_2.2.5>
 ec6:	68 0f 00 00 00       	pushq  $0xf
 ecb:	e9 f0 fe ff ff       	jmpq   dc0 <.plt>

0000000000000ed0 <memcpy@plt>:
 ed0:	ff 25 82 40 20 00    	jmpq   *0x204082(%rip)        # 204f58 <memcpy@GLIBC_2.14>
 ed6:	68 10 00 00 00       	pushq  $0x10
 edb:	e9 e0 fe ff ff       	jmpq   dc0 <.plt>

0000000000000ee0 <time@plt>:
 ee0:	ff 25 7a 40 20 00    	jmpq   *0x20407a(%rip)        # 204f60 <time@GLIBC_2.2.5>
 ee6:	68 11 00 00 00       	pushq  $0x11
 eeb:	e9 d0 fe ff ff       	jmpq   dc0 <.plt>

0000000000000ef0 <random@plt>:
 ef0:	ff 25 72 40 20 00    	jmpq   *0x204072(%rip)        # 204f68 <random@GLIBC_2.2.5>
 ef6:	68 12 00 00 00       	pushq  $0x12
 efb:	e9 c0 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f00 <_IO_getc@plt>:
 f00:	ff 25 6a 40 20 00    	jmpq   *0x20406a(%rip)        # 204f70 <_IO_getc@GLIBC_2.2.5>
 f06:	68 13 00 00 00       	pushq  $0x13
 f0b:	e9 b0 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f10 <__isoc99_sscanf@plt>:
 f10:	ff 25 62 40 20 00    	jmpq   *0x204062(%rip)        # 204f78 <__isoc99_sscanf@GLIBC_2.7>
 f16:	68 14 00 00 00       	pushq  $0x14
 f1b:	e9 a0 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f20 <munmap@plt>:
 f20:	ff 25 5a 40 20 00    	jmpq   *0x20405a(%rip)        # 204f80 <munmap@GLIBC_2.2.5>
 f26:	68 15 00 00 00       	pushq  $0x15
 f2b:	e9 90 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f30 <__printf_chk@plt>:
 f30:	ff 25 52 40 20 00    	jmpq   *0x204052(%rip)        # 204f88 <__printf_chk@GLIBC_2.3.4>
 f36:	68 16 00 00 00       	pushq  $0x16
 f3b:	e9 80 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f40 <fopen@plt>:
 f40:	ff 25 4a 40 20 00    	jmpq   *0x20404a(%rip)        # 204f90 <fopen@GLIBC_2.2.5>
 f46:	68 17 00 00 00       	pushq  $0x17
 f4b:	e9 70 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f50 <getopt@plt>:
 f50:	ff 25 42 40 20 00    	jmpq   *0x204042(%rip)        # 204f98 <getopt@GLIBC_2.2.5>
 f56:	68 18 00 00 00       	pushq  $0x18
 f5b:	e9 60 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f60 <strtoul@plt>:
 f60:	ff 25 3a 40 20 00    	jmpq   *0x20403a(%rip)        # 204fa0 <strtoul@GLIBC_2.2.5>
 f66:	68 19 00 00 00       	pushq  $0x19
 f6b:	e9 50 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f70 <gethostname@plt>:
 f70:	ff 25 32 40 20 00    	jmpq   *0x204032(%rip)        # 204fa8 <gethostname@GLIBC_2.2.5>
 f76:	68 1a 00 00 00       	pushq  $0x1a
 f7b:	e9 40 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f80 <exit@plt>:
 f80:	ff 25 2a 40 20 00    	jmpq   *0x20402a(%rip)        # 204fb0 <exit@GLIBC_2.2.5>
 f86:	68 1b 00 00 00       	pushq  $0x1b
 f8b:	e9 30 fe ff ff       	jmpq   dc0 <.plt>

0000000000000f90 <connect@plt>:
 f90:	ff 25 22 40 20 00    	jmpq   *0x204022(%rip)        # 204fb8 <connect@GLIBC_2.2.5>
 f96:	68 1c 00 00 00       	pushq  $0x1c
 f9b:	e9 20 fe ff ff       	jmpq   dc0 <.plt>

0000000000000fa0 <__fprintf_chk@plt>:
 fa0:	ff 25 1a 40 20 00    	jmpq   *0x20401a(%rip)        # 204fc0 <__fprintf_chk@GLIBC_2.3.4>
 fa6:	68 1d 00 00 00       	pushq  $0x1d
 fab:	e9 10 fe ff ff       	jmpq   dc0 <.plt>

0000000000000fb0 <__sprintf_chk@plt>:
 fb0:	ff 25 12 40 20 00    	jmpq   *0x204012(%rip)        # 204fc8 <__sprintf_chk@GLIBC_2.3.4>
 fb6:	68 1e 00 00 00       	pushq  $0x1e
 fbb:	e9 00 fe ff ff       	jmpq   dc0 <.plt>

0000000000000fc0 <socket@plt>:
 fc0:	ff 25 0a 40 20 00    	jmpq   *0x20400a(%rip)        # 204fd0 <socket@GLIBC_2.2.5>
 fc6:	68 1f 00 00 00       	pushq  $0x1f
 fcb:	e9 f0 fd ff ff       	jmpq   dc0 <.plt>

Disassembly of section .plt.got:

0000000000000fd0 <__cxa_finalize@plt>:
 fd0:	ff 25 22 40 20 00    	jmpq   *0x204022(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
 fd6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000fe0 <_start>:
     fe0:	31 ed                	xor    %ebp,%ebp
     fe2:	49 89 d1             	mov    %rdx,%r9
     fe5:	5e                   	pop    %rsi
     fe6:	48 89 e2             	mov    %rsp,%rdx
     fe9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     fed:	50                   	push   %rax
     fee:	54                   	push   %rsp
     fef:	4c 8d 05 ca 20 00 00 	lea    0x20ca(%rip),%r8        # 30c0 <__libc_csu_fini>
     ff6:	48 8d 0d 53 20 00 00 	lea    0x2053(%rip),%rcx        # 3050 <__libc_csu_init>
     ffd:	48 8d 3d b5 02 00 00 	lea    0x2b5(%rip),%rdi        # 12b9 <main>
    1004:	ff 15 d6 3f 20 00    	callq  *0x203fd6(%rip)        # 204fe0 <__libc_start_main@GLIBC_2.2.5>
    100a:	f4                   	hlt    
    100b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001010 <deregister_tm_clones>:
    1010:	48 8d 3d 59 43 20 00 	lea    0x204359(%rip),%rdi        # 205370 <__TMC_END__>
    1017:	55                   	push   %rbp
    1018:	48 8d 05 51 43 20 00 	lea    0x204351(%rip),%rax        # 205370 <__TMC_END__>
    101f:	48 39 f8             	cmp    %rdi,%rax
    1022:	48 89 e5             	mov    %rsp,%rbp
    1025:	74 19                	je     1040 <deregister_tm_clones+0x30>
    1027:	48 8b 05 aa 3f 20 00 	mov    0x203faa(%rip),%rax        # 204fd8 <_ITM_deregisterTMCloneTable>
    102e:	48 85 c0             	test   %rax,%rax
    1031:	74 0d                	je     1040 <deregister_tm_clones+0x30>
    1033:	5d                   	pop    %rbp
    1034:	ff e0                	jmpq   *%rax
    1036:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    103d:	00 00 00 
    1040:	5d                   	pop    %rbp
    1041:	c3                   	retq   
    1042:	0f 1f 40 00          	nopl   0x0(%rax)
    1046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    104d:	00 00 00 

0000000000001050 <register_tm_clones>:
    1050:	48 8d 3d 19 43 20 00 	lea    0x204319(%rip),%rdi        # 205370 <__TMC_END__>
    1057:	48 8d 35 12 43 20 00 	lea    0x204312(%rip),%rsi        # 205370 <__TMC_END__>
    105e:	55                   	push   %rbp
    105f:	48 29 fe             	sub    %rdi,%rsi
    1062:	48 89 e5             	mov    %rsp,%rbp
    1065:	48 c1 fe 03          	sar    $0x3,%rsi
    1069:	48 89 f0             	mov    %rsi,%rax
    106c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1070:	48 01 c6             	add    %rax,%rsi
    1073:	48 d1 fe             	sar    %rsi
    1076:	74 18                	je     1090 <register_tm_clones+0x40>
    1078:	48 8b 05 71 3f 20 00 	mov    0x203f71(%rip),%rax        # 204ff0 <_ITM_registerTMCloneTable>
    107f:	48 85 c0             	test   %rax,%rax
    1082:	74 0c                	je     1090 <register_tm_clones+0x40>
    1084:	5d                   	pop    %rbp
    1085:	ff e0                	jmpq   *%rax
    1087:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    108e:	00 00 
    1090:	5d                   	pop    %rbp
    1091:	c3                   	retq   
    1092:	0f 1f 40 00          	nopl   0x0(%rax)
    1096:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    109d:	00 00 00 

00000000000010a0 <__do_global_dtors_aux>:
    10a0:	80 3d 01 43 20 00 00 	cmpb   $0x0,0x204301(%rip)        # 2053a8 <completed.7698>
    10a7:	75 2f                	jne    10d8 <__do_global_dtors_aux+0x38>
    10a9:	48 83 3d 47 3f 20 00 	cmpq   $0x0,0x203f47(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    10b0:	00 
    10b1:	55                   	push   %rbp
    10b2:	48 89 e5             	mov    %rsp,%rbp
    10b5:	74 0c                	je     10c3 <__do_global_dtors_aux+0x23>
    10b7:	48 8b 3d 4a 3f 20 00 	mov    0x203f4a(%rip),%rdi        # 205008 <__dso_handle>
    10be:	e8 0d ff ff ff       	callq  fd0 <__cxa_finalize@plt>
    10c3:	e8 48 ff ff ff       	callq  1010 <deregister_tm_clones>
    10c8:	c6 05 d9 42 20 00 01 	movb   $0x1,0x2042d9(%rip)        # 2053a8 <completed.7698>
    10cf:	5d                   	pop    %rbp
    10d0:	c3                   	retq   
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	f3 c3                	repz retq 
    10da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010e0 <frame_dummy>:
    10e0:	55                   	push   %rbp
    10e1:	48 89 e5             	mov    %rsp,%rbp
    10e4:	5d                   	pop    %rbp
    10e5:	e9 66 ff ff ff       	jmpq   1050 <register_tm_clones>

00000000000010ea <usage>:
    10ea:	48 83 ec 08          	sub    $0x8,%rsp
    10ee:	48 89 fa             	mov    %rdi,%rdx
    10f1:	83 3d f0 42 20 00 00 	cmpl   $0x0,0x2042f0(%rip)        # 2053e8 <is_checker>
    10f8:	74 50                	je     114a <usage+0x60>
    10fa:	48 8d 35 d7 1f 00 00 	lea    0x1fd7(%rip),%rsi        # 30d8 <_IO_stdin_used+0x8>
    1101:	bf 01 00 00 00       	mov    $0x1,%edi
    1106:	b8 00 00 00 00       	mov    $0x0,%eax
    110b:	e8 20 fe ff ff       	callq  f30 <__printf_chk@plt>
    1110:	48 8d 3d f9 1f 00 00 	lea    0x1ff9(%rip),%rdi        # 3110 <_IO_stdin_used+0x40>
    1117:	e8 f4 fc ff ff       	callq  e10 <puts@plt>
    111c:	48 8d 3d 25 21 00 00 	lea    0x2125(%rip),%rdi        # 3248 <_IO_stdin_used+0x178>
    1123:	e8 e8 fc ff ff       	callq  e10 <puts@plt>
    1128:	48 8d 3d 09 20 00 00 	lea    0x2009(%rip),%rdi        # 3138 <_IO_stdin_used+0x68>
    112f:	e8 dc fc ff ff       	callq  e10 <puts@plt>
    1134:	48 8d 3d 27 21 00 00 	lea    0x2127(%rip),%rdi        # 3262 <_IO_stdin_used+0x192>
    113b:	e8 d0 fc ff ff       	callq  e10 <puts@plt>
    1140:	bf 00 00 00 00       	mov    $0x0,%edi
    1145:	e8 36 fe ff ff       	callq  f80 <exit@plt>
    114a:	48 8d 35 2d 21 00 00 	lea    0x212d(%rip),%rsi        # 327e <_IO_stdin_used+0x1ae>
    1151:	bf 01 00 00 00       	mov    $0x1,%edi
    1156:	b8 00 00 00 00       	mov    $0x0,%eax
    115b:	e8 d0 fd ff ff       	callq  f30 <__printf_chk@plt>
    1160:	48 8d 3d f9 1f 00 00 	lea    0x1ff9(%rip),%rdi        # 3160 <_IO_stdin_used+0x90>
    1167:	e8 a4 fc ff ff       	callq  e10 <puts@plt>
    116c:	48 8d 3d 15 20 00 00 	lea    0x2015(%rip),%rdi        # 3188 <_IO_stdin_used+0xb8>
    1173:	e8 98 fc ff ff       	callq  e10 <puts@plt>
    1178:	48 8d 3d 1d 21 00 00 	lea    0x211d(%rip),%rdi        # 329c <_IO_stdin_used+0x1cc>
    117f:	e8 8c fc ff ff       	callq  e10 <puts@plt>
    1184:	eb ba                	jmp    1140 <usage+0x56>

0000000000001186 <initialize_target>:
    1186:	55                   	push   %rbp
    1187:	53                   	push   %rbx
    1188:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
    118f:	89 f5                	mov    %esi,%ebp
    1191:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1198:	00 00 
    119a:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
    11a1:	00 
    11a2:	31 c0                	xor    %eax,%eax
    11a4:	89 3d 2e 42 20 00    	mov    %edi,0x20422e(%rip)        # 2053d8 <check_level>
    11aa:	8b 3d 60 3e 20 00    	mov    0x203e60(%rip),%edi        # 205010 <target_id>
    11b0:	e8 73 1e 00 00       	callq  3028 <gencookie>
    11b5:	89 05 29 42 20 00    	mov    %eax,0x204229(%rip)        # 2053e4 <cookie>
    11bb:	89 c7                	mov    %eax,%edi
    11bd:	e8 66 1e 00 00       	callq  3028 <gencookie>
    11c2:	89 05 18 42 20 00    	mov    %eax,0x204218(%rip)        # 2053e0 <authkey>
    11c8:	8b 05 42 3e 20 00    	mov    0x203e42(%rip),%eax        # 205010 <target_id>
    11ce:	8d 78 01             	lea    0x1(%rax),%edi
    11d1:	e8 0a fc ff ff       	callq  de0 <srandom@plt>
    11d6:	e8 15 fd ff ff       	callq  ef0 <random@plt>
    11db:	89 c7                	mov    %eax,%edi
    11dd:	e8 c2 02 00 00       	callq  14a4 <scramble>
    11e2:	89 c3                	mov    %eax,%ebx
    11e4:	85 ed                	test   %ebp,%ebp
    11e6:	75 54                	jne    123c <initialize_target+0xb6>
    11e8:	b8 00 00 00 00       	mov    $0x0,%eax
    11ed:	01 d8                	add    %ebx,%eax
    11ef:	0f b7 c0             	movzwl %ax,%eax
    11f2:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
    11f9:	89 c0                	mov    %eax,%eax
    11fb:	48 89 05 5e 41 20 00 	mov    %rax,0x20415e(%rip)        # 205360 <buf_offset>
    1202:	c6 05 ff 4d 20 00 72 	movb   $0x72,0x204dff(%rip)        # 206008 <target_prefix>
    1209:	83 3d 58 41 20 00 00 	cmpl   $0x0,0x204158(%rip)        # 205368 <notify>
    1210:	74 09                	je     121b <initialize_target+0x95>
    1212:	83 3d cf 41 20 00 00 	cmpl   $0x0,0x2041cf(%rip)        # 2053e8 <is_checker>
    1219:	74 39                	je     1254 <initialize_target+0xce>
    121b:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
    1222:	00 
    1223:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    122a:	00 00 
    122c:	0f 85 82 00 00 00    	jne    12b4 <initialize_target+0x12e>
    1232:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
    1239:	5b                   	pop    %rbx
    123a:	5d                   	pop    %rbp
    123b:	c3                   	retq   
    123c:	bf 00 00 00 00       	mov    $0x0,%edi
    1241:	e8 9a fc ff ff       	callq  ee0 <time@plt>
    1246:	89 c7                	mov    %eax,%edi
    1248:	e8 93 fb ff ff       	callq  de0 <srandom@plt>
    124d:	e8 9e fc ff ff       	callq  ef0 <random@plt>
    1252:	eb 99                	jmp    11ed <initialize_target+0x67>
    1254:	48 89 e7             	mov    %rsp,%rdi
    1257:	be 00 01 00 00       	mov    $0x100,%esi
    125c:	e8 0f fd ff ff       	callq  f70 <gethostname@plt>
    1261:	85 c0                	test   %eax,%eax
    1263:	75 39                	jne    129e <initialize_target+0x118>
    1265:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    126c:	00 
    126d:	e8 e6 1a 00 00       	callq  2d58 <init_driver>
    1272:	85 c0                	test   %eax,%eax
    1274:	79 a5                	jns    121b <initialize_target+0x95>
    1276:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
    127d:	00 
    127e:	48 8d 35 6b 1f 00 00 	lea    0x1f6b(%rip),%rsi        # 31f0 <_IO_stdin_used+0x120>
    1285:	bf 01 00 00 00       	mov    $0x1,%edi
    128a:	b8 00 00 00 00       	mov    $0x0,%eax
    128f:	e8 9c fc ff ff       	callq  f30 <__printf_chk@plt>
    1294:	bf 08 00 00 00       	mov    $0x8,%edi
    1299:	e8 e2 fc ff ff       	callq  f80 <exit@plt>
    129e:	48 8d 3d 13 1f 00 00 	lea    0x1f13(%rip),%rdi        # 31b8 <_IO_stdin_used+0xe8>
    12a5:	e8 66 fb ff ff       	callq  e10 <puts@plt>
    12aa:	bf 08 00 00 00       	mov    $0x8,%edi
    12af:	e8 cc fc ff ff       	callq  f80 <exit@plt>
    12b4:	e8 77 fb ff ff       	callq  e30 <__stack_chk_fail@plt>

00000000000012b9 <main>:
    12b9:	41 56                	push   %r14
    12bb:	41 55                	push   %r13
    12bd:	41 54                	push   %r12
    12bf:	55                   	push   %rbp
    12c0:	53                   	push   %rbx
    12c1:	41 89 fc             	mov    %edi,%r12d
    12c4:	48 89 f3             	mov    %rsi,%rbx
    12c7:	48 8d 35 91 0d 00 00 	lea    0xd91(%rip),%rsi        # 205f <seghandler>
    12ce:	bf 0b 00 00 00       	mov    $0xb,%edi
    12d3:	e8 b8 fb ff ff       	callq  e90 <signal@plt>
    12d8:	48 8d 35 2c 0d 00 00 	lea    0xd2c(%rip),%rsi        # 200b <bushandler>
    12df:	bf 07 00 00 00       	mov    $0x7,%edi
    12e4:	e8 a7 fb ff ff       	callq  e90 <signal@plt>
    12e9:	48 8d 35 c3 0d 00 00 	lea    0xdc3(%rip),%rsi        # 20b3 <illegalhandler>
    12f0:	bf 04 00 00 00       	mov    $0x4,%edi
    12f5:	e8 96 fb ff ff       	callq  e90 <signal@plt>
    12fa:	83 3d e7 40 20 00 00 	cmpl   $0x0,0x2040e7(%rip)        # 2053e8 <is_checker>
    1301:	75 26                	jne    1329 <main+0x70>
    1303:	48 8d 2d ab 1f 00 00 	lea    0x1fab(%rip),%rbp        # 32b5 <_IO_stdin_used+0x1e5>
    130a:	48 8b 05 6f 40 20 00 	mov    0x20406f(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    1311:	48 89 05 b8 40 20 00 	mov    %rax,0x2040b8(%rip)        # 2053d0 <infile>
    1318:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    131e:	41 be 00 00 00 00    	mov    $0x0,%r14d
    1324:	e9 8d 00 00 00       	jmpq   13b6 <main+0xfd>
    1329:	48 8d 35 d7 0d 00 00 	lea    0xdd7(%rip),%rsi        # 2107 <sigalrmhandler>
    1330:	bf 0e 00 00 00       	mov    $0xe,%edi
    1335:	e8 56 fb ff ff       	callq  e90 <signal@plt>
    133a:	bf 05 00 00 00       	mov    $0x5,%edi
    133f:	e8 1c fb ff ff       	callq  e60 <alarm@plt>
    1344:	48 8d 2d 6f 1f 00 00 	lea    0x1f6f(%rip),%rbp        # 32ba <_IO_stdin_used+0x1ea>
    134b:	eb bd                	jmp    130a <main+0x51>
    134d:	48 8b 3b             	mov    (%rbx),%rdi
    1350:	e8 95 fd ff ff       	callq  10ea <usage>
    1355:	48 8d 35 e9 21 00 00 	lea    0x21e9(%rip),%rsi        # 3545 <_IO_stdin_used+0x475>
    135c:	48 8b 3d 25 40 20 00 	mov    0x204025(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    1363:	e8 d8 fb ff ff       	callq  f40 <fopen@plt>
    1368:	48 89 05 61 40 20 00 	mov    %rax,0x204061(%rip)        # 2053d0 <infile>
    136f:	48 85 c0             	test   %rax,%rax
    1372:	75 42                	jne    13b6 <main+0xfd>
    1374:	48 8b 0d 0d 40 20 00 	mov    0x20400d(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    137b:	48 8d 15 40 1f 00 00 	lea    0x1f40(%rip),%rdx        # 32c2 <_IO_stdin_used+0x1f2>
    1382:	be 01 00 00 00       	mov    $0x1,%esi
    1387:	48 8b 3d 12 40 20 00 	mov    0x204012(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    138e:	e8 0d fc ff ff       	callq  fa0 <__fprintf_chk@plt>
    1393:	b8 01 00 00 00       	mov    $0x1,%eax
    1398:	e9 d9 00 00 00       	jmpq   1476 <main+0x1bd>
    139d:	ba 10 00 00 00       	mov    $0x10,%edx
    13a2:	be 00 00 00 00       	mov    $0x0,%esi
    13a7:	48 8b 3d da 3f 20 00 	mov    0x203fda(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    13ae:	e8 ad fb ff ff       	callq  f60 <strtoul@plt>
    13b3:	41 89 c6             	mov    %eax,%r14d
    13b6:	48 89 ea             	mov    %rbp,%rdx
    13b9:	48 89 de             	mov    %rbx,%rsi
    13bc:	44 89 e7             	mov    %r12d,%edi
    13bf:	e8 8c fb ff ff       	callq  f50 <getopt@plt>
    13c4:	3c ff                	cmp    $0xff,%al
    13c6:	74 62                	je     142a <main+0x171>
    13c8:	0f be d0             	movsbl %al,%edx
    13cb:	83 e8 61             	sub    $0x61,%eax
    13ce:	3c 10                	cmp    $0x10,%al
    13d0:	77 3a                	ja     140c <main+0x153>
    13d2:	0f b6 c0             	movzbl %al,%eax
    13d5:	48 8d 0d 24 1f 00 00 	lea    0x1f24(%rip),%rcx        # 3300 <_IO_stdin_used+0x230>
    13dc:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    13e0:	48 01 c8             	add    %rcx,%rax
    13e3:	ff e0                	jmpq   *%rax
    13e5:	ba 0a 00 00 00       	mov    $0xa,%edx
    13ea:	be 00 00 00 00       	mov    $0x0,%esi
    13ef:	48 8b 3d 92 3f 20 00 	mov    0x203f92(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    13f6:	e8 c5 fa ff ff       	callq  ec0 <strtol@plt>
    13fb:	41 89 c5             	mov    %eax,%r13d
    13fe:	eb b6                	jmp    13b6 <main+0xfd>
    1400:	c7 05 5e 3f 20 00 00 	movl   $0x0,0x203f5e(%rip)        # 205368 <notify>
    1407:	00 00 00 
    140a:	eb aa                	jmp    13b6 <main+0xfd>
    140c:	48 8d 35 cc 1e 00 00 	lea    0x1ecc(%rip),%rsi        # 32df <_IO_stdin_used+0x20f>
    1413:	bf 01 00 00 00       	mov    $0x1,%edi
    1418:	b8 00 00 00 00       	mov    $0x0,%eax
    141d:	e8 0e fb ff ff       	callq  f30 <__printf_chk@plt>
    1422:	48 8b 3b             	mov    (%rbx),%rdi
    1425:	e8 c0 fc ff ff       	callq  10ea <usage>
    142a:	be 01 00 00 00       	mov    $0x1,%esi
    142f:	44 89 ef             	mov    %r13d,%edi
    1432:	e8 4f fd ff ff       	callq  1186 <initialize_target>
    1437:	83 3d aa 3f 20 00 00 	cmpl   $0x0,0x203faa(%rip)        # 2053e8 <is_checker>
    143e:	74 09                	je     1449 <main+0x190>
    1440:	44 39 35 99 3f 20 00 	cmp    %r14d,0x203f99(%rip)        # 2053e0 <authkey>
    1447:	75 36                	jne    147f <main+0x1c6>
    1449:	8b 15 95 3f 20 00    	mov    0x203f95(%rip),%edx        # 2053e4 <cookie>
    144f:	48 8d 35 9c 1e 00 00 	lea    0x1e9c(%rip),%rsi        # 32f2 <_IO_stdin_used+0x222>
    1456:	bf 01 00 00 00       	mov    $0x1,%edi
    145b:	b8 00 00 00 00       	mov    $0x0,%eax
    1460:	e8 cb fa ff ff       	callq  f30 <__printf_chk@plt>
    1465:	48 8b 3d f4 3e 20 00 	mov    0x203ef4(%rip),%rdi        # 205360 <buf_offset>
    146c:	e8 ed 0c 00 00       	callq  215e <launch>
    1471:	b8 00 00 00 00       	mov    $0x0,%eax
    1476:	5b                   	pop    %rbx
    1477:	5d                   	pop    %rbp
    1478:	41 5c                	pop    %r12
    147a:	41 5d                	pop    %r13
    147c:	41 5e                	pop    %r14
    147e:	c3                   	retq   
    147f:	44 89 f2             	mov    %r14d,%edx
    1482:	48 8d 35 8f 1d 00 00 	lea    0x1d8f(%rip),%rsi        # 3218 <_IO_stdin_used+0x148>
    1489:	bf 01 00 00 00       	mov    $0x1,%edi
    148e:	b8 00 00 00 00       	mov    $0x0,%eax
    1493:	e8 98 fa ff ff       	callq  f30 <__printf_chk@plt>
    1498:	b8 00 00 00 00       	mov    $0x0,%eax
    149d:	e8 c9 07 00 00       	callq  1c6b <check_fail>
    14a2:	eb a5                	jmp    1449 <main+0x190>

00000000000014a4 <scramble>:
    14a4:	48 83 ec 38          	sub    $0x38,%rsp
    14a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14af:	00 00 
    14b1:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    14b6:	31 c0                	xor    %eax,%eax
    14b8:	eb 10                	jmp    14ca <scramble+0x26>
    14ba:	69 d0 f2 98 00 00    	imul   $0x98f2,%eax,%edx
    14c0:	01 fa                	add    %edi,%edx
    14c2:	89 c1                	mov    %eax,%ecx
    14c4:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    14c7:	83 c0 01             	add    $0x1,%eax
    14ca:	83 f8 09             	cmp    $0x9,%eax
    14cd:	76 eb                	jbe    14ba <scramble+0x16>
    14cf:	8b 44 24 04          	mov    0x4(%rsp),%eax
    14d3:	69 c0 f2 1d 00 00    	imul   $0x1df2,%eax,%eax
    14d9:	89 44 24 04          	mov    %eax,0x4(%rsp)
    14dd:	8b 44 24 04          	mov    0x4(%rsp),%eax
    14e1:	69 c0 6c 16 00 00    	imul   $0x166c,%eax,%eax
    14e7:	89 44 24 04          	mov    %eax,0x4(%rsp)
    14eb:	8b 44 24 08          	mov    0x8(%rsp),%eax
    14ef:	69 c0 a1 22 00 00    	imul   $0x22a1,%eax,%eax
    14f5:	89 44 24 08          	mov    %eax,0x8(%rsp)
    14f9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    14fd:	69 c0 57 26 00 00    	imul   $0x2657,%eax,%eax
    1503:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1507:	8b 44 24 14          	mov    0x14(%rsp),%eax
    150b:	69 c0 6f 34 00 00    	imul   $0x346f,%eax,%eax
    1511:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1515:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1519:	69 c0 14 78 00 00    	imul   $0x7814,%eax,%eax
    151f:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1523:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1527:	69 c0 1f f3 00 00    	imul   $0xf31f,%eax,%eax
    152d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1531:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1535:	69 c0 84 2b 00 00    	imul   $0x2b84,%eax,%eax
    153b:	89 44 24 14          	mov    %eax,0x14(%rsp)
    153f:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1543:	69 c0 e5 19 00 00    	imul   $0x19e5,%eax,%eax
    1549:	89 44 24 08          	mov    %eax,0x8(%rsp)
    154d:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1551:	69 c0 75 54 00 00    	imul   $0x5475,%eax,%eax
    1557:	89 44 24 24          	mov    %eax,0x24(%rsp)
    155b:	8b 04 24             	mov    (%rsp),%eax
    155e:	69 c0 66 b8 00 00    	imul   $0xb866,%eax,%eax
    1564:	89 04 24             	mov    %eax,(%rsp)
    1567:	8b 44 24 14          	mov    0x14(%rsp),%eax
    156b:	69 c0 93 76 00 00    	imul   $0x7693,%eax,%eax
    1571:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1575:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1579:	69 c0 59 92 00 00    	imul   $0x9259,%eax,%eax
    157f:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1583:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1587:	69 c0 23 8f 00 00    	imul   $0x8f23,%eax,%eax
    158d:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1591:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1595:	69 c0 c5 26 00 00    	imul   $0x26c5,%eax,%eax
    159b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    159f:	8b 44 24 04          	mov    0x4(%rsp),%eax
    15a3:	69 c0 f7 d4 00 00    	imul   $0xd4f7,%eax,%eax
    15a9:	89 44 24 04          	mov    %eax,0x4(%rsp)
    15ad:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    15b1:	69 c0 76 49 00 00    	imul   $0x4976,%eax,%eax
    15b7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    15bb:	8b 44 24 24          	mov    0x24(%rsp),%eax
    15bf:	69 c0 5e da 00 00    	imul   $0xda5e,%eax,%eax
    15c5:	89 44 24 24          	mov    %eax,0x24(%rsp)
    15c9:	8b 44 24 08          	mov    0x8(%rsp),%eax
    15cd:	69 c0 6d c2 00 00    	imul   $0xc26d,%eax,%eax
    15d3:	89 44 24 08          	mov    %eax,0x8(%rsp)
    15d7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    15db:	69 c0 69 83 00 00    	imul   $0x8369,%eax,%eax
    15e1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    15e5:	8b 44 24 04          	mov    0x4(%rsp),%eax
    15e9:	69 c0 13 ca 00 00    	imul   $0xca13,%eax,%eax
    15ef:	89 44 24 04          	mov    %eax,0x4(%rsp)
    15f3:	8b 44 24 20          	mov    0x20(%rsp),%eax
    15f7:	69 c0 38 ce 00 00    	imul   $0xce38,%eax,%eax
    15fd:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1601:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1605:	69 c0 31 78 00 00    	imul   $0x7831,%eax,%eax
    160b:	89 44 24 18          	mov    %eax,0x18(%rsp)
    160f:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1613:	69 c0 f9 1c 00 00    	imul   $0x1cf9,%eax,%eax
    1619:	89 44 24 18          	mov    %eax,0x18(%rsp)
    161d:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1621:	69 c0 76 21 00 00    	imul   $0x2176,%eax,%eax
    1627:	89 44 24 14          	mov    %eax,0x14(%rsp)
    162b:	8b 44 24 24          	mov    0x24(%rsp),%eax
    162f:	69 c0 9b 72 00 00    	imul   $0x729b,%eax,%eax
    1635:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1639:	8b 04 24             	mov    (%rsp),%eax
    163c:	69 c0 bb 21 00 00    	imul   $0x21bb,%eax,%eax
    1642:	89 04 24             	mov    %eax,(%rsp)
    1645:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1649:	69 c0 f4 6f 00 00    	imul   $0x6ff4,%eax,%eax
    164f:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1653:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1657:	69 c0 da 46 00 00    	imul   $0x46da,%eax,%eax
    165d:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1661:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1665:	69 c0 19 f0 00 00    	imul   $0xf019,%eax,%eax
    166b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    166f:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1673:	69 c0 fc c1 00 00    	imul   $0xc1fc,%eax,%eax
    1679:	89 44 24 20          	mov    %eax,0x20(%rsp)
    167d:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1681:	69 c0 57 b2 00 00    	imul   $0xb257,%eax,%eax
    1687:	89 44 24 20          	mov    %eax,0x20(%rsp)
    168b:	8b 44 24 14          	mov    0x14(%rsp),%eax
    168f:	69 c0 74 b0 00 00    	imul   $0xb074,%eax,%eax
    1695:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1699:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    169d:	69 c0 89 77 00 00    	imul   $0x7789,%eax,%eax
    16a3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    16a7:	8b 44 24 18          	mov    0x18(%rsp),%eax
    16ab:	69 c0 6b 8d 00 00    	imul   $0x8d6b,%eax,%eax
    16b1:	89 44 24 18          	mov    %eax,0x18(%rsp)
    16b5:	8b 44 24 20          	mov    0x20(%rsp),%eax
    16b9:	69 c0 be 69 00 00    	imul   $0x69be,%eax,%eax
    16bf:	89 44 24 20          	mov    %eax,0x20(%rsp)
    16c3:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16c7:	69 c0 70 f6 00 00    	imul   $0xf670,%eax,%eax
    16cd:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16d1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    16d5:	69 c0 b1 14 00 00    	imul   $0x14b1,%eax,%eax
    16db:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    16df:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16e3:	69 c0 b3 31 00 00    	imul   $0x31b3,%eax,%eax
    16e9:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16ed:	8b 44 24 24          	mov    0x24(%rsp),%eax
    16f1:	69 c0 b7 00 00 00    	imul   $0xb7,%eax,%eax
    16f7:	89 44 24 24          	mov    %eax,0x24(%rsp)
    16fb:	8b 44 24 18          	mov    0x18(%rsp),%eax
    16ff:	69 c0 19 a3 00 00    	imul   $0xa319,%eax,%eax
    1705:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1709:	8b 44 24 08          	mov    0x8(%rsp),%eax
    170d:	69 c0 06 2d 00 00    	imul   $0x2d06,%eax,%eax
    1713:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1717:	8b 44 24 20          	mov    0x20(%rsp),%eax
    171b:	69 c0 81 5c 00 00    	imul   $0x5c81,%eax,%eax
    1721:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1725:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1729:	69 c0 e8 78 00 00    	imul   $0x78e8,%eax,%eax
    172f:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1733:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1737:	69 c0 11 9c 00 00    	imul   $0x9c11,%eax,%eax
    173d:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1741:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1745:	69 c0 fa 10 00 00    	imul   $0x10fa,%eax,%eax
    174b:	89 44 24 04          	mov    %eax,0x4(%rsp)
    174f:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1753:	69 c0 12 2e 00 00    	imul   $0x2e12,%eax,%eax
    1759:	89 44 24 24          	mov    %eax,0x24(%rsp)
    175d:	8b 04 24             	mov    (%rsp),%eax
    1760:	69 c0 7f 69 00 00    	imul   $0x697f,%eax,%eax
    1766:	89 04 24             	mov    %eax,(%rsp)
    1769:	8b 44 24 04          	mov    0x4(%rsp),%eax
    176d:	69 c0 07 50 00 00    	imul   $0x5007,%eax,%eax
    1773:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1777:	8b 44 24 10          	mov    0x10(%rsp),%eax
    177b:	69 c0 67 51 00 00    	imul   $0x5167,%eax,%eax
    1781:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1785:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1789:	69 c0 fb db 00 00    	imul   $0xdbfb,%eax,%eax
    178f:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1793:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1797:	69 c0 f1 34 00 00    	imul   $0x34f1,%eax,%eax
    179d:	89 44 24 04          	mov    %eax,0x4(%rsp)
    17a1:	8b 44 24 08          	mov    0x8(%rsp),%eax
    17a5:	69 c0 1c f3 00 00    	imul   $0xf31c,%eax,%eax
    17ab:	89 44 24 08          	mov    %eax,0x8(%rsp)
    17af:	8b 44 24 24          	mov    0x24(%rsp),%eax
    17b3:	69 c0 0c 41 00 00    	imul   $0x410c,%eax,%eax
    17b9:	89 44 24 24          	mov    %eax,0x24(%rsp)
    17bd:	8b 44 24 14          	mov    0x14(%rsp),%eax
    17c1:	69 c0 4c 7b 00 00    	imul   $0x7b4c,%eax,%eax
    17c7:	89 44 24 14          	mov    %eax,0x14(%rsp)
    17cb:	8b 44 24 10          	mov    0x10(%rsp),%eax
    17cf:	69 c0 f9 77 00 00    	imul   $0x77f9,%eax,%eax
    17d5:	89 44 24 10          	mov    %eax,0x10(%rsp)
    17d9:	8b 44 24 04          	mov    0x4(%rsp),%eax
    17dd:	69 c0 16 b5 00 00    	imul   $0xb516,%eax,%eax
    17e3:	89 44 24 04          	mov    %eax,0x4(%rsp)
    17e7:	8b 44 24 04          	mov    0x4(%rsp),%eax
    17eb:	69 c0 3a e3 00 00    	imul   $0xe33a,%eax,%eax
    17f1:	89 44 24 04          	mov    %eax,0x4(%rsp)
    17f5:	8b 44 24 04          	mov    0x4(%rsp),%eax
    17f9:	69 c0 fa 41 00 00    	imul   $0x41fa,%eax,%eax
    17ff:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1803:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1807:	69 c0 f2 b4 00 00    	imul   $0xb4f2,%eax,%eax
    180d:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1811:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1815:	69 c0 24 c5 00 00    	imul   $0xc524,%eax,%eax
    181b:	89 44 24 10          	mov    %eax,0x10(%rsp)
    181f:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1823:	69 c0 19 3c 00 00    	imul   $0x3c19,%eax,%eax
    1829:	89 44 24 08          	mov    %eax,0x8(%rsp)
    182d:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1831:	69 c0 3e 89 00 00    	imul   $0x893e,%eax,%eax
    1837:	89 44 24 18          	mov    %eax,0x18(%rsp)
    183b:	8b 44 24 04          	mov    0x4(%rsp),%eax
    183f:	69 c0 bc d1 00 00    	imul   $0xd1bc,%eax,%eax
    1845:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1849:	8b 04 24             	mov    (%rsp),%eax
    184c:	69 c0 a1 86 00 00    	imul   $0x86a1,%eax,%eax
    1852:	89 04 24             	mov    %eax,(%rsp)
    1855:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1859:	69 c0 b7 b6 00 00    	imul   $0xb6b7,%eax,%eax
    185f:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1863:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1867:	69 c0 4a de 00 00    	imul   $0xde4a,%eax,%eax
    186d:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1871:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1875:	69 c0 08 35 00 00    	imul   $0x3508,%eax,%eax
    187b:	89 44 24 10          	mov    %eax,0x10(%rsp)
    187f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1883:	69 c0 4a 35 00 00    	imul   $0x354a,%eax,%eax
    1889:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    188d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1891:	69 c0 36 f6 00 00    	imul   $0xf636,%eax,%eax
    1897:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    189b:	8b 44 24 14          	mov    0x14(%rsp),%eax
    189f:	69 c0 d8 b7 00 00    	imul   $0xb7d8,%eax,%eax
    18a5:	89 44 24 14          	mov    %eax,0x14(%rsp)
    18a9:	ba 00 00 00 00       	mov    $0x0,%edx
    18ae:	b8 00 00 00 00       	mov    $0x0,%eax
    18b3:	eb 0a                	jmp    18bf <scramble+0x41b>
    18b5:	89 d1                	mov    %edx,%ecx
    18b7:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
    18ba:	01 c8                	add    %ecx,%eax
    18bc:	83 c2 01             	add    $0x1,%edx
    18bf:	83 fa 09             	cmp    $0x9,%edx
    18c2:	76 f1                	jbe    18b5 <scramble+0x411>
    18c4:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    18c9:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    18d0:	00 00 
    18d2:	75 05                	jne    18d9 <scramble+0x435>
    18d4:	48 83 c4 38          	add    $0x38,%rsp
    18d8:	c3                   	retq   
    18d9:	e8 52 f5 ff ff       	callq  e30 <__stack_chk_fail@plt>

00000000000018de <getbuf>:
    18de:	48 83 ec 18          	sub    $0x18,%rsp
    18e2:	48 89 e7             	mov    %rsp,%rdi
    18e5:	e8 b9 03 00 00       	callq  1ca3 <Gets>
    18ea:	b8 01 00 00 00       	mov    $0x1,%eax
    18ef:	48 83 c4 18          	add    $0x18,%rsp
    18f3:	c3                   	retq   

00000000000018f4 <touch1>:
    18f4:	48 83 ec 08          	sub    $0x8,%rsp
    18f8:	c7 05 da 3a 20 00 01 	movl   $0x1,0x203ada(%rip)        # 2053dc <vlevel>
    18ff:	00 00 00 
    1902:	48 8d 3d 8e 1a 00 00 	lea    0x1a8e(%rip),%rdi        # 3397 <_IO_stdin_used+0x2c7>
    1909:	e8 02 f5 ff ff       	callq  e10 <puts@plt>
    190e:	bf 01 00 00 00       	mov    $0x1,%edi
    1913:	e8 fb 05 00 00       	callq  1f13 <validate>
    1918:	bf 00 00 00 00       	mov    $0x0,%edi
    191d:	e8 5e f6 ff ff       	callq  f80 <exit@plt>

0000000000001922 <touch2>:
    1922:	48 83 ec 08          	sub    $0x8,%rsp
    1926:	89 fa                	mov    %edi,%edx
    1928:	c7 05 aa 3a 20 00 02 	movl   $0x2,0x203aaa(%rip)        # 2053dc <vlevel>
    192f:	00 00 00 
    1932:	39 3d ac 3a 20 00    	cmp    %edi,0x203aac(%rip)        # 2053e4 <cookie>
    1938:	74 2a                	je     1964 <touch2+0x42>
    193a:	48 8d 35 a7 1a 00 00 	lea    0x1aa7(%rip),%rsi        # 33e8 <_IO_stdin_used+0x318>
    1941:	bf 01 00 00 00       	mov    $0x1,%edi
    1946:	b8 00 00 00 00       	mov    $0x0,%eax
    194b:	e8 e0 f5 ff ff       	callq  f30 <__printf_chk@plt>
    1950:	bf 02 00 00 00       	mov    $0x2,%edi
    1955:	e8 89 06 00 00       	callq  1fe3 <fail>
    195a:	bf 00 00 00 00       	mov    $0x0,%edi
    195f:	e8 1c f6 ff ff       	callq  f80 <exit@plt>
    1964:	48 8d 35 55 1a 00 00 	lea    0x1a55(%rip),%rsi        # 33c0 <_IO_stdin_used+0x2f0>
    196b:	bf 01 00 00 00       	mov    $0x1,%edi
    1970:	b8 00 00 00 00       	mov    $0x0,%eax
    1975:	e8 b6 f5 ff ff       	callq  f30 <__printf_chk@plt>
    197a:	bf 02 00 00 00       	mov    $0x2,%edi
    197f:	e8 8f 05 00 00       	callq  1f13 <validate>
    1984:	eb d4                	jmp    195a <touch2+0x38>

0000000000001986 <hexmatch>:
    1986:	41 54                	push   %r12
    1988:	55                   	push   %rbp
    1989:	53                   	push   %rbx
    198a:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    198e:	89 fd                	mov    %edi,%ebp
    1990:	48 89 f3             	mov    %rsi,%rbx
    1993:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    199a:	00 00 
    199c:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    19a1:	31 c0                	xor    %eax,%eax
    19a3:	e8 48 f5 ff ff       	callq  ef0 <random@plt>
    19a8:	48 89 c1             	mov    %rax,%rcx
    19ab:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
    19b2:	0a d7 a3 
    19b5:	48 f7 ea             	imul   %rdx
    19b8:	48 01 ca             	add    %rcx,%rdx
    19bb:	48 c1 fa 06          	sar    $0x6,%rdx
    19bf:	48 89 c8             	mov    %rcx,%rax
    19c2:	48 c1 f8 3f          	sar    $0x3f,%rax
    19c6:	48 29 c2             	sub    %rax,%rdx
    19c9:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    19cd:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    19d1:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
    19d8:	00 
    19d9:	48 29 c1             	sub    %rax,%rcx
    19dc:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
    19e0:	41 89 e8             	mov    %ebp,%r8d
    19e3:	48 8d 0d ca 19 00 00 	lea    0x19ca(%rip),%rcx        # 33b4 <_IO_stdin_used+0x2e4>
    19ea:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    19f1:	be 01 00 00 00       	mov    $0x1,%esi
    19f6:	4c 89 e7             	mov    %r12,%rdi
    19f9:	b8 00 00 00 00       	mov    $0x0,%eax
    19fe:	e8 ad f5 ff ff       	callq  fb0 <__sprintf_chk@plt>
    1a03:	ba 09 00 00 00       	mov    $0x9,%edx
    1a08:	4c 89 e6             	mov    %r12,%rsi
    1a0b:	48 89 df             	mov    %rbx,%rdi
    1a0e:	e8 dd f3 ff ff       	callq  df0 <strncmp@plt>
    1a13:	85 c0                	test   %eax,%eax
    1a15:	0f 94 c0             	sete   %al
    1a18:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
    1a1d:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    1a24:	00 00 
    1a26:	75 0c                	jne    1a34 <hexmatch+0xae>
    1a28:	0f b6 c0             	movzbl %al,%eax
    1a2b:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    1a2f:	5b                   	pop    %rbx
    1a30:	5d                   	pop    %rbp
    1a31:	41 5c                	pop    %r12
    1a33:	c3                   	retq   
    1a34:	e8 f7 f3 ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000001a39 <touch3>:
    1a39:	53                   	push   %rbx
    1a3a:	48 89 fb             	mov    %rdi,%rbx
    1a3d:	c7 05 95 39 20 00 03 	movl   $0x3,0x203995(%rip)        # 2053dc <vlevel>
    1a44:	00 00 00 
    1a47:	48 89 fe             	mov    %rdi,%rsi
    1a4a:	8b 3d 94 39 20 00    	mov    0x203994(%rip),%edi        # 2053e4 <cookie>
    1a50:	e8 31 ff ff ff       	callq  1986 <hexmatch>
    1a55:	85 c0                	test   %eax,%eax
    1a57:	74 2d                	je     1a86 <touch3+0x4d>
    1a59:	48 89 da             	mov    %rbx,%rdx
    1a5c:	48 8d 35 ad 19 00 00 	lea    0x19ad(%rip),%rsi        # 3410 <_IO_stdin_used+0x340>
    1a63:	bf 01 00 00 00       	mov    $0x1,%edi
    1a68:	b8 00 00 00 00       	mov    $0x0,%eax
    1a6d:	e8 be f4 ff ff       	callq  f30 <__printf_chk@plt>
    1a72:	bf 03 00 00 00       	mov    $0x3,%edi
    1a77:	e8 97 04 00 00       	callq  1f13 <validate>
    1a7c:	bf 00 00 00 00       	mov    $0x0,%edi
    1a81:	e8 fa f4 ff ff       	callq  f80 <exit@plt>
    1a86:	48 89 da             	mov    %rbx,%rdx
    1a89:	48 8d 35 a8 19 00 00 	lea    0x19a8(%rip),%rsi        # 3438 <_IO_stdin_used+0x368>
    1a90:	bf 01 00 00 00       	mov    $0x1,%edi
    1a95:	b8 00 00 00 00       	mov    $0x0,%eax
    1a9a:	e8 91 f4 ff ff       	callq  f30 <__printf_chk@plt>
    1a9f:	bf 03 00 00 00       	mov    $0x3,%edi
    1aa4:	e8 3a 05 00 00       	callq  1fe3 <fail>
    1aa9:	eb d1                	jmp    1a7c <touch3+0x43>

0000000000001aab <test>:
    1aab:	48 83 ec 08          	sub    $0x8,%rsp
    1aaf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab4:	e8 25 fe ff ff       	callq  18de <getbuf>
    1ab9:	89 c2                	mov    %eax,%edx
    1abb:	48 8d 35 9e 19 00 00 	lea    0x199e(%rip),%rsi        # 3460 <_IO_stdin_used+0x390>
    1ac2:	bf 01 00 00 00       	mov    $0x1,%edi
    1ac7:	b8 00 00 00 00       	mov    $0x0,%eax
    1acc:	e8 5f f4 ff ff       	callq  f30 <__printf_chk@plt>
    1ad1:	48 83 c4 08          	add    $0x8,%rsp
    1ad5:	c3                   	retq   

0000000000001ad6 <start_farm>:
    1ad6:	b8 01 00 00 00       	mov    $0x1,%eax
    1adb:	c3                   	retq   

0000000000001adc <addval_210>:
    1adc:	8d 87 73 d8 90 90    	lea    -0x6f6f278d(%rdi),%eax
    1ae2:	c3                   	retq   

0000000000001ae3 <getval_441>:
    1ae3:	b8 48 89 c7 c7       	mov    $0xc7c78948,%eax
    1ae8:	c3                   	retq   

0000000000001ae9 <setval_269>:
    1ae9:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
    1aef:	c3                   	retq   

0000000000001af0 <addval_184>:
    1af0:	8d 87 48 89 c7 92    	lea    -0x6d3876b8(%rdi),%eax
    1af6:	c3                   	retq   

0000000000001af7 <setval_400>:
    1af7:	c7 07 f7 4a 58 c3    	movl   $0xc3584af7,(%rdi)
    1afd:	c3                   	retq   

0000000000001afe <setval_435>:
    1afe:	c7 07 62 58 90 90    	movl   $0x90905862,(%rdi)
    1b04:	c3                   	retq   

0000000000001b05 <setval_122>:
    1b05:	c7 07 21 99 58 94    	movl   $0x94589921,(%rdi)
    1b0b:	c3                   	retq   

0000000000001b0c <setval_442>:
    1b0c:	c7 07 51 48 89 c7    	movl   $0xc7894851,(%rdi)
    1b12:	c3                   	retq   

0000000000001b13 <mid_farm>:
    1b13:	b8 01 00 00 00       	mov    $0x1,%eax
    1b18:	c3                   	retq   

0000000000001b19 <add_xy>:
    1b19:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1b1d:	c3                   	retq   

0000000000001b1e <getval_332>:
    1b1e:	b8 89 d6 90 c3       	mov    $0xc390d689,%eax
    1b23:	c3                   	retq   

0000000000001b24 <addval_437>:
    1b24:	8d 87 09 d6 38 c9    	lea    -0x36c729f7(%rdi),%eax
    1b2a:	c3                   	retq   

0000000000001b2b <getval_195>:
    1b2b:	b8 c9 ca 84 c0       	mov    $0xc084cac9,%eax
    1b30:	c3                   	retq   

0000000000001b31 <addval_232>:
    1b31:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
    1b37:	c3                   	retq   

0000000000001b38 <addval_128>:
    1b38:	8d 87 89 c1 18 c9    	lea    -0x36e73e77(%rdi),%eax
    1b3e:	c3                   	retq   

0000000000001b3f <addval_343>:
    1b3f:	8d 87 49 89 e0 90    	lea    -0x6f1f76b7(%rdi),%eax
    1b45:	c3                   	retq   

0000000000001b46 <addval_199>:
    1b46:	8d 87 c9 c1 84 c9    	lea    -0x367b3e37(%rdi),%eax
    1b4c:	c3                   	retq   

0000000000001b4d <addval_488>:
    1b4d:	8d 87 89 ca a4 d2    	lea    -0x2d5b3577(%rdi),%eax
    1b53:	c3                   	retq   

0000000000001b54 <addval_261>:
    1b54:	8d 87 89 c1 a4 db    	lea    -0x245b3e77(%rdi),%eax
    1b5a:	c3                   	retq   

0000000000001b5b <setval_234>:
    1b5b:	c7 07 88 c1 c3 50    	movl   $0x50c3c188,(%rdi)
    1b61:	c3                   	retq   

0000000000001b62 <addval_351>:
    1b62:	8d 87 99 ca 84 c9    	lea    -0x367b3567(%rdi),%eax
    1b68:	c3                   	retq   

0000000000001b69 <getval_321>:
    1b69:	b8 89 c1 48 d2       	mov    $0xd248c189,%eax
    1b6e:	c3                   	retq   

0000000000001b6f <getval_391>:
    1b6f:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
    1b74:	c3                   	retq   

0000000000001b75 <getval_276>:
    1b75:	b8 89 d6 c4 d2       	mov    $0xd2c4d689,%eax
    1b7a:	c3                   	retq   

0000000000001b7b <getval_283>:
    1b7b:	b8 89 ca 84 c9       	mov    $0xc984ca89,%eax
    1b80:	c3                   	retq   

0000000000001b81 <setval_461>:
    1b81:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
    1b87:	c3                   	retq   

0000000000001b88 <setval_155>:
    1b88:	c7 07 d3 89 ca c3    	movl   $0xc3ca89d3,(%rdi)
    1b8e:	c3                   	retq   

0000000000001b8f <addval_149>:
    1b8f:	8d 87 2d 89 ca 94    	lea    -0x6b3576d3(%rdi),%eax
    1b95:	c3                   	retq   

0000000000001b96 <getval_364>:
    1b96:	b8 89 d6 60 c0       	mov    $0xc060d689,%eax
    1b9b:	c3                   	retq   

0000000000001b9c <getval_316>:
    1b9c:	b8 89 c1 08 db       	mov    $0xdb08c189,%eax
    1ba1:	c3                   	retq   

0000000000001ba2 <addval_156>:
    1ba2:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
    1ba8:	c3                   	retq   

0000000000001ba9 <setval_482>:
    1ba9:	c7 07 17 89 c1 c2    	movl   $0xc2c18917,(%rdi)
    1baf:	c3                   	retq   

0000000000001bb0 <addval_139>:
    1bb0:	8d 87 a9 d6 08 db    	lea    -0x24f72957(%rdi),%eax
    1bb6:	c3                   	retq   

0000000000001bb7 <setval_342>:
    1bb7:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
    1bbd:	c3                   	retq   

0000000000001bbe <setval_349>:
    1bbe:	c7 07 89 d6 38 c0    	movl   $0xc038d689,(%rdi)
    1bc4:	c3                   	retq   

0000000000001bc5 <addval_223>:
    1bc5:	8d 87 96 89 ca c1    	lea    -0x3e35766a(%rdi),%eax
    1bcb:	c3                   	retq   

0000000000001bcc <setval_144>:
    1bcc:	c7 07 48 a9 e0 c3    	movl   $0xc3e0a948,(%rdi)
    1bd2:	c3                   	retq   

0000000000001bd3 <addval_222>:
    1bd3:	8d 87 89 c1 20 db    	lea    -0x24df3e77(%rdi),%eax
    1bd9:	c3                   	retq   

0000000000001bda <getval_466>:
    1bda:	b8 89 ca 48 c9       	mov    $0xc948ca89,%eax
    1bdf:	c3                   	retq   

0000000000001be0 <setval_496>:
    1be0:	c7 07 48 8d e0 c3    	movl   $0xc3e08d48,(%rdi)
    1be6:	c3                   	retq   

0000000000001be7 <setval_107>:
    1be7:	c7 07 99 d6 84 d2    	movl   $0xd284d699,(%rdi)
    1bed:	c3                   	retq   

0000000000001bee <setval_251>:
    1bee:	c7 07 a9 d6 20 db    	movl   $0xdb20d6a9,(%rdi)
    1bf4:	c3                   	retq   

0000000000001bf5 <end_farm>:
    1bf5:	b8 01 00 00 00       	mov    $0x1,%eax
    1bfa:	c3                   	retq   

0000000000001bfb <save_char>:
    1bfb:	8b 05 03 44 20 00    	mov    0x204403(%rip),%eax        # 206004 <gets_cnt>
    1c01:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    1c06:	7f 4a                	jg     1c52 <save_char+0x57>
    1c08:	89 f9                	mov    %edi,%ecx
    1c0a:	c0 e9 04             	shr    $0x4,%cl
    1c0d:	8d 14 40             	lea    (%rax,%rax,2),%edx
    1c10:	4c 8d 05 69 1b 00 00 	lea    0x1b69(%rip),%r8        # 3780 <trans_char>
    1c17:	83 e1 0f             	and    $0xf,%ecx
    1c1a:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
    1c1f:	48 8d 0d da 37 20 00 	lea    0x2037da(%rip),%rcx        # 205400 <gets_buf>
    1c26:	48 63 f2             	movslq %edx,%rsi
    1c29:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
    1c2d:	8d 72 01             	lea    0x1(%rdx),%esi
    1c30:	83 e7 0f             	and    $0xf,%edi
    1c33:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
    1c38:	48 63 f6             	movslq %esi,%rsi
    1c3b:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
    1c3f:	83 c2 02             	add    $0x2,%edx
    1c42:	48 63 d2             	movslq %edx,%rdx
    1c45:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
    1c49:	83 c0 01             	add    $0x1,%eax
    1c4c:	89 05 b2 43 20 00    	mov    %eax,0x2043b2(%rip)        # 206004 <gets_cnt>
    1c52:	f3 c3                	repz retq 

0000000000001c54 <save_term>:
    1c54:	8b 05 aa 43 20 00    	mov    0x2043aa(%rip),%eax        # 206004 <gets_cnt>
    1c5a:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1c5d:	48 98                	cltq   
    1c5f:	48 8d 15 9a 37 20 00 	lea    0x20379a(%rip),%rdx        # 205400 <gets_buf>
    1c66:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1c6a:	c3                   	retq   

0000000000001c6b <check_fail>:
    1c6b:	48 83 ec 08          	sub    $0x8,%rsp
    1c6f:	0f be 15 92 43 20 00 	movsbl 0x204392(%rip),%edx        # 206008 <target_prefix>
    1c76:	4c 8d 05 83 37 20 00 	lea    0x203783(%rip),%r8        # 205400 <gets_buf>
    1c7d:	8b 0d 55 37 20 00    	mov    0x203755(%rip),%ecx        # 2053d8 <check_level>
    1c83:	48 8d 35 f9 17 00 00 	lea    0x17f9(%rip),%rsi        # 3483 <_IO_stdin_used+0x3b3>
    1c8a:	bf 01 00 00 00       	mov    $0x1,%edi
    1c8f:	b8 00 00 00 00       	mov    $0x0,%eax
    1c94:	e8 97 f2 ff ff       	callq  f30 <__printf_chk@plt>
    1c99:	bf 01 00 00 00       	mov    $0x1,%edi
    1c9e:	e8 dd f2 ff ff       	callq  f80 <exit@plt>

0000000000001ca3 <Gets>:
    1ca3:	41 54                	push   %r12
    1ca5:	55                   	push   %rbp
    1ca6:	53                   	push   %rbx
    1ca7:	49 89 fc             	mov    %rdi,%r12
    1caa:	c7 05 50 43 20 00 00 	movl   $0x0,0x204350(%rip)        # 206004 <gets_cnt>
    1cb1:	00 00 00 
    1cb4:	48 89 fb             	mov    %rdi,%rbx
    1cb7:	eb 11                	jmp    1cca <Gets+0x27>
    1cb9:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
    1cbd:	88 03                	mov    %al,(%rbx)
    1cbf:	0f b6 f8             	movzbl %al,%edi
    1cc2:	e8 34 ff ff ff       	callq  1bfb <save_char>
    1cc7:	48 89 eb             	mov    %rbp,%rbx
    1cca:	48 8b 3d ff 36 20 00 	mov    0x2036ff(%rip),%rdi        # 2053d0 <infile>
    1cd1:	e8 2a f2 ff ff       	callq  f00 <_IO_getc@plt>
    1cd6:	83 f8 ff             	cmp    $0xffffffff,%eax
    1cd9:	74 05                	je     1ce0 <Gets+0x3d>
    1cdb:	83 f8 0a             	cmp    $0xa,%eax
    1cde:	75 d9                	jne    1cb9 <Gets+0x16>
    1ce0:	c6 03 00             	movb   $0x0,(%rbx)
    1ce3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ce8:	e8 67 ff ff ff       	callq  1c54 <save_term>
    1ced:	4c 89 e0             	mov    %r12,%rax
    1cf0:	5b                   	pop    %rbx
    1cf1:	5d                   	pop    %rbp
    1cf2:	41 5c                	pop    %r12
    1cf4:	c3                   	retq   

0000000000001cf5 <notify_server>:
    1cf5:	55                   	push   %rbp
    1cf6:	53                   	push   %rbx
    1cf7:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1cfe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d05:	00 00 
    1d07:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1d0e:	00 
    1d0f:	31 c0                	xor    %eax,%eax
    1d11:	83 3d d0 36 20 00 00 	cmpl   $0x0,0x2036d0(%rip)        # 2053e8 <is_checker>
    1d18:	0f 85 d2 00 00 00    	jne    1df0 <notify_server+0xfb>
    1d1e:	89 fb                	mov    %edi,%ebx
    1d20:	8b 05 de 42 20 00    	mov    0x2042de(%rip),%eax        # 206004 <gets_cnt>
    1d26:	83 c0 64             	add    $0x64,%eax
    1d29:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1d2e:	0f 8f dd 00 00 00    	jg     1e11 <notify_server+0x11c>
    1d34:	0f be 05 cd 42 20 00 	movsbl 0x2042cd(%rip),%eax        # 206008 <target_prefix>
    1d3b:	83 3d 26 36 20 00 00 	cmpl   $0x0,0x203626(%rip)        # 205368 <notify>
    1d42:	0f 84 e9 00 00 00    	je     1e31 <notify_server+0x13c>
    1d48:	8b 15 92 36 20 00    	mov    0x203692(%rip),%edx        # 2053e0 <authkey>
    1d4e:	85 db                	test   %ebx,%ebx
    1d50:	0f 84 e5 00 00 00    	je     1e3b <notify_server+0x146>
    1d56:	48 8d 2d 3c 17 00 00 	lea    0x173c(%rip),%rbp        # 3499 <_IO_stdin_used+0x3c9>
    1d5d:	48 89 e7             	mov    %rsp,%rdi
    1d60:	48 8d 0d 99 36 20 00 	lea    0x203699(%rip),%rcx        # 205400 <gets_buf>
    1d67:	51                   	push   %rcx
    1d68:	56                   	push   %rsi
    1d69:	50                   	push   %rax
    1d6a:	52                   	push   %rdx
    1d6b:	49 89 e9             	mov    %rbp,%r9
    1d6e:	44 8b 05 9b 32 20 00 	mov    0x20329b(%rip),%r8d        # 205010 <target_id>
    1d75:	48 8d 0d 27 17 00 00 	lea    0x1727(%rip),%rcx        # 34a3 <_IO_stdin_used+0x3d3>
    1d7c:	ba 00 20 00 00       	mov    $0x2000,%edx
    1d81:	be 01 00 00 00       	mov    $0x1,%esi
    1d86:	b8 00 00 00 00       	mov    $0x0,%eax
    1d8b:	e8 20 f2 ff ff       	callq  fb0 <__sprintf_chk@plt>
    1d90:	48 83 c4 20          	add    $0x20,%rsp
    1d94:	83 3d cd 35 20 00 00 	cmpl   $0x0,0x2035cd(%rip)        # 205368 <notify>
    1d9b:	0f 84 df 00 00 00    	je     1e80 <notify_server+0x18b>
    1da1:	85 db                	test   %ebx,%ebx
    1da3:	0f 84 c6 00 00 00    	je     1e6f <notify_server+0x17a>
    1da9:	48 89 e1             	mov    %rsp,%rcx
    1dac:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1db3:	00 
    1db4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1dba:	48 8b 15 67 32 20 00 	mov    0x203267(%rip),%rdx        # 205028 <lab>
    1dc1:	48 8b 35 68 32 20 00 	mov    0x203268(%rip),%rsi        # 205030 <course>
    1dc8:	48 8b 3d 51 32 20 00 	mov    0x203251(%rip),%rdi        # 205020 <user_id>
    1dcf:	e8 af 11 00 00       	callq  2f83 <driver_post>
    1dd4:	85 c0                	test   %eax,%eax
    1dd6:	78 6f                	js     1e47 <notify_server+0x152>
    1dd8:	48 8d 3d 09 18 00 00 	lea    0x1809(%rip),%rdi        # 35e8 <_IO_stdin_used+0x518>
    1ddf:	e8 2c f0 ff ff       	callq  e10 <puts@plt>
    1de4:	48 8d 3d e0 16 00 00 	lea    0x16e0(%rip),%rdi        # 34cb <_IO_stdin_used+0x3fb>
    1deb:	e8 20 f0 ff ff       	callq  e10 <puts@plt>
    1df0:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1df7:	00 
    1df8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1dff:	00 00 
    1e01:	0f 85 07 01 00 00    	jne    1f0e <notify_server+0x219>
    1e07:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1e0e:	5b                   	pop    %rbx
    1e0f:	5d                   	pop    %rbp
    1e10:	c3                   	retq   
    1e11:	48 8d 35 a0 17 00 00 	lea    0x17a0(%rip),%rsi        # 35b8 <_IO_stdin_used+0x4e8>
    1e18:	bf 01 00 00 00       	mov    $0x1,%edi
    1e1d:	b8 00 00 00 00       	mov    $0x0,%eax
    1e22:	e8 09 f1 ff ff       	callq  f30 <__printf_chk@plt>
    1e27:	bf 01 00 00 00       	mov    $0x1,%edi
    1e2c:	e8 4f f1 ff ff       	callq  f80 <exit@plt>
    1e31:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1e36:	e9 13 ff ff ff       	jmpq   1d4e <notify_server+0x59>
    1e3b:	48 8d 2d 5c 16 00 00 	lea    0x165c(%rip),%rbp        # 349e <_IO_stdin_used+0x3ce>
    1e42:	e9 16 ff ff ff       	jmpq   1d5d <notify_server+0x68>
    1e47:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
    1e4e:	00 
    1e4f:	48 8d 35 69 16 00 00 	lea    0x1669(%rip),%rsi        # 34bf <_IO_stdin_used+0x3ef>
    1e56:	bf 01 00 00 00       	mov    $0x1,%edi
    1e5b:	b8 00 00 00 00       	mov    $0x0,%eax
    1e60:	e8 cb f0 ff ff       	callq  f30 <__printf_chk@plt>
    1e65:	bf 01 00 00 00       	mov    $0x1,%edi
    1e6a:	e8 11 f1 ff ff       	callq  f80 <exit@plt>
    1e6f:	48 8d 3d 5f 16 00 00 	lea    0x165f(%rip),%rdi        # 34d5 <_IO_stdin_used+0x405>
    1e76:	e8 95 ef ff ff       	callq  e10 <puts@plt>
    1e7b:	e9 70 ff ff ff       	jmpq   1df0 <notify_server+0xfb>
    1e80:	48 89 ea             	mov    %rbp,%rdx
    1e83:	48 8d 35 96 17 00 00 	lea    0x1796(%rip),%rsi        # 3620 <_IO_stdin_used+0x550>
    1e8a:	bf 01 00 00 00       	mov    $0x1,%edi
    1e8f:	b8 00 00 00 00       	mov    $0x0,%eax
    1e94:	e8 97 f0 ff ff       	callq  f30 <__printf_chk@plt>
    1e99:	48 8b 15 80 31 20 00 	mov    0x203180(%rip),%rdx        # 205020 <user_id>
    1ea0:	48 8d 35 35 16 00 00 	lea    0x1635(%rip),%rsi        # 34dc <_IO_stdin_used+0x40c>
    1ea7:	bf 01 00 00 00       	mov    $0x1,%edi
    1eac:	b8 00 00 00 00       	mov    $0x0,%eax
    1eb1:	e8 7a f0 ff ff       	callq  f30 <__printf_chk@plt>
    1eb6:	48 8b 15 73 31 20 00 	mov    0x203173(%rip),%rdx        # 205030 <course>
    1ebd:	48 8d 35 25 16 00 00 	lea    0x1625(%rip),%rsi        # 34e9 <_IO_stdin_used+0x419>
    1ec4:	bf 01 00 00 00       	mov    $0x1,%edi
    1ec9:	b8 00 00 00 00       	mov    $0x0,%eax
    1ece:	e8 5d f0 ff ff       	callq  f30 <__printf_chk@plt>
    1ed3:	48 8b 15 4e 31 20 00 	mov    0x20314e(%rip),%rdx        # 205028 <lab>
    1eda:	48 8d 35 14 16 00 00 	lea    0x1614(%rip),%rsi        # 34f5 <_IO_stdin_used+0x425>
    1ee1:	bf 01 00 00 00       	mov    $0x1,%edi
    1ee6:	b8 00 00 00 00       	mov    $0x0,%eax
    1eeb:	e8 40 f0 ff ff       	callq  f30 <__printf_chk@plt>
    1ef0:	48 89 e2             	mov    %rsp,%rdx
    1ef3:	48 8d 35 04 16 00 00 	lea    0x1604(%rip),%rsi        # 34fe <_IO_stdin_used+0x42e>
    1efa:	bf 01 00 00 00       	mov    $0x1,%edi
    1eff:	b8 00 00 00 00       	mov    $0x0,%eax
    1f04:	e8 27 f0 ff ff       	callq  f30 <__printf_chk@plt>
    1f09:	e9 e2 fe ff ff       	jmpq   1df0 <notify_server+0xfb>
    1f0e:	e8 1d ef ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000001f13 <validate>:
    1f13:	53                   	push   %rbx
    1f14:	89 fb                	mov    %edi,%ebx
    1f16:	83 3d cb 34 20 00 00 	cmpl   $0x0,0x2034cb(%rip)        # 2053e8 <is_checker>
    1f1d:	74 72                	je     1f91 <validate+0x7e>
    1f1f:	39 3d b7 34 20 00    	cmp    %edi,0x2034b7(%rip)        # 2053dc <vlevel>
    1f25:	75 32                	jne    1f59 <validate+0x46>
    1f27:	8b 15 ab 34 20 00    	mov    0x2034ab(%rip),%edx        # 2053d8 <check_level>
    1f2d:	39 fa                	cmp    %edi,%edx
    1f2f:	75 3e                	jne    1f6f <validate+0x5c>
    1f31:	0f be 15 d0 40 20 00 	movsbl 0x2040d0(%rip),%edx        # 206008 <target_prefix>
    1f38:	4c 8d 05 c1 34 20 00 	lea    0x2034c1(%rip),%r8        # 205400 <gets_buf>
    1f3f:	89 f9                	mov    %edi,%ecx
    1f41:	48 8d 35 e0 15 00 00 	lea    0x15e0(%rip),%rsi        # 3528 <_IO_stdin_used+0x458>
    1f48:	bf 01 00 00 00       	mov    $0x1,%edi
    1f4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1f52:	e8 d9 ef ff ff       	callq  f30 <__printf_chk@plt>
    1f57:	5b                   	pop    %rbx
    1f58:	c3                   	retq   
    1f59:	48 8d 3d aa 15 00 00 	lea    0x15aa(%rip),%rdi        # 350a <_IO_stdin_used+0x43a>
    1f60:	e8 ab ee ff ff       	callq  e10 <puts@plt>
    1f65:	b8 00 00 00 00       	mov    $0x0,%eax
    1f6a:	e8 fc fc ff ff       	callq  1c6b <check_fail>
    1f6f:	89 f9                	mov    %edi,%ecx
    1f71:	48 8d 35 d0 16 00 00 	lea    0x16d0(%rip),%rsi        # 3648 <_IO_stdin_used+0x578>
    1f78:	bf 01 00 00 00       	mov    $0x1,%edi
    1f7d:	b8 00 00 00 00       	mov    $0x0,%eax
    1f82:	e8 a9 ef ff ff       	callq  f30 <__printf_chk@plt>
    1f87:	b8 00 00 00 00       	mov    $0x0,%eax
    1f8c:	e8 da fc ff ff       	callq  1c6b <check_fail>
    1f91:	39 3d 45 34 20 00    	cmp    %edi,0x203445(%rip)        # 2053dc <vlevel>
    1f97:	74 1a                	je     1fb3 <validate+0xa0>
    1f99:	48 8d 3d 6a 15 00 00 	lea    0x156a(%rip),%rdi        # 350a <_IO_stdin_used+0x43a>
    1fa0:	e8 6b ee ff ff       	callq  e10 <puts@plt>
    1fa5:	89 de                	mov    %ebx,%esi
    1fa7:	bf 00 00 00 00       	mov    $0x0,%edi
    1fac:	e8 44 fd ff ff       	callq  1cf5 <notify_server>
    1fb1:	eb a4                	jmp    1f57 <validate+0x44>
    1fb3:	0f be 0d 4e 40 20 00 	movsbl 0x20404e(%rip),%ecx        # 206008 <target_prefix>
    1fba:	89 fa                	mov    %edi,%edx
    1fbc:	48 8d 35 ad 16 00 00 	lea    0x16ad(%rip),%rsi        # 3670 <_IO_stdin_used+0x5a0>
    1fc3:	bf 01 00 00 00       	mov    $0x1,%edi
    1fc8:	b8 00 00 00 00       	mov    $0x0,%eax
    1fcd:	e8 5e ef ff ff       	callq  f30 <__printf_chk@plt>
    1fd2:	89 de                	mov    %ebx,%esi
    1fd4:	bf 01 00 00 00       	mov    $0x1,%edi
    1fd9:	e8 17 fd ff ff       	callq  1cf5 <notify_server>
    1fde:	e9 74 ff ff ff       	jmpq   1f57 <validate+0x44>

0000000000001fe3 <fail>:
    1fe3:	48 83 ec 08          	sub    $0x8,%rsp
    1fe7:	83 3d fa 33 20 00 00 	cmpl   $0x0,0x2033fa(%rip)        # 2053e8 <is_checker>
    1fee:	75 11                	jne    2001 <fail+0x1e>
    1ff0:	89 fe                	mov    %edi,%esi
    1ff2:	bf 00 00 00 00       	mov    $0x0,%edi
    1ff7:	e8 f9 fc ff ff       	callq  1cf5 <notify_server>
    1ffc:	48 83 c4 08          	add    $0x8,%rsp
    2000:	c3                   	retq   
    2001:	b8 00 00 00 00       	mov    $0x0,%eax
    2006:	e8 60 fc ff ff       	callq  1c6b <check_fail>

000000000000200b <bushandler>:
    200b:	48 83 ec 08          	sub    $0x8,%rsp
    200f:	83 3d d2 33 20 00 00 	cmpl   $0x0,0x2033d2(%rip)        # 2053e8 <is_checker>
    2016:	74 16                	je     202e <bushandler+0x23>
    2018:	48 8d 3d 1e 15 00 00 	lea    0x151e(%rip),%rdi        # 353d <_IO_stdin_used+0x46d>
    201f:	e8 ec ed ff ff       	callq  e10 <puts@plt>
    2024:	b8 00 00 00 00       	mov    $0x0,%eax
    2029:	e8 3d fc ff ff       	callq  1c6b <check_fail>
    202e:	48 8d 3d 73 16 00 00 	lea    0x1673(%rip),%rdi        # 36a8 <_IO_stdin_used+0x5d8>
    2035:	e8 d6 ed ff ff       	callq  e10 <puts@plt>
    203a:	48 8d 3d 06 15 00 00 	lea    0x1506(%rip),%rdi        # 3547 <_IO_stdin_used+0x477>
    2041:	e8 ca ed ff ff       	callq  e10 <puts@plt>
    2046:	be 00 00 00 00       	mov    $0x0,%esi
    204b:	bf 00 00 00 00       	mov    $0x0,%edi
    2050:	e8 a0 fc ff ff       	callq  1cf5 <notify_server>
    2055:	bf 01 00 00 00       	mov    $0x1,%edi
    205a:	e8 21 ef ff ff       	callq  f80 <exit@plt>

000000000000205f <seghandler>:
    205f:	48 83 ec 08          	sub    $0x8,%rsp
    2063:	83 3d 7e 33 20 00 00 	cmpl   $0x0,0x20337e(%rip)        # 2053e8 <is_checker>
    206a:	74 16                	je     2082 <seghandler+0x23>
    206c:	48 8d 3d ea 14 00 00 	lea    0x14ea(%rip),%rdi        # 355d <_IO_stdin_used+0x48d>
    2073:	e8 98 ed ff ff       	callq  e10 <puts@plt>
    2078:	b8 00 00 00 00       	mov    $0x0,%eax
    207d:	e8 e9 fb ff ff       	callq  1c6b <check_fail>
    2082:	48 8d 3d 3f 16 00 00 	lea    0x163f(%rip),%rdi        # 36c8 <_IO_stdin_used+0x5f8>
    2089:	e8 82 ed ff ff       	callq  e10 <puts@plt>
    208e:	48 8d 3d b2 14 00 00 	lea    0x14b2(%rip),%rdi        # 3547 <_IO_stdin_used+0x477>
    2095:	e8 76 ed ff ff       	callq  e10 <puts@plt>
    209a:	be 00 00 00 00       	mov    $0x0,%esi
    209f:	bf 00 00 00 00       	mov    $0x0,%edi
    20a4:	e8 4c fc ff ff       	callq  1cf5 <notify_server>
    20a9:	bf 01 00 00 00       	mov    $0x1,%edi
    20ae:	e8 cd ee ff ff       	callq  f80 <exit@plt>

00000000000020b3 <illegalhandler>:
    20b3:	48 83 ec 08          	sub    $0x8,%rsp
    20b7:	83 3d 2a 33 20 00 00 	cmpl   $0x0,0x20332a(%rip)        # 2053e8 <is_checker>
    20be:	74 16                	je     20d6 <illegalhandler+0x23>
    20c0:	48 8d 3d a9 14 00 00 	lea    0x14a9(%rip),%rdi        # 3570 <_IO_stdin_used+0x4a0>
    20c7:	e8 44 ed ff ff       	callq  e10 <puts@plt>
    20cc:	b8 00 00 00 00       	mov    $0x0,%eax
    20d1:	e8 95 fb ff ff       	callq  1c6b <check_fail>
    20d6:	48 8d 3d 13 16 00 00 	lea    0x1613(%rip),%rdi        # 36f0 <_IO_stdin_used+0x620>
    20dd:	e8 2e ed ff ff       	callq  e10 <puts@plt>
    20e2:	48 8d 3d 5e 14 00 00 	lea    0x145e(%rip),%rdi        # 3547 <_IO_stdin_used+0x477>
    20e9:	e8 22 ed ff ff       	callq  e10 <puts@plt>
    20ee:	be 00 00 00 00       	mov    $0x0,%esi
    20f3:	bf 00 00 00 00       	mov    $0x0,%edi
    20f8:	e8 f8 fb ff ff       	callq  1cf5 <notify_server>
    20fd:	bf 01 00 00 00       	mov    $0x1,%edi
    2102:	e8 79 ee ff ff       	callq  f80 <exit@plt>

0000000000002107 <sigalrmhandler>:
    2107:	48 83 ec 08          	sub    $0x8,%rsp
    210b:	83 3d d6 32 20 00 00 	cmpl   $0x0,0x2032d6(%rip)        # 2053e8 <is_checker>
    2112:	74 16                	je     212a <sigalrmhandler+0x23>
    2114:	48 8d 3d 69 14 00 00 	lea    0x1469(%rip),%rdi        # 3584 <_IO_stdin_used+0x4b4>
    211b:	e8 f0 ec ff ff       	callq  e10 <puts@plt>
    2120:	b8 00 00 00 00       	mov    $0x0,%eax
    2125:	e8 41 fb ff ff       	callq  1c6b <check_fail>
    212a:	ba 05 00 00 00       	mov    $0x5,%edx
    212f:	48 8d 35 ea 15 00 00 	lea    0x15ea(%rip),%rsi        # 3720 <_IO_stdin_used+0x650>
    2136:	bf 01 00 00 00       	mov    $0x1,%edi
    213b:	b8 00 00 00 00       	mov    $0x0,%eax
    2140:	e8 eb ed ff ff       	callq  f30 <__printf_chk@plt>
    2145:	be 00 00 00 00       	mov    $0x0,%esi
    214a:	bf 00 00 00 00       	mov    $0x0,%edi
    214f:	e8 a1 fb ff ff       	callq  1cf5 <notify_server>
    2154:	bf 01 00 00 00       	mov    $0x1,%edi
    2159:	e8 22 ee ff ff       	callq  f80 <exit@plt>

000000000000215e <launch>:
    215e:	55                   	push   %rbp
    215f:	48 89 e5             	mov    %rsp,%rbp
    2162:	48 83 ec 10          	sub    $0x10,%rsp
    2166:	48 89 fa             	mov    %rdi,%rdx
    2169:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2170:	00 00 
    2172:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2176:	31 c0                	xor    %eax,%eax
    2178:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
    217c:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2180:	48 29 c4             	sub    %rax,%rsp
    2183:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
    2188:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    218c:	be f4 00 00 00       	mov    $0xf4,%esi
    2191:	e8 ba ec ff ff       	callq  e50 <memset@plt>
    2196:	48 8b 05 e3 31 20 00 	mov    0x2031e3(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    219d:	48 39 05 2c 32 20 00 	cmp    %rax,0x20322c(%rip)        # 2053d0 <infile>
    21a4:	74 3a                	je     21e0 <launch+0x82>
    21a6:	c7 05 2c 32 20 00 00 	movl   $0x0,0x20322c(%rip)        # 2053dc <vlevel>
    21ad:	00 00 00 
    21b0:	b8 00 00 00 00       	mov    $0x0,%eax
    21b5:	e8 f1 f8 ff ff       	callq  1aab <test>
    21ba:	83 3d 27 32 20 00 00 	cmpl   $0x0,0x203227(%rip)        # 2053e8 <is_checker>
    21c1:	75 35                	jne    21f8 <launch+0x9a>
    21c3:	48 8d 3d da 13 00 00 	lea    0x13da(%rip),%rdi        # 35a4 <_IO_stdin_used+0x4d4>
    21ca:	e8 41 ec ff ff       	callq  e10 <puts@plt>
    21cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    21d3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    21da:	00 00 
    21dc:	75 30                	jne    220e <launch+0xb0>
    21de:	c9                   	leaveq 
    21df:	c3                   	retq   
    21e0:	48 8d 35 a5 13 00 00 	lea    0x13a5(%rip),%rsi        # 358c <_IO_stdin_used+0x4bc>
    21e7:	bf 01 00 00 00       	mov    $0x1,%edi
    21ec:	b8 00 00 00 00       	mov    $0x0,%eax
    21f1:	e8 3a ed ff ff       	callq  f30 <__printf_chk@plt>
    21f6:	eb ae                	jmp    21a6 <launch+0x48>
    21f8:	48 8d 3d 9a 13 00 00 	lea    0x139a(%rip),%rdi        # 3599 <_IO_stdin_used+0x4c9>
    21ff:	e8 0c ec ff ff       	callq  e10 <puts@plt>
    2204:	b8 00 00 00 00       	mov    $0x0,%eax
    2209:	e8 5d fa ff ff       	callq  1c6b <check_fail>
    220e:	e8 1d ec ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002213 <stable_launch>:
    2213:	53                   	push   %rbx
    2214:	48 89 3d ad 31 20 00 	mov    %rdi,0x2031ad(%rip)        # 2053c8 <global_offset>
    221b:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    2221:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2227:	b9 32 01 00 00       	mov    $0x132,%ecx
    222c:	ba 07 00 00 00       	mov    $0x7,%edx
    2231:	be 00 00 10 00       	mov    $0x100000,%esi
    2236:	bf 00 60 58 55       	mov    $0x55586000,%edi
    223b:	e8 00 ec ff ff       	callq  e40 <mmap@plt>
    2240:	48 89 c3             	mov    %rax,%rbx
    2243:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
    2249:	75 43                	jne    228e <stable_launch+0x7b>
    224b:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
    2252:	48 89 15 b7 3d 20 00 	mov    %rdx,0x203db7(%rip)        # 206010 <stack_top>
    2259:	48 89 e0             	mov    %rsp,%rax
    225c:	48 89 d4             	mov    %rdx,%rsp
    225f:	48 89 c2             	mov    %rax,%rdx
    2262:	48 89 15 57 31 20 00 	mov    %rdx,0x203157(%rip)        # 2053c0 <global_save_stack>
    2269:	48 8b 3d 58 31 20 00 	mov    0x203158(%rip),%rdi        # 2053c8 <global_offset>
    2270:	e8 e9 fe ff ff       	callq  215e <launch>
    2275:	48 8b 05 44 31 20 00 	mov    0x203144(%rip),%rax        # 2053c0 <global_save_stack>
    227c:	48 89 c4             	mov    %rax,%rsp
    227f:	be 00 00 10 00       	mov    $0x100000,%esi
    2284:	48 89 df             	mov    %rbx,%rdi
    2287:	e8 94 ec ff ff       	callq  f20 <munmap@plt>
    228c:	5b                   	pop    %rbx
    228d:	c3                   	retq   
    228e:	be 00 00 10 00       	mov    $0x100000,%esi
    2293:	48 89 c7             	mov    %rax,%rdi
    2296:	e8 85 ec ff ff       	callq  f20 <munmap@plt>
    229b:	b9 00 60 58 55       	mov    $0x55586000,%ecx
    22a0:	48 8d 15 b1 14 00 00 	lea    0x14b1(%rip),%rdx        # 3758 <_IO_stdin_used+0x688>
    22a7:	be 01 00 00 00       	mov    $0x1,%esi
    22ac:	48 8b 3d ed 30 20 00 	mov    0x2030ed(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    22b3:	b8 00 00 00 00       	mov    $0x0,%eax
    22b8:	e8 e3 ec ff ff       	callq  fa0 <__fprintf_chk@plt>
    22bd:	bf 01 00 00 00       	mov    $0x1,%edi
    22c2:	e8 b9 ec ff ff       	callq  f80 <exit@plt>

00000000000022c7 <rio_readinitb>:
    22c7:	89 37                	mov    %esi,(%rdi)
    22c9:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    22d0:	48 8d 47 10          	lea    0x10(%rdi),%rax
    22d4:	48 89 47 08          	mov    %rax,0x8(%rdi)
    22d8:	c3                   	retq   

00000000000022d9 <sigalrm_handler>:
    22d9:	48 83 ec 08          	sub    $0x8,%rsp
    22dd:	b9 00 00 00 00       	mov    $0x0,%ecx
    22e2:	48 8d 15 a7 14 00 00 	lea    0x14a7(%rip),%rdx        # 3790 <trans_char+0x10>
    22e9:	be 01 00 00 00       	mov    $0x1,%esi
    22ee:	48 8b 3d ab 30 20 00 	mov    0x2030ab(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    22f5:	b8 00 00 00 00       	mov    $0x0,%eax
    22fa:	e8 a1 ec ff ff       	callq  fa0 <__fprintf_chk@plt>
    22ff:	bf 01 00 00 00       	mov    $0x1,%edi
    2304:	e8 77 ec ff ff       	callq  f80 <exit@plt>

0000000000002309 <rio_writen>:
    2309:	41 55                	push   %r13
    230b:	41 54                	push   %r12
    230d:	55                   	push   %rbp
    230e:	53                   	push   %rbx
    230f:	48 83 ec 08          	sub    $0x8,%rsp
    2313:	41 89 fc             	mov    %edi,%r12d
    2316:	48 89 f5             	mov    %rsi,%rbp
    2319:	49 89 d5             	mov    %rdx,%r13
    231c:	48 89 d3             	mov    %rdx,%rbx
    231f:	eb 06                	jmp    2327 <rio_writen+0x1e>
    2321:	48 29 c3             	sub    %rax,%rbx
    2324:	48 01 c5             	add    %rax,%rbp
    2327:	48 85 db             	test   %rbx,%rbx
    232a:	74 24                	je     2350 <rio_writen+0x47>
    232c:	48 89 da             	mov    %rbx,%rdx
    232f:	48 89 ee             	mov    %rbp,%rsi
    2332:	44 89 e7             	mov    %r12d,%edi
    2335:	e8 e6 ea ff ff       	callq  e20 <write@plt>
    233a:	48 85 c0             	test   %rax,%rax
    233d:	7f e2                	jg     2321 <rio_writen+0x18>
    233f:	e8 8c ea ff ff       	callq  dd0 <__errno_location@plt>
    2344:	83 38 04             	cmpl   $0x4,(%rax)
    2347:	75 15                	jne    235e <rio_writen+0x55>
    2349:	b8 00 00 00 00       	mov    $0x0,%eax
    234e:	eb d1                	jmp    2321 <rio_writen+0x18>
    2350:	4c 89 e8             	mov    %r13,%rax
    2353:	48 83 c4 08          	add    $0x8,%rsp
    2357:	5b                   	pop    %rbx
    2358:	5d                   	pop    %rbp
    2359:	41 5c                	pop    %r12
    235b:	41 5d                	pop    %r13
    235d:	c3                   	retq   
    235e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2365:	eb ec                	jmp    2353 <rio_writen+0x4a>

0000000000002367 <rio_read>:
    2367:	41 55                	push   %r13
    2369:	41 54                	push   %r12
    236b:	55                   	push   %rbp
    236c:	53                   	push   %rbx
    236d:	48 83 ec 08          	sub    $0x8,%rsp
    2371:	48 89 fb             	mov    %rdi,%rbx
    2374:	49 89 f5             	mov    %rsi,%r13
    2377:	49 89 d4             	mov    %rdx,%r12
    237a:	eb 0a                	jmp    2386 <rio_read+0x1f>
    237c:	e8 4f ea ff ff       	callq  dd0 <__errno_location@plt>
    2381:	83 38 04             	cmpl   $0x4,(%rax)
    2384:	75 5c                	jne    23e2 <rio_read+0x7b>
    2386:	8b 6b 04             	mov    0x4(%rbx),%ebp
    2389:	85 ed                	test   %ebp,%ebp
    238b:	7f 24                	jg     23b1 <rio_read+0x4a>
    238d:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    2391:	8b 3b                	mov    (%rbx),%edi
    2393:	ba 00 20 00 00       	mov    $0x2000,%edx
    2398:	48 89 ee             	mov    %rbp,%rsi
    239b:	e8 e0 ea ff ff       	callq  e80 <read@plt>
    23a0:	89 43 04             	mov    %eax,0x4(%rbx)
    23a3:	85 c0                	test   %eax,%eax
    23a5:	78 d5                	js     237c <rio_read+0x15>
    23a7:	85 c0                	test   %eax,%eax
    23a9:	74 40                	je     23eb <rio_read+0x84>
    23ab:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    23af:	eb d5                	jmp    2386 <rio_read+0x1f>
    23b1:	89 e8                	mov    %ebp,%eax
    23b3:	4c 39 e0             	cmp    %r12,%rax
    23b6:	72 03                	jb     23bb <rio_read+0x54>
    23b8:	44 89 e5             	mov    %r12d,%ebp
    23bb:	4c 63 e5             	movslq %ebp,%r12
    23be:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    23c2:	4c 89 e2             	mov    %r12,%rdx
    23c5:	4c 89 ef             	mov    %r13,%rdi
    23c8:	e8 03 eb ff ff       	callq  ed0 <memcpy@plt>
    23cd:	4c 01 63 08          	add    %r12,0x8(%rbx)
    23d1:	29 6b 04             	sub    %ebp,0x4(%rbx)
    23d4:	4c 89 e0             	mov    %r12,%rax
    23d7:	48 83 c4 08          	add    $0x8,%rsp
    23db:	5b                   	pop    %rbx
    23dc:	5d                   	pop    %rbp
    23dd:	41 5c                	pop    %r12
    23df:	41 5d                	pop    %r13
    23e1:	c3                   	retq   
    23e2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    23e9:	eb ec                	jmp    23d7 <rio_read+0x70>
    23eb:	b8 00 00 00 00       	mov    $0x0,%eax
    23f0:	eb e5                	jmp    23d7 <rio_read+0x70>

00000000000023f2 <rio_readlineb>:
    23f2:	41 55                	push   %r13
    23f4:	41 54                	push   %r12
    23f6:	55                   	push   %rbp
    23f7:	53                   	push   %rbx
    23f8:	48 83 ec 18          	sub    $0x18,%rsp
    23fc:	49 89 fd             	mov    %rdi,%r13
    23ff:	48 89 f5             	mov    %rsi,%rbp
    2402:	49 89 d4             	mov    %rdx,%r12
    2405:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    240c:	00 00 
    240e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2413:	31 c0                	xor    %eax,%eax
    2415:	bb 01 00 00 00       	mov    $0x1,%ebx
    241a:	4c 39 e3             	cmp    %r12,%rbx
    241d:	73 47                	jae    2466 <rio_readlineb+0x74>
    241f:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    2424:	ba 01 00 00 00       	mov    $0x1,%edx
    2429:	4c 89 ef             	mov    %r13,%rdi
    242c:	e8 36 ff ff ff       	callq  2367 <rio_read>
    2431:	83 f8 01             	cmp    $0x1,%eax
    2434:	75 1c                	jne    2452 <rio_readlineb+0x60>
    2436:	48 8d 45 01          	lea    0x1(%rbp),%rax
    243a:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    243f:	88 55 00             	mov    %dl,0x0(%rbp)
    2442:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    2447:	74 1a                	je     2463 <rio_readlineb+0x71>
    2449:	48 83 c3 01          	add    $0x1,%rbx
    244d:	48 89 c5             	mov    %rax,%rbp
    2450:	eb c8                	jmp    241a <rio_readlineb+0x28>
    2452:	85 c0                	test   %eax,%eax
    2454:	75 32                	jne    2488 <rio_readlineb+0x96>
    2456:	48 83 fb 01          	cmp    $0x1,%rbx
    245a:	75 0a                	jne    2466 <rio_readlineb+0x74>
    245c:	b8 00 00 00 00       	mov    $0x0,%eax
    2461:	eb 0a                	jmp    246d <rio_readlineb+0x7b>
    2463:	48 89 c5             	mov    %rax,%rbp
    2466:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    246a:	48 89 d8             	mov    %rbx,%rax
    246d:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    2472:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2479:	00 00 
    247b:	75 14                	jne    2491 <rio_readlineb+0x9f>
    247d:	48 83 c4 18          	add    $0x18,%rsp
    2481:	5b                   	pop    %rbx
    2482:	5d                   	pop    %rbp
    2483:	41 5c                	pop    %r12
    2485:	41 5d                	pop    %r13
    2487:	c3                   	retq   
    2488:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    248f:	eb dc                	jmp    246d <rio_readlineb+0x7b>
    2491:	e8 9a e9 ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002496 <urlencode>:
    2496:	41 54                	push   %r12
    2498:	55                   	push   %rbp
    2499:	53                   	push   %rbx
    249a:	48 83 ec 10          	sub    $0x10,%rsp
    249e:	48 89 fb             	mov    %rdi,%rbx
    24a1:	48 89 f5             	mov    %rsi,%rbp
    24a4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24ab:	00 00 
    24ad:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24b2:	31 c0                	xor    %eax,%eax
    24b4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    24bb:	f2 ae                	repnz scas %es:(%rdi),%al
    24bd:	48 89 ce             	mov    %rcx,%rsi
    24c0:	48 f7 d6             	not    %rsi
    24c3:	8d 46 ff             	lea    -0x1(%rsi),%eax
    24c6:	eb 0f                	jmp    24d7 <urlencode+0x41>
    24c8:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    24cc:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    24d0:	48 83 c3 01          	add    $0x1,%rbx
    24d4:	44 89 e0             	mov    %r12d,%eax
    24d7:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    24db:	85 c0                	test   %eax,%eax
    24dd:	0f 84 a8 00 00 00    	je     258b <urlencode+0xf5>
    24e3:	44 0f b6 03          	movzbl (%rbx),%r8d
    24e7:	41 80 f8 2a          	cmp    $0x2a,%r8b
    24eb:	0f 94 c2             	sete   %dl
    24ee:	41 80 f8 2d          	cmp    $0x2d,%r8b
    24f2:	0f 94 c0             	sete   %al
    24f5:	08 c2                	or     %al,%dl
    24f7:	75 cf                	jne    24c8 <urlencode+0x32>
    24f9:	41 80 f8 2e          	cmp    $0x2e,%r8b
    24fd:	74 c9                	je     24c8 <urlencode+0x32>
    24ff:	41 80 f8 5f          	cmp    $0x5f,%r8b
    2503:	74 c3                	je     24c8 <urlencode+0x32>
    2505:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2509:	3c 09                	cmp    $0x9,%al
    250b:	76 bb                	jbe    24c8 <urlencode+0x32>
    250d:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    2511:	3c 19                	cmp    $0x19,%al
    2513:	76 b3                	jbe    24c8 <urlencode+0x32>
    2515:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2519:	3c 19                	cmp    $0x19,%al
    251b:	76 ab                	jbe    24c8 <urlencode+0x32>
    251d:	41 80 f8 20          	cmp    $0x20,%r8b
    2521:	74 56                	je     2579 <urlencode+0xe3>
    2523:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2527:	3c 5f                	cmp    $0x5f,%al
    2529:	0f 96 c2             	setbe  %dl
    252c:	41 80 f8 09          	cmp    $0x9,%r8b
    2530:	0f 94 c0             	sete   %al
    2533:	08 c2                	or     %al,%dl
    2535:	74 4f                	je     2586 <urlencode+0xf0>
    2537:	48 89 e7             	mov    %rsp,%rdi
    253a:	45 0f b6 c0          	movzbl %r8b,%r8d
    253e:	48 8d 0d e3 12 00 00 	lea    0x12e3(%rip),%rcx        # 3828 <trans_char+0xa8>
    2545:	ba 08 00 00 00       	mov    $0x8,%edx
    254a:	be 01 00 00 00       	mov    $0x1,%esi
    254f:	b8 00 00 00 00       	mov    $0x0,%eax
    2554:	e8 57 ea ff ff       	callq  fb0 <__sprintf_chk@plt>
    2559:	0f b6 04 24          	movzbl (%rsp),%eax
    255d:	88 45 00             	mov    %al,0x0(%rbp)
    2560:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    2565:	88 45 01             	mov    %al,0x1(%rbp)
    2568:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    256d:	88 45 02             	mov    %al,0x2(%rbp)
    2570:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2574:	e9 57 ff ff ff       	jmpq   24d0 <urlencode+0x3a>
    2579:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    257d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2581:	e9 4a ff ff ff       	jmpq   24d0 <urlencode+0x3a>
    2586:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    258b:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    2590:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2597:	00 00 
    2599:	75 09                	jne    25a4 <urlencode+0x10e>
    259b:	48 83 c4 10          	add    $0x10,%rsp
    259f:	5b                   	pop    %rbx
    25a0:	5d                   	pop    %rbp
    25a1:	41 5c                	pop    %r12
    25a3:	c3                   	retq   
    25a4:	e8 87 e8 ff ff       	callq  e30 <__stack_chk_fail@plt>

00000000000025a9 <submitr>:
    25a9:	41 57                	push   %r15
    25ab:	41 56                	push   %r14
    25ad:	41 55                	push   %r13
    25af:	41 54                	push   %r12
    25b1:	55                   	push   %rbp
    25b2:	53                   	push   %rbx
    25b3:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    25ba:	49 89 fd             	mov    %rdi,%r13
    25bd:	89 74 24 14          	mov    %esi,0x14(%rsp)
    25c1:	49 89 d7             	mov    %rdx,%r15
    25c4:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    25c9:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    25ce:	4d 89 ce             	mov    %r9,%r14
    25d1:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    25d8:	00 
    25d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    25e0:	00 00 
    25e2:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    25e9:	00 
    25ea:	31 c0                	xor    %eax,%eax
    25ec:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    25f3:	00 
    25f4:	ba 00 00 00 00       	mov    $0x0,%edx
    25f9:	be 01 00 00 00       	mov    $0x1,%esi
    25fe:	bf 02 00 00 00       	mov    $0x2,%edi
    2603:	e8 b8 e9 ff ff       	callq  fc0 <socket@plt>
    2608:	85 c0                	test   %eax,%eax
    260a:	0f 88 a9 02 00 00    	js     28b9 <submitr+0x310>
    2610:	89 c3                	mov    %eax,%ebx
    2612:	4c 89 ef             	mov    %r13,%rdi
    2615:	e8 86 e8 ff ff       	callq  ea0 <gethostbyname@plt>
    261a:	48 85 c0             	test   %rax,%rax
    261d:	0f 84 e2 02 00 00    	je     2905 <submitr+0x35c>
    2623:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    2628:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    262f:	00 00 
    2631:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    2638:	00 
    2639:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    2640:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2647:	48 63 50 14          	movslq 0x14(%rax),%rdx
    264b:	48 8b 40 18          	mov    0x18(%rax),%rax
    264f:	48 8b 30             	mov    (%rax),%rsi
    2652:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    2657:	b9 0c 00 00 00       	mov    $0xc,%ecx
    265c:	e8 4f e8 ff ff       	callq  eb0 <__memmove_chk@plt>
    2661:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
    2666:	66 c1 c8 08          	ror    $0x8,%ax
    266a:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    266f:	ba 10 00 00 00       	mov    $0x10,%edx
    2674:	4c 89 e6             	mov    %r12,%rsi
    2677:	89 df                	mov    %ebx,%edi
    2679:	e8 12 e9 ff ff       	callq  f90 <connect@plt>
    267e:	85 c0                	test   %eax,%eax
    2680:	0f 88 e7 02 00 00    	js     296d <submitr+0x3c4>
    2686:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    268d:	b8 00 00 00 00       	mov    $0x0,%eax
    2692:	48 89 f1             	mov    %rsi,%rcx
    2695:	4c 89 f7             	mov    %r14,%rdi
    2698:	f2 ae                	repnz scas %es:(%rdi),%al
    269a:	48 89 ca             	mov    %rcx,%rdx
    269d:	48 f7 d2             	not    %rdx
    26a0:	48 89 f1             	mov    %rsi,%rcx
    26a3:	4c 89 ff             	mov    %r15,%rdi
    26a6:	f2 ae                	repnz scas %es:(%rdi),%al
    26a8:	48 f7 d1             	not    %rcx
    26ab:	49 89 c8             	mov    %rcx,%r8
    26ae:	48 89 f1             	mov    %rsi,%rcx
    26b1:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    26b6:	f2 ae                	repnz scas %es:(%rdi),%al
    26b8:	48 f7 d1             	not    %rcx
    26bb:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    26c0:	48 89 f1             	mov    %rsi,%rcx
    26c3:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    26c8:	f2 ae                	repnz scas %es:(%rdi),%al
    26ca:	48 89 c8             	mov    %rcx,%rax
    26cd:	48 f7 d0             	not    %rax
    26d0:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    26d5:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    26da:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    26e1:	00 
    26e2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    26e8:	0f 87 d9 02 00 00    	ja     29c7 <submitr+0x41e>
    26ee:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    26f5:	00 
    26f6:	b9 00 04 00 00       	mov    $0x400,%ecx
    26fb:	b8 00 00 00 00       	mov    $0x0,%eax
    2700:	48 89 f7             	mov    %rsi,%rdi
    2703:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2706:	4c 89 f7             	mov    %r14,%rdi
    2709:	e8 88 fd ff ff       	callq  2496 <urlencode>
    270e:	85 c0                	test   %eax,%eax
    2710:	0f 88 24 03 00 00    	js     2a3a <submitr+0x491>
    2716:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    271d:	00 
    271e:	41 55                	push   %r13
    2720:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    2727:	00 
    2728:	50                   	push   %rax
    2729:	4d 89 f9             	mov    %r15,%r9
    272c:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    2731:	48 8d 0d 80 10 00 00 	lea    0x1080(%rip),%rcx        # 37b8 <trans_char+0x38>
    2738:	ba 00 20 00 00       	mov    $0x2000,%edx
    273d:	be 01 00 00 00       	mov    $0x1,%esi
    2742:	4c 89 e7             	mov    %r12,%rdi
    2745:	b8 00 00 00 00       	mov    $0x0,%eax
    274a:	e8 61 e8 ff ff       	callq  fb0 <__sprintf_chk@plt>
    274f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2756:	b8 00 00 00 00       	mov    $0x0,%eax
    275b:	4c 89 e7             	mov    %r12,%rdi
    275e:	f2 ae                	repnz scas %es:(%rdi),%al
    2760:	48 89 ca             	mov    %rcx,%rdx
    2763:	48 f7 d2             	not    %rdx
    2766:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    276a:	4c 89 e6             	mov    %r12,%rsi
    276d:	89 df                	mov    %ebx,%edi
    276f:	e8 95 fb ff ff       	callq  2309 <rio_writen>
    2774:	48 83 c4 10          	add    $0x10,%rsp
    2778:	48 85 c0             	test   %rax,%rax
    277b:	0f 88 44 03 00 00    	js     2ac5 <submitr+0x51c>
    2781:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    2786:	89 de                	mov    %ebx,%esi
    2788:	4c 89 e7             	mov    %r12,%rdi
    278b:	e8 37 fb ff ff       	callq  22c7 <rio_readinitb>
    2790:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2797:	00 
    2798:	ba 00 20 00 00       	mov    $0x2000,%edx
    279d:	4c 89 e7             	mov    %r12,%rdi
    27a0:	e8 4d fc ff ff       	callq  23f2 <rio_readlineb>
    27a5:	48 85 c0             	test   %rax,%rax
    27a8:	0f 8e 86 03 00 00    	jle    2b34 <submitr+0x58b>
    27ae:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    27b3:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    27ba:	00 
    27bb:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    27c2:	00 
    27c3:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    27ca:	00 
    27cb:	48 8d 35 5d 10 00 00 	lea    0x105d(%rip),%rsi        # 382f <trans_char+0xaf>
    27d2:	b8 00 00 00 00       	mov    $0x0,%eax
    27d7:	e8 34 e7 ff ff       	callq  f10 <__isoc99_sscanf@plt>
    27dc:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    27e3:	00 
    27e4:	b9 03 00 00 00       	mov    $0x3,%ecx
    27e9:	48 8d 3d 56 10 00 00 	lea    0x1056(%rip),%rdi        # 3846 <trans_char+0xc6>
    27f0:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    27f2:	0f 97 c0             	seta   %al
    27f5:	1c 00                	sbb    $0x0,%al
    27f7:	84 c0                	test   %al,%al
    27f9:	0f 84 b3 03 00 00    	je     2bb2 <submitr+0x609>
    27ff:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2806:	00 
    2807:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    280c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2811:	e8 dc fb ff ff       	callq  23f2 <rio_readlineb>
    2816:	48 85 c0             	test   %rax,%rax
    2819:	7f c1                	jg     27dc <submitr+0x233>
    281b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2822:	3a 20 43 
    2825:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    282c:	20 75 6e 
    282f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2833:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2837:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    283e:	74 6f 20 
    2841:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2848:	68 65 61 
    284b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    284f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2853:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    285a:	66 72 6f 
    285d:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
    2864:	20 72 65 
    2867:	48 89 45 20          	mov    %rax,0x20(%rbp)
    286b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    286f:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
    2876:	73 65 72 
    2879:	48 89 45 30          	mov    %rax,0x30(%rbp)
    287d:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
    2884:	89 df                	mov    %ebx,%edi
    2886:	e8 e5 e5 ff ff       	callq  e70 <close@plt>
    288b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2890:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    2897:	00 
    2898:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    289f:	00 00 
    28a1:	0f 85 7e 04 00 00    	jne    2d25 <submitr+0x77c>
    28a7:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    28ae:	5b                   	pop    %rbx
    28af:	5d                   	pop    %rbp
    28b0:	41 5c                	pop    %r12
    28b2:	41 5d                	pop    %r13
    28b4:	41 5e                	pop    %r14
    28b6:	41 5f                	pop    %r15
    28b8:	c3                   	retq   
    28b9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28c0:	3a 20 43 
    28c3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28ca:	20 75 6e 
    28cd:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28d1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28d5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28dc:	74 6f 20 
    28df:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    28e6:	65 20 73 
    28e9:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28ed:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28f1:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    28f8:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    28fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2903:	eb 8b                	jmp    2890 <submitr+0x2e7>
    2905:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    290c:	3a 20 44 
    290f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2916:	20 75 6e 
    2919:	48 89 45 00          	mov    %rax,0x0(%rbp)
    291d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2921:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2928:	74 6f 20 
    292b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2932:	76 65 20 
    2935:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2939:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    293d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2944:	72 20 61 
    2947:	48 89 45 20          	mov    %rax,0x20(%rbp)
    294b:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2952:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2958:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    295c:	89 df                	mov    %ebx,%edi
    295e:	e8 0d e5 ff ff       	callq  e70 <close@plt>
    2963:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2968:	e9 23 ff ff ff       	jmpq   2890 <submitr+0x2e7>
    296d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2974:	3a 20 55 
    2977:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    297e:	20 74 6f 
    2981:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2985:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2989:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2990:	65 63 74 
    2993:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    299a:	68 65 20 
    299d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29a1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29a5:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
    29ac:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
    29b2:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
    29b6:	89 df                	mov    %ebx,%edi
    29b8:	e8 b3 e4 ff ff       	callq  e70 <close@plt>
    29bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29c2:	e9 c9 fe ff ff       	jmpq   2890 <submitr+0x2e7>
    29c7:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    29ce:	3a 20 52 
    29d1:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    29d8:	20 73 74 
    29db:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29df:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29e3:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    29ea:	74 6f 6f 
    29ed:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    29f4:	65 2e 20 
    29f7:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29fb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29ff:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2a06:	61 73 65 
    2a09:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2a10:	49 54 52 
    2a13:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a17:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a1b:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2a22:	55 46 00 
    2a25:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2a29:	89 df                	mov    %ebx,%edi
    2a2b:	e8 40 e4 ff ff       	callq  e70 <close@plt>
    2a30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a35:	e9 56 fe ff ff       	jmpq   2890 <submitr+0x2e7>
    2a3a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a41:	3a 20 52 
    2a44:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2a4b:	20 73 74 
    2a4e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a52:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a56:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2a5d:	63 6f 6e 
    2a60:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2a67:	20 61 6e 
    2a6a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a6e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a72:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2a79:	67 61 6c 
    2a7c:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2a83:	6e 70 72 
    2a86:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a8a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a8e:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2a95:	6c 65 20 
    2a98:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2a9f:	63 74 65 
    2aa2:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2aa6:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2aaa:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2ab0:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2ab4:	89 df                	mov    %ebx,%edi
    2ab6:	e8 b5 e3 ff ff       	callq  e70 <close@plt>
    2abb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ac0:	e9 cb fd ff ff       	jmpq   2890 <submitr+0x2e7>
    2ac5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2acc:	3a 20 43 
    2acf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ad6:	20 75 6e 
    2ad9:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2add:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ae1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ae8:	74 6f 20 
    2aeb:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2af2:	20 74 6f 
    2af5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2af9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2afd:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
    2b04:	72 65 73 
    2b07:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
    2b0e:	65 72 76 
    2b11:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b15:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b19:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
    2b1f:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
    2b23:	89 df                	mov    %ebx,%edi
    2b25:	e8 46 e3 ff ff       	callq  e70 <close@plt>
    2b2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b2f:	e9 5c fd ff ff       	jmpq   2890 <submitr+0x2e7>
    2b34:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b3b:	3a 20 43 
    2b3e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b45:	20 75 6e 
    2b48:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b4c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b50:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b57:	74 6f 20 
    2b5a:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2b61:	66 69 72 
    2b64:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b68:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b6c:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2b73:	61 64 65 
    2b76:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
    2b7d:	6d 20 72 
    2b80:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b84:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b88:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
    2b8f:	20 73 65 
    2b92:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b96:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
    2b9d:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
    2ba1:	89 df                	mov    %ebx,%edi
    2ba3:	e8 c8 e2 ff ff       	callq  e70 <close@plt>
    2ba8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bad:	e9 de fc ff ff       	jmpq   2890 <submitr+0x2e7>
    2bb2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2bb9:	00 
    2bba:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2bbf:	ba 00 20 00 00       	mov    $0x2000,%edx
    2bc4:	e8 29 f8 ff ff       	callq  23f2 <rio_readlineb>
    2bc9:	48 85 c0             	test   %rax,%rax
    2bcc:	0f 8e 96 00 00 00    	jle    2c68 <submitr+0x6bf>
    2bd2:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2bd7:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2bde:	0f 85 08 01 00 00    	jne    2cec <submitr+0x743>
    2be4:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2beb:	00 
    2bec:	48 89 ef             	mov    %rbp,%rdi
    2bef:	e8 0c e2 ff ff       	callq  e00 <strcpy@plt>
    2bf4:	89 df                	mov    %ebx,%edi
    2bf6:	e8 75 e2 ff ff       	callq  e70 <close@plt>
    2bfb:	b9 04 00 00 00       	mov    $0x4,%ecx
    2c00:	48 8d 3d 39 0c 00 00 	lea    0xc39(%rip),%rdi        # 3840 <trans_char+0xc0>
    2c07:	48 89 ee             	mov    %rbp,%rsi
    2c0a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2c0c:	0f 97 c0             	seta   %al
    2c0f:	1c 00                	sbb    $0x0,%al
    2c11:	0f be c0             	movsbl %al,%eax
    2c14:	85 c0                	test   %eax,%eax
    2c16:	0f 84 74 fc ff ff    	je     2890 <submitr+0x2e7>
    2c1c:	b9 05 00 00 00       	mov    $0x5,%ecx
    2c21:	48 8d 3d 1c 0c 00 00 	lea    0xc1c(%rip),%rdi        # 3844 <trans_char+0xc4>
    2c28:	48 89 ee             	mov    %rbp,%rsi
    2c2b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2c2d:	0f 97 c0             	seta   %al
    2c30:	1c 00                	sbb    $0x0,%al
    2c32:	0f be c0             	movsbl %al,%eax
    2c35:	85 c0                	test   %eax,%eax
    2c37:	0f 84 53 fc ff ff    	je     2890 <submitr+0x2e7>
    2c3d:	b9 03 00 00 00       	mov    $0x3,%ecx
    2c42:	48 8d 3d 00 0c 00 00 	lea    0xc00(%rip),%rdi        # 3849 <trans_char+0xc9>
    2c49:	48 89 ee             	mov    %rbp,%rsi
    2c4c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2c4e:	0f 97 c0             	seta   %al
    2c51:	1c 00                	sbb    $0x0,%al
    2c53:	0f be c0             	movsbl %al,%eax
    2c56:	85 c0                	test   %eax,%eax
    2c58:	0f 84 32 fc ff ff    	je     2890 <submitr+0x2e7>
    2c5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c63:	e9 28 fc ff ff       	jmpq   2890 <submitr+0x2e7>
    2c68:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c6f:	3a 20 43 
    2c72:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c79:	20 75 6e 
    2c7c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c80:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c84:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c8b:	74 6f 20 
    2c8e:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2c95:	73 74 61 
    2c98:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c9c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ca0:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2ca7:	65 73 73 
    2caa:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2cb1:	72 6f 6d 
    2cb4:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2cb8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2cbc:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
    2cc3:	6c 74 20 
    2cc6:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2cca:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
    2cd1:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
    2cd7:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
    2cdb:	89 df                	mov    %ebx,%edi
    2cdd:	e8 8e e1 ff ff       	callq  e70 <close@plt>
    2ce2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ce7:	e9 a4 fb ff ff       	jmpq   2890 <submitr+0x2e7>
    2cec:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2cf3:	00 
    2cf4:	48 8d 0d fd 0a 00 00 	lea    0xafd(%rip),%rcx        # 37f8 <trans_char+0x78>
    2cfb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2d02:	be 01 00 00 00       	mov    $0x1,%esi
    2d07:	48 89 ef             	mov    %rbp,%rdi
    2d0a:	b8 00 00 00 00       	mov    $0x0,%eax
    2d0f:	e8 9c e2 ff ff       	callq  fb0 <__sprintf_chk@plt>
    2d14:	89 df                	mov    %ebx,%edi
    2d16:	e8 55 e1 ff ff       	callq  e70 <close@plt>
    2d1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d20:	e9 6b fb ff ff       	jmpq   2890 <submitr+0x2e7>
    2d25:	e8 06 e1 ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002d2a <init_timeout>:
    2d2a:	85 ff                	test   %edi,%edi
    2d2c:	74 28                	je     2d56 <init_timeout+0x2c>
    2d2e:	53                   	push   %rbx
    2d2f:	89 fb                	mov    %edi,%ebx
    2d31:	85 ff                	test   %edi,%edi
    2d33:	78 1a                	js     2d4f <init_timeout+0x25>
    2d35:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 22d9 <sigalrm_handler>
    2d3c:	bf 0e 00 00 00       	mov    $0xe,%edi
    2d41:	e8 4a e1 ff ff       	callq  e90 <signal@plt>
    2d46:	89 df                	mov    %ebx,%edi
    2d48:	e8 13 e1 ff ff       	callq  e60 <alarm@plt>
    2d4d:	5b                   	pop    %rbx
    2d4e:	c3                   	retq   
    2d4f:	bb 00 00 00 00       	mov    $0x0,%ebx
    2d54:	eb df                	jmp    2d35 <init_timeout+0xb>
    2d56:	f3 c3                	repz retq 

0000000000002d58 <init_driver>:
    2d58:	41 54                	push   %r12
    2d5a:	55                   	push   %rbp
    2d5b:	53                   	push   %rbx
    2d5c:	48 83 ec 20          	sub    $0x20,%rsp
    2d60:	49 89 fc             	mov    %rdi,%r12
    2d63:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2d6a:	00 00 
    2d6c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2d71:	31 c0                	xor    %eax,%eax
    2d73:	be 01 00 00 00       	mov    $0x1,%esi
    2d78:	bf 0d 00 00 00       	mov    $0xd,%edi
    2d7d:	e8 0e e1 ff ff       	callq  e90 <signal@plt>
    2d82:	be 01 00 00 00       	mov    $0x1,%esi
    2d87:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2d8c:	e8 ff e0 ff ff       	callq  e90 <signal@plt>
    2d91:	be 01 00 00 00       	mov    $0x1,%esi
    2d96:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2d9b:	e8 f0 e0 ff ff       	callq  e90 <signal@plt>
    2da0:	ba 00 00 00 00       	mov    $0x0,%edx
    2da5:	be 01 00 00 00       	mov    $0x1,%esi
    2daa:	bf 02 00 00 00       	mov    $0x2,%edi
    2daf:	e8 0c e2 ff ff       	callq  fc0 <socket@plt>
    2db4:	85 c0                	test   %eax,%eax
    2db6:	0f 88 a3 00 00 00    	js     2e5f <init_driver+0x107>
    2dbc:	89 c3                	mov    %eax,%ebx
    2dbe:	48 8d 3d 87 0a 00 00 	lea    0xa87(%rip),%rdi        # 384c <trans_char+0xcc>
    2dc5:	e8 d6 e0 ff ff       	callq  ea0 <gethostbyname@plt>
    2dca:	48 85 c0             	test   %rax,%rax
    2dcd:	0f 84 df 00 00 00    	je     2eb2 <init_driver+0x15a>
    2dd3:	48 89 e5             	mov    %rsp,%rbp
    2dd6:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2ddd:	00 00 
    2ddf:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2de6:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2dec:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2df2:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2df6:	48 8b 40 18          	mov    0x18(%rax),%rax
    2dfa:	48 8b 30             	mov    (%rax),%rsi
    2dfd:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2e01:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2e06:	e8 a5 e0 ff ff       	callq  eb0 <__memmove_chk@plt>
    2e0b:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
    2e12:	ba 10 00 00 00       	mov    $0x10,%edx
    2e17:	48 89 ee             	mov    %rbp,%rsi
    2e1a:	89 df                	mov    %ebx,%edi
    2e1c:	e8 6f e1 ff ff       	callq  f90 <connect@plt>
    2e21:	85 c0                	test   %eax,%eax
    2e23:	0f 88 fb 00 00 00    	js     2f24 <init_driver+0x1cc>
    2e29:	89 df                	mov    %ebx,%edi
    2e2b:	e8 40 e0 ff ff       	callq  e70 <close@plt>
    2e30:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2e37:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2e3d:	b8 00 00 00 00       	mov    $0x0,%eax
    2e42:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2e47:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2e4e:	00 00 
    2e50:	0f 85 28 01 00 00    	jne    2f7e <init_driver+0x226>
    2e56:	48 83 c4 20          	add    $0x20,%rsp
    2e5a:	5b                   	pop    %rbx
    2e5b:	5d                   	pop    %rbp
    2e5c:	41 5c                	pop    %r12
    2e5e:	c3                   	retq   
    2e5f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2e66:	3a 20 43 
    2e69:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e70:	20 75 6e 
    2e73:	49 89 04 24          	mov    %rax,(%r12)
    2e77:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2e7c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e83:	74 6f 20 
    2e86:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2e8d:	65 20 73 
    2e90:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2e95:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2e9a:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2ea1:	6b 65 
    2ea3:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    2eaa:	00 
    2eab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2eb0:	eb 90                	jmp    2e42 <init_driver+0xea>
    2eb2:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2eb9:	3a 20 44 
    2ebc:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2ec3:	20 75 6e 
    2ec6:	49 89 04 24          	mov    %rax,(%r12)
    2eca:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2ecf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ed6:	74 6f 20 
    2ed9:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2ee0:	76 65 20 
    2ee3:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2ee8:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2eed:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2ef4:	72 20 61 
    2ef7:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2efc:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2f03:	72 65 
    2f05:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2f0c:	73 
    2f0d:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2f13:	89 df                	mov    %ebx,%edi
    2f15:	e8 56 df ff ff       	callq  e70 <close@plt>
    2f1a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f1f:	e9 1e ff ff ff       	jmpq   2e42 <init_driver+0xea>
    2f24:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2f2b:	3a 20 55 
    2f2e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2f35:	20 74 6f 
    2f38:	49 89 04 24          	mov    %rax,(%r12)
    2f3c:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2f41:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2f48:	65 63 74 
    2f4b:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    2f52:	65 72 76 
    2f55:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2f5a:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2f5f:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    2f66:	72 
    2f67:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    2f6d:	89 df                	mov    %ebx,%edi
    2f6f:	e8 fc de ff ff       	callq  e70 <close@plt>
    2f74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f79:	e9 c4 fe ff ff       	jmpq   2e42 <init_driver+0xea>
    2f7e:	e8 ad de ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002f83 <driver_post>:
    2f83:	53                   	push   %rbx
    2f84:	4c 89 cb             	mov    %r9,%rbx
    2f87:	45 85 c0             	test   %r8d,%r8d
    2f8a:	75 18                	jne    2fa4 <driver_post+0x21>
    2f8c:	48 85 ff             	test   %rdi,%rdi
    2f8f:	74 05                	je     2f96 <driver_post+0x13>
    2f91:	80 3f 00             	cmpb   $0x0,(%rdi)
    2f94:	75 37                	jne    2fcd <driver_post+0x4a>
    2f96:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2f9b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2f9f:	44 89 c0             	mov    %r8d,%eax
    2fa2:	5b                   	pop    %rbx
    2fa3:	c3                   	retq   
    2fa4:	48 89 ca             	mov    %rcx,%rdx
    2fa7:	48 8d 35 ad 08 00 00 	lea    0x8ad(%rip),%rsi        # 385b <trans_char+0xdb>
    2fae:	bf 01 00 00 00       	mov    $0x1,%edi
    2fb3:	b8 00 00 00 00       	mov    $0x0,%eax
    2fb8:	e8 73 df ff ff       	callq  f30 <__printf_chk@plt>
    2fbd:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2fc2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2fc6:	b8 00 00 00 00       	mov    $0x0,%eax
    2fcb:	eb d5                	jmp    2fa2 <driver_post+0x1f>
    2fcd:	48 83 ec 08          	sub    $0x8,%rsp
    2fd1:	41 51                	push   %r9
    2fd3:	49 89 c9             	mov    %rcx,%r9
    2fd6:	49 89 d0             	mov    %rdx,%r8
    2fd9:	48 89 f9             	mov    %rdi,%rcx
    2fdc:	48 89 f2             	mov    %rsi,%rdx
    2fdf:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
    2fe4:	48 8d 3d 61 08 00 00 	lea    0x861(%rip),%rdi        # 384c <trans_char+0xcc>
    2feb:	e8 b9 f5 ff ff       	callq  25a9 <submitr>
    2ff0:	48 83 c4 10          	add    $0x10,%rsp
    2ff4:	eb ac                	jmp    2fa2 <driver_post+0x1f>

0000000000002ff6 <check>:
    2ff6:	89 f8                	mov    %edi,%eax
    2ff8:	c1 e8 1c             	shr    $0x1c,%eax
    2ffb:	85 c0                	test   %eax,%eax
    2ffd:	74 1d                	je     301c <check+0x26>
    2fff:	b9 00 00 00 00       	mov    $0x0,%ecx
    3004:	83 f9 1f             	cmp    $0x1f,%ecx
    3007:	7f 0d                	jg     3016 <check+0x20>
    3009:	89 f8                	mov    %edi,%eax
    300b:	d3 e8                	shr    %cl,%eax
    300d:	3c 0a                	cmp    $0xa,%al
    300f:	74 11                	je     3022 <check+0x2c>
    3011:	83 c1 08             	add    $0x8,%ecx
    3014:	eb ee                	jmp    3004 <check+0xe>
    3016:	b8 01 00 00 00       	mov    $0x1,%eax
    301b:	c3                   	retq   
    301c:	b8 00 00 00 00       	mov    $0x0,%eax
    3021:	c3                   	retq   
    3022:	b8 00 00 00 00       	mov    $0x0,%eax
    3027:	c3                   	retq   

0000000000003028 <gencookie>:
    3028:	53                   	push   %rbx
    3029:	83 c7 01             	add    $0x1,%edi
    302c:	e8 af dd ff ff       	callq  de0 <srandom@plt>
    3031:	e8 ba de ff ff       	callq  ef0 <random@plt>
    3036:	89 c3                	mov    %eax,%ebx
    3038:	89 c7                	mov    %eax,%edi
    303a:	e8 b7 ff ff ff       	callq  2ff6 <check>
    303f:	85 c0                	test   %eax,%eax
    3041:	74 ee                	je     3031 <gencookie+0x9>
    3043:	89 d8                	mov    %ebx,%eax
    3045:	5b                   	pop    %rbx
    3046:	c3                   	retq   
    3047:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    304e:	00 00 

0000000000003050 <__libc_csu_init>:
    3050:	41 57                	push   %r15
    3052:	41 56                	push   %r14
    3054:	49 89 d7             	mov    %rdx,%r15
    3057:	41 55                	push   %r13
    3059:	41 54                	push   %r12
    305b:	4c 8d 25 5e 1c 20 00 	lea    0x201c5e(%rip),%r12        # 204cc0 <__frame_dummy_init_array_entry>
    3062:	55                   	push   %rbp
    3063:	48 8d 2d 5e 1c 20 00 	lea    0x201c5e(%rip),%rbp        # 204cc8 <__init_array_end>
    306a:	53                   	push   %rbx
    306b:	41 89 fd             	mov    %edi,%r13d
    306e:	49 89 f6             	mov    %rsi,%r14
    3071:	4c 29 e5             	sub    %r12,%rbp
    3074:	48 83 ec 08          	sub    $0x8,%rsp
    3078:	48 c1 fd 03          	sar    $0x3,%rbp
    307c:	e8 27 dd ff ff       	callq  da8 <_init>
    3081:	48 85 ed             	test   %rbp,%rbp
    3084:	74 20                	je     30a6 <__libc_csu_init+0x56>
    3086:	31 db                	xor    %ebx,%ebx
    3088:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    308f:	00 
    3090:	4c 89 fa             	mov    %r15,%rdx
    3093:	4c 89 f6             	mov    %r14,%rsi
    3096:	44 89 ef             	mov    %r13d,%edi
    3099:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    309d:	48 83 c3 01          	add    $0x1,%rbx
    30a1:	48 39 dd             	cmp    %rbx,%rbp
    30a4:	75 ea                	jne    3090 <__libc_csu_init+0x40>
    30a6:	48 83 c4 08          	add    $0x8,%rsp
    30aa:	5b                   	pop    %rbx
    30ab:	5d                   	pop    %rbp
    30ac:	41 5c                	pop    %r12
    30ae:	41 5d                	pop    %r13
    30b0:	41 5e                	pop    %r14
    30b2:	41 5f                	pop    %r15
    30b4:	c3                   	retq   
    30b5:	90                   	nop
    30b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    30bd:	00 00 00 

00000000000030c0 <__libc_csu_fini>:
    30c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000030c4 <_fini>:
    30c4:	48 83 ec 08          	sub    $0x8,%rsp
    30c8:	48 83 c4 08          	add    $0x8,%rsp
    30cc:	c3                   	retq   
