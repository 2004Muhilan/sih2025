	.text
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         # -- Begin function sha256_message_schedule
	.p2align	4, 0x90
	.type	sha256_message_schedule,@function
sha256_message_schedule:                # @sha256_message_schedule
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
	movl	$16, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rsi,%rax,4), %ecx
	movl	%ecx, %edx
	roll	$25, %edx
	movl	-8(%rsi,%rax,4), %edi
	movl	%ecx, %r8d
	roll	$14, %r8d
	xorl	%edx, %r8d
	movl	%edi, %edx
	roll	$15, %edx
	shrl	$3, %ecx
	movl	%edi, %r9d
	roll	$13, %r9d
	xorl	%r8d, %ecx
	xorl	%edx, %r9d
	shrl	$10, %edi
	xorl	%r9d, %edi
	addl	-64(%rsi,%rax,4), %ecx
	addl	-28(%rsi,%rax,4), %ecx
	addl	%edi, %ecx
	movl	%ecx, (%rsi,%rax,4)
	incq	%rax
	cmpq	$64, %rax
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
