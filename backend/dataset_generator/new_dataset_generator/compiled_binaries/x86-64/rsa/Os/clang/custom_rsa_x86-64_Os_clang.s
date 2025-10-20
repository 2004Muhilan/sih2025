	.text
	.file	"custom_rsa.c"
	.globl	mod_exp                         # -- Begin function mod_exp
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
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
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
	.size	mod_exp, .Lfunc_end0-mod_exp
	.cfi_endproc
                                        # -- End function
	.globl	extended_gcd                    # -- Begin function extended_gcd
	.type	extended_gcd,@function
extended_gcd:                           # @extended_gcd
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
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
	leaq	8(%rsp), %r12
	movq	%rsp, %r13
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	extended_gcd
	movq	(%r13), %rdx
	movq	(%r12), %rcx
	imulq	%rcx, %r15
	subq	%r15, %rdx
	jmp	.LBB1_3
.LBB1_1:
	movl	$1, %ecx
	xorl	%edx, %edx
.LBB1_3:
	movq	%rdx, (%r14)
	movq	%rcx, (%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
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
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
	cmpq	$1, %rsi
	movq	%rax, %rsi
	ja	.LBB2_3
	jmp	.LBB2_6
.LBB2_1:
	movl	$1, %edi
.LBB2_6:
	movq	%rdi, %rax
	retq
.Lfunc_end2:
	.size	rsa_encrypt, .Lfunc_end2-rsa_encrypt
	.cfi_endproc
                                        # -- End function
	.globl	rsa_decrypt                     # -- Begin function rsa_decrypt
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
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
	cmpq	$1, %rsi
	movq	%rax, %rsi
	ja	.LBB3_3
	jmp	.LBB3_6
.LBB3_1:
	movl	$1, %edi
.LBB3_6:
	movq	%rdi, %rax
	retq
.Lfunc_end3:
	.size	rsa_decrypt, .Lfunc_end3-rsa_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
