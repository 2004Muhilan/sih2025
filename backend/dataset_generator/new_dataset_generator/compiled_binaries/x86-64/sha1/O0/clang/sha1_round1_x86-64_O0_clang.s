	.text
	.file	"sha1_round1.c"
	.globl	sha1_round1                     # -- Begin function sha1_round1
	.p2align	4, 0x90
	.type	sha1_round1,@function
sha1_round1:                            # @sha1_round1
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
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	-4(%rbp), %eax
	shll	$5, %eax
	movl	-4(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-8(%rbp), %ecx
	andl	-12(%rbp), %ecx
	movl	-8(%rbp), %edx
	xorl	$-1, %edx
	andl	-16(%rbp), %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	-20(%rbp), %eax
	addl	$1518500249, %eax               # imm = 0x5A827999
	addl	-24(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha1_round1, .Lfunc_end0-sha1_round1
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
