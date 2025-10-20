	.text
	.file	"xor_ofb_mode.c"
	.globl	xor_ofb_mode                    # -- Begin function xor_ofb_mode
	.p2align	4, 0x90
	.type	xor_ofb_mode,@function
xor_ofb_mode:                           # @xor_ofb_mode
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)
	movb	-33(%rbp), %al
	movb	%al, -34(%rbp)
	movq	$0, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movzbl	(%rax,%rdx), %ecx
	movzbl	-34(%rbp), %eax
	xorl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -34(%rbp)
	movzbl	-34(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	xorl	%esi, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	xor_ofb_mode, .Lfunc_end0-xor_ofb_mode
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
