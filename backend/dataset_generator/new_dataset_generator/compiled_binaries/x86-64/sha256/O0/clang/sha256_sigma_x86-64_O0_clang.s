	.text
	.file	"sha256_sigma.c"
	.globl	sha256_sigma0                   # -- Begin function sha256_sigma0
	.p2align	4, 0x90
	.type	sha256_sigma0,@function
sha256_sigma0:                          # @sha256_sigma0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	movl	-4(%rbp), %ecx
	shll	$30, %ecx
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	shrl	$13, %ecx
	movl	-4(%rbp), %edx
	shll	$19, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-4(%rbp), %ecx
	shrl	$22, %ecx
	movl	-4(%rbp), %edx
	shll	$10, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha256_sigma0, .Lfunc_end0-sha256_sigma0
	.cfi_endproc
                                        # -- End function
	.globl	sha256_sigma1                   # -- Begin function sha256_sigma1
	.p2align	4, 0x90
	.type	sha256_sigma1,@function
sha256_sigma1:                          # @sha256_sigma1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$6, %eax
	movl	-4(%rbp), %ecx
	shll	$26, %ecx
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	shrl	$11, %ecx
	movl	-4(%rbp), %edx
	shll	$21, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-4(%rbp), %ecx
	shrl	$25, %ecx
	movl	-4(%rbp), %edx
	shll	$7, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	sha256_sigma1, .Lfunc_end1-sha256_sigma1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
