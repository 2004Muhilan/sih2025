	.text
	.file	"md5_padding.c"
	.globl	md5_padding                     # -- Begin function md5_padding
	.type	md5_padding,@function
md5_padding:                            # @md5_padding
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(%rbx,%r14), %rdi
	incq	%rdi
	addq	%r14, %rbx
	movb	$-128, -1(%rdi)
	movl	$55, %r15d
	subl	%r14d, %r15d
	andl	$63, %r15d
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	shlq	$3, %r14
	movq	%r14, 1(%r15,%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	md5_padding, .Lfunc_end0-md5_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
