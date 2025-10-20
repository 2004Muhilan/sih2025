	.text
	.file	"prng_pcg.c"
	.globl	prng_pcg                        # -- Begin function prng_pcg
	.p2align	4, 0x90
	.type	prng_pcg,@function
prng_pcg:                               # @prng_pcg
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movabsq	$6364136223846793005, %rcx      # imm = 0x5851F42D4C957F2D
	imulq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	shrq	$18, %rax
	xorq	-16(%rbp), %rax
	shrq	$27, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	shrq	$59, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %eax
	movl	-20(%rbp), %edx
	xorl	%ecx, %ecx
	subl	-24(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	orl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
