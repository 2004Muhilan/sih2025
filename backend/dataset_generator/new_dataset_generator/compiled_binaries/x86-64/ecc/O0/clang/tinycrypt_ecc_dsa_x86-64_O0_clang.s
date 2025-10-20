	.text
	.file	"tinycrypt_ecc_dsa.c"
	.globl	uECC_sign_with_k                # -- Begin function uECC_sign_with_k
	.p2align	4, 0x90
	.type	uECC_sign_with_k,@function
uECC_sign_with_k:                       # @uECC_sign_with_k
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
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -213(%rbp)
	movq	-56(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movb	%al, -214(%rbp)
	movq	-56(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -216(%rbp)
	movq	-40(%rbp), %rdi
	movsbl	-213(%rbp), %esi
	callq	uECC_vli_isZero@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-56(%rbp), %rdi
	addq	$36, %rdi
	movq	-40(%rbp), %rsi
	movsbl	-214(%rbp), %edx
	callq	uECC_vli_cmp@PLT
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_3:
	movq	-40(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	regularize_k@PLT
	movl	%eax, -212(%rbp)
	leaq	-208(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	$68, %rsi
	cmpl	$0, -212(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rdx
	movswl	-216(%rbp), %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movq	-56(%rbp), %r9
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movswl	%ax, %r8d
	callq	EccPoint_mult@PLT
	leaq	-208(%rbp), %rdi
	movsbl	-213(%rbp), %esi
	callq	uECC_vli_isZero@PLT
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_5:
	callq	uECC_get_rng@PLT
	cmpq	$0, %rax
	jne	.LBB0_7
# %bb.6:
	leaq	-96(%rbp), %rdi
	movsbl	-214(%rbp), %esi
	callq	uECC_vli_clear@PLT
	movl	$1, -96(%rbp)
	jmp	.LBB0_10
.LBB0_7:
	leaq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	$36, %rsi
	movsbl	-214(%rbp), %edx
	callq	uECC_generate_random_int@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rcx
	addq	$36, %rcx
	movsbl	-214(%rbp), %r8d
	callq	uECC_vli_modMult@PLT
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	addq	$36, %rdx
	movsbl	-214(%rbp), %ecx
	callq	uECC_vli_modInv@PLT
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rcx
	addq	$36, %rcx
	movsbl	-214(%rbp), %r8d
	callq	uECC_vli_modMult@PLT
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-208(%rbp), %rdx
	callq	uECC_vli_nativeToBytes@PLT
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	callq	uECC_vli_bytesToNative@PLT
	movsbl	-214(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -128(%rbp,%rax,4)
	leaq	-128(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movsbl	-213(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-128(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rcx
	addq	$36, %rcx
	movsbl	-214(%rbp), %r8d
	callq	uECC_vli_modMult@PLT
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	bits2int
	leaq	-128(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rcx
	addq	$36, %rcx
	movsbl	-214(%rbp), %r8d
	callq	uECC_vli_modAdd@PLT
	leaq	-128(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	addq	$36, %rcx
	movsbl	-214(%rbp), %r8d
	callq	uECC_vli_modMult@PLT
	leaq	-128(%rbp), %rdi
	movsbl	-214(%rbp), %esi
	callq	uECC_vli_numBits@PLT
	cwtl
	movq	-56(%rbp), %rcx
	movsbl	1(%rcx), %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movswl	%cx, %ecx
	shll	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_12
# %bb.11:
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %eax
	cltq
	addq	%rax, %rdi
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %esi
	leaq	-128(%rbp), %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movl	$1, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function bits2int
	.type	bits2int,@function
bits2int:                               # @bits2int
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jbe	.LBB1_2
# %bb.1:
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB1_2:
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	uECC_vli_clear@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	uECC_vli_bytesToNative@PLT
	movl	-20(%rbp), %eax
	shll	$3, %eax
	movq	-32(%rbp), %rcx
	movswl	2(%rcx), %ecx
	cmpl	%ecx, %eax
	ja	.LBB1_4
# %bb.3:
	jmp	.LBB1_9
.LBB1_4:
	movl	-20(%rbp), %eax
	shll	$3, %eax
	movq	-32(%rbp), %rcx
	movswl	2(%rcx), %ecx
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -56(%rbp)
	cmpq	-8(%rbp), %rax
	jbe	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	-44(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %eax
	movl	%eax, %ecx
	orl	-48(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-60(%rbp), %eax
	movl	$32, %ecx
	subl	-44(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_5
.LBB1_7:
	movq	-32(%rbp), %rdi
	addq	$36, %rdi
	movq	-8(%rbp), %rsi
	movl	-40(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB1_9
# %bb.8:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	addq	$36, %rdx
	movl	-40(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %ecx
	callq	uECC_vli_sub@PLT
.LBB1_9:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	bits2int, .Lfunc_end1-bits2int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_sign                       # -- Begin function uECC_sign
	.p2align	4, 0x90
	.type	uECC_sign,@function
uECC_sign:                              # @uECC_sign
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -148(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -148(%rbp)
	jae	.LBB2_9
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	callq	uECC_get_rng@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax
	leaq	-112(%rbp), %rdi
	movl	$64, %esi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB2_5
.LBB2_4:
	movl	$0, -4(%rbp)
	jmp	.LBB2_10
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	leaq	-144(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movq	-48(%rbp), %rax
	addq	$36, %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
	movq	-168(%rbp), %rdx                # 8-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %ecx
	callq	uECC_vli_mmod@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	uECC_sign_with_k
	cmpl	$0, %eax
	je	.LBB2_7
# %bb.6:
	movl	$1, -4(%rbp)
	jmp	.LBB2_10
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB2_1
.LBB2_9:
	movl	$0, -4(%rbp)
.LBB2_10:
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	uECC_sign, .Lfunc_end2-uECC_sign
	.cfi_endproc
                                        # -- End function
	.globl	uECC_verify                     # -- Begin function uECC_verify
	.p2align	4, 0x90
	.type	uECC_verify,@function
uECC_verify:                            # @uECC_verify
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp                      # imm = 0x240
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -545(%rbp)
	movq	-48(%rbp), %rax
	movswl	2(%rax), %eax
	addl	$31, %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movb	%al, -546(%rbp)
	movsbl	-546(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -240(%rbp,%rax,4)
	movsbl	-546(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -512(%rbp,%rax,4)
	movsbl	-546(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -544(%rbp,%rax,4)
	leaq	-480(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	-480(%rbp), %rdi
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %eax
	cltq
	addq	%rax, %rsi
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	-512(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	-544(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %eax
	cltq
	addq	%rax, %rsi
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	-512(%rbp), %rdi
	movsbl	-545(%rbp), %esi
	callq	uECC_vli_isZero@PLT
	cmpl	$0, %eax
	jne	.LBB3_2
# %bb.1:
	leaq	-544(%rbp), %rdi
	movsbl	-545(%rbp), %esi
	callq	uECC_vli_isZero@PLT
	cmpl	$0, %eax
	je	.LBB3_3
.LBB3_2:
	movl	$0, -4(%rbp)
	jmp	.LBB3_15
.LBB3_3:
	movq	-48(%rbp), %rdi
	addq	$36, %rdi
	leaq	-512(%rbp), %rsi
	movsbl	-546(%rbp), %edx
	callq	uECC_vli_cmp_unsafe@PLT
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB3_5
# %bb.4:
	movq	-48(%rbp), %rdi
	addq	$36, %rdi
	leaq	-544(%rbp), %rsi
	movsbl	-546(%rbp), %edx
	callq	uECC_vli_cmp_unsafe@PLT
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB3_6
.LBB3_5:
	movl	$0, -4(%rbp)
	jmp	.LBB3_15
.LBB3_6:
	leaq	-144(%rbp), %rdi
	leaq	-544(%rbp), %rsi
	movq	-48(%rbp), %rdx
	addq	$36, %rdx
	movsbl	-546(%rbp), %ecx
	callq	uECC_vli_modInv@PLT
	movsbl	-546(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	$0, -80(%rbp,%rax,4)
	leaq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	bits2int
	leaq	-80(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rcx
	addq	$36, %rcx
	movsbl	-546(%rbp), %r8d
	callq	uECC_vli_modMult@PLT
	leaq	-112(%rbp), %rdi
	leaq	-512(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rcx
	addq	$36, %rcx
	movsbl	-546(%rbp), %r8d
	callq	uECC_vli_modMult@PLT
	leaq	-208(%rbp), %rdi
	leaq	-480(%rbp), %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-208(%rbp), %rdi
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	leaq	-480(%rbp), %rsi
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-304(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	$68, %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-336(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	$68, %rsi
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-144(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	movq	-48(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-545(%rbp), %r8d
	callq	uECC_vli_modSub@PLT
	leaq	-304(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %r8
	callq	XYcZ_add@PLT
	leaq	-144(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movq	-48(%rbp), %rdx
	addq	$4, %rdx
	movsbl	-545(%rbp), %ecx
	callq	uECC_vli_modInv@PLT
	leaq	-208(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	apply_z@PLT
	movq	$0, -400(%rbp)
	movq	-48(%rbp), %rax
	addq	$68, %rax
	movq	%rax, -392(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, -384(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -376(%rbp)
	leaq	-80(%rbp), %rdi
	movsbl	-546(%rbp), %esi
	callq	uECC_vli_numBits@PLT
	movw	%ax, -558(%rbp)                 # 2-byte Spill
	leaq	-112(%rbp), %rdi
	movsbl	-546(%rbp), %esi
	callq	uECC_vli_numBits@PLT
	movw	-558(%rbp), %cx                 # 2-byte Reload
	movswl	%cx, %edi
	movswl	%ax, %esi
	callq	smax
	movw	%ax, -410(%rbp)
	leaq	-80(%rbp), %rdi
	movswl	-410(%rbp), %eax
	subl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %esi
	callq	uECC_vli_testBit@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -556(%rbp)                # 4-byte Spill
	leaq	-112(%rbp), %rdi
	movswl	-410(%rbp), %eax
	subl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %esi
	callq	uECC_vli_testBit@PLT
	movl	%eax, %ecx
	movl	-556(%rbp), %eax                # 4-byte Reload
	cmpl	$0, %ecx
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	shll	%ecx
	orl	%ecx, %eax
	cltq
	movq	-400(%rbp,%rax,8), %rax
	movq	%rax, -408(%rbp)
	leaq	-240(%rbp), %rdi
	movq	-408(%rbp), %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-272(%rbp), %rdi
	movq	-408(%rbp), %rsi
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-144(%rbp), %rdi
	movsbl	-545(%rbp), %esi
	callq	uECC_vli_clear@PLT
	movl	$1, -144(%rbp)
	movswl	-410(%rbp), %eax
	subl	$2, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -412(%rbp)
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	movswl	-412(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB3_12
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rax
	movq	168(%rax), %rax
	leaq	-240(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	*%rax
	leaq	-80(%rbp), %rdi
	movswl	-412(%rbp), %esi
	callq	uECC_vli_testBit@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -564(%rbp)                # 4-byte Spill
	leaq	-112(%rbp), %rdi
	movswl	-412(%rbp), %esi
	callq	uECC_vli_testBit@PLT
	movl	%eax, %ecx
	movl	-564(%rbp), %eax                # 4-byte Reload
	cmpl	$0, %ecx
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	shll	%ecx
	orl	%ecx, %eax
	movl	%eax, -552(%rbp)
	movl	-552(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	-400(%rbp,%rax,8), %rax
	movq	%rax, -408(%rbp)
	cmpq	$0, -408(%rbp)
	je	.LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=1
	leaq	-304(%rbp), %rdi
	movq	-408(%rbp), %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-336(%rbp), %rdi
	movq	-408(%rbp), %rsi
	movsbl	-545(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_set@PLT
	leaq	-304(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	apply_z@PLT
	leaq	-368(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	movq	-48(%rbp), %rcx
	addq	$4, %rcx
	movsbl	-545(%rbp), %r8d
	callq	uECC_vli_modSub@PLT
	leaq	-304(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	XYcZ_add@PLT
	leaq	-144(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-368(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	uECC_vli_modMult_fast@PLT
.LBB3_10:                               #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               #   in Loop: Header=BB3_7 Depth=1
	movw	-412(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -412(%rbp)
	jmp	.LBB3_7
.LBB3_12:
	leaq	-144(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movq	-48(%rbp), %rdx
	addq	$4, %rdx
	movsbl	-545(%rbp), %ecx
	callq	uECC_vli_modInv@PLT
	leaq	-240(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	apply_z@PLT
	movq	-48(%rbp), %rdi
	addq	$36, %rdi
	leaq	-240(%rbp), %rsi
	movsbl	-546(%rbp), %edx
	callq	uECC_vli_cmp_unsafe@PLT
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.LBB3_14
# %bb.13:
	leaq	-240(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movq	-48(%rbp), %rdx
	addq	$36, %rdx
	movsbl	-546(%rbp), %ecx
	callq	uECC_vli_sub@PLT
.LBB3_14:
	leaq	-240(%rbp), %rdi
	leaq	-512(%rbp), %rsi
	movsbl	-545(%rbp), %edx
	callq	uECC_vli_equal@PLT
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB3_15:
	movl	-4(%rbp), %eax
	addq	$576, %rsp                      # imm = 0x240
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function smax
	.type	smax,@function
smax:                                   # @smax
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%si, %ax
	movw	%di, %cx
	movw	%cx, -2(%rbp)
	movw	%ax, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_2
# %bb.1:
	movswl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:
	movswl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB4_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	smax, .Lfunc_end4-smax
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_sign_with_k
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_mult
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym uECC_vli_modMult
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_vli_set
	.addrsig_sym bits2int
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym XYcZ_add
	.addrsig_sym apply_z
	.addrsig_sym smax
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_equal
