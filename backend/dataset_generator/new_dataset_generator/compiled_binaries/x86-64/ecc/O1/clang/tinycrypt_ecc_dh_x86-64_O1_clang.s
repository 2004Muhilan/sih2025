	.text
	.file	"tinycrypt_ecc_dh.c"
	.globl	uECC_make_key_with_d            # -- Begin function uECC_make_key_with_d
	.p2align	4, 0x90
	.type	uECC_make_key_with_d,@function
uECC_make_key_with_d:                   # @uECC_make_key_with_d
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$120, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm1, 32(%rsp)
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rbx
	movq	%rbx, %rsi
	movq	%rcx, %rdx
	callq	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movswl	2(%r14), %esi
	leal	7(%rsi), %eax
	addl	$14, %esi
	testl	%eax, %eax
	cmovnsl	%eax, %esi
	sarl	$3, %esi
	movq	%r12, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movq	%rbx, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movsbl	1(%r14), %esi
	leaq	48(%rsp), %rdx
	movq	%r15, %rdi
	callq	uECC_vli_nativeToBytes@PLT
	movsbq	1(%r14), %rsi
	addq	%rsi, %r15
	movsbq	(%r14), %rax
	leaq	(%rsp,%rax,4), %rdx
	addq	$48, %rdx
	movq	%r15, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	uECC_vli_nativeToBytes@PLT
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	%rbx, 8(%rsp)
	#APP
	#NO_APP
	movl	$1, %eax
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:
	addq	$120, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, (%rsp)                    # 8-byte Spill
	leaq	36(%rdx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	$64, %r12d
	leaq	128(%rsp), %r13
	leaq	32(%rsp), %rbp
                                        # implicit-def: $r14d
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	callq	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	movl	$64, %esi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB1_2
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	movswl	2(%rbx), %eax
	leal	31(%rax), %ecx
	addl	$62, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	shrl	$5, %eax
	movsbl	%al, %ecx
	movq	%rbp, %rdi
	movq	%r13, %r15
	movq	%r13, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	callq	uECC_vli_mmod@PLT
	leaq	64(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	je	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	movswl	2(%rbx), %esi
	leal	7(%rsi), %eax
	addl	$14, %esi
	testl	%eax, %eax
	cmovnsl	%eax, %esi
	sarl	$3, %esi
	movq	8(%rsp), %rdi                   # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%rbp, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movsbl	1(%rbx), %esi
	movq	(%rsp), %r14                    # 8-byte Reload
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movsbq	1(%rbx), %rsi
	movq	%rsi, %rdi
	addq	%r14, %rdi
	movsbq	(%rbx), %rax
	leaq	(%rsp,%rax,4), %rdx
	addq	$64, %rdx
                                        # kill: def $esi killed $esi killed $rsi
	callq	uECC_vli_nativeToBytes@PLT
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	%rbp, 24(%rsp)
	#APP
	#NO_APP
	movl	$1, %r14d
	xorl	%eax, %eax
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB1_3
	jmp	.LBB1_11
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movb	$1, %al
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %r13
	testb	%al, %al
	je	.LBB1_11
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	decl	%r12d
	jne	.LBB1_1
# %bb.4:
	xorl	%r14d, %r14d
.LBB1_11:
	movl	%r14d, %eax
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	uECC_make_key, .Lfunc_end1-uECC_make_key
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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbp
	leaq	80(%rsp), %rbx
	movq	%rbx, (%rsp)
	leaq	48(%rsp), %r14
	movq	%r14, 8(%rsp)
	movsbq	(%rcx), %r12
	movsbq	1(%rcx), %r13
	movswl	2(%rcx), %edx
	leal	7(%rdx), %eax
	addl	$14, %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$3, %edx
	movq	%rbx, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	leaq	112(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	(%rsp,%r12,4), %rdi
	addq	$112, %rdi
	addq	%r13, %rbp
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	uECC_vli_bytesToNative@PLT
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	regularize_k@PLT
	movl	%eax, %r14d
	callq	uECC_get_rng@PLT
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB2_3
# %bb.1:
	movl	%r14d, %ebx
	movq	(%rsp,%rbx,8), %rdi
	leaq	4(%r15), %rsi
	movsbl	%r12b, %edx
	callq	uECC_generate_random_int@PLT
	testl	%eax, %eax
	je	.LBB2_4
# %bb.2:
	movq	(%rsp,%rbx,8), %rbp
.LBB2_3:
	xorl	%eax, %eax
	testl	%r14d, %r14d
	sete	%al
	movq	(%rsp,%rax,8), %rdx
	movzwl	2(%r15), %eax
	incl	%eax
	movswl	%ax, %r8d
	leaq	112(%rsp), %r14
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rcx
	movq	%r15, %r9
	callq	EccPoint_mult@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r13d, %esi
	movq	%r14, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	EccPoint_isZero@PLT
	xorl	%ebp, %ebp
	testl	%eax, %eax
	sete	%bpl
.LBB2_4:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	%rax, 40(%rsp)
	#APP
	#NO_APP
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	#APP
	#NO_APP
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 24(%rsp)
	#APP
	#NO_APP
	movl	%ebp, %eax
	addq	$184, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	uECC_shared_secret, .Lfunc_end2-uECC_shared_secret
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
