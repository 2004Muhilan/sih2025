	.text
	.file	"tinycrypt_ecc_dh.c"
	.globl	uECC_make_key_with_d            # -- Begin function uECC_make_key_with_d
	.p2align	4, 0x90
	.type	uECC_make_key_with_d,@function
uECC_make_key_with_d:                   # @uECC_make_key_with_d
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-144(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	EccPoint_compute_public_key@PLT
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %esi
	leaq	-80(%rbp), %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-144(%rbp), %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %eax
	cltq
	addq	%rax, %rdi
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-144(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	leaq	-80(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	_set_secure
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _set_secure
	.type	_set_secure,@function
_set_secure:                            # @_set_secure
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	-9(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	%al, %esi
	callq	memset@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	#APP
	#NO_APP
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_set_secure, .Lfunc_end1-_set_secure
	.cfi_endproc
                                        # -- End function
	.globl	uECC_make_key                   # -- Begin function uECC_make_key
	.p2align	4, 0x90
	.type	uECC_make_key,@function
uECC_make_key:                          # @uECC_make_key
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -196(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -196(%rbp)
	jae	.LBB2_9
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	callq	uECC_get_rng@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-208(%rbp), %rax
	leaq	-96(%rbp), %rdi
	movl	$64, %esi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB2_5
.LBB2_4:
	movl	$0, -4(%rbp)
	jmp	.LBB2_10
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	leaq	-128(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$36, %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
	movq	-216(%rbp), %rdx                # 8-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %ecx
	callq	uECC_vli_mmod@PLT
	leaq	-192(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	EccPoint_compute_public_key@PLT
	cmpl	$0, %eax
	je	.LBB2_7
# %bb.6:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %esi
	leaq	-128(%rbp), %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-192(%rbp), %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %eax
	cltq
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-192(%rbp), %rdx
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	_set_secure
	movl	$1, -4(%rbp)
	jmp	.LBB2_10
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB2_1
.LBB2_9:
	movl	$0, -4(%rbp)
.LBB2_10:
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	uECC_make_key, .Lfunc_end2-uECC_make_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_shared_secret              # -- Begin function uECC_shared_secret
	.p2align	4, 0x90
	.type	uECC_shared_secret,@function
uECC_shared_secret:                     # @uECC_shared_secret
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	$0, -184(%rbp)
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -189(%rbp)
	movq	-32(%rbp), %rax
	movb	1(%rax), %al
	movb	%al, -190(%rbp)
	leaq	-128(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	-96(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsbl	-190(%rbp), %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	-96(%rbp), %rdi
	movsbl	-189(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movsbl	-190(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movsbl	-190(%rbp), %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	-128(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	regularize_k@PLT
	movl	%eax, -188(%rbp)
	callq	uECC_get_rng@PLT
	cmpq	$0, %rax
	je	.LBB3_4
# %bb.1:
	movl	-188(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	-176(%rbp,%rax,8), %rdi
	movq	-32(%rbp), %rsi
	addq	$4, %rsi
	movsbl	-189(%rbp), %edx
	callq	uECC_generate_random_int@PLT
	cmpl	$0, %eax
	jne	.LBB3_3
# %bb.2:
	movl	$0, -196(%rbp)
	jmp	.LBB3_5
.LBB3_3:
	movl	-188(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	-176(%rbp,%rax,8), %rax
	movq	%rax, -184(%rbp)
.LBB3_4:
	leaq	-96(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	cmpl	$0, -188(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	movq	-176(%rbp,%rax,8), %rdx
	movq	-184(%rbp), %rcx
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-32(%rbp), %r9
	movswl	%ax, %r8d
	callq	EccPoint_mult@PLT
	movq	-24(%rbp), %rdi
	movsbl	-190(%rbp), %esi
	leaq	-96(%rbp), %rdx
	callq	uECC_vli_nativeToBytes@PLT
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	EccPoint_isZero@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -196(%rbp)
.LBB3_5:
	leaq	-176(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_set_secure
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	_set_secure
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	_set_secure
	movl	-196(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	uECC_shared_secret, .Lfunc_end3-uECC_shared_secret
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym _set_secure
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym regularize_k
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym EccPoint_mult
	.addrsig_sym EccPoint_isZero
