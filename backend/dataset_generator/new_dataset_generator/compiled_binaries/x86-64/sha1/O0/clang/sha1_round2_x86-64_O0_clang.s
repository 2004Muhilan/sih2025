	.text
	.file	"sha1_round2.c"
	.globl	sha1_round2                     # -- Begin function sha1_round2
	.p2align	4, 0x90
	.type	sha1_round2,@function
sha1_round2:                            # @sha1_round2
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
	xorl	-12(%rbp), %ecx
	xorl	-16(%rbp), %ecx
	addl	%ecx, %eax
	addl	-20(%rbp), %eax
	addl	$1859775393, %eax               # imm = 0x6ED9EBA1
	addl	-24(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha1_round2, .Lfunc_end0-sha1_round2
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
