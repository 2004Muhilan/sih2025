	.file	"custom_des.c"
	.text
	.p2align 4
	.globl	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdx, %r8
	movl	$56, %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movzbl	(%rdi), %edx
	addq	$1, %rdi
	salq	%cl, %rdx
	subl	$8, %ecx
	orq	%rdx, %rax
	cmpl	$-8, %ecx
	jne	.L2
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%edx, %ecx
	movq	%rax, %rsi
	addl	$1, %edx
	andl	$7, %ecx
	shrq	$32, %rsi
	movzbl	(%r9,%rcx), %ecx
	xorl	%eax, %esi
	salq	$32, %rax
	xorl	%esi, %ecx
	orq	%rcx, %rax
	cmpl	$16, %edx
	jne	.L3
	movq	%r8, %rdx
	movl	$56, %ecx
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%rax, %rsi
	addq	$1, %rdx
	shrq	%cl, %rsi
	subl	$8, %ecx
	movb	%sil, -1(%rdx)
	cmpl	$-8, %ecx
	jne	.L4
	ret
	.cfi_endproc
.LFE14:
	.size	des_encrypt, .-des_encrypt
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
