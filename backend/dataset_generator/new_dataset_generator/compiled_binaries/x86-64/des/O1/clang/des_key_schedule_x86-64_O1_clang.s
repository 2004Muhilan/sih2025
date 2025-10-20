	.text
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                # -- Begin function des_key_schedule
	.p2align	4, 0x90
	.type	des_key_schedule,@function
des_key_schedule:                       # @des_key_schedule
	.cfi_startproc
# %bb.0:
	xorl	%ecx, %ecx
	movabsq	$281474976710655, %rax          # imm = 0xFFFFFFFFFFFF
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rdx
	shrq	%cl, %rdx
	andq	%rax, %rdx
	movq	%rdx, (%rsi,%rcx,2)
	addq	$4, %rcx
	cmpq	$64, %rcx
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
