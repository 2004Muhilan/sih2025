	.text
	.file	"rsa_modular_exponentiation.c"
	.globl	rsa_mod_exp                     # -- Begin function rsa_mod_exp
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
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	testb	$1, %sil
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	imulq	%r8, %rdi
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rdi
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	imulq	%r8, %r8
	movq	%rsi, %rax
	shrq	%rax
	cmpq	$1, %rsi
	movq	%rax, %rsi
	ja	.LBB0_3
	jmp	.LBB0_6
.LBB0_1:
	movl	$1, %edi
.LBB0_6:
	movq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	rsa_mod_exp, .Lfunc_end0-rsa_mod_exp
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
