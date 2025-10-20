	.text
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           # -- Begin function sha1_message_schedule
	.p2align	4, 0x90
	.type	sha1_message_schedule,@function
sha1_message_schedule:                  # @sha1_message_schedule
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %ecx
	movl	%ecx, (%rsi,%rax,4)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB0_1
# %bb.2:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	32(%rsi,%rax,4), %ecx
	xorl	52(%rsi,%rax,4), %ecx
	xorl	8(%rsi,%rax,4), %ecx
	xorl	(%rsi,%rax,4), %ecx
	roll	%ecx
	movl	%ecx, 64(%rsi,%rax,4)
	incq	%rax
	cmpq	$64, %rax
	jne	.LBB0_3
# %bb.4:
	retq
.Lfunc_end0:
	.size	sha1_message_schedule, .Lfunc_end0-sha1_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
