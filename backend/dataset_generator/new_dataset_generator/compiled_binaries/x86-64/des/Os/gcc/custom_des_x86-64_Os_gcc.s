	.file	"custom_des.c"
	.text
	.globl	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r8
	movl	$56, %ecx
	xorl	%eax, %eax
.L2:
	movzbl	(%rdi), %esi
	incq	%rdi
	salq	%cl, %rsi
	subl	$8, %ecx
	orq	%rsi, %rax
	cmpl	$-8, %ecx
	jne	.L2
	xorl	%ecx, %ecx
.L3:
	movl	%ecx, %esi
	movq	%rax, %rdi
	incl	%ecx
	andl	$7, %esi
	shrq	$32, %rdi
	movzbl	(%r8,%rsi), %esi
	xorl	%eax, %edi
	salq	$32, %rax
	xorl	%edi, %esi
	orq	%rsi, %rax
	cmpl	$16, %ecx
	jne	.L3
	movl	$56, %ecx
.L4:
	movq	%rax, %rsi
	incq	%rdx
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
