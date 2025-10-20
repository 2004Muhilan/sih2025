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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, %rbp
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	%rdi, %r15
	leaq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 72(%rsp)
	movswl	2(%r9), %r13d
	leal	31(%r13), %eax
	leal	62(%r13), %r12d
	testl	%eax, %eax
	cmovnsl	%eax, %r12d
	movsbl	(%r9), %ebx
	movq	%rcx, %rdi
	movl	%ebx, %esi
	callq	uECC_vli_isZero@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.1:
	movl	%ebx, 12(%rsp)                  # 4-byte Spill
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	sarl	$5, %r12d
	leaq	36(%r14), %rdi
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movsbl	%r12b, %ebx
	movq	%rdi, %r12
	movq	%rbp, %rsi
	movl	%ebx, %edx
	callq	uECC_vli_cmp@PLT
	xorl	%ecx, %ecx
	cmpb	$1, %al
	jne	.LBB0_9
# %bb.2:
	leaq	80(%rsp), %rsi
	leaq	112(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r14, %rcx
	callq	regularize_k@PLT
	leaq	68(%r14), %rsi
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movq	64(%rsp,%rcx,8), %rdx
	incl	%r13d
	movswl	%r13w, %r8d
	leaq	144(%rsp), %r13
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	movq	%r14, %r9
	callq	EccPoint_mult@PLT
	movq	%r13, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	callq	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.LBB0_3
.LBB0_8:
	xorl	%ecx, %ecx
.LBB0_9:
	movl	%ecx, %eax
	addq	$216, %rsp
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
.LBB0_3:
	.cfi_def_cfa_offset 272
	movl	%ebx, %r13d
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %r14
	callq	uECC_get_rng@PLT
	leaq	80(%rsp), %rdi
	testq	%rax, %rax
	je	.LBB0_4
# %bb.7:
	movq	%r12, %rbx
	movq	%r12, %rsi
	movl	%r13d, %ebp
	movl	%r13d, %edx
	callq	uECC_generate_random_int@PLT
	testl	%eax, %eax
	movq	16(%rsp), %r13                  # 8-byte Reload
	jne	.LBB0_5
	jmp	.LBB0_8
.LBB0_4:
	movl	%r13d, %ebp
	movl	%r13d, %esi
	callq	uECC_vli_clear@PLT
	movl	$1, 80(%rsp)
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	%r12, %rbx
.LBB0_5:
	leaq	80(%rsp), %r12
	movq	%r14, %r15
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modMult@PLT
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	callq	uECC_vli_modInv@PLT
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modMult@PLT
	movq	32(%rsp), %r14                  # 8-byte Reload
	movsbl	1(%r14), %esi
	leaq	144(%rsp), %rdx
	movq	%r13, %rdi
	callq	uECC_vli_nativeToBytes@PLT
	movswl	2(%r14), %edx
	leal	7(%rdx), %eax
	addl	$14, %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$3, %edx
	movq	%r12, %rdi
	movq	48(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	movsbq	40(%rsp), %rax                  # 1-byte Folded Reload
	movl	$0, 108(%rsp,%rax,4)
	leaq	112(%rsp), %r13
	movq	%r13, %rdi
	leaq	144(%rsp), %rsi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	uECC_vli_set@PLT
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modMult@PLT
	movq	%r12, %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movl	28(%rsp), %edx                  # 4-byte Reload
	movq	%r14, %rcx
	callq	bits2int
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modAdd@PLT
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modMult@PLT
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	uECC_vli_numBits@PLT
	cwtl
	movsbl	1(%r14), %esi
	leal	(,%rsi,8), %ecx
	cmpl	%eax, %ecx
	movl	$0, %ecx
	jl	.LBB0_9
# %bb.6:
	movslq	%esi, %rax
	movq	16(%rsp), %rdi                  # 8-byte Reload
	addq	%rax, %rdi
	leaq	112(%rsp), %rdx
                                        # kill: def $esi killed $esi killed $rsi
	callq	uECC_vli_nativeToBytes@PLT
	movl	$1, %ecx
	jmp	.LBB0_9
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movswl	2(%rcx), %r13d
	leal	7(%r13), %eax
	leal	14(%r13), %ebp
	testl	%eax, %eax
	cmovnsl	%eax, %ebp
	movq	%rdi, %r14
	sarl	$3, %ebp
	leal	31(%r13), %r15d
	addl	$62, %r13d
	testl	%r15d, %r15d
	cmovsl	%r13d, %r15d
	sarl	$5, %r15d
	cmpl	%edx, %ebp
	cmovael	%edx, %ebp
	movsbl	%r15b, %r12d
	movl	%r12d, %esi
	callq	uECC_vli_clear@PLT
	movq	%r14, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movl	%ebp, %edx
	callq	uECC_vli_bytesToNative@PLT
	shll	$3, %ebp
	movswl	2(%rbx), %eax
	subl	%eax, %ebp
	jbe	.LBB1_5
# %bb.1:
	cmpl	$63, %r13d
	jb	.LBB1_4
# %bb.2:
	movl	%r15d, %eax
	leaq	(%r14,%rax,4), %rdx
	movl	$32, %eax
	subl	%ebp, %eax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rdx), %edi
	movl	%edi, %r8d
	movl	%ebp, %ecx
	shrl	%cl, %r8d
	orl	%esi, %r8d
	movl	%r8d, -4(%rdx)
	movl	%eax, %ecx
	shll	%cl, %edi
	leaq	-4(%rdx), %rcx
	movq	%rcx, %rdx
	movl	%edi, %esi
	cmpq	%r14, %rcx
	ja	.LBB1_3
.LBB1_4:
	addq	$36, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.LBB1_6
.LBB1_5:
	addq	$8, %rsp
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
.LBB1_6:
	.cfi_def_cfa_offset 64
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	addq	$8, %rsp
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
	jmp	uECC_vli_sub@PLT                # TAILCALL
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	leaq	36(%r8), %r13
	movl	$64, %r15d
	leaq	64(%rsp), %rbp
                                        # implicit-def: $r14d
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	callq	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	movq	%rbp, %rdi
	movl	$64, %esi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB2_2
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	movswl	2(%rbx), %eax
	leal	31(%rax), %ecx
	addl	$62, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	shrl	$5, %eax
	movsbl	%al, %ecx
	leaq	32(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	uECC_vli_mmod@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	4(%rsp), %edx                   # 4-byte Reload
	movq	%r12, %rcx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	%rbx, %r9
	callq	uECC_sign_with_k
	testl	%eax, %eax
	sete	%al
	movl	$1, %ecx
	cmovnel	%ecx, %r14d
	testb	%al, %al
	jne	.LBB2_3
	jmp	.LBB2_8
	.p2align	4, 0x90
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB2_8
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	decl	%r15d
	jne	.LBB2_1
# %bb.4:
	xorl	%r14d, %r14d
.LBB2_8:
	movl	%r14d, %eax
	addq	$136, %rsp
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
	subq	$536, %rsp                      # imm = 0x218
	.cfi_def_cfa_offset 592
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %rbp
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, %r12
	movsbl	(%r8), %r14d
	movswl	2(%r8), %r15d
	leal	31(%r15), %eax
	addl	$62, %r15d
	testl	%eax, %eax
	cmovnsl	%eax, %r15d
	sarl	$5, %r15d
	movsbq	%r15b, %rbx
	movl	$0, 108(%rsp,%rbx,4)
	movl	$0, 172(%rsp,%rbx,4)
	movl	$0, 140(%rsp,%rbx,4)
	movsbl	1(%r8), %edx
	leaq	368(%rsp), %rdi
	movq	%r12, %rsi
	callq	uECC_vli_bytesToNative@PLT
	movl	%r14d, 4(%rsp)                  # 4-byte Spill
	movslq	%r14d, %r14
	leaq	(%rsp,%r14,4), %rdi
	addq	$368, %rdi                      # imm = 0x170
	movsbq	1(%r13), %rdx
	addq	%rdx, %r12
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	movsbl	1(%r13), %edx
	leaq	176(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	uECC_vli_bytesToNative@PLT
	movsbq	1(%r13), %rdx
	addq	%rdx, %rbp
	leaq	144(%rsp), %rdi
	movq	%rbp, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	movq	%r12, %rdi
	movq	%r14, %r12
	movl	%r12d, %esi
	callq	uECC_vli_isZero@PLT
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB3_12
# %bb.1:
	leaq	144(%rsp), %rdi
	movl	4(%rsp), %esi                   # 4-byte Reload
	callq	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.LBB3_12
# %bb.2:
	movq	%r13, %r14
	addq	$36, %r13
	movsbl	%r15b, %r15d
	leaq	176(%rsp), %rsi
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.LBB3_12
# %bb.3:
	leaq	144(%rsp), %rsi
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.LBB3_12
# %bb.4:
	decq	%rbx
	leaq	48(%rsp), %rdi
	leaq	144(%rsp), %rsi
	movq	%rdi, %rbp
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	uECC_vli_modInv@PLT
	movl	$0, 304(%rsp,%rbx,4)
	leaq	304(%rsp), %rbx
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	8(%rsp), %edx                   # 4-byte Reload
	movq	%r14, %rcx
	callq	bits2int
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	movl	%r15d, %r8d
	callq	uECC_vli_modMult@PLT
	leaq	336(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	%r13, %rcx
	movl	%r15d, %r8d
	callq	uECC_vli_modMult@PLT
	leaq	464(%rsp), %r13
	movq	%r13, %rdi
	leaq	368(%rsp), %rsi
	movl	%r15d, %ebx
	movl	4(%rsp), %r15d                  # 4-byte Reload
	movl	%r15d, %edx
	callq	uECC_vli_set@PLT
	movq	%r12, %rax
	leaq	(%rsp,%r12,4), %r12
	addq	$464, %r12                      # imm = 0x1D0
	movq	%rax, %rbp
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%r15d, %edx
	callq	uECC_vli_set@PLT
	leaq	68(%r14), %rsi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	leaq	240(%rsp), %rdi
	movl	%r15d, %edx
	callq	uECC_vli_set@PLT
	leaq	(%r14,%rbp,4), %rsi
	addq	$68, %rsi
	leaq	208(%rsp), %rdi
	movl	%r15d, %edx
	callq	uECC_vli_set@PLT
	leaq	4(%r14), %rbp
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	leaq	240(%rsp), %rdx
	movq	%rbp, %rcx
	movl	%r15d, %r8d
	callq	uECC_vli_modSub@PLT
	leaq	240(%rsp), %rdi
	leaq	208(%rsp), %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	XYcZ_add@PLT
	leaq	48(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rdi, %r13
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	callq	uECC_vli_modInv@PLT
	leaq	464(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rcx
	callq	apply_z@PLT
	movq	$0, 80(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 88(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	%rbp, 104(%rsp)
	leaq	304(%rsp), %r14
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	uECC_vli_numBits@PLT
	movl	%eax, %ebp
	leaq	336(%rsp), %r12
	movq	%r12, %rdi
	movl	%ebx, 24(%rsp)                  # 4-byte Spill
	movl	%ebx, %esi
	callq	uECC_vli_numBits@PLT
	movl	%eax, %r13d
	cmpw	%ax, %bp
	cmovgl	%ebp, %r13d
	movl	%r13d, %eax
	decl	%eax
	movswl	%ax, %ebp
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	uECC_vli_testBit@PLT
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setne	%bl
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	uECC_vli_testBit@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	shll	$4, %ecx
	leal	(%rcx,%rbx,8), %eax
	movq	80(%rsp,%rax), %r12
	leaq	112(%rsp), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	uECC_vli_set@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%r12,%rax,4), %rsi
	leaq	272(%rsp), %rdi
	movl	%r15d, %edx
	callq	uECC_vli_set@PLT
	leaq	48(%rsp), %rdi
	movl	%r15d, %esi
	callq	uECC_vli_clear@PLT
	movl	$1, 48(%rsp)
	movl	%r13d, %eax
	addw	$-2, %ax
	js	.LBB3_9
# %bb.5:
	leal	-1(%r13), %ebp
	leaq	112(%rsp), %r15
	leaq	272(%rsp), %r13
	leaq	48(%rsp), %r14
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_6 Depth=1
	decl	%ebp
	testw	%bp, %bp
	leaq	272(%rsp), %r13
	jle	.LBB3_9
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	leal	-1(%rbp), %ebx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rcx
	callq	*168(%r13)
	movswl	%bx, %r12d
	leaq	304(%rsp), %rdi
	movl	%r12d, %esi
	callq	uECC_vli_testBit@PLT
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setne	%bl
	leaq	336(%rsp), %rdi
	movl	%r12d, %esi
	callq	uECC_vli_testBit@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	shll	$4, %ecx
	leal	(%rcx,%rbx,8), %eax
	movq	80(%rsp,%rax), %r12
	testq	%r12, %r12
	je	.LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=1
	leaq	240(%rsp), %rdi
	movq	%r12, %rsi
	movl	4(%rsp), %ebx                   # 4-byte Reload
	movl	%ebx, %edx
	callq	uECC_vli_set@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%r12,%rax,4), %rsi
	leaq	208(%rsp), %rdi
	movl	%ebx, %edx
	callq	uECC_vli_set@PLT
	leaq	240(%rsp), %r12
	movq	%r12, %rdi
	leaq	208(%rsp), %rsi
	movq	%r14, %rdx
	movq	%r13, %rcx
	callq	apply_z@PLT
	leaq	432(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ebx, %r8d
	callq	uECC_vli_modSub@PLT
	movq	%r12, %rdi
	leaq	208(%rsp), %rsi
	movq	%r15, %rdx
	leaq	272(%rsp), %rcx
	movq	%r13, %r8
	callq	XYcZ_add@PLT
	movq	%r14, %rdi
	movq	%r14, %rsi
	leaq	432(%rsp), %rdx
	movq	%r13, %rcx
	callq	uECC_vli_modMult_fast@PLT
	jmp	.LBB3_8
.LBB3_9:
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	4(%rsp), %ecx                   # 4-byte Reload
	callq	uECC_vli_modInv@PLT
	leaq	112(%rsp), %r12
	leaq	272(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	callq	apply_z@PLT
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	24(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	je	.LBB3_11
# %bb.10:
	leaq	112(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	callq	uECC_vli_sub@PLT
.LBB3_11:
	leaq	112(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movl	4(%rsp), %edx                   # 4-byte Reload
	callq	uECC_vli_equal@PLT
	xorl	%ebp, %ebp
	testl	%eax, %eax
	sete	%bpl
.LBB3_12:
	movl	%ebp, %eax
	addq	$536, %rsp                      # imm = 0x218
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
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
