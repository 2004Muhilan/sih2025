	.file	"custom_des.c"
	.text
	.globl	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r8
	movq	%rdx, %r9
	movl	$56, %ecx
	movl	$0, %eax
.L2:
	movzbl	(%rdi), %edx
	salq	%cl, %rdx
	orq	%rdx, %rax
	addq	$1, %rdi
	subl	$8, %ecx
	cmpl	$-8, %ecx
	jne	.L2
	movl	$0, %ecx
.L3:
	movq	%rax, %rdi
	shrq	$32, %rdi
	xorl	%eax, %edi
	salq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	leal	(%rcx,%rsi), %eax
	andl	$7, %eax
	subl	%esi, %eax
	cltq
	movzbl	(%r8,%rax), %eax
	xorl	%edi, %eax
	orq	%rdx, %rax
	addl	$1, %ecx
	cmpl	$16, %ecx
	jne	.L3
	movl	$56, %ecx
.L4:
	movq	%rax, %rdx
	shrq	%cl, %rdx
	movb	%dl, (%r9)
	subl	$8, %ecx
	addq	$1, %r9
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
