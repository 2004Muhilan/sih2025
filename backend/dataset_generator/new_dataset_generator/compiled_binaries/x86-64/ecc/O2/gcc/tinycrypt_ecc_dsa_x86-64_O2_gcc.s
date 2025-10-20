	.file	"tinycrypt_ecc_dsa.c"
	.text
	.p2align 4
	.type	bits2int, @function
bits2int:
.LFB0:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movswl	2(%rcx), %eax
	movl	%eax, %ecx
	leal	62(%rax), %r15d
	leal	14(%rax), %ebp
	addl	$31, %ecx
	cmovns	%ecx, %r15d
	sarl	$5, %r15d
	addl	$7, %eax
	cmovns	%eax, %ebp
	movsbl	%r15b, %ebx
	movl	%ebx, %esi
	sarl	$3, %ebp
	cmpl	%edx, %ebp
	cmova	%edx, %ebp
	call	uECC_vli_clear@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	movl	%ebp, %edx
	call	uECC_vli_bytesToNative@PLT
	movswl	2(%r13), %eax
	leal	0(,%rbp,8), %esi
	cmpl	%esi, %eax
	jnb	.L1
	movl	%r15d, %r15d
	subl	%eax, %esi
	movl	$32, %r9d
	xorl	%r8d, %r8d
	leaq	(%r12,%r15,4), %rax
	subl	%esi, %r9d
	cmpq	%rax, %r12
	jnb	.L8
	.p2align 4,,10
	.p2align 3
.L7:
	movl	-4(%rax), %edi
	movl	%esi, %ecx
	subq	$4, %rax
	movl	%edi, %edx
	shrl	%cl, %edx
	movl	%r9d, %ecx
	orl	%r8d, %edx
	sall	%cl, %edi
	movl	%edx, (%rax)
	movl	%edi, %r8d
	cmpq	%rax, %r12
	jb	.L7
.L8:
	addq	$36, %r13
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.L12
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	movl	%ebx, %ecx
	movq	%r13, %rdx
	movq	%r12, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%r12, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	uECC_vli_sub@PLT
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.p2align 4
	.globl	uECC_sign_with_k
	.type	uECC_sign_with_k, @function
uECC_sign_with_k:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r9, %rbx
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movsbl	(%r9), %r14d
	movzwl	2(%r9), %r15d
	movq	%rdi, 16(%rsp)
	leaq	64(%rsp), %r13
	movq	%rcx, %rdi
	movq	%rsi, 24(%rsp)
	movq	%r13, %xmm0
	movl	%r14d, %esi
	movl	%edx, 36(%rsp)
	movq	%r8, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	movhps	(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.L14
.L16:
	xorl	%eax, %eax
.L13:
	movq	200(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L24
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	movswl	%r15w, %eax
	movq	%rbp, %rsi
	leal	62(%rax), %r12d
	addl	$31, %eax
	cmovns	%eax, %r12d
	leaq	36(%rbx), %rax
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	sarl	$5, %r12d
	movsbl	%r12b, %r12d
	movl	%r12d, %edx
	call	uECC_vli_cmp@PLT
	cmpb	$1, %al
	jne	.L16
	movq	(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	regularize_k@PLT
	leal	1(%r15), %r8d
	leaq	68(%rbx), %rsi
	movq	%rbx, %r9
	testl	%eax, %eax
	leaq	128(%rsp), %r15
	movswl	%r8w, %r8d
	sete	%al
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	movzbl	%al, %eax
	movq	48(%rsp,%rax,8), %rdx
	call	EccPoint_mult@PLT
	movl	%r14d, %esi
	movq	%r15, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.L16
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L25
	movq	40(%rsp), %rsi
	movl	%r12d, %edx
	movq	%r13, %rdi
	call	uECC_generate_random_int@PLT
	testl	%eax, %eax
	je	.L16
.L18:
	movq	40(%rsp), %rcx
	movl	%r12d, %r8d
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult@PLT
	movq	40(%rsp), %rdx
	movl	%r12d, %ecx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modInv@PLT
	movq	40(%rsp), %rcx
	movl	%r12d, %r8d
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult@PLT
	movsbl	1(%rbx), %esi
	movq	8(%rsp), %rdi
	movq	%r15, %rdx
	call	uECC_vli_nativeToBytes@PLT
	movswl	2(%rbx), %eax
	movq	16(%rsp), %rsi
	movq	%r13, %rdi
	leal	14(%rax), %edx
	addl	$7, %eax
	cmovns	%eax, %edx
	sarl	$3, %edx
	call	uECC_vli_bytesToNative@PLT
	movl	%r14d, %edx
	movq	(%rsp), %r14
	movq	%r15, %rsi
	leal	-1(%r12), %eax
	cltq
	movq	%r14, %rdi
	movl	$0, 96(%rsp,%rax,4)
	call	uECC_vli_set@PLT
	movq	40(%rsp), %r15
	movl	%r12d, %r8d
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	movq	%r15, %rcx
	call	uECC_vli_modMult@PLT
	movl	36(%rsp), %edx
	movq	%rbx, %rcx
	movq	%r13, %rdi
	movq	24(%rsp), %rsi
	call	bits2int
	movl	%r12d, %r8d
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modAdd@PLT
	movq	%r15, %rcx
	movl	%r12d, %r8d
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modMult@PLT
	movl	%r12d, %esi
	movq	%r14, %rdi
	call	uECC_vli_numBits@PLT
	movsbq	1(%rbx), %rsi
	cwtl
	leal	0(,%rsi,8), %ecx
	cmpl	%ecx, %eax
	jg	.L16
	movq	8(%rsp), %rdi
	movq	%r14, %rdx
	addq	%rsi, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movl	$1, %eax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L25:
	movl	%r12d, %esi
	movq	%r13, %rdi
	call	uECC_vli_clear@PLT
	movl	$1, 64(%rsp)
	jmp	.L18
.L24:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.p2align 4
	.globl	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$64, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movl	%edx, 4(%rsp)
	leaq	48(%rsp), %r12
	movq	%rcx, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$64, %esi
	movq	%r12, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L27
	movswl	2(%rbx), %eax
	leaq	16(%rsp), %r13
	leaq	36(%rbx), %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	leal	62(%rax), %ecx
	addl	$31, %eax
	cmovns	%eax, %ecx
	sarl	$5, %ecx
	movsbl	%cl, %ecx
	call	uECC_vli_mmod@PLT
	movq	8(%rsp), %r8
	movq	%rbx, %r9
	movq	%r13, %rcx
	movl	4(%rsp), %edx
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	uECC_sign_with_k
	testl	%eax, %eax
	jne	.L31
	subl	$1, %ebp
	je	.L27
.L29:
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	jne	.L40
.L27:
	xorl	%eax, %eax
.L26:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L41
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	movl	$1, %eax
	jmp	.L26
.L41:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.p2align 4
	.globl	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$616, %rsp
	.cfi_def_cfa_offset 672
	movswl	2(%r8), %ecx
	movsbl	(%r8), %r14d
	movq	%rsi, 32(%rsp)
	leaq	528(%rsp), %r15
	movq	%rdi, %rsi
	movl	%edx, 40(%rsp)
	movq	%r15, %rdi
	movq	%fs:40, %rdx
	movq	%rdx, 600(%rsp)
	xorl	%edx, %edx
	leal	62(%rcx), %edx
	addl	$31, %ecx
	cmovns	%ecx, %edx
	sarl	$5, %edx
	movsbl	%dl, %eax
	movsbl	1(%rbx), %edx
	leal	-1(%rax), %r8d
	movl	%eax, 12(%rsp)
	movslq	%r8d, %r12
	movl	$0, 208(%rsp,%r12,4)
	movl	$0, 400(%rsp,%r12,4)
	movl	$0, 432(%rsp,%r12,4)
	call	uECC_vli_bytesToNative@PLT
	movsbq	1(%rbx), %rdx
	movsbq	%r14b, %rcx
	leaq	0(,%rcx,4), %rax
	movsbl	%dl, %ecx
	leaq	(%r15,%rax), %rdi
	leaq	0(%r13,%rdx), %rsi
	movq	%rax, 16(%rsp)
	movl	%ecx, %edx
	movq	%rdi, 24(%rsp)
	leaq	400(%rsp), %r13
	call	uECC_vli_bytesToNative@PLT
	movsbl	1(%rbx), %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbq	1(%rbx), %rdx
	leaq	0(%rbp,%rdx), %rsi
	leaq	432(%rsp), %rbp
	movq	%rbp, %rdi
	call	uECC_vli_bytesToNative@PLT
	movl	%r14d, %esi
	movq	%r13, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.L43
.L45:
	xorl	%eax, %eax
.L42:
	movq	600(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L59
	addq	$616, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
	movl	%r14d, %esi
	movq	%rbp, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.L45
	leaq	36(%rbx), %rax
	movl	12(%rsp), %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.L45
	movl	12(%rsp), %edx
	movq	48(%rsp), %rdi
	movq	%rbp, %rsi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.L45
	leaq	176(%rsp), %rax
	movl	12(%rsp), %ecx
	movq	48(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	uECC_vli_modInv@PLT
	leaq	112(%rsp), %rax
	movl	40(%rsp), %edx
	movq	%rbx, %rcx
	movq	32(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
	movl	$0, 112(%rsp,%r12,4)
	call	bits2int
	movq	48(%rsp), %r12
	movq	56(%rsp), %rsi
	movq	%rbp, %rdx
	movl	12(%rsp), %r8d
	movq	%r12, %rcx
	movq	%rsi, %rdi
	call	uECC_vli_modMult@PLT
	movl	12(%rsp), %r8d
	movq	%r12, %rcx
	movq	%rbp, %rdx
	leaq	144(%rsp), %rax
	movq	%rbp, 96(%rsp)
	movq	%r13, %rsi
	leaq	464(%rsp), %rbp
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	call	uECC_vli_modMult@PLT
	movq	%r15, %rsi
	movq	%rbp, %rdi
	movl	%r14d, %edx
	call	uECC_vli_set@PLT
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rsi
	movl	%r14d, %edx
	leaq	0(%rbp,%rcx), %r12
	movq	%r12, %rdi
	call	uECC_vli_set@PLT
	leaq	272(%rsp), %rcx
	leaq	68(%rbx), %r9
	movl	%r14d, %edx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	movq	%rcx, 80(%rsp)
	movq	%r9, 24(%rsp)
	call	uECC_vli_set@PLT
	movq	24(%rsp), %r9
	movq	16(%rsp), %rsi
	movl	%r14d, %edx
	leaq	304(%rsp), %r10
	movq	%r10, %rdi
	addq	%r9, %rsi
	movq	%r10, 32(%rsp)
	call	uECC_vli_set@PLT
	leaq	4(%rbx), %r11
	movq	%rbp, %rsi
	movl	%r14d, %r8d
	movq	80(%rsp), %rdx
	movq	96(%rsp), %rdi
	movq	%r11, %rcx
	movq	%r11, 88(%rsp)
	call	uECC_vli_modSub@PLT
	movq	32(%rsp), %rsi
	movq	%rbx, %r8
	movq	%r12, %rcx
	movq	80(%rsp), %rdi
	movq	%rbp, %rdx
	call	XYcZ_add@PLT
	movq	96(%rsp), %rsi
	movq	88(%rsp), %rdx
	movl	%r14d, %ecx
	movq	%rsi, %rdi
	call	uECC_vli_modInv@PLT
	movq	96(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	apply_z@PLT
	movq	24(%rsp), %r9
	movq	%r15, 384(%rsp)
	movl	12(%rsp), %r15d
	movq	64(%rsp), %rdi
	movq	%rbp, 392(%rsp)
	movq	%r9, 376(%rsp)
	movq	$0, 368(%rsp)
	movl	%r15d, %esi
	call	uECC_vli_numBits@PLT
	movq	56(%rsp), %r12
	movl	%r15d, %esi
	movl	%eax, %ebp
	movq	%r12, %rdi
	call	uECC_vli_numBits@PLT
	movq	%r12, %rdi
	cmpw	%ax, %bp
	cmovl	%eax, %ebp
	leal	-1(%rbp), %eax
	movswl	%ax, %r15d
	movl	%r15d, %esi
	call	uECC_vli_testBit@PLT
	movq	64(%rsp), %rdi
	movl	%r15d, %esi
	leaq	240(%rsp), %r15
	movl	%eax, %r12d
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	setne	%al
	xorl	%edx, %edx
	movzbl	%al, %eax
	addl	%eax, %eax
	testl	%r12d, %r12d
	setne	%dl
	orl	%edx, %eax
	movl	%r14d, %edx
	cltq
	movq	368(%rsp,%rax,8), %r12
	leaq	208(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	movq	%r12, %rsi
	call	uECC_vli_set@PLT
	movq	16(%rsp), %rsi
	movl	%r14d, %edx
	movq	%r15, %rdi
	addq	%r12, %rsi
	call	uECC_vli_set@PLT
	movq	96(%rsp), %r12
	movl	%r14d, %esi
	movq	%r12, %rdi
	call	uECC_vli_clear@PLT
	movl	$1, 176(%rsp)
	subw	$2, %bp
	js	.L46
	leaq	336(%rsp), %rax
	movq	%r15, 40(%rsp)
	movzwl	%bp, %ebp
	movq	%rax, 72(%rsp)
	movq	%r13, 104(%rsp)
	movq	80(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L48:
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	40(%rsp), %rsi
	movq	24(%rsp), %rdi
	call	*168(%rbx)
	movq	56(%rsp), %rdi
	movl	%ebp, %esi
	call	uECC_vli_testBit@PLT
	movq	64(%rsp), %rdi
	movl	%ebp, %esi
	movl	%eax, %r15d
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	setne	%al
	xorl	%edx, %edx
	movzbl	%al, %eax
	addl	%eax, %eax
	testl	%r15d, %r15d
	setne	%dl
	orl	%edx, %eax
	movq	368(%rsp,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.L47
	movl	%r14d, %edx
	movq	%r13, %rdi
	movq	%rsi, 80(%rsp)
	call	uECC_vli_set@PLT
	movq	16(%rsp), %rax
	movq	32(%rsp), %r15
	movl	%r14d, %edx
	movq	80(%rsp), %rsi
	movq	%r15, %rdi
	addq	%rax, %rsi
	call	uECC_vli_set@PLT
	movq	%r15, %rsi
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movq	%r13, %rdi
	movq	%r15, 32(%rsp)
	call	apply_z@PLT
	movq	24(%rsp), %r15
	movl	%r14d, %r8d
	movq	%r13, %rdx
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rdi
	movq	%r15, %rsi
	call	uECC_vli_modSub@PLT
	movq	40(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r13, %rdi
	movq	32(%rsp), %rsi
	movq	%rbx, %r8
	call	XYcZ_add@PLT
	movq	72(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	uECC_vli_modMult_fast@PLT
.L47:
	subl	$1, %ebp
	testw	%bp, %bp
	jns	.L48
	movq	104(%rsp), %r13
	movq	40(%rsp), %r15
.L46:
	movq	96(%rsp), %rbp
	movq	88(%rsp), %rdx
	movl	%r14d, %ecx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modInv@PLT
	movq	%rbx, %rcx
	movq	24(%rsp), %rbx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	apply_z@PLT
	movl	12(%rsp), %ebp
	movq	48(%rsp), %r15
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movq	%r15, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	je	.L49
	movl	%ebp, %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_sub@PLT
.L49:
	movq	24(%rsp), %rdi
	movl	%r14d, %edx
	movq	%r13, %rsi
	call	uECC_vli_equal@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L42
.L59:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
