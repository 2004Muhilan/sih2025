	.text
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         # -- Begin function sha256_message_schedule
	.p2align	4, 0x90
	.type	sha256_message_schedule,@function
sha256_message_schedule:                # @sha256_message_schedule
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -20(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$16, -24(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -24(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$15, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$7, %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %edx
	subl	$15, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$25, %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %edx
	subl	$15, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	shrl	$18, %ecx
	movq	-16(%rbp), %rdx
	movl	-24(%rbp), %esi
	subl	$15, %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %edx
	shll	$14, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %edx
	subl	$15, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	shrl	$3, %ecx
	xorl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$17, %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$15, %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	shrl	$19, %ecx
	movq	-16(%rbp), %rdx
	movl	-24(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %edx
	shll	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	shrl	$10, %ecx
	xorl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$16, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	addl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$7, %ecx
	movslq	%ecx, %rcx
	addl	(%rax,%rcx,4), %edx
	addl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
