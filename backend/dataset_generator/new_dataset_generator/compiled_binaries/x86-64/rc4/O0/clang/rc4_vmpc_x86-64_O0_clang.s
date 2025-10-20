	.text
	.file	"rc4_vmpc.c"
	.globl	rc4_vmpc_variant                # -- Begin function rc4_vmpc_variant
	.p2align	4, 0x90
	.type	rc4_vmpc_variant,@function
rc4_vmpc_variant:                       # @rc4_vmpc_variant
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -292(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$256, -292(%rbp)                # imm = 0x100
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-292(%rbp), %eax
	movb	%al, %cl
	movslq	-292(%rbp), %rax
	movb	%cl, -288(%rbp,%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movb	$0, -293(%rbp)
	movq	$0, -304(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-304(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movzbl	-293(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	-304(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	andl	$255, %ecx
	movslq	%ecx, %rcx
	movzbl	-288(%rbp,%rcx), %ecx
	addl	%ecx, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	movb	-288(%rbp,%rax), %al
	movb	%al, -293(%rbp)
	movzbl	-293(%rbp), %eax
                                        # kill: def $rax killed $eax
	movzbl	-288(%rbp,%rax), %eax
                                        # kill: def $rax killed $eax
	movzbl	-288(%rbp,%rax), %eax
	addl	$1, %eax
	movl	$256, %ecx                      # imm = 0x100
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	movzbl	-288(%rbp,%rax), %esi
	movq	-8(%rbp), %rax
	movq	-304(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	xorl	%esi, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rax,%rcx)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	rc4_vmpc_variant, .Lfunc_end0-rc4_vmpc_variant
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
