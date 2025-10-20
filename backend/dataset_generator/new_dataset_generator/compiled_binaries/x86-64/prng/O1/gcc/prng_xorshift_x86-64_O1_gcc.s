	.file	"prng_xorshift.c"
	.text
	.globl	prng_xorshift
	.type	prng_xorshift, @function
prng_xorshift:
.LFB0:
	.cfi_startproc
	endbr64
	movl	(%rdi), %edx
	movl	%edx, %eax
	sall	$13, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$17, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$5, %eax
	xorl	%edx, %eax
	movl	%eax, (%rdi)
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
