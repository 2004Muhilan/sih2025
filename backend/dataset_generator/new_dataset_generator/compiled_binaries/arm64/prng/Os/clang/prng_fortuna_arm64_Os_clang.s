	.text
	.file	"prng_fortuna.c"
	.globl	prng_fortuna_reseed             # -- Begin function prng_fortuna_reseed
	.type	prng_fortuna_reseed,@function
prng_fortuna_reseed:                    # @prng_fortuna_reseed
	.cfi_startproc
# %bb.0:
	cmpq	$32, %rdx
	movl	$32, %eax
	cmovbq	%rdx, %rax
	testq	%rdx, %rdx
	je	.LBB0_3
# %bb.1:
	xorl	%ecx, %ecx
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movb	(%rsi,%rcx), %dl
	xorb	%dl, (%rdi,%rcx)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB0_2
.LBB0_3:
	movl	$0, 32(%rdi)
	retq
.Lfunc_end0:
	.size	prng_fortuna_reseed, .Lfunc_end0-prng_fortuna_reseed
	.cfi_endproc
                                        # -- End function
	.globl	prng_fortuna_generate           # -- Begin function prng_fortuna_generate
	.type	prng_fortuna_generate,@function
prng_fortuna_generate:                  # @prng_fortuna_generate
	.cfi_startproc
# %bb.0:
	movl	32(%rdi), %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	shll	$8, %esi
	leal	(%rcx,%rdx), %eax
	andl	$31, %eax
	movzbl	(%rdi,%rax), %eax
	orl	%esi, %eax
	incl	%edx
	cmpl	$4, %edx
	jne	.LBB1_1
# %bb.2:
	addl	$4, %ecx
	movl	%ecx, 32(%rdi)
	retq
.Lfunc_end1:
	.size	prng_fortuna_generate, .Lfunc_end1-prng_fortuna_generate
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
