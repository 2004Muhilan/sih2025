	.text
	.file	"md5_round4.c"
	.globl	md5_round4                      # -- Begin function md5_round4
	.p2align	4, 0x90
	.type	md5_round4,@function
md5_round4:                             # @md5_round4
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %esi
	xorl	$-1, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	-24(%rbp), %eax
	addl	16(%rbp), %eax
	movl	-28(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	-32(%rbp), %ecx                 # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	md5_round4, .Lfunc_end0-md5_round4
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
