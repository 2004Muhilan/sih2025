	.text
	.file	"sha256_maj.c"
	.globl	sha256_maj                      # -- Begin function sha256_maj
	.p2align	4, 0x90
	.type	sha256_maj,@function
sha256_maj:                             # @sha256_maj
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	movl	-4(%rbp), %ecx
	andl	-12(%rbp), %ecx
	xorl	%ecx, %eax
	movl	-8(%rbp), %ecx
	andl	-12(%rbp), %ecx
	xorl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha256_maj, .Lfunc_end0-sha256_maj
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
