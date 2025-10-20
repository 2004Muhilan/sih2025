	.text
	.file	"prng_fortuna.c"
	.globl	prng_fortuna_reseed             # -- Begin function prng_fortuna_reseed
	.p2align	4, 0x90
	.type	prng_fortuna_reseed,@function
prng_fortuna_reseed:                    # @prng_fortuna_reseed
	.cfi_startproc
# %bb.0:
	cmpq	$32, %rdx
	movl	$32, %eax
	cmovbq	%rdx, %rax
	testq	%rdx, %rdx
	je	.LBB0_20
# %bb.1:
	cmpq	$8, %rdx
	jb	.LBB0_2
# %bb.3:
	leaq	(%rsi,%rax), %rcx
	cmpq	%rdi, %rcx
	jbe	.LBB0_6
# %bb.4:
	leaq	(%rdi,%rax), %rcx
	cmpq	%rsi, %rcx
	jbe	.LBB0_6
.LBB0_2:
	xorl	%ecx, %ecx
.LBB0_15:
	movq	%rax, %r8
	movq	%rcx, %rdx
	andq	$3, %r8
	je	.LBB0_18
# %bb.16:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdx), %r9d
	xorb	%r9b, (%rdi,%rdx)
	incq	%rdx
	decq	%r8
	jne	.LBB0_17
.LBB0_18:
	subq	%rax, %rcx
	cmpq	$-4, %rcx
	ja	.LBB0_20
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdx), %ecx
	xorb	%cl, (%rdi,%rdx)
	movzbl	1(%rsi,%rdx), %ecx
	xorb	%cl, 1(%rdi,%rdx)
	movzbl	2(%rsi,%rdx), %ecx
	xorb	%cl, 2(%rdi,%rdx)
	movzbl	3(%rsi,%rdx), %ecx
	xorb	%cl, 3(%rdi,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_19
.LBB0_20:
	movl	$0, 32(%rdi)
	retq
.LBB0_6:
	cmpq	$16, %rdx
	jae	.LBB0_11
# %bb.7:
	xorl	%ecx, %ecx
.LBB0_8:
	movq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$56, %ecx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdx), %r8
	xorq	%r8, (%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_9
# %bb.10:
	cmpq	%rcx, %rax
	jne	.LBB0_15
	jmp	.LBB0_20
.LBB0_11:
	movl	%eax, %ecx
	andl	$48, %ecx
	movups	(%rsi), %xmm0
	movups	(%rdi), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, (%rdi)
	cmpq	$16, %rcx
	je	.LBB0_13
# %bb.12:
	movups	16(%rsi), %xmm0
	movups	16(%rdi), %xmm1
	xorps	%xmm0, %xmm1
	movups	%xmm1, 16(%rdi)
.LBB0_13:
	cmpq	%rcx, %rax
	je	.LBB0_20
# %bb.14:
	testb	$8, %al
	jne	.LBB0_8
	jmp	.LBB0_15
.Lfunc_end0:
	.size	prng_fortuna_reseed, .Lfunc_end0-prng_fortuna_reseed
	.cfi_endproc
                                        # -- End function
	.globl	prng_fortuna_generate           # -- Begin function prng_fortuna_generate
	.p2align	4, 0x90
	.type	prng_fortuna_generate,@function
prng_fortuna_generate:                  # @prng_fortuna_generate
	.cfi_startproc
# %bb.0:
	movl	32(%rdi), %ecx
	movl	%ecx, %eax
	andl	$31, %eax
	movzbl	(%rdi,%rax), %eax
	leal	1(%rcx), %edx
	andl	$31, %edx
	movzbl	(%rdi,%rdx), %edx
	shll	$16, %eax
	shll	$8, %edx
	orl	%eax, %edx
	leal	2(%rcx), %eax
	andl	$31, %eax
	movzbl	(%rdi,%rax), %esi
	orl	%edx, %esi
	shll	$8, %esi
	leal	3(%rcx), %eax
	andl	$31, %eax
	movzbl	(%rdi,%rax), %eax
	orl	%esi, %eax
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
