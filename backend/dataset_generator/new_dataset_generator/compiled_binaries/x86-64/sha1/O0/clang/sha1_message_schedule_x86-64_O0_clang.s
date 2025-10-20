	.text
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           # -- Begin function sha1_message_schedule
	.p2align	4, 0x90
	.type	sha1_message_schedule,@function
sha1_message_schedule:                  # @sha1_message_schedule
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
	cmpl	$80, -24(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$3, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$8, %ecx
	movslq	%ecx, %rcx
	xorl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$14, %ecx
	movslq	%ecx, %rcx
	xorl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$16, %ecx
	movslq	%ecx, %rcx
	xorl	(%rax,%rcx,4), %edx
	shll	%edx
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$3, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %esi
	subl	$8, %esi
	movslq	%esi, %rsi
	xorl	(%rcx,%rsi,4), %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %esi
	subl	$14, %esi
	movslq	%esi, %rsi
	xorl	(%rcx,%rsi,4), %eax
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %esi
	subl	$16, %esi
	movslq	%esi, %rsi
	xorl	(%rcx,%rsi,4), %eax
	shrl	$31, %eax
	orl	%eax, %edx
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
	.size	sha1_message_schedule, .Lfunc_end0-sha1_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
