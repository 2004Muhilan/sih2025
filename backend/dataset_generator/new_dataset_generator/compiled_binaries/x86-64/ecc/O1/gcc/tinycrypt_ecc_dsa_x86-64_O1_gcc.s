	.file	"tinycrypt_ecc_dsa.c"
	.text
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
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, %rbx
	movq	%rsi, %r15
	movq	%rcx, %rbp
	movswl	2(%rcx), %eax
	leal	62(%rax), %r14d
	movl	%eax, %ecx
	addl	$31, %ecx
	cmovns	%ecx, %r14d
	sarl	$5, %r14d
	leal	14(%rax), %r13d
	addl	$7, %eax
	cmovns	%eax, %r13d
	sarl	$3, %r13d
	cmpl	%edx, %r13d
	cmova	%edx, %r13d
	movsbl	%r14b, %r12d
	movl	%r12d, %esi
	call	uECC_vli_clear@PLT
	movl	%r13d, %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_bytesToNative@PLT
	leal	0(,%r13,8), %esi
	movswl	2(%rbp), %eax
	cmpl	%esi, %eax
	jnb	.L1
	subl	%eax, %esi
	movl	%r14d, %r14d
	leaq	(%rbx,%r14,4), %rax
	cmpq	%rax, %rbx
	jnb	.L3
	movl	$0, %r8d
	movl	$32, %r9d
	subl	%esi, %r9d
.L4:
	movl	-4(%rax), %edi
	movl	%edi, %edx
	movl	%esi, %ecx
	shrl	%cl, %edx
	orl	%r8d, %edx
	movl	%edx, -4(%rax)
	movl	%r9d, %ecx
	sall	%cl, %edi
	movl	%edi, %r8d
	subq	$4, %rax
	cmpq	%rax, %rbx
	jb	.L4
.L3:
	addq	$36, %rbp
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.L7
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
.L7:
	.cfi_restore_state
	movl	%r12d, %ecx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_sub@PLT
	jmp	.L1
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
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	%edx, 36(%rsp)
	movq	%rcx, %rbp
	movq	%r8, 8(%rsp)
	movq	%r9, %rbx
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 56(%rsp)
	movzwl	2(%r9), %r15d
	movsbl	(%r9), %r13d
	movl	%r13d, %esi
	movq	%rcx, %rdi
	call	uECC_vli_isZero@PLT
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	je	.L18
.L8:
	movq	200(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L19
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
.L18:
	.cfi_restore_state
	movswl	%r15w, %eax
	leal	62(%rax), %r12d
	addl	$31, %eax
	cmovns	%eax, %r12d
	sarl	$5, %r12d
	movsbl	%r12b, %r12d
	leaq	36(%rbx), %r14
	movl	%r12d, %edx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	uECC_vli_cmp@PLT
	movl	%eax, %edx
	movl	$0, %eax
	cmpb	$1, %dl
	jne	.L8
	leaq	96(%rsp), %rdx
	leaq	64(%rsp), %rsi
	movq	%rbx, %rcx
	movq	%rbp, %rdi
	call	regularize_k@PLT
	leal	1(%r15), %r8d
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	48(%rsp,%rax,8), %rdx
	leaq	68(%rbx), %rsi
	leaq	128(%rsp), %r15
	movq	%rbx, %r9
	movswl	%r8w, %r8d
	movl	$0, %ecx
	movq	%r15, %rdi
	call	EccPoint_mult@PLT
	movl	%r13d, %esi
	movq	%r15, %rdi
	call	uECC_vli_isZero@PLT
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	jne	.L8
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L20
	leaq	64(%rsp), %rdi
	movl	%r12d, %edx
	movq	%r14, %rsi
	call	uECC_generate_random_int@PLT
	testl	%eax, %eax
	je	.L8
.L11:
	leaq	64(%rsp), %r15
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult@PLT
	movl	%r12d, %ecx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modInv@PLT
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult@PLT
	leaq	128(%rsp), %rax
	movsbl	1(%rbx), %esi
	movq	%rax, 40(%rsp)
	movq	%rax, %rdx
	movq	8(%rsp), %rdi
	call	uECC_vli_nativeToBytes@PLT
	movswl	2(%rbx), %eax
	leal	14(%rax), %edx
	addl	$7, %eax
	cmovns	%eax, %edx
	sarl	$3, %edx
	movq	16(%rsp), %rsi
	movq	%r15, 16(%rsp)
	movq	%r15, %rdi
	call	uECC_vli_bytesToNative@PLT
	leal	-1(%r12), %eax
	cltq
	movl	$0, 96(%rsp,%rax,4)
	leaq	96(%rsp), %r15
	movl	%r13d, %edx
	movq	40(%rsp), %rsi
	movq	%r15, %rdi
	call	uECC_vli_set@PLT
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	16(%rsp), %r13
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modMult@PLT
	movq	%rbx, %rcx
	movl	36(%rsp), %edx
	movq	24(%rsp), %rsi
	movq	%r13, %rdi
	call	bits2int
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modAdd@PLT
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modMult@PLT
	movl	%r12d, %esi
	movq	%r15, %rdi
	call	uECC_vli_numBits@PLT
	movzbl	1(%rbx), %ecx
	movsbl	%cl, %esi
	movswl	%ax, %edx
	leal	0(,%rsi,8), %edi
	movl	$0, %eax
	cmpl	%edi, %edx
	jg	.L8
	movq	%r15, %rdx
	movsbq	%cl, %rcx
	movq	8(%rsp), %rdi
	addq	%rcx, %rdi
	call	uECC_vli_nativeToBytes@PLT
	movl	$1, %eax
	jmp	.L8
.L20:
	leaq	64(%rsp), %rdi
	movl	%r12d, %esi
	call	uECC_vli_clear@PLT
	movl	$1, 64(%rsp)
	jmp	.L11
.L19:
	call	__stack_chk_fail@PLT
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, %r15
	movq	%rsi, %r14
	movl	%edx, 4(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, %rbx
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movl	$64, %ebp
	leaq	48(%rsp), %r13
.L23:
	call	uECC_get_rng@PLT
	testq	%rax, %rax
	je	.L25
	movl	$64, %esi
	movq	%r13, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L21
	movswl	2(%rbx), %eax
	leal	62(%rax), %ecx
	addl	$31, %eax
	cmovns	%eax, %ecx
	sarl	$5, %ecx
	movsbl	%cl, %ecx
	leaq	36(%rbx), %rdx
	leaq	16(%rsp), %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	uECC_vli_mmod@PLT
	movq	%rbx, %r9
	movq	8(%rsp), %r8
	movq	%r12, %rcx
	movl	4(%rsp), %edx
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	uECC_sign_with_k
	testl	%eax, %eax
	jne	.L26
	subl	$1, %ebp
	jne	.L23
	jmp	.L21
.L25:
	movl	$0, %eax
.L21:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L29
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
.L26:
	.cfi_restore_state
	movl	$1, %eax
	jmp	.L21
.L29:
	call	__stack_chk_fail@PLT
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$568, %rsp
	.cfi_def_cfa_offset 624
	movq	%rdi, %rbp
	movq	%rsi, 16(%rsp)
	movl	%edx, 24(%rsp)
	movq	%rcx, %rbx
	movq	%r8, %r13
	movq	%fs:40, %rax
	movq	%rax, 552(%rsp)
	xorl	%eax, %eax
	movzbl	(%r8), %r14d
	movswl	2(%r8), %edx
	leal	62(%rdx), %eax
	addl	$31, %edx
	cmovns	%edx, %eax
	sarl	$5, %eax
	movsbl	%al, %eax
	movl	%eax, 4(%rsp)
	leal	-1(%rax), %r15d
	movslq	%r15d, %rax
	movl	$0, 160(%rsp,%rax,4)
	movl	$0, 352(%rsp,%rax,4)
	movl	$0, 384(%rsp,%rax,4)
	movsbl	1(%r8), %edx
	leaq	480(%rsp), %r12
	movq	%rdi, %rsi
	movq	%r12, %rdi
	call	uECC_vli_bytesToNative@PLT
	movzbl	1(%r13), %eax
	movsbq	%r14b, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	%rcx, 8(%rsp)
	addq	%rcx, %r12
	movsbl	%al, %edx
	movsbq	%al, %rax
	leaq	0(%rbp,%rax), %rsi
	movq	%r12, %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	1(%r13), %edx
	leaq	352(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_bytesToNative@PLT
	movzbl	1(%r13), %eax
	movsbl	%al, %edx
	movsbq	%al, %rax
	leaq	(%rbx,%rax), %rsi
	leaq	384(%rsp), %rdi
	call	uECC_vli_bytesToNative@PLT
	movsbl	%r14b, %ebx
	movl	%ebx, (%rsp)
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	uECC_vli_isZero@PLT
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	je	.L43
.L30:
	movq	552(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L44
	addq	$568, %rsp
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
.L43:
	.cfi_restore_state
	leaq	384(%rsp), %rdi
	movl	%ebx, %esi
	call	uECC_vli_isZero@PLT
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	jne	.L30
	leaq	36(%r13), %r14
	movq	%rbp, %rsi
	movl	4(%rsp), %edx
	movq	%r14, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	movl	%eax, %edx
	movl	$0, %eax
	cmpb	$1, %dl
	jne	.L30
	leaq	384(%rsp), %rsi
	movl	4(%rsp), %edx
	movq	%r14, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	movl	%eax, %edx
	movl	$0, %eax
	cmpb	$1, %dl
	jne	.L30
	leaq	384(%rsp), %rsi
	leaq	128(%rsp), %rbx
	movl	4(%rsp), %ebp
	movl	%ebp, %ecx
	movq	%r14, %rdx
	movq	%rbx, %rdi
	call	uECC_vli_modInv@PLT
	movslq	%r15d, %r15
	movl	$0, 64(%rsp,%r15,4)
	leaq	64(%rsp), %r15
	movq	%r13, %rcx
	movl	24(%rsp), %edx
	movq	16(%rsp), %rsi
	movq	%r15, %rdi
	call	bits2int
	movl	%ebp, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modMult@PLT
	leaq	352(%rsp), %rsi
	leaq	96(%rsp), %rax
	movl	%ebp, 4(%rsp)
	movl	%ebp, %r8d
	movq	%r14, %rcx
	movq	%rbx, 16(%rsp)
	movq	%rbx, %rdx
	movq	%rax, 32(%rsp)
	movq	%rax, %rdi
	call	uECC_vli_modMult@PLT
	leaq	480(%rsp), %rcx
	leaq	416(%rsp), %rbx
	movl	(%rsp), %ebp
	movl	%ebp, %edx
	movq	%rcx, 48(%rsp)
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_set@PLT
	movq	8(%rsp), %rcx
	addq	%rbx, %rcx
	movl	%ebp, (%rsp)
	movl	%ebp, %edx
	movq	%r12, %rsi
	movq	%rcx, 24(%rsp)
	movq	%rcx, %rdi
	call	uECC_vli_set@PLT
	leaq	68(%r13), %r12
	leaq	224(%rsp), %rbp
	movl	(%rsp), %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_set@PLT
	movq	8(%rsp), %r9
	leaq	(%r12,%r9), %rsi
	leaq	256(%rsp), %r11
	movl	(%rsp), %edx
	movq	%r11, 56(%rsp)
	movq	%r11, %rdi
	call	uECC_vli_set@PLT
	leaq	4(%r13), %r10
	movl	(%rsp), %r8d
	movq	%r10, 40(%rsp)
	movq	%r10, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	16(%rsp), %rdi
	call	uECC_vli_modSub@PLT
	movq	%r13, %r8
	movq	24(%rsp), %rcx
	movq	%rbx, %rdx
	movq	56(%rsp), %rsi
	movq	%rbp, %rdi
	call	XYcZ_add@PLT
	movl	(%rsp), %ecx
	movq	40(%rsp), %rdx
	movq	16(%rsp), %rbp
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modInv@PLT
	movq	%r13, %rcx
	movq	%rbp, 16(%rsp)
	movq	%rbp, %rdx
	movq	24(%rsp), %rsi
	movq	%rbx, %rdi
	call	apply_z@PLT
	movq	$0, 320(%rsp)
	movq	%r12, 328(%rsp)
	movq	48(%rsp), %rsi
	movq	%rsi, 336(%rsp)
	movq	%rbx, 344(%rsp)
	movl	4(%rsp), %ebp
	movl	%ebp, %esi
	movq	32(%rsp), %rdi
	call	uECC_vli_numBits@PLT
	movl	%eax, %ebx
	movl	%ebp, %esi
	movq	%r15, %rdi
	call	uECC_vli_numBits@PLT
	cmpw	%ax, %bx
	cmovl	%eax, %ebx
	leal	-1(%rbx), %ebp
	movswl	%bp, %ebp
	movl	%ebp, %esi
	movq	%r15, %rdi
	call	uECC_vli_testBit@PLT
	movl	%eax, %r12d
	movl	%ebp, %esi
	movq	32(%rsp), %rdi
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	testl	%r12d, %r12d
	setne	%dl
	movzbl	%dl, %edx
	orl	%edx, %eax
	cltq
	movq	320(%rsp,%rax,8), %rbp
	leaq	160(%rsp), %rdi
	movl	(%rsp), %r15d
	movl	%r15d, %edx
	movq	%rbp, %rsi
	call	uECC_vli_set@PLT
	movq	8(%rsp), %r9
	leaq	0(%rbp,%r9), %rsi
	leaq	192(%rsp), %rdi
	movl	%r15d, %edx
	call	uECC_vli_set@PLT
	movl	%r15d, %esi
	movq	16(%rsp), %rdi
	call	uECC_vli_clear@PLT
	movl	$1, 128(%rsp)
	subw	$2, %bx
	movl	%ebx, %edx
	js	.L32
	movswl	%bx, %r8d
	movl	%r8d, %ebx
	leaq	128(%rsp), %r15
	movq	%r14, 48(%rsp)
	movw	%dx, 16(%rsp)
	movl	%r8d, 24(%rsp)
	jmp	.L34
.L33:
	subl	$1, %ebx
	movzwl	16(%rsp), %eax
	subw	24(%rsp), %ax
	addw	%bx, %ax
	js	.L45
.L34:
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %rdi
	movq	%r13, %rcx
	movq	%r15, %rdx
	call	*168(%r13)
	leaq	64(%rsp), %rdi
	movl	%ebx, %esi
	call	uECC_vli_testBit@PLT
	movl	%eax, %ebp
	leaq	96(%rsp), %rdi
	movl	%ebx, %esi
	call	uECC_vli_testBit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	testl	%ebp, %ebp
	setne	%dl
	movzbl	%dl, %edx
	orl	%edx, %eax
	movl	%eax, %eax
	movq	320(%rsp,%rax,8), %r12
	testq	%r12, %r12
	je	.L33
	leaq	224(%rsp), %rbp
	movl	(%rsp), %r14d
	movl	%r14d, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_set@PLT
	movq	8(%rsp), %rax
	leaq	(%r12,%rax), %rsi
	leaq	256(%rsp), %r12
	movl	%r14d, (%rsp)
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	uECC_vli_set@PLT
	movq	%r13, %rcx
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	apply_z@PLT
	leaq	160(%rsp), %r14
	leaq	288(%rsp), %rax
	movl	(%rsp), %r8d
	movq	40(%rsp), %rcx
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%rax, 32(%rsp)
	movq	%rax, %rdi
	call	uECC_vli_modSub@PLT
	leaq	192(%rsp), %rcx
	movq	%r13, %r8
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	XYcZ_add@PLT
	movq	%r13, %rcx
	movq	32(%rsp), %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modMult_fast@PLT
	jmp	.L33
.L45:
	movq	48(%rsp), %r14
.L32:
	leaq	128(%rsp), %rbx
	movl	(%rsp), %ecx
	movq	40(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modInv@PLT
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %rbp
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rdi
	call	apply_z@PLT
	movl	4(%rsp), %ebx
	movl	%ebx, %edx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	uECC_vli_cmp_unsafe@PLT
	cmpb	$1, %al
	jne	.L46
.L35:
	leaq	352(%rsp), %rsi
	leaq	160(%rsp), %rdi
	movl	(%rsp), %edx
	call	uECC_vli_equal@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L30
.L46:
	movq	%rbp, %rdi
	movl	%ebx, %ecx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	call	uECC_vli_sub@PLT
	jmp	.L35
.L44:
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
