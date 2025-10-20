	.text
	.file	"custom_rsa.c"
	.globl	mod_exp                         # -- Begin function mod_exp
	.p2align	4, 0x90
	.type	mod_exp,@function
mod_exp:                                # @mod_exp
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
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
	cmpq	$1, %rsi
	movq	%rax, %rsi
	jbe	.LBB0_6
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
	jmp	.LBB0_5
.LBB0_6:
	movq	%rdi, %rax
	retq
.LBB0_1:
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	mod_exp, .Lfunc_end0-mod_exp
	.cfi_endproc
                                        # -- End function
	.globl	extended_gcd                    # -- Begin function extended_gcd
	.p2align	4, 0x90
	.type	extended_gcd,@function
extended_gcd:                           # @extended_gcd
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %rax
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.2:
	movq	%rdi, %rsi
	cqto
	idivq	%rdi
	movq	%rax, %r15
	movq	%rdx, %rdi
	leaq	8(%rsp), %rdx
	movq	%rsp, %rcx
	callq	extended_gcd
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	imulq	%rdx, %r15
	subq	%r15, %rcx
	movq	%rcx, (%r14)
	movq	%rdx, (%rbx)
	jmp	.LBB1_3
.LBB1_1:
	movq	$0, (%r14)
	movq	$1, (%rbx)
.LBB1_3:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	extended_gcd, .Lfunc_end1-extended_gcd
	.cfi_endproc
                                        # -- End function
	.globl	rsa_encrypt                     # -- Begin function rsa_encrypt
	.p2align	4, 0x90
	.type	rsa_encrypt,@function
rsa_encrypt:                            # @rsa_encrypt
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB2_1
# %bb.2:
	movq	%rdx, %rcx
	movq	%rdi, %r8
	movl	$1, %edi
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
	cmpq	$1, %rsi
	movq	%rax, %rsi
	jbe	.LBB2_6
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	testb	$1, %sil
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	imulq	%r8, %rdi
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rdi
	jmp	.LBB2_5
.LBB2_6:
	movq	%rdi, %rax
	retq
.LBB2_1:
	movl	$1, %eax
	retq
.Lfunc_end2:
	.size	rsa_encrypt, .Lfunc_end2-rsa_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	rsa_decrypt                     # -- Begin function rsa_decrypt
	.p2align	4, 0x90
	.type	rsa_decrypt,@function
rsa_decrypt:                            # @rsa_decrypt
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB3_1
# %bb.2:
	movq	%rdx, %rcx
	movq	%rdi, %r8
	movl	$1, %edi
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
	cmpq	$1, %rsi
	movq	%rax, %rsi
	jbe	.LBB3_6
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	testb	$1, %sil
	je	.LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	imulq	%r8, %rdi
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rdi
	jmp	.LBB3_5
.LBB3_6:
	movq	%rdi, %rax
	retq
.LBB3_1:
	movl	$1, %eax
	retq
.Lfunc_end3:
	.size	rsa_decrypt, .Lfunc_end3-rsa_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
