	.file	"prng_pcg.c"
	.text
	.globl	prng_pcg
	.type	prng_pcg, @function
prng_pcg:
.LFB0:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rcx
	movabsq	$6364136223846793005, %rax
	imulq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, (%rdi)
	movq	%rcx, %rax
	shrq	$18, %rax
	xorq	%rcx, %rax
	shrq	$27, %rax
	shrq	$59, %rcx
	rorl	%cl, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	prng_pcg, .-prng_pcg
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
