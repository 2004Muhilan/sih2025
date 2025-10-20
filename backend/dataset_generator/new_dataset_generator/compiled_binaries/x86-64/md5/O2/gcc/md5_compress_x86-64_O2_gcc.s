	.file	"md5_compress.c"
	.text
	.p2align 4
	.globl	md5_compress
	.type	md5_compress, @function
md5_compress:
.LFB0:
	.cfi_startproc
	endbr64
	movdqu	(%rdi), %xmm1
	movl	4(%rdi), %ecx
	leaq	64(%rsi), %r10
	movl	8(%rdi), %r8d
	movl	12(%rdi), %edx
	movd	%xmm1, %r9d
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%r8d, %edx
	movl	%ecx, %r8d
	movl	%eax, %ecx
.L2:
	movl	%r8d, %eax
	addq	$4, %rsi
	xorl	%edx, %eax
	andl	%ecx, %eax
	xorl	%edx, %eax
	addl	-4(%rsi), %eax
	addl	%r9d, %eax
	movl	%edx, %r9d
	sall	$7, %eax
	addl	%ecx, %eax
	cmpq	%rsi, %r10
	jne	.L3
	movd	%ecx, %xmm2
	movd	%r8d, %xmm3
	movd	%edx, %xmm0
	movd	%eax, %xmm4
	punpckldq	%xmm3, %xmm2
	punpckldq	%xmm4, %xmm0
	punpcklqdq	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movups	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
