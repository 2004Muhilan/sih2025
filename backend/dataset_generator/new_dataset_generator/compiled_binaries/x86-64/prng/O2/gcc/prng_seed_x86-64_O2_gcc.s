	.file	"prng_seed.c"
	.text
	.p2align 4
	.globl	prng_seed
	.type	prng_seed, @function
prng_seed:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	movl	%esi, %ecx
	movd	%esi, %xmm0
	movl	%esi, %edx
	xorl	$1812433253, %eax
	xorl	$821329296, %ecx
	xorl	$1597334677, %edx
	movd	%ecx, %xmm1
	movd	%edx, %xmm2
	movd	%eax, %xmm3
	punpckldq	%xmm2, %xmm1
	punpckldq	%xmm3, %xmm0
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_seed, .-prng_seed
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
