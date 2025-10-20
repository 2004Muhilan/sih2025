	.file	"rc4_drop3072.c"
	.text
	.globl	rc4_drop3072_init
	.type	rc4_drop3072_init, @function
rc4_drop3072_init:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdx, %r8
	xorl	%eax, %eax
.L2:
	movb	%al, (%rdi,%rax)
	incq	%rax
	cmpq	$256, %rax
	jne	.L2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.L3:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movb	(%rdi,%rcx), %r10b
	divq	%r8
	movzbl	(%r9,%rdx), %eax
	movzbl	%r10b, %edx
	addl	%edx, %esi
	addl	%esi, %eax
	movzbl	%al, %esi
	movzbl	%al, %eax
	addq	%rdi, %rax
	movb	(%rax), %dl
	movb	%dl, (%rdi,%rcx)
	incq	%rcx
	movb	%r10b, (%rax)
	cmpq	$256, %rcx
	jne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_drop3072_init, .-rc4_drop3072_init
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
