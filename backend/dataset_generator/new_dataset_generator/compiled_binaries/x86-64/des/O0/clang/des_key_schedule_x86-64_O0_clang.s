	.text
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                # -- Begin function des_key_schedule
	.p2align	4, 0x90
	.type	des_key_schedule,@function
des_key_schedule:                       # @des_key_schedule
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
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rdx
	movabsq	$281474976710655, %rax          # imm = 0xFFFFFFFFFFFF
	andq	%rax, %rdx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
