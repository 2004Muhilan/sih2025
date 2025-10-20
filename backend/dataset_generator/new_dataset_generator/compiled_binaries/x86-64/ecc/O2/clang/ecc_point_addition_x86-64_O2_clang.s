	.text
	.file	"ecc_point_addition.c"
	.globl	ecc_point_add                   # -- Begin function ecc_point_add
	.p2align	4, 0x90
	.type	ecc_point_add,@function
ecc_point_add:                          # @ecc_point_add
	.cfi_startproc
# %bb.0:
	movq	%rdx, %r9
	subq	%rsi, %rcx
	movq	%rdx, %rax
	subq	%rdi, %rax
	imulq	%rcx, %rax
	movq	%rax, %rcx
	orq	%r8, %rcx
	shrq	$32, %rcx
	je	.LBB0_1
# %bb.2:
	xorl	%edx, %edx
	divq	%r8
	movq	%rdx, %rcx
	jmp	.LBB0_3
.LBB0_1:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r8d
	movl	%edx, %ecx
.LBB0_3:
	movq	%rcx, %rax
	imulq	%rcx, %rax
	addq	%rdi, %r9
	subq	%r9, %rax
	movq	%rax, %rdx
	orq	%r8, %rdx
	shrq	$32, %rdx
	je	.LBB0_4
# %bb.5:
	xorl	%edx, %edx
	divq	%r8
	movq	%rdx, %r9
	jmp	.LBB0_6
.LBB0_4:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r8d
	movl	%edx, %r9d
.LBB0_6:
	subq	%r9, %rdi
	imulq	%rcx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rax
	orq	%r8, %rax
	shrq	$32, %rax
	je	.LBB0_7
# %bb.8:
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r8
	movq	%r9, %rax
	retq
.LBB0_7:
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $edx killed $edx def $rdx
	movq	%r9, %rax
	retq
.Lfunc_end0:
	.size	ecc_point_add, .Lfunc_end0-ecc_point_add
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
