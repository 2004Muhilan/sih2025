	.text
	.file	"rsa_modular_exponentiation.c"
	.globl	rsa_mod_exp                     # -- Begin function rsa_mod_exp
	.p2align	4, 0x90
	.type	rsa_mod_exp,@function
rsa_mod_exp:                            # @rsa_mod_exp
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	movq	%rdx, %rcx
	movq	%rdi, %r8
	movl	$1, %edi
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rdi
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	imulq	%r8, %r8
	movq	%rsi, %rax
	shrq	%rax
	cmpq	$1, %rsi
	movq	%rax, %rsi
	jbe	.LBB0_11
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	testb	$1, %sil
	je	.LBB0_10
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %r8d
	testb	$1, %sil
	je	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	imulq	%r8, %rdi
	movq	%rdi, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %edi
	jmp	.LBB0_10
.LBB0_11:
	movq	%rdi, %rax
	retq
.LBB0_1:
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	rsa_mod_exp, .Lfunc_end0-rsa_mod_exp
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
