	.text
	.file	"tinycrypt_ecc_dsa.c"
	.globl	uECC_sign_with_k                # -- Begin function uECC_sign_with_k
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, %r15
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, %r12
	leaq	96(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	movswl	2(%r9), %r13d
	leal	31(%r13), %eax
	leal	62(%r13), %ebx
	testl	%eax, %eax
	cmovnsl	%eax, %ebx
	movsbl	(%r9), %ebp
	movq	%rcx, %rdi
	movl	%ebp, %esi
	callq	uECC_vli_isZero@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.1:
	movl	%ebp, 8(%rsp)                   # 4-byte Spill
	movq	%r12, 32(%rsp)                  # 8-byte Spill
	sarl	$5, %ebx
	leaq	36(%r14), %r12
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movsbl	%bl, %ebx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	uECC_vli_cmp@PLT
	xorl	%ecx, %ecx
	cmpb	$1, %al
	jne	.LBB0_9
# %bb.2:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	regularize_k@PLT
	leaq	68(%r14), %rsi
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movq	48(%rsp,%rcx,8), %rdx
	incl	%r13d
	movswl	%r13w, %r8d
	leaq	128(%rsp), %r13
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	movq	%r14, %r9
	callq	EccPoint_mult@PLT
	movq	%r13, %rdi
	movl	8(%rsp), %esi                   # 4-byte Reload
	callq	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.LBB0_4
.LBB0_3:
	xorl	%ecx, %ecx
.LBB0_9:
	movl	%ecx, %eax
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
.LBB0_4:
	.cfi_def_cfa_offset 256
	callq	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.LBB0_5
# %bb.6:
	leaq	96(%rsp), %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	uECC_generate_random_int@PLT
	testl	%eax, %eax
	jne	.LBB0_7
	jmp	.LBB0_3
.LBB0_5:
	leaq	96(%rsp), %r13
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	uECC_vli_clear@PLT
	movl	$1, (%r13)
.LBB0_7:
	leaq	96(%rsp), %rbp
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	uECC_vli_modMult@PLT
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	uECC_vli_modInv@PLT
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	uECC_vli_modMult@PLT
	movsbl	1(%r14), %esi
	leaq	128(%rsp), %rdx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	uECC_vli_nativeToBytes@PLT
	movswl	2(%r14), %edx
	leal	7(%rdx), %eax
	addl	$14, %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$3, %edx
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	movsbq	24(%rsp), %rax                  # 1-byte Folded Reload
	movl	$0, 60(%rsp,%rax,4)
	leaq	64(%rsp), %r13
	movq	%r13, %rdi
	leaq	128(%rsp), %rsi
	movl	8(%rsp), %edx                   # 4-byte Reload
	callq	uECC_vli_set@PLT
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	uECC_vli_modMult@PLT
	movq	%rbp, %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	%r14, %rcx
	callq	bits2int
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	uECC_vli_modAdd@PLT
	movq	%r13, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	uECC_vli_modMult@PLT
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	uECC_vli_numBits@PLT
	cwtl
	movsbl	1(%r14), %esi
	leal	(,%rsi,8), %ecx
	cmpl	%eax, %ecx
	movl	$0, %ecx
	jl	.LBB0_9
# %bb.8:
	movslq	%esi, %rax
	movq	16(%rsp), %rdi                  # 8-byte Reload
	addq	%rax, %rdi
	leaq	64(%rsp), %rdx
                                        # kill: def $esi killed $esi killed $rsi
	callq	uECC_vli_nativeToBytes@PLT
	movl	$1, %ecx
	jmp	.LBB0_9
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cfi_endproc
                                        # -- End function
	.type	bits2int,@function              # -- Begin function bits2int
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
	leaq	64(%rsp), %r14
	xorl	%ebp, %ebp
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	callq	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rdi
	movl	$64, %esi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movswl	2(%rbx), %eax
	leal	31(%rax), %ecx
	addl	$62, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	shrl	$5, %eax
	movsbl	%al, %ecx
	movq	%r14, %rsi
	leaq	32(%rsp), %r12
	movq	%r12, %rdi
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
	jne	.LBB2_5
# %bb.1:                                #   in Loop: Header=BB2_2 Depth=1
	decl	%r15d
	jne	.LBB2_2
	jmp	.LBB2_6
.LBB2_5:
	movl	$1, %ebp
.LBB2_6:
	movl	%ebp, %eax
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
	movq	%r8, %r14
	movq	%rcx, %r12
	movl	%edx, 32(%rsp)                  # 4-byte Spill
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	movswl	2(%r8), %r13d
	leal	31(%r13), %eax
	addl	$62, %r13d
	testl	%eax, %eax
	cmovnsl	%eax, %r13d
	movsbl	(%r8), %r15d
	sarl	$5, %r13d
	movsbq	%r13b, %rbp
	xorl	%eax, %eax
	movl	%eax, 108(%rsp,%rbp,4)
	movl	%eax, 172(%rsp,%rbp,4)
	movl	%eax, 140(%rsp,%rbp,4)
	movsbl	1(%r8), %edx
	leaq	368(%rsp), %rdi
	movq	%rbx, %rsi
	callq	uECC_vli_bytesToNative@PLT
	movl	%r15d, 12(%rsp)                 # 4-byte Spill
	movslq	%r15d, %r15
	leaq	(%rsp,%r15,4), %rdi
	addq	$368, %rdi                      # imm = 0x170
	movsbq	1(%r14), %rdx
	addq	%rdx, %rbx
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	movsbl	1(%r14), %edx
	leaq	176(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	uECC_vli_bytesToNative@PLT
	movsbq	1(%r14), %rdx
	addq	%rdx, %r12
	leaq	144(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r15, %r12
                                        # kill: def $edx killed $edx killed $rdx
	callq	uECC_vli_bytesToNative@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.LBB3_1
# %bb.2:
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%r14, (%rsp)                    # 8-byte Spill
	leaq	144(%rsp), %rdi
	movl	12(%rsp), %r14d                 # 4-byte Reload
	movl	%r14d, %esi
	callq	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.LBB3_1
# %bb.3:
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	36(%rax), %r15
	movsbl	%r13b, %r13d
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.LBB3_1
# %bb.4:
	leaq	144(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	movl	$0, %ecx
	jne	.LBB3_13
# %bb.5:
	decq	%rbp
	leaq	48(%rsp), %rdi
	leaq	144(%rsp), %rsi
	movq	%r15, %rdx
	movl	%r13d, %ecx
	callq	uECC_vli_modInv@PLT
	movl	$0, 272(%rsp,%rbp,4)
	leaq	272(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	32(%rsp), %edx                  # 4-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	callq	bits2int
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	leaq	48(%rsp), %rbx
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modMult@PLT
	leaq	336(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movq	%r15, %rcx
	movl	%r13d, %r8d
	callq	uECC_vli_modMult@PLT
	leaq	464(%rsp), %rdi
	leaq	368(%rsp), %rsi
	movl	%r14d, %edx
	callq	uECC_vli_set@PLT
	movl	%r14d, %ebp
	movq	%r12, %rax
	leaq	(%rsp,%r12,4), %r12
	addq	$464, %r12                      # imm = 0x1D0
	movq	%rax, %rbx
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%r14d, %edx
	callq	uECC_vli_set@PLT
	movl	%r13d, %r15d
	movq	(%rsp), %r14                    # 8-byte Reload
	leaq	68(%r14), %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	leaq	240(%rsp), %rdi
	movl	%ebp, %edx
	callq	uECC_vli_set@PLT
	leaq	(%r14,%rbx,4), %rsi
	addq	$68, %rsi
	leaq	208(%rsp), %rdi
	movl	%ebp, %edx
	callq	uECC_vli_set@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	4(%rax), %rbx
	leaq	48(%rsp), %rdi
	leaq	464(%rsp), %r13
	movq	%r13, %rsi
	leaq	240(%rsp), %r14
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	uECC_vli_modSub@PLT
	movq	%r14, %rdi
	leaq	208(%rsp), %rsi
	movq	(%rsp), %r14                    # 8-byte Reload
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	XYcZ_add@PLT
	leaq	48(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rdi, %r13
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	callq	uECC_vli_modInv@PLT
	leaq	464(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	apply_z@PLT
	movq	$0, 80(%rsp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 88(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	%rbx, 104(%rsp)
	leaq	272(%rsp), %r14
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	uECC_vli_numBits@PLT
	movl	%eax, %ebx
	leaq	336(%rsp), %r12
	movq	%r12, %rdi
	movl	%r15d, 16(%rsp)                 # 4-byte Spill
	movl	%r15d, %esi
	callq	uECC_vli_numBits@PLT
	movl	%eax, %r13d
	cmpw	%ax, %bx
	cmovgl	%ebx, %r13d
	movl	%r13d, %eax
	decl	%eax
	movswl	%ax, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	uECC_vli_testBit@PLT
	xorl	%r15d, %r15d
	testl	%eax, %eax
	setne	%r15b
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	uECC_vli_testBit@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	shll	$4, %ecx
	leal	(%rcx,%r15,8), %eax
	movq	80(%rsp,%rax), %rbx
	leaq	112(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	uECC_vli_set@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rbx,%rax,4), %rsi
	leaq	304(%rsp), %rdi
	movl	%ebp, %edx
	callq	uECC_vli_set@PLT
	leaq	48(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	uECC_vli_clear@PLT
	movl	$1, (%rbx)
	movl	%r13d, %eax
	addw	$-2, %ax
	js	.LBB3_10
# %bb.6:
	leal	-1(%r13), %r12d
	leaq	112(%rsp), %r15
	leaq	304(%rsp), %rbp
	leaq	48(%rsp), %r13
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	leal	-1(%r12), %ebx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	callq	*168(%rcx)
	movswl	%bx, %ebx
	leaq	272(%rsp), %rdi
	movl	%ebx, %esi
	callq	uECC_vli_testBit@PLT
	movq	%r13, %r14
	movq	%rbp, %r13
	movq	%r15, %rbp
	xorl	%r15d, %r15d
	testl	%eax, %eax
	setne	%r15b
	leaq	336(%rsp), %rdi
	movl	%ebx, %esi
	callq	uECC_vli_testBit@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	shll	$4, %ecx
	leal	(%rcx,%r15,8), %eax
	movq	%rbp, %r15
	movq	%r13, %rbp
	movq	%r14, %r13
	movq	80(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	leaq	240(%rsp), %rdi
	movq	%rbx, %rsi
	movl	12(%rsp), %r14d                 # 4-byte Reload
	movl	%r14d, %edx
	callq	uECC_vli_set@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%rbx,%rax,4), %rsi
	leaq	208(%rsp), %rdi
	movl	%r14d, %edx
	callq	uECC_vli_set@PLT
	leaq	240(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	208(%rsp), %rsi
	movq	%r13, %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	callq	apply_z@PLT
	leaq	432(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%r14d, %r8d
	movq	(%rsp), %rbx                    # 8-byte Reload
	callq	uECC_vli_modSub@PLT
	leaq	240(%rsp), %rdi
	leaq	208(%rsp), %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movq	%rbx, %r8
	callq	XYcZ_add@PLT
	movq	%r13, %rdi
	movq	%r13, %rsi
	leaq	432(%rsp), %rdx
	movq	%rbx, %rcx
	callq	uECC_vli_modMult_fast@PLT
.LBB3_9:                                #   in Loop: Header=BB3_7 Depth=1
	decl	%r12d
	testw	%r12w, %r12w
	jg	.LBB3_7
.LBB3_10:
	leaq	48(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	12(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, %ecx
	callq	uECC_vli_modInv@PLT
	leaq	112(%rsp), %r15
	leaq	304(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	callq	apply_z@PLT
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	16(%rsp), %r14d                 # 4-byte Reload
	movl	%r14d, %edx
	callq	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	je	.LBB3_12
# %bb.11:
	leaq	112(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	uECC_vli_sub@PLT
.LBB3_12:
	leaq	112(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movl	%ebp, %edx
	callq	uECC_vli_equal@PLT
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	jmp	.LBB3_13
.LBB3_1:
	xorl	%ecx, %ecx
.LBB3_13:
	movl	%ecx, %eax
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
