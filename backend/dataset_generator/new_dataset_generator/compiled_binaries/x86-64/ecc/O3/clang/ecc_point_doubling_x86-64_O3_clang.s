	.text
	.file	"ecc_point_doubling.c"
	.globl	ecc_point_double                # -- Begin function ecc_point_double
	.p2align	4, 0x90
	.type	ecc_point_double,@function
ecc_point_double:                       # @ecc_point_double
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	imulq	%rdi, %rax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rsi), %r8
	movq	%rax, %rdx
	orq	%r8, %rdx
	shrq	$32, %rdx
	je	.LBB0_1
# %bb.2:
	xorl	%edx, %edx
	divq	%r8
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB0_4
.LBB0_5:
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	jmp	.LBB0_6
.LBB0_1:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	jne	.LBB0_5
.LBB0_4:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %r8d
.LBB0_6:
	movq	%r8, %rax
	imulq	%r8, %rax
	subq	%rdi, %rax
	subq	%rdi, %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB0_7
# %bb.8:
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r9
	jmp	.LBB0_9
.LBB0_7:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %r9d
.LBB0_9:
	subq	%r9, %rdi
	imulq	%r8, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_10
# %bb.11:
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%r9, %rax
	retq
.LBB0_10:
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	movq	%r9, %rax
	retq
.Lfunc_end0:
	.size	ecc_point_double, .Lfunc_end0-ecc_point_double
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
