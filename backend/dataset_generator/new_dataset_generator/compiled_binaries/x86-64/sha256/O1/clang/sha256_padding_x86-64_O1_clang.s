	.text
	.file	"sha256_padding.c"
	.globl	sha256_padding                  # -- Begin function sha256_padding
	.p2align	4, 0x90
	.type	sha256_padding,@function
sha256_padding:                         # @sha256_padding
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	(%r14,%rbx), %r12
	movb	$-128, (%r14,%rbx)
	movl	$55, %r15d
	subl	%ebx, %r15d
	andl	$63, %r15d
	leaq	(%r14,%rbx), %rdi
	incq	%rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	shlq	$3, %rbx
	leaq	(%r15,%r12), %rax
	incq	%rax
	movl	$56, %ecx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	shrq	%cl, %rdx
	movb	%dl, (%rax)
	addq	$-8, %rcx
	incq	%rax
	cmpq	$-8, %rcx
	jne	.LBB0_1
# %bb.2:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	sha256_padding, .Lfunc_end0-sha256_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
