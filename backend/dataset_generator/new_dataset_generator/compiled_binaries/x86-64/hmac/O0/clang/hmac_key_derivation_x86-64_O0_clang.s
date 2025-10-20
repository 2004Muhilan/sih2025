	.text
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 # -- Begin function hmac_key_derive
	.p2align	4, 0x90
	.type	hmac_key_derive,@function
hmac_key_derive:                        # @hmac_key_derive
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
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$32, -48(%rbp)
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-16(%rbp)
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movzbl	(%rax,%rdx), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-32(%rbp)
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	xorl	%ecx, %eax
	movb	%al, %dl
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
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
	.size	hmac_key_derive, .Lfunc_end0-hmac_key_derive
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
