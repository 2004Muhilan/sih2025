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
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rdi
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
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
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB1_3
# %bb.4:
	cqto
	idivq	%rsi
	movq	%rdx, %rdi
	movq	%rax, %r15
	jmp	.LBB1_5
.LBB1_1:
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_6
.LBB1_3:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
	movl	%edx, %edi
	movl	%eax, %r15d
.LBB1_5:
	leaq	8(%rsp), %rdx
	movq	%rsp, %rcx
	callq	extended_gcd
	movq	(%rsp), %rdx
	movq	8(%rsp), %rcx
	imulq	%rcx, %r15
	subq	%r15, %rdx
.LBB1_6:
	movq	%rdx, (%r14)
	movq	%rcx, (%rbx)
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
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rdi
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
	cmpq	$1, %rsi
	movq	%rax, %rsi
	jbe	.LBB2_11
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	testb	$1, %sil
	je	.LBB2_10
	jmp	.LBB2_7
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %r8d
	testb	$1, %sil
	je	.LBB2_10
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=1
	imulq	%r8, %rdi
	movq	%rdi, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	jne	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %edi
	jmp	.LBB2_10
.LBB2_11:
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
.LBB3_9:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rdi
.LBB3_10:                               #   in Loop: Header=BB3_3 Depth=1
	movq	%rsi, %rax
	shrq	%rax
	imulq	%r8, %r8
	cmpq	$1, %rsi
	movq	%rax, %rsi
	jbe	.LBB3_11
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB3_4
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r8
	testb	$1, %sil
	je	.LBB3_10
	jmp	.LBB3_7
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %r8d
	testb	$1, %sil
	je	.LBB3_10
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=1
	imulq	%r8, %rdi
	movq	%rdi, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	jne	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %edi
	jmp	.LBB3_10
.LBB3_11:
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
