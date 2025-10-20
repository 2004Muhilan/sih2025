	.file	"tinycrypt_ecc_dsa.c"
	.text
	.type	bits2int, @function
bits2int:
.LFB0:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	movl	%edx, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$32, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	movl	$8, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movswl	2(%rcx), %ebx
	leal	31(%rbx), %eax
	cltd
	idivl	%r14d
	movl	%eax, %r13d
	leal	7(%rbx), %eax
	movl	%esi, %ebx
	cltd
	idivl	%edi
	movq	%r12, %rdi
	cmpl	%esi, %eax
	cmovbe	%eax, %ebx
	movsbl	%r13b, %eax
	movl	%eax, %esi
	movl	%eax, 12(%rsp)
	call	uECC_vli_clear@PLT
	movl	%ebx, %edx
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	uECC_vli_bytesToNative@PLT
	movswl	2(%rbp), %eax
	sall	$3, %ebx
	cmpl	%ebx, %eax
	jnb	.L1
	subl	%eax, %ebx
	movl	%r13d, %r13d
	movl	%r14d, %edx
	xorl	%esi, %esi
	leaq	(%r12,%r13,4), %rax
	subl	%ebx, %edx
.L4:
	cmpq	%rax, %r12
	jnb	.L12
	movl	-4(%rax), %edi
	movl	%ebx, %ecx
	subq	$4, %rax
	movl	%edi, %r8d
	shrl	%cl, %r8d
	movl	%r8d, %ecx
	orl	%esi, %ecx
	movl	%ecx, (%rax)
	movl	%edx, %ecx
	sall	%cl, %edi
	movl	%edi, %esi
	jmp	.L4
.L12:
	addq	$36, %rbp
	movl	12(%rsp), %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	decb	%al
	je	.L1
	movl	12(%rsp), %ecx
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rdx
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
.L1:
	.cfi_restore_state
	addq	$24, %rsp
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
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
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
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r9, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movw	2(%r9), %r14w
	movq	%rdi, 24(%rsp)
	leaq	72(%rsp), %r13
	leaq	104(%rsp), %r15
	movq	%rcx, %rdi
	movq	%rsi, 32(%rsp)
	movl	%edx, 44(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	movsbl	(%r9), %eax
	movq	%r13, 56(%rsp)
	movq	%r15, 64(%rsp)
	movl	%eax, %esi
	movl	%eax, 40(%rsp)
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.L14
.L16:
	xorl	%eax, %eax
	jmp	.L13
.L14:
	movswl	%r14w, %eax
	movl	$32, %ecx
	movq	8(%rsp), %rsi
	addl	$31, %eax
	cltd
	idivl	%ecx
	movsbl	%al, %ebx
	leaq	36(%rbp), %rax
	movl	%ebx, %edx
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	call	uECC_vli_cmp@PLT
	decb	%al
	jne	.L16
	movq	8(%rsp), %rdi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movq	%r13, %rsi
	leaq	136(%rsp), %r15
	call	regularize_k@PLT
	leal	1(%r14), %r8d
	leaq	68(%rbp), %rsi
	movq	%r15, %rdi
	testl	%eax, %eax
	movq	%rbp, %r9
	movswl	%r8w, %r8d
	sete	%al
	xorl	%ecx, %ecx
	movzbl	%al, %eax
	movq	56(%rsp,%rax,8), %rdx
	call	EccPoint_mult@PLT
	movl	40(%rsp), %esi
	movq	%r15, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.L16
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	jne	.L17
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	uECC_vli_clear@PLT
	movl	$1, 72(%rsp)
	jmp	.L18
.L17:
	movq	16(%rsp), %rsi
	movl	%ebx, %edx
	movq	%r13, %rdi
	call	uECC_generate_random_int@PLT
	testl	%eax, %eax
	je	.L16
.L18:
	movq	8(%rsp), %rsi
	leaq	72(%rsp), %r13
	movq	16(%rsp), %rcx
	movl	%ebx, %r8d
	movq	%r13, %rdx
	leaq	136(%rsp), %r14
	leaq	104(%rsp), %r15
	movq	%rsi, %rdi
	call	uECC_vli_modMult@PLT
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
	movl	%ebx, %ecx
	movq	%rsi, %rdi
	call	uECC_vli_modInv@PLT
	movq	8(%rsp), %rsi
	movl	%ebx, %r8d
	movq	%r13, %rdx
	movq	16(%rsp), %rcx
	movq	%rsi, %rdi
	call	uECC_vli_modMult@PLT
	movsbl	1(%rbp), %esi
	movq	%r14, %rdx
	movq	%r12, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movswl	2(%rbp), %eax
	movl	$8, %ecx
	movq	%r13, %rdi
	movq	24(%rsp), %rsi
	addl	$7, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	call	uECC_vli_bytesToNative@PLT
	leal	-1(%rbx), %eax
	xorl	%edx, %edx
	movq	%r14, %rsi
	cltq
	movq	%r15, %rdi
	movl	%edx, 104(%rsp,%rax,4)
	movl	40(%rsp), %edx
	call	uECC_vli_set@PLT
	movq	16(%rsp), %rcx
	movl	%ebx, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modMult@PLT
	movl	44(%rsp), %edx
	movq	%rbp, %rcx
	movq	%r13, %rdi
	movq	32(%rsp), %rsi
	call	bits2int
	movq	16(%rsp), %rcx
	movl	%ebx, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modAdd@PLT
	movq	16(%rsp), %rcx
	movl	%ebx, %r8d
	movq	%r15, %rsi
	movq	8(%rsp), %rdx
	movq	%r15, %rdi
	call	uECC_vli_modMult@PLT
	movl	%ebx, %esi
	movq	%r15, %rdi
	call	uECC_vli_numBits@PLT
	movsbq	1(%rbp), %rsi
	cwtl
	leal	0(,%rsi,8), %ecx
	cmpl	%ecx, %eax
	jg	.L16
	leaq	(%r12,%rsi), %rdi
	movq	%r15, %rdx
	call	uECC_vli_nativeToBytes@PLT
	movl	$1, %eax
.L13:
	movq	200(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	addq	$216, %rsp
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
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.globl	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
.LFB2:
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
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
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
	movq	%rdi, (%rsp)
	leaq	56(%rsp), %r14
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
.L27:
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L25
	movl	$64, %esi
	movq	%r14, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L25
	movswl	2(%rbx), %eax
	movl	$32, %ecx
	leaq	24(%rsp), %r15
	movq	%r14, %rsi
	movq	%r15, %rdi
	addl	$31, %eax
	cltd
	idivl	%ecx
	leaq	36(%rbx), %rdx
	movsbl	%al, %ecx
	call	uECC_vli_mmod@PLT
	movq	8(%rsp), %rsi
	movq	%rbx, %r9
	movq	%r13, %r8
	movq	(%rsp), %rdi
	movq	%r15, %rcx
	movl	%r12d, %edx
	call	uECC_sign_with_k
	testl	%eax, %eax
	jne	.L29
	decl	%ebp
	jne	.L27
.L25:
	xorl	%eax, %eax
	jmp	.L24
.L29:
	movl	$1, %eax
.L24:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	addq	$136, %rsp
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
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
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
	movq	%r8, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	movl	$32, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$568, %rsp
	.cfi_def_cfa_offset 624
	movb	(%r8), %r15b
	movq	%rsi, 32(%rsp)
	movq	%rdi, %rsi
	movl	%edx, 48(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 552(%rsp)
	xorl	%eax, %eax
	movswl	2(%r8), %eax
	addl	$31, %eax
	cltd
	idivl	%ecx
	movsbl	1(%r8), %edx
	xorl	%ecx, %ecx
	movsbl	%al, %eax
	movl	%eax, 12(%rsp)
	leal	-1(%rax), %ebx
	leaq	488(%rsp), %rax
	movslq	%ebx, %rbx
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	movl	%ecx, 200(%rsp,%rbx,4)
	movl	%ecx, 360(%rsp,%rbx,4)
	movl	%ecx, 392(%rsp,%rbx,4)
	call	uECC_vli_bytesToNative@PLT
	movq	16(%rsp), %rcx
	movsbq	%r15b, %rdx
	movsbq	1(%r13), %rax
	leaq	0(,%rdx,4), %r14
	addq	%r14, %rcx
	leaq	(%r12,%rax), %rsi
	movsbl	%al, %edx
	movq	%rcx, %rdi
	movq	%rcx, 40(%rsp)
	leaq	360(%rsp), %r12
	call	uECC_vli_bytesToNative@PLT
	movsbl	1(%r13), %edx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbq	1(%r13), %rdx
	leaq	0(%rbp,%rdx), %rsi
	leaq	392(%rsp), %rbp
	movq	%rbp, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	%r15b, %eax
	movq	%r12, %rdi
	movl	%eax, %esi
	movl	%eax, 8(%rsp)
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	je	.L39
.L41:
	xorl	%eax, %eax
	jmp	.L38
.L39:
	movl	8(%rsp), %esi
	movq	%rbp, %rdi
	call	uECC_vli_isZero@PLT
	testl	%eax, %eax
	jne	.L41
	leaq	36(%r13), %rax
	movl	12(%rsp), %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	uECC_vli_cmp_unsafe@PLT
	decb	%al
	jne	.L41
	movl	12(%rsp), %edx
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	call	uECC_vli_cmp_unsafe@PLT
	decb	%al
	jne	.L41
	leaq	168(%rsp), %rax
	movl	12(%rsp), %ecx
	movq	24(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	leaq	104(%rsp), %r15
	movq	%rax, (%rsp)
	leaq	68(%r13), %rbp
	call	uECC_vli_modInv@PLT
	movl	48(%rsp), %edx
	movq	32(%rsp), %rsi
	xorl	%eax, %eax
	movq	%r13, %rcx
	movq	%r15, %rdi
	movl	%eax, 104(%rsp,%rbx,4)
	leaq	424(%rsp), %rbx
	call	bits2int
	movl	12(%rsp), %r8d
	movq	%r15, %rsi
	movq	%r15, %rdi
	movq	24(%rsp), %rcx
	movq	(%rsp), %rdx
	call	uECC_vli_modMult@PLT
	movl	12(%rsp), %r8d
	movq	(%rsp), %rdx
	movq	%r12, %rsi
	movq	24(%rsp), %rcx
	leaq	136(%rsp), %rax
	leaq	296(%rsp), %r12
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	call	uECC_vli_modMult@PLT
	movl	8(%rsp), %edx
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	uECC_vli_set@PLT
	leaq	(%rbx,%r14), %rax
	movl	8(%rsp), %edx
	movq	40(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	call	uECC_vli_set@PLT
	leaq	264(%rsp), %rax
	movl	8(%rsp), %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	uECC_vli_set@PLT
	movl	8(%rsp), %edx
	leaq	0(%rbp,%r14), %rsi
	movq	%r12, %rdi
	call	uECC_vli_set@PLT
	leaq	4(%r13), %rax
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	movl	8(%rsp), %r8d
	movq	40(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	call	uECC_vli_modSub@PLT
	movq	48(%rsp), %rcx
	movq	%r13, %r8
	movq	%rbx, %rdx
	movq	40(%rsp), %rdi
	movq	%r12, %rsi
	call	XYcZ_add@PLT
	movq	(%rsp), %rsi
	movl	8(%rsp), %ecx
	leaq	4(%r13), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modInv@PLT
	movq	(%rsp), %rdx
	movq	%r13, %rcx
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi
	call	apply_z@PLT
	movq	16(%rsp), %rax
	movl	12(%rsp), %esi
	xorl	%edx, %edx
	movq	32(%rsp), %rdi
	movq	%rdx, 72(%rsp)
	movq	%rbp, 80(%rsp)
	movq	%rbx, 96(%rsp)
	movq	%rax, 88(%rsp)
	call	uECC_vli_numBits@PLT
	movl	12(%rsp), %esi
	movq	%r15, %rdi
	movl	%eax, %ebx
	call	uECC_vli_numBits@PLT
	movq	%r15, %rdi
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	leal	-1(%rbx), %ebp
	movswl	%bp, %ebp
	movl	%ebp, %esi
	call	uECC_vli_testBit@PLT
	movq	32(%rsp), %rdi
	movl	%ebp, %esi
	movl	%eax, %r12d
	call	uECC_vli_testBit@PLT
	leaq	200(%rsp), %rdi
	testl	%eax, %eax
	setne	%al
	xorl	%edx, %edx
	movzbl	%al, %eax
	addl	%eax, %eax
	testl	%r12d, %r12d
	setne	%dl
	subl	$2, %ebx
	orl	%edx, %eax
	movl	8(%rsp), %edx
	cltq
	movq	72(%rsp,%rax,8), %rbp
	movq	%rbp, %rsi
	call	uECC_vli_set@PLT
	movl	8(%rsp), %edx
	leaq	0(%rbp,%r14), %rsi
	movswl	%bx, %ebp
	leaq	232(%rsp), %rdi
	call	uECC_vli_set@PLT
	movl	8(%rsp), %esi
	movq	(%rsp), %rdi
	call	uECC_vli_clear@PLT
	movl	$1, 168(%rsp)
.L42:
	leaq	200(%rsp), %rax
	testw	%bx, %bx
	leaq	232(%rsp), %r15
	movq	%rax, 16(%rsp)
	js	.L54
	movq	(%rsp), %rdx
	movq	%r13, %rcx
	movq	16(%rsp), %rdi
	movq	%r15, %rsi
	call	*168(%r13)
	leaq	104(%rsp), %rdi
	movl	%ebp, %esi
	call	uECC_vli_testBit@PLT
	leaq	136(%rsp), %rdi
	movl	%ebp, %esi
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
	movq	72(%rsp,%rax,8), %r12
	testq	%r12, %r12
	je	.L43
	leaq	264(%rsp), %rax
	movl	8(%rsp), %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	call	uECC_vli_set@PLT
	leaq	(%r12,%r14), %rsi
	movl	8(%rsp), %edx
	leaq	296(%rsp), %r12
	movq	%r12, %rdi
	call	uECC_vli_set@PLT
	movq	(%rsp), %rdx
	movq	%r13, %rcx
	movq	%r12, %rsi
	movq	32(%rsp), %rdi
	call	apply_z@PLT
	movl	8(%rsp), %r8d
	movq	56(%rsp), %rcx
	leaq	328(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	uECC_vli_modSub@PLT
	movq	16(%rsp), %rdx
	movq	%r15, %rcx
	movq	%r12, %rsi
	movq	32(%rsp), %rdi
	movq	%r13, %r8
	call	XYcZ_add@PLT
	movq	(%rsp), %rsi
	movq	40(%rsp), %rdx
	movq	%r13, %rcx
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast@PLT
.L43:
	decl	%ebx
	decl	%ebp
	jmp	.L42
.L54:
	movq	(%rsp), %rsi
	movl	8(%rsp), %ecx
	movq	56(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modInv@PLT
	movq	(%rsp), %rdx
	movq	%r13, %rcx
	movq	%r15, %rsi
	movq	16(%rsp), %rdi
	call	apply_z@PLT
	movl	12(%rsp), %edx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	call	uECC_vli_cmp_unsafe@PLT
	decb	%al
	je	.L45
	movq	16(%rsp), %rsi
	movl	12(%rsp), %ecx
	movq	24(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_sub@PLT
.L45:
	movl	8(%rsp), %edx
	movq	16(%rsp), %rdi
	leaq	360(%rsp), %rsi
	call	uECC_vli_equal@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L38:
	movq	552(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	addq	$568, %rsp
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
