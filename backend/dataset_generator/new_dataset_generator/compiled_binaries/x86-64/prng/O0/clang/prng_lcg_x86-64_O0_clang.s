	.text
	.file	"prng_lcg.c"
	.globl	prng_lcg                        # -- Begin function prng_lcg
	.p2align	4, 0x90
	.type	prng_lcg,@function
prng_lcg:                               # @prng_lcg
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	imull	$1103515245, (%rax), %ecx       # imm = 0x41C64E6D
	addl	$12345, %ecx                    # imm = 0x3039
	andl	$2147483647, %ecx               # imm = 0x7FFFFFFF
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	prng_lcg, .Lfunc_end0-prng_lcg
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
