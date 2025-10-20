	.text
	.file	"hmac_verify.c"
	.globl	hmac_verify                     # -- Begin function hmac_verify
	.p2align	4, 0x90
	.type	hmac_verify,@function
hmac_verify:                            # @hmac_verify
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
	movb	$0, -25(%rbp)
	movq	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rax,%rcx), %ecx
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movzbl	(%rax,%rdx), %eax
	xorl	%eax, %ecx
	movzbl	-25(%rbp), %eax
	orl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -25(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movzbl	-25(%rbp), %eax
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	hmac_verify, .Lfunc_end0-hmac_verify
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
