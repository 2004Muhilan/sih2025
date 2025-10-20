	.text
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                # -- Begin function des_key_schedule
	.p2align	4, 0x90
	.type	des_key_schedule,@function
des_key_schedule:                       # @des_key_schedule
	.cfi_startproc
# %bb.0:
	movabsq	$281474976710655, %rax          # imm = 0xFFFFFFFFFFFF
	movq	%rdi, %rcx
	andq	%rax, %rcx
	movq	%rcx, (%rsi)
	movq	%rdi, %rcx
	shrq	$4, %rcx
	andq	%rax, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rdi, %rcx
	shrq	$8, %rcx
	andq	%rax, %rcx
	movq	%rcx, 16(%rsi)
	movq	%rdi, %rcx
	shrq	$12, %rcx
	andq	%rax, %rcx
	movq	%rcx, 24(%rsi)
	movq	%rdi, %rax
	shrq	$16, %rax
	movq	%rax, 32(%rsi)
	movq	%rdi, %rax
	shrq	$20, %rax
	movq	%rax, 40(%rsi)
	movq	%rdi, %rax
	shrq	$24, %rax
	movq	%rax, 48(%rsi)
	movq	%rdi, %rax
	shrq	$28, %rax
	movq	%rax, 56(%rsi)
	movq	%rdi, %rax
	shrq	$32, %rax
	movq	%rax, 64(%rsi)
	movq	%rdi, %rax
	shrq	$36, %rax
	movq	%rax, 72(%rsi)
	movq	%rdi, %rax
	shrq	$40, %rax
	movq	%rax, 80(%rsi)
	movq	%rdi, %rax
	shrq	$44, %rax
	movq	%rax, 88(%rsi)
	movq	%rdi, %rax
	shrq	$48, %rax
	movq	%rax, 96(%rsi)
	movq	%rdi, %rax
	shrq	$52, %rax
	movq	%rax, 104(%rsi)
	movq	%rdi, %rax
	shrq	$56, %rax
	movq	%rax, 112(%rsi)
	shrq	$60, %rdi
	movq	%rdi, 120(%rsi)
	retq
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
