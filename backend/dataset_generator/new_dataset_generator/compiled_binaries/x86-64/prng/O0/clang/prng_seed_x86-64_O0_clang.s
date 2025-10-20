	.text
	.file	"prng_seed.c"
	.globl	prng_seed                       # -- Begin function prng_seed
	.p2align	4, 0x90
	.type	prng_seed,@function
prng_seed:                              # @prng_seed
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-12(%rbp), %ecx
	xorl	$1812433253, %ecx               # imm = 0x6C078965
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-12(%rbp), %ecx
	xorl	$821329296, %ecx                # imm = 0x30F47D90
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-12(%rbp), %ecx
	xorl	$1597334677, %ecx               # imm = 0x5F356495
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
