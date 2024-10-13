
ctarget:     file format elf64-x86-64


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
     fef:	4c 8d 05 aa 1f 00 00 	lea    0x1faa(%rip),%r8        # 2fa0 <__libc_csu_fini>
     ff6:	48 8d 0d 33 1f 00 00 	lea    0x1f33(%rip),%rcx        # 2f30 <__libc_csu_init>
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
    10fa:	48 8d 35 b7 1e 00 00 	lea    0x1eb7(%rip),%rsi        # 2fb8 <_IO_stdin_used+0x8>
    1101:	bf 01 00 00 00       	mov    $0x1,%edi
    1106:	b8 00 00 00 00       	mov    $0x0,%eax
    110b:	e8 20 fe ff ff       	callq  f30 <__printf_chk@plt>
    1110:	48 8d 3d d9 1e 00 00 	lea    0x1ed9(%rip),%rdi        # 2ff0 <_IO_stdin_used+0x40>
    1117:	e8 f4 fc ff ff       	callq  e10 <puts@plt>
    111c:	48 8d 3d 05 20 00 00 	lea    0x2005(%rip),%rdi        # 3128 <_IO_stdin_used+0x178>
    1123:	e8 e8 fc ff ff       	callq  e10 <puts@plt>
    1128:	48 8d 3d e9 1e 00 00 	lea    0x1ee9(%rip),%rdi        # 3018 <_IO_stdin_used+0x68>
    112f:	e8 dc fc ff ff       	callq  e10 <puts@plt>
    1134:	48 8d 3d 07 20 00 00 	lea    0x2007(%rip),%rdi        # 3142 <_IO_stdin_used+0x192>
    113b:	e8 d0 fc ff ff       	callq  e10 <puts@plt>
    1140:	bf 00 00 00 00       	mov    $0x0,%edi
    1145:	e8 36 fe ff ff       	callq  f80 <exit@plt>
    114a:	48 8d 35 0d 20 00 00 	lea    0x200d(%rip),%rsi        # 315e <_IO_stdin_used+0x1ae>
    1151:	bf 01 00 00 00       	mov    $0x1,%edi
    1156:	b8 00 00 00 00       	mov    $0x0,%eax
    115b:	e8 d0 fd ff ff       	callq  f30 <__printf_chk@plt>
    1160:	48 8d 3d d9 1e 00 00 	lea    0x1ed9(%rip),%rdi        # 3040 <_IO_stdin_used+0x90>
    1167:	e8 a4 fc ff ff       	callq  e10 <puts@plt>
    116c:	48 8d 3d f5 1e 00 00 	lea    0x1ef5(%rip),%rdi        # 3068 <_IO_stdin_used+0xb8>
    1173:	e8 98 fc ff ff       	callq  e10 <puts@plt>
    1178:	48 8d 3d fd 1f 00 00 	lea    0x1ffd(%rip),%rdi        # 317c <_IO_stdin_used+0x1cc>
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
    11b0:	e8 4e 1d 00 00       	callq  2f03 <gencookie>
    11b5:	89 05 29 42 20 00    	mov    %eax,0x204229(%rip)        # 2053e4 <cookie>
    11bb:	89 c7                	mov    %eax,%edi
    11bd:	e8 41 1d 00 00       	callq  2f03 <gencookie>
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
    1202:	c6 05 ff 4d 20 00 63 	movb   $0x63,0x204dff(%rip)        # 206008 <target_prefix>
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
    126d:	e8 c1 19 00 00       	callq  2c33 <init_driver>
    1272:	85 c0                	test   %eax,%eax
    1274:	79 a5                	jns    121b <initialize_target+0x95>
    1276:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
    127d:	00 
    127e:	48 8d 35 4b 1e 00 00 	lea    0x1e4b(%rip),%rsi        # 30d0 <_IO_stdin_used+0x120>
    1285:	bf 01 00 00 00       	mov    $0x1,%edi
    128a:	b8 00 00 00 00       	mov    $0x0,%eax
    128f:	e8 9c fc ff ff       	callq  f30 <__printf_chk@plt>
    1294:	bf 08 00 00 00       	mov    $0x8,%edi
    1299:	e8 e2 fc ff ff       	callq  f80 <exit@plt>
    129e:	48 8d 3d f3 1d 00 00 	lea    0x1df3(%rip),%rdi        # 3098 <_IO_stdin_used+0xe8>
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
    12c7:	48 8d 35 6c 0c 00 00 	lea    0xc6c(%rip),%rsi        # 1f3a <seghandler>
    12ce:	bf 0b 00 00 00       	mov    $0xb,%edi
    12d3:	e8 b8 fb ff ff       	callq  e90 <signal@plt>
    12d8:	48 8d 35 07 0c 00 00 	lea    0xc07(%rip),%rsi        # 1ee6 <bushandler>
    12df:	bf 07 00 00 00       	mov    $0x7,%edi
    12e4:	e8 a7 fb ff ff       	callq  e90 <signal@plt>
    12e9:	48 8d 35 9e 0c 00 00 	lea    0xc9e(%rip),%rsi        # 1f8e <illegalhandler>
    12f0:	bf 04 00 00 00       	mov    $0x4,%edi
    12f5:	e8 96 fb ff ff       	callq  e90 <signal@plt>
    12fa:	83 3d e7 40 20 00 00 	cmpl   $0x0,0x2040e7(%rip)        # 2053e8 <is_checker>
    1301:	75 26                	jne    1329 <main+0x70>
    1303:	48 8d 2d 8b 1e 00 00 	lea    0x1e8b(%rip),%rbp        # 3195 <_IO_stdin_used+0x1e5>
    130a:	48 8b 05 6f 40 20 00 	mov    0x20406f(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    1311:	48 89 05 b8 40 20 00 	mov    %rax,0x2040b8(%rip)        # 2053d0 <infile>
    1318:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    131e:	41 be 00 00 00 00    	mov    $0x0,%r14d
    1324:	e9 8d 00 00 00       	jmpq   13b6 <main+0xfd>
    1329:	48 8d 35 b2 0c 00 00 	lea    0xcb2(%rip),%rsi        # 1fe2 <sigalrmhandler>
    1330:	bf 0e 00 00 00       	mov    $0xe,%edi
    1335:	e8 56 fb ff ff       	callq  e90 <signal@plt>
    133a:	bf 05 00 00 00       	mov    $0x5,%edi
    133f:	e8 1c fb ff ff       	callq  e60 <alarm@plt>
    1344:	48 8d 2d 4f 1e 00 00 	lea    0x1e4f(%rip),%rbp        # 319a <_IO_stdin_used+0x1ea>
    134b:	eb bd                	jmp    130a <main+0x51>
    134d:	48 8b 3b             	mov    (%rbx),%rdi
    1350:	e8 95 fd ff ff       	callq  10ea <usage>
    1355:	48 8d 35 c9 20 00 00 	lea    0x20c9(%rip),%rsi        # 3425 <_IO_stdin_used+0x475>
    135c:	48 8b 3d 25 40 20 00 	mov    0x204025(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    1363:	e8 d8 fb ff ff       	callq  f40 <fopen@plt>
    1368:	48 89 05 61 40 20 00 	mov    %rax,0x204061(%rip)        # 2053d0 <infile>
    136f:	48 85 c0             	test   %rax,%rax
    1372:	75 42                	jne    13b6 <main+0xfd>
    1374:	48 8b 0d 0d 40 20 00 	mov    0x20400d(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    137b:	48 8d 15 20 1e 00 00 	lea    0x1e20(%rip),%rdx        # 31a2 <_IO_stdin_used+0x1f2>
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
    13d5:	48 8d 0d 04 1e 00 00 	lea    0x1e04(%rip),%rcx        # 31e0 <_IO_stdin_used+0x230>
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
    140c:	48 8d 35 ac 1d 00 00 	lea    0x1dac(%rip),%rsi        # 31bf <_IO_stdin_used+0x20f>
    1413:	bf 01 00 00 00       	mov    $0x1,%edi
    1418:	b8 00 00 00 00       	mov    $0x0,%eax
    141d:	e8 0e fb ff ff       	callq  f30 <__printf_chk@plt>
    1422:	48 8b 3b             	mov    (%rbx),%rdi
    1425:	e8 c0 fc ff ff       	callq  10ea <usage>
    142a:	be 00 00 00 00       	mov    $0x0,%esi
    142f:	44 89 ef             	mov    %r13d,%edi
    1432:	e8 4f fd ff ff       	callq  1186 <initialize_target>
    1437:	83 3d aa 3f 20 00 00 	cmpl   $0x0,0x203faa(%rip)        # 2053e8 <is_checker>
    143e:	74 09                	je     1449 <main+0x190>
    1440:	44 39 35 99 3f 20 00 	cmp    %r14d,0x203f99(%rip)        # 2053e0 <authkey>
    1447:	75 36                	jne    147f <main+0x1c6>
    1449:	8b 15 95 3f 20 00    	mov    0x203f95(%rip),%edx        # 2053e4 <cookie>
    144f:	48 8d 35 7c 1d 00 00 	lea    0x1d7c(%rip),%rsi        # 31d2 <_IO_stdin_used+0x222>
    1456:	bf 01 00 00 00       	mov    $0x1,%edi
    145b:	b8 00 00 00 00       	mov    $0x0,%eax
    1460:	e8 cb fa ff ff       	callq  f30 <__printf_chk@plt>
    1465:	48 8b 3d f4 3e 20 00 	mov    0x203ef4(%rip),%rdi        # 205360 <buf_offset>
    146c:	e8 7d 0c 00 00       	callq  20ee <stable_launch>
    1471:	b8 00 00 00 00       	mov    $0x0,%eax
    1476:	5b                   	pop    %rbx
    1477:	5d                   	pop    %rbp
    1478:	41 5c                	pop    %r12
    147a:	41 5d                	pop    %r13
    147c:	41 5e                	pop    %r14
    147e:	c3                   	retq   
    147f:	44 89 f2             	mov    %r14d,%edx
    1482:	48 8d 35 6f 1c 00 00 	lea    0x1c6f(%rip),%rsi        # 30f8 <_IO_stdin_used+0x148>
    1489:	bf 01 00 00 00       	mov    $0x1,%edi
    148e:	b8 00 00 00 00       	mov    $0x0,%eax
    1493:	e8 98 fa ff ff       	callq  f30 <__printf_chk@plt>
    1498:	b8 00 00 00 00       	mov    $0x0,%eax
    149d:	e8 a4 06 00 00       	callq  1b46 <check_fail>
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
    18e5:	e8 94 02 00 00       	callq  1b7e <Gets>
    18ea:	b8 01 00 00 00       	mov    $0x1,%eax
    18ef:	48 83 c4 18          	add    $0x18,%rsp
    18f3:	c3                   	retq   

00000000000018f4 <touch1>:
    18f4:	48 83 ec 08          	sub    $0x8,%rsp
    18f8:	c7 05 da 3a 20 00 01 	movl   $0x1,0x203ada(%rip)        # 2053dc <vlevel>
    18ff:	00 00 00 
    1902:	48 8d 3d 6e 19 00 00 	lea    0x196e(%rip),%rdi        # 3277 <_IO_stdin_used+0x2c7>
    1909:	e8 02 f5 ff ff       	callq  e10 <puts@plt>
    190e:	bf 01 00 00 00       	mov    $0x1,%edi
    1913:	e8 d6 04 00 00       	callq  1dee <validate>
    1918:	bf 00 00 00 00       	mov    $0x0,%edi
    191d:	e8 5e f6 ff ff       	callq  f80 <exit@plt>

0000000000001922 <touch2>:
    1922:	48 83 ec 08          	sub    $0x8,%rsp
    1926:	89 fa                	mov    %edi,%edx
    1928:	c7 05 aa 3a 20 00 02 	movl   $0x2,0x203aaa(%rip)        # 2053dc <vlevel>
    192f:	00 00 00 
    1932:	39 3d ac 3a 20 00    	cmp    %edi,0x203aac(%rip)        # 2053e4 <cookie>
    1938:	74 2a                	je     1964 <touch2+0x42>
    193a:	48 8d 35 87 19 00 00 	lea    0x1987(%rip),%rsi        # 32c8 <_IO_stdin_used+0x318>
    1941:	bf 01 00 00 00       	mov    $0x1,%edi
    1946:	b8 00 00 00 00       	mov    $0x0,%eax
    194b:	e8 e0 f5 ff ff       	callq  f30 <__printf_chk@plt>
    1950:	bf 02 00 00 00       	mov    $0x2,%edi
    1955:	e8 64 05 00 00       	callq  1ebe <fail>
    195a:	bf 00 00 00 00       	mov    $0x0,%edi
    195f:	e8 1c f6 ff ff       	callq  f80 <exit@plt>
    1964:	48 8d 35 35 19 00 00 	lea    0x1935(%rip),%rsi        # 32a0 <_IO_stdin_used+0x2f0>
    196b:	bf 01 00 00 00       	mov    $0x1,%edi
    1970:	b8 00 00 00 00       	mov    $0x0,%eax
    1975:	e8 b6 f5 ff ff       	callq  f30 <__printf_chk@plt>
    197a:	bf 02 00 00 00       	mov    $0x2,%edi
    197f:	e8 6a 04 00 00       	callq  1dee <validate>
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
    19e3:	48 8d 0d aa 18 00 00 	lea    0x18aa(%rip),%rcx        # 3294 <_IO_stdin_used+0x2e4>
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
    1a5c:	48 8d 35 8d 18 00 00 	lea    0x188d(%rip),%rsi        # 32f0 <_IO_stdin_used+0x340>
    1a63:	bf 01 00 00 00       	mov    $0x1,%edi
    1a68:	b8 00 00 00 00       	mov    $0x0,%eax
    1a6d:	e8 be f4 ff ff       	callq  f30 <__printf_chk@plt>
    1a72:	bf 03 00 00 00       	mov    $0x3,%edi
    1a77:	e8 72 03 00 00       	callq  1dee <validate>
    1a7c:	bf 00 00 00 00       	mov    $0x0,%edi
    1a81:	e8 fa f4 ff ff       	callq  f80 <exit@plt>
    1a86:	48 89 da             	mov    %rbx,%rdx
    1a89:	48 8d 35 88 18 00 00 	lea    0x1888(%rip),%rsi        # 3318 <_IO_stdin_used+0x368>
    1a90:	bf 01 00 00 00       	mov    $0x1,%edi
    1a95:	b8 00 00 00 00       	mov    $0x0,%eax
    1a9a:	e8 91 f4 ff ff       	callq  f30 <__printf_chk@plt>
    1a9f:	bf 03 00 00 00       	mov    $0x3,%edi
    1aa4:	e8 15 04 00 00       	callq  1ebe <fail>
    1aa9:	eb d1                	jmp    1a7c <touch3+0x43>

0000000000001aab <test>:
    1aab:	48 83 ec 08          	sub    $0x8,%rsp
    1aaf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab4:	e8 25 fe ff ff       	callq  18de <getbuf>
    1ab9:	89 c2                	mov    %eax,%edx
    1abb:	48 8d 35 7e 18 00 00 	lea    0x187e(%rip),%rsi        # 3340 <_IO_stdin_used+0x390>
    1ac2:	bf 01 00 00 00       	mov    $0x1,%edi
    1ac7:	b8 00 00 00 00       	mov    $0x0,%eax
    1acc:	e8 5f f4 ff ff       	callq  f30 <__printf_chk@plt>
    1ad1:	48 83 c4 08          	add    $0x8,%rsp
    1ad5:	c3                   	retq   

0000000000001ad6 <save_char>:
    1ad6:	8b 05 28 45 20 00    	mov    0x204528(%rip),%eax        # 206004 <gets_cnt>
    1adc:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    1ae1:	7f 4a                	jg     1b2d <save_char+0x57>
    1ae3:	89 f9                	mov    %edi,%ecx
    1ae5:	c0 e9 04             	shr    $0x4,%cl
    1ae8:	8d 14 40             	lea    (%rax,%rax,2),%edx
    1aeb:	4c 8d 05 6e 1b 00 00 	lea    0x1b6e(%rip),%r8        # 3660 <trans_char>
    1af2:	83 e1 0f             	and    $0xf,%ecx
    1af5:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
    1afa:	48 8d 0d ff 38 20 00 	lea    0x2038ff(%rip),%rcx        # 205400 <gets_buf>
    1b01:	48 63 f2             	movslq %edx,%rsi
    1b04:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
    1b08:	8d 72 01             	lea    0x1(%rdx),%esi
    1b0b:	83 e7 0f             	and    $0xf,%edi
    1b0e:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
    1b13:	48 63 f6             	movslq %esi,%rsi
    1b16:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
    1b1a:	83 c2 02             	add    $0x2,%edx
    1b1d:	48 63 d2             	movslq %edx,%rdx
    1b20:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
    1b24:	83 c0 01             	add    $0x1,%eax
    1b27:	89 05 d7 44 20 00    	mov    %eax,0x2044d7(%rip)        # 206004 <gets_cnt>
    1b2d:	f3 c3                	repz retq 

0000000000001b2f <save_term>:
    1b2f:	8b 05 cf 44 20 00    	mov    0x2044cf(%rip),%eax        # 206004 <gets_cnt>
    1b35:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1b38:	48 98                	cltq   
    1b3a:	48 8d 15 bf 38 20 00 	lea    0x2038bf(%rip),%rdx        # 205400 <gets_buf>
    1b41:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1b45:	c3                   	retq   

0000000000001b46 <check_fail>:
    1b46:	48 83 ec 08          	sub    $0x8,%rsp
    1b4a:	0f be 15 b7 44 20 00 	movsbl 0x2044b7(%rip),%edx        # 206008 <target_prefix>
    1b51:	4c 8d 05 a8 38 20 00 	lea    0x2038a8(%rip),%r8        # 205400 <gets_buf>
    1b58:	8b 0d 7a 38 20 00    	mov    0x20387a(%rip),%ecx        # 2053d8 <check_level>
    1b5e:	48 8d 35 fe 17 00 00 	lea    0x17fe(%rip),%rsi        # 3363 <_IO_stdin_used+0x3b3>
    1b65:	bf 01 00 00 00       	mov    $0x1,%edi
    1b6a:	b8 00 00 00 00       	mov    $0x0,%eax
    1b6f:	e8 bc f3 ff ff       	callq  f30 <__printf_chk@plt>
    1b74:	bf 01 00 00 00       	mov    $0x1,%edi
    1b79:	e8 02 f4 ff ff       	callq  f80 <exit@plt>

0000000000001b7e <Gets>:
    1b7e:	41 54                	push   %r12
    1b80:	55                   	push   %rbp
    1b81:	53                   	push   %rbx
    1b82:	49 89 fc             	mov    %rdi,%r12
    1b85:	c7 05 75 44 20 00 00 	movl   $0x0,0x204475(%rip)        # 206004 <gets_cnt>
    1b8c:	00 00 00 
    1b8f:	48 89 fb             	mov    %rdi,%rbx
    1b92:	eb 11                	jmp    1ba5 <Gets+0x27>
    1b94:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
    1b98:	88 03                	mov    %al,(%rbx)
    1b9a:	0f b6 f8             	movzbl %al,%edi
    1b9d:	e8 34 ff ff ff       	callq  1ad6 <save_char>
    1ba2:	48 89 eb             	mov    %rbp,%rbx
    1ba5:	48 8b 3d 24 38 20 00 	mov    0x203824(%rip),%rdi        # 2053d0 <infile>
    1bac:	e8 4f f3 ff ff       	callq  f00 <_IO_getc@plt>
    1bb1:	83 f8 ff             	cmp    $0xffffffff,%eax
    1bb4:	74 05                	je     1bbb <Gets+0x3d>
    1bb6:	83 f8 0a             	cmp    $0xa,%eax
    1bb9:	75 d9                	jne    1b94 <Gets+0x16>
    1bbb:	c6 03 00             	movb   $0x0,(%rbx)
    1bbe:	b8 00 00 00 00       	mov    $0x0,%eax
    1bc3:	e8 67 ff ff ff       	callq  1b2f <save_term>
    1bc8:	4c 89 e0             	mov    %r12,%rax
    1bcb:	5b                   	pop    %rbx
    1bcc:	5d                   	pop    %rbp
    1bcd:	41 5c                	pop    %r12
    1bcf:	c3                   	retq   

0000000000001bd0 <notify_server>:
    1bd0:	55                   	push   %rbp
    1bd1:	53                   	push   %rbx
    1bd2:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1bd9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1be0:	00 00 
    1be2:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1be9:	00 
    1bea:	31 c0                	xor    %eax,%eax
    1bec:	83 3d f5 37 20 00 00 	cmpl   $0x0,0x2037f5(%rip)        # 2053e8 <is_checker>
    1bf3:	0f 85 d2 00 00 00    	jne    1ccb <notify_server+0xfb>
    1bf9:	89 fb                	mov    %edi,%ebx
    1bfb:	8b 05 03 44 20 00    	mov    0x204403(%rip),%eax        # 206004 <gets_cnt>
    1c01:	83 c0 64             	add    $0x64,%eax
    1c04:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1c09:	0f 8f dd 00 00 00    	jg     1cec <notify_server+0x11c>
    1c0f:	0f be 05 f2 43 20 00 	movsbl 0x2043f2(%rip),%eax        # 206008 <target_prefix>
    1c16:	83 3d 4b 37 20 00 00 	cmpl   $0x0,0x20374b(%rip)        # 205368 <notify>
    1c1d:	0f 84 e9 00 00 00    	je     1d0c <notify_server+0x13c>
    1c23:	8b 15 b7 37 20 00    	mov    0x2037b7(%rip),%edx        # 2053e0 <authkey>
    1c29:	85 db                	test   %ebx,%ebx
    1c2b:	0f 84 e5 00 00 00    	je     1d16 <notify_server+0x146>
    1c31:	48 8d 2d 41 17 00 00 	lea    0x1741(%rip),%rbp        # 3379 <_IO_stdin_used+0x3c9>
    1c38:	48 89 e7             	mov    %rsp,%rdi
    1c3b:	48 8d 0d be 37 20 00 	lea    0x2037be(%rip),%rcx        # 205400 <gets_buf>
    1c42:	51                   	push   %rcx
    1c43:	56                   	push   %rsi
    1c44:	50                   	push   %rax
    1c45:	52                   	push   %rdx
    1c46:	49 89 e9             	mov    %rbp,%r9
    1c49:	44 8b 05 c0 33 20 00 	mov    0x2033c0(%rip),%r8d        # 205010 <target_id>
    1c50:	48 8d 0d 2c 17 00 00 	lea    0x172c(%rip),%rcx        # 3383 <_IO_stdin_used+0x3d3>
    1c57:	ba 00 20 00 00       	mov    $0x2000,%edx
    1c5c:	be 01 00 00 00       	mov    $0x1,%esi
    1c61:	b8 00 00 00 00       	mov    $0x0,%eax
    1c66:	e8 45 f3 ff ff       	callq  fb0 <__sprintf_chk@plt>
    1c6b:	48 83 c4 20          	add    $0x20,%rsp
    1c6f:	83 3d f2 36 20 00 00 	cmpl   $0x0,0x2036f2(%rip)        # 205368 <notify>
    1c76:	0f 84 df 00 00 00    	je     1d5b <notify_server+0x18b>
    1c7c:	85 db                	test   %ebx,%ebx
    1c7e:	0f 84 c6 00 00 00    	je     1d4a <notify_server+0x17a>
    1c84:	48 89 e1             	mov    %rsp,%rcx
    1c87:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1c8e:	00 
    1c8f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1c95:	48 8b 15 8c 33 20 00 	mov    0x20338c(%rip),%rdx        # 205028 <lab>
    1c9c:	48 8b 35 8d 33 20 00 	mov    0x20338d(%rip),%rsi        # 205030 <course>
    1ca3:	48 8b 3d 76 33 20 00 	mov    0x203376(%rip),%rdi        # 205020 <user_id>
    1caa:	e8 af 11 00 00       	callq  2e5e <driver_post>
    1caf:	85 c0                	test   %eax,%eax
    1cb1:	78 6f                	js     1d22 <notify_server+0x152>
    1cb3:	48 8d 3d 0e 18 00 00 	lea    0x180e(%rip),%rdi        # 34c8 <_IO_stdin_used+0x518>
    1cba:	e8 51 f1 ff ff       	callq  e10 <puts@plt>
    1cbf:	48 8d 3d e5 16 00 00 	lea    0x16e5(%rip),%rdi        # 33ab <_IO_stdin_used+0x3fb>
    1cc6:	e8 45 f1 ff ff       	callq  e10 <puts@plt>
    1ccb:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1cd2:	00 
    1cd3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1cda:	00 00 
    1cdc:	0f 85 07 01 00 00    	jne    1de9 <notify_server+0x219>
    1ce2:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1ce9:	5b                   	pop    %rbx
    1cea:	5d                   	pop    %rbp
    1ceb:	c3                   	retq   
    1cec:	48 8d 35 a5 17 00 00 	lea    0x17a5(%rip),%rsi        # 3498 <_IO_stdin_used+0x4e8>
    1cf3:	bf 01 00 00 00       	mov    $0x1,%edi
    1cf8:	b8 00 00 00 00       	mov    $0x0,%eax
    1cfd:	e8 2e f2 ff ff       	callq  f30 <__printf_chk@plt>
    1d02:	bf 01 00 00 00       	mov    $0x1,%edi
    1d07:	e8 74 f2 ff ff       	callq  f80 <exit@plt>
    1d0c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1d11:	e9 13 ff ff ff       	jmpq   1c29 <notify_server+0x59>
    1d16:	48 8d 2d 61 16 00 00 	lea    0x1661(%rip),%rbp        # 337e <_IO_stdin_used+0x3ce>
    1d1d:	e9 16 ff ff ff       	jmpq   1c38 <notify_server+0x68>
    1d22:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
    1d29:	00 
    1d2a:	48 8d 35 6e 16 00 00 	lea    0x166e(%rip),%rsi        # 339f <_IO_stdin_used+0x3ef>
    1d31:	bf 01 00 00 00       	mov    $0x1,%edi
    1d36:	b8 00 00 00 00       	mov    $0x0,%eax
    1d3b:	e8 f0 f1 ff ff       	callq  f30 <__printf_chk@plt>
    1d40:	bf 01 00 00 00       	mov    $0x1,%edi
    1d45:	e8 36 f2 ff ff       	callq  f80 <exit@plt>
    1d4a:	48 8d 3d 64 16 00 00 	lea    0x1664(%rip),%rdi        # 33b5 <_IO_stdin_used+0x405>
    1d51:	e8 ba f0 ff ff       	callq  e10 <puts@plt>
    1d56:	e9 70 ff ff ff       	jmpq   1ccb <notify_server+0xfb>
    1d5b:	48 89 ea             	mov    %rbp,%rdx
    1d5e:	48 8d 35 9b 17 00 00 	lea    0x179b(%rip),%rsi        # 3500 <_IO_stdin_used+0x550>
    1d65:	bf 01 00 00 00       	mov    $0x1,%edi
    1d6a:	b8 00 00 00 00       	mov    $0x0,%eax
    1d6f:	e8 bc f1 ff ff       	callq  f30 <__printf_chk@plt>
    1d74:	48 8b 15 a5 32 20 00 	mov    0x2032a5(%rip),%rdx        # 205020 <user_id>
    1d7b:	48 8d 35 3a 16 00 00 	lea    0x163a(%rip),%rsi        # 33bc <_IO_stdin_used+0x40c>
    1d82:	bf 01 00 00 00       	mov    $0x1,%edi
    1d87:	b8 00 00 00 00       	mov    $0x0,%eax
    1d8c:	e8 9f f1 ff ff       	callq  f30 <__printf_chk@plt>
    1d91:	48 8b 15 98 32 20 00 	mov    0x203298(%rip),%rdx        # 205030 <course>
    1d98:	48 8d 35 2a 16 00 00 	lea    0x162a(%rip),%rsi        # 33c9 <_IO_stdin_used+0x419>
    1d9f:	bf 01 00 00 00       	mov    $0x1,%edi
    1da4:	b8 00 00 00 00       	mov    $0x0,%eax
    1da9:	e8 82 f1 ff ff       	callq  f30 <__printf_chk@plt>
    1dae:	48 8b 15 73 32 20 00 	mov    0x203273(%rip),%rdx        # 205028 <lab>
    1db5:	48 8d 35 19 16 00 00 	lea    0x1619(%rip),%rsi        # 33d5 <_IO_stdin_used+0x425>
    1dbc:	bf 01 00 00 00       	mov    $0x1,%edi
    1dc1:	b8 00 00 00 00       	mov    $0x0,%eax
    1dc6:	e8 65 f1 ff ff       	callq  f30 <__printf_chk@plt>
    1dcb:	48 89 e2             	mov    %rsp,%rdx
    1dce:	48 8d 35 09 16 00 00 	lea    0x1609(%rip),%rsi        # 33de <_IO_stdin_used+0x42e>
    1dd5:	bf 01 00 00 00       	mov    $0x1,%edi
    1dda:	b8 00 00 00 00       	mov    $0x0,%eax
    1ddf:	e8 4c f1 ff ff       	callq  f30 <__printf_chk@plt>
    1de4:	e9 e2 fe ff ff       	jmpq   1ccb <notify_server+0xfb>
    1de9:	e8 42 f0 ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000001dee <validate>:
    1dee:	53                   	push   %rbx
    1def:	89 fb                	mov    %edi,%ebx
    1df1:	83 3d f0 35 20 00 00 	cmpl   $0x0,0x2035f0(%rip)        # 2053e8 <is_checker>
    1df8:	74 72                	je     1e6c <validate+0x7e>
    1dfa:	39 3d dc 35 20 00    	cmp    %edi,0x2035dc(%rip)        # 2053dc <vlevel>
    1e00:	75 32                	jne    1e34 <validate+0x46>
    1e02:	8b 15 d0 35 20 00    	mov    0x2035d0(%rip),%edx        # 2053d8 <check_level>
    1e08:	39 fa                	cmp    %edi,%edx
    1e0a:	75 3e                	jne    1e4a <validate+0x5c>
    1e0c:	0f be 15 f5 41 20 00 	movsbl 0x2041f5(%rip),%edx        # 206008 <target_prefix>
    1e13:	4c 8d 05 e6 35 20 00 	lea    0x2035e6(%rip),%r8        # 205400 <gets_buf>
    1e1a:	89 f9                	mov    %edi,%ecx
    1e1c:	48 8d 35 e5 15 00 00 	lea    0x15e5(%rip),%rsi        # 3408 <_IO_stdin_used+0x458>
    1e23:	bf 01 00 00 00       	mov    $0x1,%edi
    1e28:	b8 00 00 00 00       	mov    $0x0,%eax
    1e2d:	e8 fe f0 ff ff       	callq  f30 <__printf_chk@plt>
    1e32:	5b                   	pop    %rbx
    1e33:	c3                   	retq   
    1e34:	48 8d 3d af 15 00 00 	lea    0x15af(%rip),%rdi        # 33ea <_IO_stdin_used+0x43a>
    1e3b:	e8 d0 ef ff ff       	callq  e10 <puts@plt>
    1e40:	b8 00 00 00 00       	mov    $0x0,%eax
    1e45:	e8 fc fc ff ff       	callq  1b46 <check_fail>
    1e4a:	89 f9                	mov    %edi,%ecx
    1e4c:	48 8d 35 d5 16 00 00 	lea    0x16d5(%rip),%rsi        # 3528 <_IO_stdin_used+0x578>
    1e53:	bf 01 00 00 00       	mov    $0x1,%edi
    1e58:	b8 00 00 00 00       	mov    $0x0,%eax
    1e5d:	e8 ce f0 ff ff       	callq  f30 <__printf_chk@plt>
    1e62:	b8 00 00 00 00       	mov    $0x0,%eax
    1e67:	e8 da fc ff ff       	callq  1b46 <check_fail>
    1e6c:	39 3d 6a 35 20 00    	cmp    %edi,0x20356a(%rip)        # 2053dc <vlevel>
    1e72:	74 1a                	je     1e8e <validate+0xa0>
    1e74:	48 8d 3d 6f 15 00 00 	lea    0x156f(%rip),%rdi        # 33ea <_IO_stdin_used+0x43a>
    1e7b:	e8 90 ef ff ff       	callq  e10 <puts@plt>
    1e80:	89 de                	mov    %ebx,%esi
    1e82:	bf 00 00 00 00       	mov    $0x0,%edi
    1e87:	e8 44 fd ff ff       	callq  1bd0 <notify_server>
    1e8c:	eb a4                	jmp    1e32 <validate+0x44>
    1e8e:	0f be 0d 73 41 20 00 	movsbl 0x204173(%rip),%ecx        # 206008 <target_prefix>
    1e95:	89 fa                	mov    %edi,%edx
    1e97:	48 8d 35 b2 16 00 00 	lea    0x16b2(%rip),%rsi        # 3550 <_IO_stdin_used+0x5a0>
    1e9e:	bf 01 00 00 00       	mov    $0x1,%edi
    1ea3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea8:	e8 83 f0 ff ff       	callq  f30 <__printf_chk@plt>
    1ead:	89 de                	mov    %ebx,%esi
    1eaf:	bf 01 00 00 00       	mov    $0x1,%edi
    1eb4:	e8 17 fd ff ff       	callq  1bd0 <notify_server>
    1eb9:	e9 74 ff ff ff       	jmpq   1e32 <validate+0x44>

0000000000001ebe <fail>:
    1ebe:	48 83 ec 08          	sub    $0x8,%rsp
    1ec2:	83 3d 1f 35 20 00 00 	cmpl   $0x0,0x20351f(%rip)        # 2053e8 <is_checker>
    1ec9:	75 11                	jne    1edc <fail+0x1e>
    1ecb:	89 fe                	mov    %edi,%esi
    1ecd:	bf 00 00 00 00       	mov    $0x0,%edi
    1ed2:	e8 f9 fc ff ff       	callq  1bd0 <notify_server>
    1ed7:	48 83 c4 08          	add    $0x8,%rsp
    1edb:	c3                   	retq   
    1edc:	b8 00 00 00 00       	mov    $0x0,%eax
    1ee1:	e8 60 fc ff ff       	callq  1b46 <check_fail>

0000000000001ee6 <bushandler>:
    1ee6:	48 83 ec 08          	sub    $0x8,%rsp
    1eea:	83 3d f7 34 20 00 00 	cmpl   $0x0,0x2034f7(%rip)        # 2053e8 <is_checker>
    1ef1:	74 16                	je     1f09 <bushandler+0x23>
    1ef3:	48 8d 3d 23 15 00 00 	lea    0x1523(%rip),%rdi        # 341d <_IO_stdin_used+0x46d>
    1efa:	e8 11 ef ff ff       	callq  e10 <puts@plt>
    1eff:	b8 00 00 00 00       	mov    $0x0,%eax
    1f04:	e8 3d fc ff ff       	callq  1b46 <check_fail>
    1f09:	48 8d 3d 78 16 00 00 	lea    0x1678(%rip),%rdi        # 3588 <_IO_stdin_used+0x5d8>
    1f10:	e8 fb ee ff ff       	callq  e10 <puts@plt>
    1f15:	48 8d 3d 0b 15 00 00 	lea    0x150b(%rip),%rdi        # 3427 <_IO_stdin_used+0x477>
    1f1c:	e8 ef ee ff ff       	callq  e10 <puts@plt>
    1f21:	be 00 00 00 00       	mov    $0x0,%esi
    1f26:	bf 00 00 00 00       	mov    $0x0,%edi
    1f2b:	e8 a0 fc ff ff       	callq  1bd0 <notify_server>
    1f30:	bf 01 00 00 00       	mov    $0x1,%edi
    1f35:	e8 46 f0 ff ff       	callq  f80 <exit@plt>

0000000000001f3a <seghandler>:
    1f3a:	48 83 ec 08          	sub    $0x8,%rsp
    1f3e:	83 3d a3 34 20 00 00 	cmpl   $0x0,0x2034a3(%rip)        # 2053e8 <is_checker>
    1f45:	74 16                	je     1f5d <seghandler+0x23>
    1f47:	48 8d 3d ef 14 00 00 	lea    0x14ef(%rip),%rdi        # 343d <_IO_stdin_used+0x48d>
    1f4e:	e8 bd ee ff ff       	callq  e10 <puts@plt>
    1f53:	b8 00 00 00 00       	mov    $0x0,%eax
    1f58:	e8 e9 fb ff ff       	callq  1b46 <check_fail>
    1f5d:	48 8d 3d 44 16 00 00 	lea    0x1644(%rip),%rdi        # 35a8 <_IO_stdin_used+0x5f8>
    1f64:	e8 a7 ee ff ff       	callq  e10 <puts@plt>
    1f69:	48 8d 3d b7 14 00 00 	lea    0x14b7(%rip),%rdi        # 3427 <_IO_stdin_used+0x477>
    1f70:	e8 9b ee ff ff       	callq  e10 <puts@plt>
    1f75:	be 00 00 00 00       	mov    $0x0,%esi
    1f7a:	bf 00 00 00 00       	mov    $0x0,%edi
    1f7f:	e8 4c fc ff ff       	callq  1bd0 <notify_server>
    1f84:	bf 01 00 00 00       	mov    $0x1,%edi
    1f89:	e8 f2 ef ff ff       	callq  f80 <exit@plt>

0000000000001f8e <illegalhandler>:
    1f8e:	48 83 ec 08          	sub    $0x8,%rsp
    1f92:	83 3d 4f 34 20 00 00 	cmpl   $0x0,0x20344f(%rip)        # 2053e8 <is_checker>
    1f99:	74 16                	je     1fb1 <illegalhandler+0x23>
    1f9b:	48 8d 3d ae 14 00 00 	lea    0x14ae(%rip),%rdi        # 3450 <_IO_stdin_used+0x4a0>
    1fa2:	e8 69 ee ff ff       	callq  e10 <puts@plt>
    1fa7:	b8 00 00 00 00       	mov    $0x0,%eax
    1fac:	e8 95 fb ff ff       	callq  1b46 <check_fail>
    1fb1:	48 8d 3d 18 16 00 00 	lea    0x1618(%rip),%rdi        # 35d0 <_IO_stdin_used+0x620>
    1fb8:	e8 53 ee ff ff       	callq  e10 <puts@plt>
    1fbd:	48 8d 3d 63 14 00 00 	lea    0x1463(%rip),%rdi        # 3427 <_IO_stdin_used+0x477>
    1fc4:	e8 47 ee ff ff       	callq  e10 <puts@plt>
    1fc9:	be 00 00 00 00       	mov    $0x0,%esi
    1fce:	bf 00 00 00 00       	mov    $0x0,%edi
    1fd3:	e8 f8 fb ff ff       	callq  1bd0 <notify_server>
    1fd8:	bf 01 00 00 00       	mov    $0x1,%edi
    1fdd:	e8 9e ef ff ff       	callq  f80 <exit@plt>

0000000000001fe2 <sigalrmhandler>:
    1fe2:	48 83 ec 08          	sub    $0x8,%rsp
    1fe6:	83 3d fb 33 20 00 00 	cmpl   $0x0,0x2033fb(%rip)        # 2053e8 <is_checker>
    1fed:	74 16                	je     2005 <sigalrmhandler+0x23>
    1fef:	48 8d 3d 6e 14 00 00 	lea    0x146e(%rip),%rdi        # 3464 <_IO_stdin_used+0x4b4>
    1ff6:	e8 15 ee ff ff       	callq  e10 <puts@plt>
    1ffb:	b8 00 00 00 00       	mov    $0x0,%eax
    2000:	e8 41 fb ff ff       	callq  1b46 <check_fail>
    2005:	ba 05 00 00 00       	mov    $0x5,%edx
    200a:	48 8d 35 ef 15 00 00 	lea    0x15ef(%rip),%rsi        # 3600 <_IO_stdin_used+0x650>
    2011:	bf 01 00 00 00       	mov    $0x1,%edi
    2016:	b8 00 00 00 00       	mov    $0x0,%eax
    201b:	e8 10 ef ff ff       	callq  f30 <__printf_chk@plt>
    2020:	be 00 00 00 00       	mov    $0x0,%esi
    2025:	bf 00 00 00 00       	mov    $0x0,%edi
    202a:	e8 a1 fb ff ff       	callq  1bd0 <notify_server>
    202f:	bf 01 00 00 00       	mov    $0x1,%edi
    2034:	e8 47 ef ff ff       	callq  f80 <exit@plt>

0000000000002039 <launch>:
    2039:	55                   	push   %rbp
    203a:	48 89 e5             	mov    %rsp,%rbp
    203d:	48 83 ec 10          	sub    $0x10,%rsp
    2041:	48 89 fa             	mov    %rdi,%rdx
    2044:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    204b:	00 00 
    204d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2051:	31 c0                	xor    %eax,%eax
    2053:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
    2057:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    205b:	48 29 c4             	sub    %rax,%rsp
    205e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
    2063:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    2067:	be f4 00 00 00       	mov    $0xf4,%esi
    206c:	e8 df ed ff ff       	callq  e50 <memset@plt>
    2071:	48 8b 05 08 33 20 00 	mov    0x203308(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    2078:	48 39 05 51 33 20 00 	cmp    %rax,0x203351(%rip)        # 2053d0 <infile>
    207f:	74 3a                	je     20bb <launch+0x82>
    2081:	c7 05 51 33 20 00 00 	movl   $0x0,0x203351(%rip)        # 2053dc <vlevel>
    2088:	00 00 00 
    208b:	b8 00 00 00 00       	mov    $0x0,%eax
    2090:	e8 16 fa ff ff       	callq  1aab <test>
    2095:	83 3d 4c 33 20 00 00 	cmpl   $0x0,0x20334c(%rip)        # 2053e8 <is_checker>
    209c:	75 35                	jne    20d3 <launch+0x9a>
    209e:	48 8d 3d df 13 00 00 	lea    0x13df(%rip),%rdi        # 3484 <_IO_stdin_used+0x4d4>
    20a5:	e8 66 ed ff ff       	callq  e10 <puts@plt>
    20aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    20ae:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    20b5:	00 00 
    20b7:	75 30                	jne    20e9 <launch+0xb0>
    20b9:	c9                   	leaveq 
    20ba:	c3                   	retq   
    20bb:	48 8d 35 aa 13 00 00 	lea    0x13aa(%rip),%rsi        # 346c <_IO_stdin_used+0x4bc>
    20c2:	bf 01 00 00 00       	mov    $0x1,%edi
    20c7:	b8 00 00 00 00       	mov    $0x0,%eax
    20cc:	e8 5f ee ff ff       	callq  f30 <__printf_chk@plt>
    20d1:	eb ae                	jmp    2081 <launch+0x48>
    20d3:	48 8d 3d 9f 13 00 00 	lea    0x139f(%rip),%rdi        # 3479 <_IO_stdin_used+0x4c9>
    20da:	e8 31 ed ff ff       	callq  e10 <puts@plt>
    20df:	b8 00 00 00 00       	mov    $0x0,%eax
    20e4:	e8 5d fa ff ff       	callq  1b46 <check_fail>
    20e9:	e8 42 ed ff ff       	callq  e30 <__stack_chk_fail@plt>

00000000000020ee <stable_launch>:
    20ee:	53                   	push   %rbx
    20ef:	48 89 3d d2 32 20 00 	mov    %rdi,0x2032d2(%rip)        # 2053c8 <global_offset>
    20f6:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    20fc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2102:	b9 32 01 00 00       	mov    $0x132,%ecx
    2107:	ba 07 00 00 00       	mov    $0x7,%edx
    210c:	be 00 00 10 00       	mov    $0x100000,%esi
    2111:	bf 00 60 58 55       	mov    $0x55586000,%edi
    2116:	e8 25 ed ff ff       	callq  e40 <mmap@plt>
    211b:	48 89 c3             	mov    %rax,%rbx
    211e:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
    2124:	75 43                	jne    2169 <stable_launch+0x7b>
    2126:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
    212d:	48 89 15 dc 3e 20 00 	mov    %rdx,0x203edc(%rip)        # 206010 <stack_top>
    2134:	48 89 e0             	mov    %rsp,%rax
    2137:	48 89 d4             	mov    %rdx,%rsp
    213a:	48 89 c2             	mov    %rax,%rdx
    213d:	48 89 15 7c 32 20 00 	mov    %rdx,0x20327c(%rip)        # 2053c0 <global_save_stack>
    2144:	48 8b 3d 7d 32 20 00 	mov    0x20327d(%rip),%rdi        # 2053c8 <global_offset>
    214b:	e8 e9 fe ff ff       	callq  2039 <launch>
    2150:	48 8b 05 69 32 20 00 	mov    0x203269(%rip),%rax        # 2053c0 <global_save_stack>
    2157:	48 89 c4             	mov    %rax,%rsp
    215a:	be 00 00 10 00       	mov    $0x100000,%esi
    215f:	48 89 df             	mov    %rbx,%rdi
    2162:	e8 b9 ed ff ff       	callq  f20 <munmap@plt>
    2167:	5b                   	pop    %rbx
    2168:	c3                   	retq   
    2169:	be 00 00 10 00       	mov    $0x100000,%esi
    216e:	48 89 c7             	mov    %rax,%rdi
    2171:	e8 aa ed ff ff       	callq  f20 <munmap@plt>
    2176:	b9 00 60 58 55       	mov    $0x55586000,%ecx
    217b:	48 8d 15 b6 14 00 00 	lea    0x14b6(%rip),%rdx        # 3638 <_IO_stdin_used+0x688>
    2182:	be 01 00 00 00       	mov    $0x1,%esi
    2187:	48 8b 3d 12 32 20 00 	mov    0x203212(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    218e:	b8 00 00 00 00       	mov    $0x0,%eax
    2193:	e8 08 ee ff ff       	callq  fa0 <__fprintf_chk@plt>
    2198:	bf 01 00 00 00       	mov    $0x1,%edi
    219d:	e8 de ed ff ff       	callq  f80 <exit@plt>

00000000000021a2 <rio_readinitb>:
    21a2:	89 37                	mov    %esi,(%rdi)
    21a4:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    21ab:	48 8d 47 10          	lea    0x10(%rdi),%rax
    21af:	48 89 47 08          	mov    %rax,0x8(%rdi)
    21b3:	c3                   	retq   

00000000000021b4 <sigalrm_handler>:
    21b4:	48 83 ec 08          	sub    $0x8,%rsp
    21b8:	b9 00 00 00 00       	mov    $0x0,%ecx
    21bd:	48 8d 15 ac 14 00 00 	lea    0x14ac(%rip),%rdx        # 3670 <trans_char+0x10>
    21c4:	be 01 00 00 00       	mov    $0x1,%esi
    21c9:	48 8b 3d d0 31 20 00 	mov    0x2031d0(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    21d0:	b8 00 00 00 00       	mov    $0x0,%eax
    21d5:	e8 c6 ed ff ff       	callq  fa0 <__fprintf_chk@plt>
    21da:	bf 01 00 00 00       	mov    $0x1,%edi
    21df:	e8 9c ed ff ff       	callq  f80 <exit@plt>

00000000000021e4 <rio_writen>:
    21e4:	41 55                	push   %r13
    21e6:	41 54                	push   %r12
    21e8:	55                   	push   %rbp
    21e9:	53                   	push   %rbx
    21ea:	48 83 ec 08          	sub    $0x8,%rsp
    21ee:	41 89 fc             	mov    %edi,%r12d
    21f1:	48 89 f5             	mov    %rsi,%rbp
    21f4:	49 89 d5             	mov    %rdx,%r13
    21f7:	48 89 d3             	mov    %rdx,%rbx
    21fa:	eb 06                	jmp    2202 <rio_writen+0x1e>
    21fc:	48 29 c3             	sub    %rax,%rbx
    21ff:	48 01 c5             	add    %rax,%rbp
    2202:	48 85 db             	test   %rbx,%rbx
    2205:	74 24                	je     222b <rio_writen+0x47>
    2207:	48 89 da             	mov    %rbx,%rdx
    220a:	48 89 ee             	mov    %rbp,%rsi
    220d:	44 89 e7             	mov    %r12d,%edi
    2210:	e8 0b ec ff ff       	callq  e20 <write@plt>
    2215:	48 85 c0             	test   %rax,%rax
    2218:	7f e2                	jg     21fc <rio_writen+0x18>
    221a:	e8 b1 eb ff ff       	callq  dd0 <__errno_location@plt>
    221f:	83 38 04             	cmpl   $0x4,(%rax)
    2222:	75 15                	jne    2239 <rio_writen+0x55>
    2224:	b8 00 00 00 00       	mov    $0x0,%eax
    2229:	eb d1                	jmp    21fc <rio_writen+0x18>
    222b:	4c 89 e8             	mov    %r13,%rax
    222e:	48 83 c4 08          	add    $0x8,%rsp
    2232:	5b                   	pop    %rbx
    2233:	5d                   	pop    %rbp
    2234:	41 5c                	pop    %r12
    2236:	41 5d                	pop    %r13
    2238:	c3                   	retq   
    2239:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2240:	eb ec                	jmp    222e <rio_writen+0x4a>

0000000000002242 <rio_read>:
    2242:	41 55                	push   %r13
    2244:	41 54                	push   %r12
    2246:	55                   	push   %rbp
    2247:	53                   	push   %rbx
    2248:	48 83 ec 08          	sub    $0x8,%rsp
    224c:	48 89 fb             	mov    %rdi,%rbx
    224f:	49 89 f5             	mov    %rsi,%r13
    2252:	49 89 d4             	mov    %rdx,%r12
    2255:	eb 0a                	jmp    2261 <rio_read+0x1f>
    2257:	e8 74 eb ff ff       	callq  dd0 <__errno_location@plt>
    225c:	83 38 04             	cmpl   $0x4,(%rax)
    225f:	75 5c                	jne    22bd <rio_read+0x7b>
    2261:	8b 6b 04             	mov    0x4(%rbx),%ebp
    2264:	85 ed                	test   %ebp,%ebp
    2266:	7f 24                	jg     228c <rio_read+0x4a>
    2268:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    226c:	8b 3b                	mov    (%rbx),%edi
    226e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2273:	48 89 ee             	mov    %rbp,%rsi
    2276:	e8 05 ec ff ff       	callq  e80 <read@plt>
    227b:	89 43 04             	mov    %eax,0x4(%rbx)
    227e:	85 c0                	test   %eax,%eax
    2280:	78 d5                	js     2257 <rio_read+0x15>
    2282:	85 c0                	test   %eax,%eax
    2284:	74 40                	je     22c6 <rio_read+0x84>
    2286:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    228a:	eb d5                	jmp    2261 <rio_read+0x1f>
    228c:	89 e8                	mov    %ebp,%eax
    228e:	4c 39 e0             	cmp    %r12,%rax
    2291:	72 03                	jb     2296 <rio_read+0x54>
    2293:	44 89 e5             	mov    %r12d,%ebp
    2296:	4c 63 e5             	movslq %ebp,%r12
    2299:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    229d:	4c 89 e2             	mov    %r12,%rdx
    22a0:	4c 89 ef             	mov    %r13,%rdi
    22a3:	e8 28 ec ff ff       	callq  ed0 <memcpy@plt>
    22a8:	4c 01 63 08          	add    %r12,0x8(%rbx)
    22ac:	29 6b 04             	sub    %ebp,0x4(%rbx)
    22af:	4c 89 e0             	mov    %r12,%rax
    22b2:	48 83 c4 08          	add    $0x8,%rsp
    22b6:	5b                   	pop    %rbx
    22b7:	5d                   	pop    %rbp
    22b8:	41 5c                	pop    %r12
    22ba:	41 5d                	pop    %r13
    22bc:	c3                   	retq   
    22bd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    22c4:	eb ec                	jmp    22b2 <rio_read+0x70>
    22c6:	b8 00 00 00 00       	mov    $0x0,%eax
    22cb:	eb e5                	jmp    22b2 <rio_read+0x70>

00000000000022cd <rio_readlineb>:
    22cd:	41 55                	push   %r13
    22cf:	41 54                	push   %r12
    22d1:	55                   	push   %rbp
    22d2:	53                   	push   %rbx
    22d3:	48 83 ec 18          	sub    $0x18,%rsp
    22d7:	49 89 fd             	mov    %rdi,%r13
    22da:	48 89 f5             	mov    %rsi,%rbp
    22dd:	49 89 d4             	mov    %rdx,%r12
    22e0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    22e7:	00 00 
    22e9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    22ee:	31 c0                	xor    %eax,%eax
    22f0:	bb 01 00 00 00       	mov    $0x1,%ebx
    22f5:	4c 39 e3             	cmp    %r12,%rbx
    22f8:	73 47                	jae    2341 <rio_readlineb+0x74>
    22fa:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    22ff:	ba 01 00 00 00       	mov    $0x1,%edx
    2304:	4c 89 ef             	mov    %r13,%rdi
    2307:	e8 36 ff ff ff       	callq  2242 <rio_read>
    230c:	83 f8 01             	cmp    $0x1,%eax
    230f:	75 1c                	jne    232d <rio_readlineb+0x60>
    2311:	48 8d 45 01          	lea    0x1(%rbp),%rax
    2315:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    231a:	88 55 00             	mov    %dl,0x0(%rbp)
    231d:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    2322:	74 1a                	je     233e <rio_readlineb+0x71>
    2324:	48 83 c3 01          	add    $0x1,%rbx
    2328:	48 89 c5             	mov    %rax,%rbp
    232b:	eb c8                	jmp    22f5 <rio_readlineb+0x28>
    232d:	85 c0                	test   %eax,%eax
    232f:	75 32                	jne    2363 <rio_readlineb+0x96>
    2331:	48 83 fb 01          	cmp    $0x1,%rbx
    2335:	75 0a                	jne    2341 <rio_readlineb+0x74>
    2337:	b8 00 00 00 00       	mov    $0x0,%eax
    233c:	eb 0a                	jmp    2348 <rio_readlineb+0x7b>
    233e:	48 89 c5             	mov    %rax,%rbp
    2341:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    2345:	48 89 d8             	mov    %rbx,%rax
    2348:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    234d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2354:	00 00 
    2356:	75 14                	jne    236c <rio_readlineb+0x9f>
    2358:	48 83 c4 18          	add    $0x18,%rsp
    235c:	5b                   	pop    %rbx
    235d:	5d                   	pop    %rbp
    235e:	41 5c                	pop    %r12
    2360:	41 5d                	pop    %r13
    2362:	c3                   	retq   
    2363:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    236a:	eb dc                	jmp    2348 <rio_readlineb+0x7b>
    236c:	e8 bf ea ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002371 <urlencode>:
    2371:	41 54                	push   %r12
    2373:	55                   	push   %rbp
    2374:	53                   	push   %rbx
    2375:	48 83 ec 10          	sub    $0x10,%rsp
    2379:	48 89 fb             	mov    %rdi,%rbx
    237c:	48 89 f5             	mov    %rsi,%rbp
    237f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2386:	00 00 
    2388:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    238d:	31 c0                	xor    %eax,%eax
    238f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2396:	f2 ae                	repnz scas %es:(%rdi),%al
    2398:	48 89 ce             	mov    %rcx,%rsi
    239b:	48 f7 d6             	not    %rsi
    239e:	8d 46 ff             	lea    -0x1(%rsi),%eax
    23a1:	eb 0f                	jmp    23b2 <urlencode+0x41>
    23a3:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    23a7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    23ab:	48 83 c3 01          	add    $0x1,%rbx
    23af:	44 89 e0             	mov    %r12d,%eax
    23b2:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    23b6:	85 c0                	test   %eax,%eax
    23b8:	0f 84 a8 00 00 00    	je     2466 <urlencode+0xf5>
    23be:	44 0f b6 03          	movzbl (%rbx),%r8d
    23c2:	41 80 f8 2a          	cmp    $0x2a,%r8b
    23c6:	0f 94 c2             	sete   %dl
    23c9:	41 80 f8 2d          	cmp    $0x2d,%r8b
    23cd:	0f 94 c0             	sete   %al
    23d0:	08 c2                	or     %al,%dl
    23d2:	75 cf                	jne    23a3 <urlencode+0x32>
    23d4:	41 80 f8 2e          	cmp    $0x2e,%r8b
    23d8:	74 c9                	je     23a3 <urlencode+0x32>
    23da:	41 80 f8 5f          	cmp    $0x5f,%r8b
    23de:	74 c3                	je     23a3 <urlencode+0x32>
    23e0:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    23e4:	3c 09                	cmp    $0x9,%al
    23e6:	76 bb                	jbe    23a3 <urlencode+0x32>
    23e8:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    23ec:	3c 19                	cmp    $0x19,%al
    23ee:	76 b3                	jbe    23a3 <urlencode+0x32>
    23f0:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    23f4:	3c 19                	cmp    $0x19,%al
    23f6:	76 ab                	jbe    23a3 <urlencode+0x32>
    23f8:	41 80 f8 20          	cmp    $0x20,%r8b
    23fc:	74 56                	je     2454 <urlencode+0xe3>
    23fe:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2402:	3c 5f                	cmp    $0x5f,%al
    2404:	0f 96 c2             	setbe  %dl
    2407:	41 80 f8 09          	cmp    $0x9,%r8b
    240b:	0f 94 c0             	sete   %al
    240e:	08 c2                	or     %al,%dl
    2410:	74 4f                	je     2461 <urlencode+0xf0>
    2412:	48 89 e7             	mov    %rsp,%rdi
    2415:	45 0f b6 c0          	movzbl %r8b,%r8d
    2419:	48 8d 0d e8 12 00 00 	lea    0x12e8(%rip),%rcx        # 3708 <trans_char+0xa8>
    2420:	ba 08 00 00 00       	mov    $0x8,%edx
    2425:	be 01 00 00 00       	mov    $0x1,%esi
    242a:	b8 00 00 00 00       	mov    $0x0,%eax
    242f:	e8 7c eb ff ff       	callq  fb0 <__sprintf_chk@plt>
    2434:	0f b6 04 24          	movzbl (%rsp),%eax
    2438:	88 45 00             	mov    %al,0x0(%rbp)
    243b:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    2440:	88 45 01             	mov    %al,0x1(%rbp)
    2443:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    2448:	88 45 02             	mov    %al,0x2(%rbp)
    244b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    244f:	e9 57 ff ff ff       	jmpq   23ab <urlencode+0x3a>
    2454:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2458:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    245c:	e9 4a ff ff ff       	jmpq   23ab <urlencode+0x3a>
    2461:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2466:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    246b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2472:	00 00 
    2474:	75 09                	jne    247f <urlencode+0x10e>
    2476:	48 83 c4 10          	add    $0x10,%rsp
    247a:	5b                   	pop    %rbx
    247b:	5d                   	pop    %rbp
    247c:	41 5c                	pop    %r12
    247e:	c3                   	retq   
    247f:	e8 ac e9 ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002484 <submitr>:
    2484:	41 57                	push   %r15
    2486:	41 56                	push   %r14
    2488:	41 55                	push   %r13
    248a:	41 54                	push   %r12
    248c:	55                   	push   %rbp
    248d:	53                   	push   %rbx
    248e:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    2495:	49 89 fd             	mov    %rdi,%r13
    2498:	89 74 24 14          	mov    %esi,0x14(%rsp)
    249c:	49 89 d7             	mov    %rdx,%r15
    249f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    24a4:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    24a9:	4d 89 ce             	mov    %r9,%r14
    24ac:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    24b3:	00 
    24b4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24bb:	00 00 
    24bd:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    24c4:	00 
    24c5:	31 c0                	xor    %eax,%eax
    24c7:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    24ce:	00 
    24cf:	ba 00 00 00 00       	mov    $0x0,%edx
    24d4:	be 01 00 00 00       	mov    $0x1,%esi
    24d9:	bf 02 00 00 00       	mov    $0x2,%edi
    24de:	e8 dd ea ff ff       	callq  fc0 <socket@plt>
    24e3:	85 c0                	test   %eax,%eax
    24e5:	0f 88 a9 02 00 00    	js     2794 <submitr+0x310>
    24eb:	89 c3                	mov    %eax,%ebx
    24ed:	4c 89 ef             	mov    %r13,%rdi
    24f0:	e8 ab e9 ff ff       	callq  ea0 <gethostbyname@plt>
    24f5:	48 85 c0             	test   %rax,%rax
    24f8:	0f 84 e2 02 00 00    	je     27e0 <submitr+0x35c>
    24fe:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    2503:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    250a:	00 00 
    250c:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    2513:	00 
    2514:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    251b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2522:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2526:	48 8b 40 18          	mov    0x18(%rax),%rax
    252a:	48 8b 30             	mov    (%rax),%rsi
    252d:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    2532:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2537:	e8 74 e9 ff ff       	callq  eb0 <__memmove_chk@plt>
    253c:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
    2541:	66 c1 c8 08          	ror    $0x8,%ax
    2545:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    254a:	ba 10 00 00 00       	mov    $0x10,%edx
    254f:	4c 89 e6             	mov    %r12,%rsi
    2552:	89 df                	mov    %ebx,%edi
    2554:	e8 37 ea ff ff       	callq  f90 <connect@plt>
    2559:	85 c0                	test   %eax,%eax
    255b:	0f 88 e7 02 00 00    	js     2848 <submitr+0x3c4>
    2561:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    2568:	b8 00 00 00 00       	mov    $0x0,%eax
    256d:	48 89 f1             	mov    %rsi,%rcx
    2570:	4c 89 f7             	mov    %r14,%rdi
    2573:	f2 ae                	repnz scas %es:(%rdi),%al
    2575:	48 89 ca             	mov    %rcx,%rdx
    2578:	48 f7 d2             	not    %rdx
    257b:	48 89 f1             	mov    %rsi,%rcx
    257e:	4c 89 ff             	mov    %r15,%rdi
    2581:	f2 ae                	repnz scas %es:(%rdi),%al
    2583:	48 f7 d1             	not    %rcx
    2586:	49 89 c8             	mov    %rcx,%r8
    2589:	48 89 f1             	mov    %rsi,%rcx
    258c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2591:	f2 ae                	repnz scas %es:(%rdi),%al
    2593:	48 f7 d1             	not    %rcx
    2596:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    259b:	48 89 f1             	mov    %rsi,%rcx
    259e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    25a3:	f2 ae                	repnz scas %es:(%rdi),%al
    25a5:	48 89 c8             	mov    %rcx,%rax
    25a8:	48 f7 d0             	not    %rax
    25ab:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    25b0:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    25b5:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    25bc:	00 
    25bd:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    25c3:	0f 87 d9 02 00 00    	ja     28a2 <submitr+0x41e>
    25c9:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    25d0:	00 
    25d1:	b9 00 04 00 00       	mov    $0x400,%ecx
    25d6:	b8 00 00 00 00       	mov    $0x0,%eax
    25db:	48 89 f7             	mov    %rsi,%rdi
    25de:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    25e1:	4c 89 f7             	mov    %r14,%rdi
    25e4:	e8 88 fd ff ff       	callq  2371 <urlencode>
    25e9:	85 c0                	test   %eax,%eax
    25eb:	0f 88 24 03 00 00    	js     2915 <submitr+0x491>
    25f1:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    25f8:	00 
    25f9:	41 55                	push   %r13
    25fb:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    2602:	00 
    2603:	50                   	push   %rax
    2604:	4d 89 f9             	mov    %r15,%r9
    2607:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    260c:	48 8d 0d 85 10 00 00 	lea    0x1085(%rip),%rcx        # 3698 <trans_char+0x38>
    2613:	ba 00 20 00 00       	mov    $0x2000,%edx
    2618:	be 01 00 00 00       	mov    $0x1,%esi
    261d:	4c 89 e7             	mov    %r12,%rdi
    2620:	b8 00 00 00 00       	mov    $0x0,%eax
    2625:	e8 86 e9 ff ff       	callq  fb0 <__sprintf_chk@plt>
    262a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2631:	b8 00 00 00 00       	mov    $0x0,%eax
    2636:	4c 89 e7             	mov    %r12,%rdi
    2639:	f2 ae                	repnz scas %es:(%rdi),%al
    263b:	48 89 ca             	mov    %rcx,%rdx
    263e:	48 f7 d2             	not    %rdx
    2641:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    2645:	4c 89 e6             	mov    %r12,%rsi
    2648:	89 df                	mov    %ebx,%edi
    264a:	e8 95 fb ff ff       	callq  21e4 <rio_writen>
    264f:	48 83 c4 10          	add    $0x10,%rsp
    2653:	48 85 c0             	test   %rax,%rax
    2656:	0f 88 44 03 00 00    	js     29a0 <submitr+0x51c>
    265c:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    2661:	89 de                	mov    %ebx,%esi
    2663:	4c 89 e7             	mov    %r12,%rdi
    2666:	e8 37 fb ff ff       	callq  21a2 <rio_readinitb>
    266b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2672:	00 
    2673:	ba 00 20 00 00       	mov    $0x2000,%edx
    2678:	4c 89 e7             	mov    %r12,%rdi
    267b:	e8 4d fc ff ff       	callq  22cd <rio_readlineb>
    2680:	48 85 c0             	test   %rax,%rax
    2683:	0f 8e 86 03 00 00    	jle    2a0f <submitr+0x58b>
    2689:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    268e:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2695:	00 
    2696:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    269d:	00 
    269e:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    26a5:	00 
    26a6:	48 8d 35 62 10 00 00 	lea    0x1062(%rip),%rsi        # 370f <trans_char+0xaf>
    26ad:	b8 00 00 00 00       	mov    $0x0,%eax
    26b2:	e8 59 e8 ff ff       	callq  f10 <__isoc99_sscanf@plt>
    26b7:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    26be:	00 
    26bf:	b9 03 00 00 00       	mov    $0x3,%ecx
    26c4:	48 8d 3d 5b 10 00 00 	lea    0x105b(%rip),%rdi        # 3726 <trans_char+0xc6>
    26cb:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    26cd:	0f 97 c0             	seta   %al
    26d0:	1c 00                	sbb    $0x0,%al
    26d2:	84 c0                	test   %al,%al
    26d4:	0f 84 b3 03 00 00    	je     2a8d <submitr+0x609>
    26da:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    26e1:	00 
    26e2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    26e7:	ba 00 20 00 00       	mov    $0x2000,%edx
    26ec:	e8 dc fb ff ff       	callq  22cd <rio_readlineb>
    26f1:	48 85 c0             	test   %rax,%rax
    26f4:	7f c1                	jg     26b7 <submitr+0x233>
    26f6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26fd:	3a 20 43 
    2700:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2707:	20 75 6e 
    270a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    270e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2712:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2719:	74 6f 20 
    271c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2723:	68 65 61 
    2726:	48 89 45 10          	mov    %rax,0x10(%rbp)
    272a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    272e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2735:	66 72 6f 
    2738:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
    273f:	20 72 65 
    2742:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2746:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    274a:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
    2751:	73 65 72 
    2754:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2758:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
    275f:	89 df                	mov    %ebx,%edi
    2761:	e8 0a e7 ff ff       	callq  e70 <close@plt>
    2766:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    276b:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    2772:	00 
    2773:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    277a:	00 00 
    277c:	0f 85 7e 04 00 00    	jne    2c00 <submitr+0x77c>
    2782:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2789:	5b                   	pop    %rbx
    278a:	5d                   	pop    %rbp
    278b:	41 5c                	pop    %r12
    278d:	41 5d                	pop    %r13
    278f:	41 5e                	pop    %r14
    2791:	41 5f                	pop    %r15
    2793:	c3                   	retq   
    2794:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    279b:	3a 20 43 
    279e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27a5:	20 75 6e 
    27a8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    27ac:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    27b0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27b7:	74 6f 20 
    27ba:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    27c1:	65 20 73 
    27c4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    27c8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    27cc:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    27d3:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    27d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27de:	eb 8b                	jmp    276b <submitr+0x2e7>
    27e0:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    27e7:	3a 20 44 
    27ea:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    27f1:	20 75 6e 
    27f4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    27f8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    27fc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2803:	74 6f 20 
    2806:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    280d:	76 65 20 
    2810:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2814:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2818:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    281f:	72 20 61 
    2822:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2826:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    282d:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2833:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2837:	89 df                	mov    %ebx,%edi
    2839:	e8 32 e6 ff ff       	callq  e70 <close@plt>
    283e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2843:	e9 23 ff ff ff       	jmpq   276b <submitr+0x2e7>
    2848:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    284f:	3a 20 55 
    2852:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2859:	20 74 6f 
    285c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2860:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2864:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    286b:	65 63 74 
    286e:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2875:	68 65 20 
    2878:	48 89 45 10          	mov    %rax,0x10(%rbp)
    287c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2880:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
    2887:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
    288d:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
    2891:	89 df                	mov    %ebx,%edi
    2893:	e8 d8 e5 ff ff       	callq  e70 <close@plt>
    2898:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    289d:	e9 c9 fe ff ff       	jmpq   276b <submitr+0x2e7>
    28a2:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    28a9:	3a 20 52 
    28ac:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    28b3:	20 73 74 
    28b6:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28ba:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28be:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    28c5:	74 6f 6f 
    28c8:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    28cf:	65 2e 20 
    28d2:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28d6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28da:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    28e1:	61 73 65 
    28e4:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    28eb:	49 54 52 
    28ee:	48 89 45 20          	mov    %rax,0x20(%rbp)
    28f2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    28f6:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    28fd:	55 46 00 
    2900:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2904:	89 df                	mov    %ebx,%edi
    2906:	e8 65 e5 ff ff       	callq  e70 <close@plt>
    290b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2910:	e9 56 fe ff ff       	jmpq   276b <submitr+0x2e7>
    2915:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    291c:	3a 20 52 
    291f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2926:	20 73 74 
    2929:	48 89 45 00          	mov    %rax,0x0(%rbp)
    292d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2931:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2938:	63 6f 6e 
    293b:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2942:	20 61 6e 
    2945:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2949:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    294d:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2954:	67 61 6c 
    2957:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    295e:	6e 70 72 
    2961:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2965:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2969:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2970:	6c 65 20 
    2973:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    297a:	63 74 65 
    297d:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2981:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2985:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    298b:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    298f:	89 df                	mov    %ebx,%edi
    2991:	e8 da e4 ff ff       	callq  e70 <close@plt>
    2996:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    299b:	e9 cb fd ff ff       	jmpq   276b <submitr+0x2e7>
    29a0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    29a7:	3a 20 43 
    29aa:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    29b1:	20 75 6e 
    29b4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29b8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29bc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29c3:	74 6f 20 
    29c6:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    29cd:	20 74 6f 
    29d0:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29d4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29d8:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
    29df:	72 65 73 
    29e2:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
    29e9:	65 72 76 
    29ec:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29f0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    29f4:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
    29fa:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
    29fe:	89 df                	mov    %ebx,%edi
    2a00:	e8 6b e4 ff ff       	callq  e70 <close@plt>
    2a05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a0a:	e9 5c fd ff ff       	jmpq   276b <submitr+0x2e7>
    2a0f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a16:	3a 20 43 
    2a19:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a20:	20 75 6e 
    2a23:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a27:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a2b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a32:	74 6f 20 
    2a35:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2a3c:	66 69 72 
    2a3f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a43:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a47:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2a4e:	61 64 65 
    2a51:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
    2a58:	6d 20 72 
    2a5b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a5f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a63:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
    2a6a:	20 73 65 
    2a6d:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2a71:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
    2a78:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
    2a7c:	89 df                	mov    %ebx,%edi
    2a7e:	e8 ed e3 ff ff       	callq  e70 <close@plt>
    2a83:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a88:	e9 de fc ff ff       	jmpq   276b <submitr+0x2e7>
    2a8d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2a94:	00 
    2a95:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2a9a:	ba 00 20 00 00       	mov    $0x2000,%edx
    2a9f:	e8 29 f8 ff ff       	callq  22cd <rio_readlineb>
    2aa4:	48 85 c0             	test   %rax,%rax
    2aa7:	0f 8e 96 00 00 00    	jle    2b43 <submitr+0x6bf>
    2aad:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2ab2:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2ab9:	0f 85 08 01 00 00    	jne    2bc7 <submitr+0x743>
    2abf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2ac6:	00 
    2ac7:	48 89 ef             	mov    %rbp,%rdi
    2aca:	e8 31 e3 ff ff       	callq  e00 <strcpy@plt>
    2acf:	89 df                	mov    %ebx,%edi
    2ad1:	e8 9a e3 ff ff       	callq  e70 <close@plt>
    2ad6:	b9 04 00 00 00       	mov    $0x4,%ecx
    2adb:	48 8d 3d 3e 0c 00 00 	lea    0xc3e(%rip),%rdi        # 3720 <trans_char+0xc0>
    2ae2:	48 89 ee             	mov    %rbp,%rsi
    2ae5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2ae7:	0f 97 c0             	seta   %al
    2aea:	1c 00                	sbb    $0x0,%al
    2aec:	0f be c0             	movsbl %al,%eax
    2aef:	85 c0                	test   %eax,%eax
    2af1:	0f 84 74 fc ff ff    	je     276b <submitr+0x2e7>
    2af7:	b9 05 00 00 00       	mov    $0x5,%ecx
    2afc:	48 8d 3d 21 0c 00 00 	lea    0xc21(%rip),%rdi        # 3724 <trans_char+0xc4>
    2b03:	48 89 ee             	mov    %rbp,%rsi
    2b06:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2b08:	0f 97 c0             	seta   %al
    2b0b:	1c 00                	sbb    $0x0,%al
    2b0d:	0f be c0             	movsbl %al,%eax
    2b10:	85 c0                	test   %eax,%eax
    2b12:	0f 84 53 fc ff ff    	je     276b <submitr+0x2e7>
    2b18:	b9 03 00 00 00       	mov    $0x3,%ecx
    2b1d:	48 8d 3d 05 0c 00 00 	lea    0xc05(%rip),%rdi        # 3729 <trans_char+0xc9>
    2b24:	48 89 ee             	mov    %rbp,%rsi
    2b27:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2b29:	0f 97 c0             	seta   %al
    2b2c:	1c 00                	sbb    $0x0,%al
    2b2e:	0f be c0             	movsbl %al,%eax
    2b31:	85 c0                	test   %eax,%eax
    2b33:	0f 84 32 fc ff ff    	je     276b <submitr+0x2e7>
    2b39:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b3e:	e9 28 fc ff ff       	jmpq   276b <submitr+0x2e7>
    2b43:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b4a:	3a 20 43 
    2b4d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b54:	20 75 6e 
    2b57:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b5b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b5f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b66:	74 6f 20 
    2b69:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2b70:	73 74 61 
    2b73:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b77:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b7b:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2b82:	65 73 73 
    2b85:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2b8c:	72 6f 6d 
    2b8f:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b93:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b97:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
    2b9e:	6c 74 20 
    2ba1:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2ba5:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
    2bac:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
    2bb2:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
    2bb6:	89 df                	mov    %ebx,%edi
    2bb8:	e8 b3 e2 ff ff       	callq  e70 <close@plt>
    2bbd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bc2:	e9 a4 fb ff ff       	jmpq   276b <submitr+0x2e7>
    2bc7:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2bce:	00 
    2bcf:	48 8d 0d 02 0b 00 00 	lea    0xb02(%rip),%rcx        # 36d8 <trans_char+0x78>
    2bd6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2bdd:	be 01 00 00 00       	mov    $0x1,%esi
    2be2:	48 89 ef             	mov    %rbp,%rdi
    2be5:	b8 00 00 00 00       	mov    $0x0,%eax
    2bea:	e8 c1 e3 ff ff       	callq  fb0 <__sprintf_chk@plt>
    2bef:	89 df                	mov    %ebx,%edi
    2bf1:	e8 7a e2 ff ff       	callq  e70 <close@plt>
    2bf6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bfb:	e9 6b fb ff ff       	jmpq   276b <submitr+0x2e7>
    2c00:	e8 2b e2 ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002c05 <init_timeout>:
    2c05:	85 ff                	test   %edi,%edi
    2c07:	74 28                	je     2c31 <init_timeout+0x2c>
    2c09:	53                   	push   %rbx
    2c0a:	89 fb                	mov    %edi,%ebx
    2c0c:	85 ff                	test   %edi,%edi
    2c0e:	78 1a                	js     2c2a <init_timeout+0x25>
    2c10:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 21b4 <sigalrm_handler>
    2c17:	bf 0e 00 00 00       	mov    $0xe,%edi
    2c1c:	e8 6f e2 ff ff       	callq  e90 <signal@plt>
    2c21:	89 df                	mov    %ebx,%edi
    2c23:	e8 38 e2 ff ff       	callq  e60 <alarm@plt>
    2c28:	5b                   	pop    %rbx
    2c29:	c3                   	retq   
    2c2a:	bb 00 00 00 00       	mov    $0x0,%ebx
    2c2f:	eb df                	jmp    2c10 <init_timeout+0xb>
    2c31:	f3 c3                	repz retq 

0000000000002c33 <init_driver>:
    2c33:	41 54                	push   %r12
    2c35:	55                   	push   %rbp
    2c36:	53                   	push   %rbx
    2c37:	48 83 ec 20          	sub    $0x20,%rsp
    2c3b:	49 89 fc             	mov    %rdi,%r12
    2c3e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c45:	00 00 
    2c47:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2c4c:	31 c0                	xor    %eax,%eax
    2c4e:	be 01 00 00 00       	mov    $0x1,%esi
    2c53:	bf 0d 00 00 00       	mov    $0xd,%edi
    2c58:	e8 33 e2 ff ff       	callq  e90 <signal@plt>
    2c5d:	be 01 00 00 00       	mov    $0x1,%esi
    2c62:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2c67:	e8 24 e2 ff ff       	callq  e90 <signal@plt>
    2c6c:	be 01 00 00 00       	mov    $0x1,%esi
    2c71:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2c76:	e8 15 e2 ff ff       	callq  e90 <signal@plt>
    2c7b:	ba 00 00 00 00       	mov    $0x0,%edx
    2c80:	be 01 00 00 00       	mov    $0x1,%esi
    2c85:	bf 02 00 00 00       	mov    $0x2,%edi
    2c8a:	e8 31 e3 ff ff       	callq  fc0 <socket@plt>
    2c8f:	85 c0                	test   %eax,%eax
    2c91:	0f 88 a3 00 00 00    	js     2d3a <init_driver+0x107>
    2c97:	89 c3                	mov    %eax,%ebx
    2c99:	48 8d 3d 8c 0a 00 00 	lea    0xa8c(%rip),%rdi        # 372c <trans_char+0xcc>
    2ca0:	e8 fb e1 ff ff       	callq  ea0 <gethostbyname@plt>
    2ca5:	48 85 c0             	test   %rax,%rax
    2ca8:	0f 84 df 00 00 00    	je     2d8d <init_driver+0x15a>
    2cae:	48 89 e5             	mov    %rsp,%rbp
    2cb1:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2cb8:	00 00 
    2cba:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2cc1:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2cc7:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2ccd:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2cd1:	48 8b 40 18          	mov    0x18(%rax),%rax
    2cd5:	48 8b 30             	mov    (%rax),%rsi
    2cd8:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2cdc:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2ce1:	e8 ca e1 ff ff       	callq  eb0 <__memmove_chk@plt>
    2ce6:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
    2ced:	ba 10 00 00 00       	mov    $0x10,%edx
    2cf2:	48 89 ee             	mov    %rbp,%rsi
    2cf5:	89 df                	mov    %ebx,%edi
    2cf7:	e8 94 e2 ff ff       	callq  f90 <connect@plt>
    2cfc:	85 c0                	test   %eax,%eax
    2cfe:	0f 88 fb 00 00 00    	js     2dff <init_driver+0x1cc>
    2d04:	89 df                	mov    %ebx,%edi
    2d06:	e8 65 e1 ff ff       	callq  e70 <close@plt>
    2d0b:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2d12:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2d18:	b8 00 00 00 00       	mov    $0x0,%eax
    2d1d:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2d22:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2d29:	00 00 
    2d2b:	0f 85 28 01 00 00    	jne    2e59 <init_driver+0x226>
    2d31:	48 83 c4 20          	add    $0x20,%rsp
    2d35:	5b                   	pop    %rbx
    2d36:	5d                   	pop    %rbp
    2d37:	41 5c                	pop    %r12
    2d39:	c3                   	retq   
    2d3a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d41:	3a 20 43 
    2d44:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d4b:	20 75 6e 
    2d4e:	49 89 04 24          	mov    %rax,(%r12)
    2d52:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2d57:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d5e:	74 6f 20 
    2d61:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2d68:	65 20 73 
    2d6b:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2d70:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2d75:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2d7c:	6b 65 
    2d7e:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    2d85:	00 
    2d86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d8b:	eb 90                	jmp    2d1d <init_driver+0xea>
    2d8d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2d94:	3a 20 44 
    2d97:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2d9e:	20 75 6e 
    2da1:	49 89 04 24          	mov    %rax,(%r12)
    2da5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2daa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2db1:	74 6f 20 
    2db4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2dbb:	76 65 20 
    2dbe:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2dc3:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2dc8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2dcf:	72 20 61 
    2dd2:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2dd7:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2dde:	72 65 
    2de0:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2de7:	73 
    2de8:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2dee:	89 df                	mov    %ebx,%edi
    2df0:	e8 7b e0 ff ff       	callq  e70 <close@plt>
    2df5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dfa:	e9 1e ff ff ff       	jmpq   2d1d <init_driver+0xea>
    2dff:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2e06:	3a 20 55 
    2e09:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2e10:	20 74 6f 
    2e13:	49 89 04 24          	mov    %rax,(%r12)
    2e17:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2e1c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2e23:	65 63 74 
    2e26:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    2e2d:	65 72 76 
    2e30:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2e35:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2e3a:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    2e41:	72 
    2e42:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    2e48:	89 df                	mov    %ebx,%edi
    2e4a:	e8 21 e0 ff ff       	callq  e70 <close@plt>
    2e4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e54:	e9 c4 fe ff ff       	jmpq   2d1d <init_driver+0xea>
    2e59:	e8 d2 df ff ff       	callq  e30 <__stack_chk_fail@plt>

0000000000002e5e <driver_post>:
    2e5e:	53                   	push   %rbx
    2e5f:	4c 89 cb             	mov    %r9,%rbx
    2e62:	45 85 c0             	test   %r8d,%r8d
    2e65:	75 18                	jne    2e7f <driver_post+0x21>
    2e67:	48 85 ff             	test   %rdi,%rdi
    2e6a:	74 05                	je     2e71 <driver_post+0x13>
    2e6c:	80 3f 00             	cmpb   $0x0,(%rdi)
    2e6f:	75 37                	jne    2ea8 <driver_post+0x4a>
    2e71:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2e76:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2e7a:	44 89 c0             	mov    %r8d,%eax
    2e7d:	5b                   	pop    %rbx
    2e7e:	c3                   	retq   
    2e7f:	48 89 ca             	mov    %rcx,%rdx
    2e82:	48 8d 35 b2 08 00 00 	lea    0x8b2(%rip),%rsi        # 373b <trans_char+0xdb>
    2e89:	bf 01 00 00 00       	mov    $0x1,%edi
    2e8e:	b8 00 00 00 00       	mov    $0x0,%eax
    2e93:	e8 98 e0 ff ff       	callq  f30 <__printf_chk@plt>
    2e98:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2e9d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2ea1:	b8 00 00 00 00       	mov    $0x0,%eax
    2ea6:	eb d5                	jmp    2e7d <driver_post+0x1f>
    2ea8:	48 83 ec 08          	sub    $0x8,%rsp
    2eac:	41 51                	push   %r9
    2eae:	49 89 c9             	mov    %rcx,%r9
    2eb1:	49 89 d0             	mov    %rdx,%r8
    2eb4:	48 89 f9             	mov    %rdi,%rcx
    2eb7:	48 89 f2             	mov    %rsi,%rdx
    2eba:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
    2ebf:	48 8d 3d 66 08 00 00 	lea    0x866(%rip),%rdi        # 372c <trans_char+0xcc>
    2ec6:	e8 b9 f5 ff ff       	callq  2484 <submitr>
    2ecb:	48 83 c4 10          	add    $0x10,%rsp
    2ecf:	eb ac                	jmp    2e7d <driver_post+0x1f>

0000000000002ed1 <check>:
    2ed1:	89 f8                	mov    %edi,%eax
    2ed3:	c1 e8 1c             	shr    $0x1c,%eax
    2ed6:	85 c0                	test   %eax,%eax
    2ed8:	74 1d                	je     2ef7 <check+0x26>
    2eda:	b9 00 00 00 00       	mov    $0x0,%ecx
    2edf:	83 f9 1f             	cmp    $0x1f,%ecx
    2ee2:	7f 0d                	jg     2ef1 <check+0x20>
    2ee4:	89 f8                	mov    %edi,%eax
    2ee6:	d3 e8                	shr    %cl,%eax
    2ee8:	3c 0a                	cmp    $0xa,%al
    2eea:	74 11                	je     2efd <check+0x2c>
    2eec:	83 c1 08             	add    $0x8,%ecx
    2eef:	eb ee                	jmp    2edf <check+0xe>
    2ef1:	b8 01 00 00 00       	mov    $0x1,%eax
    2ef6:	c3                   	retq   
    2ef7:	b8 00 00 00 00       	mov    $0x0,%eax
    2efc:	c3                   	retq   
    2efd:	b8 00 00 00 00       	mov    $0x0,%eax
    2f02:	c3                   	retq   

0000000000002f03 <gencookie>:
    2f03:	53                   	push   %rbx
    2f04:	83 c7 01             	add    $0x1,%edi
    2f07:	e8 d4 de ff ff       	callq  de0 <srandom@plt>
    2f0c:	e8 df df ff ff       	callq  ef0 <random@plt>
    2f11:	89 c3                	mov    %eax,%ebx
    2f13:	89 c7                	mov    %eax,%edi
    2f15:	e8 b7 ff ff ff       	callq  2ed1 <check>
    2f1a:	85 c0                	test   %eax,%eax
    2f1c:	74 ee                	je     2f0c <gencookie+0x9>
    2f1e:	89 d8                	mov    %ebx,%eax
    2f20:	5b                   	pop    %rbx
    2f21:	c3                   	retq   
    2f22:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2f29:	00 00 00 
    2f2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002f30 <__libc_csu_init>:
    2f30:	41 57                	push   %r15
    2f32:	41 56                	push   %r14
    2f34:	49 89 d7             	mov    %rdx,%r15
    2f37:	41 55                	push   %r13
    2f39:	41 54                	push   %r12
    2f3b:	4c 8d 25 7e 1d 20 00 	lea    0x201d7e(%rip),%r12        # 204cc0 <__frame_dummy_init_array_entry>
    2f42:	55                   	push   %rbp
    2f43:	48 8d 2d 7e 1d 20 00 	lea    0x201d7e(%rip),%rbp        # 204cc8 <__init_array_end>
    2f4a:	53                   	push   %rbx
    2f4b:	41 89 fd             	mov    %edi,%r13d
    2f4e:	49 89 f6             	mov    %rsi,%r14
    2f51:	4c 29 e5             	sub    %r12,%rbp
    2f54:	48 83 ec 08          	sub    $0x8,%rsp
    2f58:	48 c1 fd 03          	sar    $0x3,%rbp
    2f5c:	e8 47 de ff ff       	callq  da8 <_init>
    2f61:	48 85 ed             	test   %rbp,%rbp
    2f64:	74 20                	je     2f86 <__libc_csu_init+0x56>
    2f66:	31 db                	xor    %ebx,%ebx
    2f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2f6f:	00 
    2f70:	4c 89 fa             	mov    %r15,%rdx
    2f73:	4c 89 f6             	mov    %r14,%rsi
    2f76:	44 89 ef             	mov    %r13d,%edi
    2f79:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    2f7d:	48 83 c3 01          	add    $0x1,%rbx
    2f81:	48 39 dd             	cmp    %rbx,%rbp
    2f84:	75 ea                	jne    2f70 <__libc_csu_init+0x40>
    2f86:	48 83 c4 08          	add    $0x8,%rsp
    2f8a:	5b                   	pop    %rbx
    2f8b:	5d                   	pop    %rbp
    2f8c:	41 5c                	pop    %r12
    2f8e:	41 5d                	pop    %r13
    2f90:	41 5e                	pop    %r14
    2f92:	41 5f                	pop    %r15
    2f94:	c3                   	retq   
    2f95:	90                   	nop
    2f96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2f9d:	00 00 00 

0000000000002fa0 <__libc_csu_fini>:
    2fa0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002fa4 <_fini>:
    2fa4:	48 83 ec 08          	sub    $0x8,%rsp
    2fa8:	48 83 c4 08          	add    $0x8,%rsp
    2fac:	c3                   	retq   
