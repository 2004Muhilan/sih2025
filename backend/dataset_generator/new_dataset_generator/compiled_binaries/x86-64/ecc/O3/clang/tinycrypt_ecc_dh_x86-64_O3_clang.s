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
	movq	%rdx, %r15
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	leaq	36(%rdx), %r13
	movl	$64, %r14d
	leaq	128(%rsp), %rbp
	leaq	32(%rsp), %rbx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	callq	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rbp, %rdi
	movl	$64, %esi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movswl	2(%r15), %eax
	leal	31(%rax), %ecx
	addl	$62, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	shrl	$5, %eax
	movsbl	%al, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	uECC_vli_mmod@PLT
	leaq	64(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	EccPoint_compute_public_key@PLT
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.1:                                #   in Loop: Header=BB1_2 Depth=1
	decl	%r14d
	jne	.LBB1_2
	jmp	.LBB1_6
.LBB1_5:
	movswl	2(%r15), %esi
	leal	7(%rsi), %eax
	addl	$14, %esi
	testl	%eax, %eax
	cmovnsl	%eax, %esi
	sarl	$3, %esi
	movq	8(%rsp), %rdi                   # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%rbx, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movsbl	1(%r15), %esi
	leaq	64(%rsp), %rdx
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdi
	callq	uECC_vli_nativeToBytes@PLT
	movsbq	1(%r15), %rsi
	addq	%rsi, %r14
	movsbq	(%r15), %rax
	leaq	(%rsp,%rax,4), %rdx
	addq	$64, %rdx
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	uECC_vli_nativeToBytes@PLT
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, 24(%rsp)
	#APP
	#NO_APP
	movl	$1, %r12d
.LBB1_6:
	movl	%r12d, %eax
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
	leaq	80(%rsp), %r14
	movq	%r14, (%rsp)
	leaq	48(%rsp), %r12
	movq	%r12, 8(%rsp)
	movsbq	(%rcx), %rbx
	movsbq	1(%rcx), %r13
	movswl	2(%rcx), %edx
	leal	7(%rdx), %eax
	addl	$14, %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$3, %edx
	movq	%r14, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	leaq	112(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	uECC_vli_bytesToNative@PLT
	leaq	(%rsp,%rbx,4), %rdi
	addq	$112, %rdi
	addq	%r13, %rbp
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	uECC_vli_bytesToNative@PLT
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	regularize_k@PLT
	movl	%eax, %r12d
	callq	uECC_get_rng@PLT
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB2_1
# %bb.2:
	movl	%r12d, %eax
	movq	(%rsp,%rax,8), %r14
	leaq	4(%r15), %rsi
	movsbl	%bl, %edx
	movq	%r14, %rdi
	callq	uECC_generate_random_int@PLT
	testl	%eax, %eax
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_1:
	xorl	%r14d, %r14d
.LBB2_3:
	xorl	%eax, %eax
	testl	%r12d, %r12d
	sete	%al
	movq	(%rsp,%rax,8), %rdx
	movzwl	2(%r15), %eax
	incl	%eax
	movswl	%ax, %r8d
	leaq	112(%rsp), %r12
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	EccPoint_mult@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r13d, %esi
	movq	%r12, %rdx
	callq	uECC_vli_nativeToBytes@PLT
	movq	%r12, %rdi
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
