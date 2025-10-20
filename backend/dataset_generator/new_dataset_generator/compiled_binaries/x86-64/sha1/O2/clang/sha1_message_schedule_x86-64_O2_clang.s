	.text
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           # -- Begin function sha1_message_schedule
	.p2align	4, 0x90
	.type	sha1_message_schedule,@function
sha1_message_schedule:                  # @sha1_message_schedule
	.cfi_startproc
# %bb.0:
	movl	(%rdi), %eax
	movl	%eax, (%rsi)
	movl	4(%rdi), %eax
	movl	%eax, 4(%rsi)
	movl	8(%rdi), %eax
	movl	%eax, 8(%rsi)
	movl	12(%rdi), %eax
	movl	%eax, 12(%rsi)
	movl	16(%rdi), %eax
	movl	%eax, 16(%rsi)
	movl	20(%rdi), %eax
	movl	%eax, 20(%rsi)
	movl	24(%rdi), %eax
	movl	%eax, 24(%rsi)
	movl	28(%rdi), %eax
	movl	%eax, 28(%rsi)
	movl	32(%rdi), %eax
	movl	%eax, 32(%rsi)
	movl	36(%rdi), %eax
	movl	%eax, 36(%rsi)
	movl	40(%rdi), %eax
	movl	%eax, 40(%rsi)
	movl	44(%rdi), %eax
	movl	%eax, 44(%rsi)
	movl	48(%rdi), %eax
	movl	%eax, 48(%rsi)
	movl	52(%rdi), %eax
	movl	%eax, 52(%rsi)
	movl	56(%rdi), %eax
	movl	%eax, 56(%rsi)
	movl	60(%rdi), %eax
	movl	%eax, 60(%rsi)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	32(%rsi,%rax,4), %ecx
	xorl	52(%rsi,%rax,4), %ecx
	xorl	8(%rsi,%rax,4), %ecx
	xorl	(%rsi,%rax,4), %ecx
	movl	36(%rsi,%rax,4), %edx
	roll	%ecx
	movl	%ecx, 64(%rsi,%rax,4)
	xorl	56(%rsi,%rax,4), %edx
	xorl	12(%rsi,%rax,4), %edx
	xorl	4(%rsi,%rax,4), %edx
	roll	%edx
	movl	%edx, 68(%rsi,%rax,4)
	addq	$2, %rax
	cmpq	$64, %rax
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	sha1_message_schedule, .Lfunc_end0-sha1_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
