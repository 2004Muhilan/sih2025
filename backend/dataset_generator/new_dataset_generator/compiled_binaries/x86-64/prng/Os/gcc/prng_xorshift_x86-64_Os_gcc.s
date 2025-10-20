	.file	"prng_xorshift.c"
	.text
	.globl	prng_xorshift
	.type	prng_xorshift, @function
prng_xorshift:
.LFB0:
	.cfi_startproc
	endbr64
	movd	(%rdi), %xmm1
	movaps	%xmm1, %xmm2
	pslld	$13, %xmm2
	movaps	%xmm2, %xmm0
	xorps	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	psrld	$17, %xmm3
	movaps	%xmm3, %xmm1
	xorps	%xmm0, %xmm1
	movaps	%xmm1, %xmm4
	pslld	$5, %xmm4
	movaps	%xmm4, %xmm0
	xorps	%xmm1, %xmm0
	movd	%xmm0, %eax
	movd	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_xorshift, .-prng_xorshift
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
