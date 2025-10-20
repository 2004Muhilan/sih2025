	.text
	.file	"rc4_drop3072.c"
	.globl	rc4_drop3072_init               # -- Begin function rc4_drop3072_init
	.p2align	4, 0x90
	.type	rc4_drop3072_init,@function
rc4_drop3072_init:                      # @rc4_drop3072_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)                 # imm = 0x100
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %dl
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movb	$0, -29(%rbp)
	movl	$0, -36(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)                 # imm = 0x100
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movzbl	-29(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rcx
	movslq	-36(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-24(%rbp)
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movb	%dl, %al
	movb	%al, -29(%rbp)
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -37(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-29(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movb	-37(%rbp), %dl
	movq	-8(%rbp), %rax
	movzbl	-29(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	$0, -44(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3072, -44(%rbp)                # imm = 0xC00
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	-44(%rbp), %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movslq	%edx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -45(%rbp)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rc4_drop3072_init, .Lfunc_end0-rc4_drop3072_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
