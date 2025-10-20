	.file	"aes_add_round_key.c"
	.text
	.p2align 4
	.globl	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	leaq	1(%rsi), %rsi
	subq	%rsi, %rcx
	cmpq	$14, %rcx
	jbe	.L2
	movdqu	(%rdx), %xmm0
	movdqu	(%rdi), %xmm1
	pxor	%xmm1, %xmm0
	movups	%xmm0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	movzbl	(%rdx), %ecx
	xorb	%cl, (%rdi)
	movzbl	1(%rdx), %ecx
	xorb	%cl, 1(%rdi)
	movzbl	2(%rdx), %ecx
	xorb	%cl, 2(%rdi)
	movzbl	3(%rdx), %ecx
	xorb	%cl, 3(%rdi)
	movzbl	4(%rdx), %ecx
	xorb	%cl, 4(%rdi)
	movzbl	5(%rdx), %ecx
	xorb	%cl, 5(%rdi)
	movzbl	6(%rdx), %ecx
	xorb	%cl, 6(%rdi)
	movzbl	7(%rdx), %ecx
	xorb	%cl, 7(%rdi)
	movzbl	8(%rdx), %ecx
	xorb	%cl, 8(%rdi)
	movzbl	9(%rdx), %ecx
	xorb	%cl, 9(%rdi)
	movzbl	10(%rdx), %ecx
	xorb	%cl, 10(%rdi)
	movzbl	11(%rdx), %ecx
	xorb	%cl, 11(%rdi)
	movzbl	12(%rdx), %ecx
	xorb	%cl, 12(%rdi)
	movzbl	13(%rdx), %ecx
	xorb	%cl, 13(%rdi)
	movzbl	14(%rdx), %ecx
	xorb	%cl, 14(%rdi)
	movzbl	15(%rdx), %edx
	xorb	%dl, 15(%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	aes_add_round_key, .-aes_add_round_key
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
