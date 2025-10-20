	.file	"tinycrypt_ecc.c"
	.text
	.p2align 4
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r9
	movq	%rdx, %r10
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ecx, %ebx
	testb	%cl, %cl
	jle	.L13
	movsbq	%cl, %r11
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%eax, %r12d
	movl	%edi, %r8d
	movl	%esi, %eax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L6:
	movsbl	%cl, %r13d
	movl	%r8d, %edx
	salq	$32, %rax
	subl	%r13d, %edx
	movsbq	%cl, %r13
	orq	%r12, %rax
	movslq	%edx, %rdx
	movl	(%r9,%r13,4), %r13d
	movl	(%r10,%rdx,4), %edx
	imulq	%r13, %rdx
	addq	%rax, %rdx
	adcl	$0, %esi
	movq	%rdx, %rax
	addl	$1, %ecx
	movl	%edx, %r12d
	shrq	$32, %rax
	cmpb	%dil, %cl
	jle	.L6
	movl	%edx, 0(%rbp,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, %r11
	jne	.L3
.L2:
	movsbq	%bl, %rdx
	leal	(%rdx,%rdx), %edi
	leal	-1(%rdi), %r13d
	cmpl	%r13d, %edx
	jge	.L7
	movl	%edi, -4(%rsp)
	movl	$1, %r12d
	movl	%ebx, %r11d
	.p2align 4,,10
	.p2align 3
.L12:
	cmpb	%r12b, %r14b
	jle	.L14
	movsbq	%r12b, %rcx
	movb	%bl, -5(%rsp)
	subq	%rcx, %rdx
	leaq	(%r9,%rcx,4), %rdi
	leaq	(%r10,%rdx,4), %r8
	movl	%r11d, %edx
	subl	%r12d, %edx
	movzbl	%dl, %edx
	addq	%rcx, %rdx
	leaq	(%r9,%rdx,4), %r15
	movl	%eax, %edx
	movl	%esi, %eax
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L11:
	movl	(%rdi), %ebx
	movl	(%r8), %ecx
	salq	$32, %rax
	orq	%rdx, %rax
	imulq	%rbx, %rcx
	addq	%rax, %rcx
	adcl	$0, %esi
	movq	%rcx, %rax
	addq	$4, %rdi
	movl	%ecx, %edx
	shrq	$32, %rax
	subq	$4, %r8
	cmpq	%rdi, %r15
	jne	.L11
	movzbl	-5(%rsp), %ebx
.L8:
	movsbq	%bl, %rcx
	addl	$1, %ebx
	addl	$1, %r12d
	movl	%edx, 0(%rbp,%rcx,4)
	movsbq	%bl, %rdx
	cmpl	%r13d, %edx
	jl	.L12
	movl	-4(%rsp), %edi
.L7:
	movslq	%edi, %rdi
	movl	%eax, -4(%rbp,%rdi,4)
	popq	%rbx
	.cfi_remember_state
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
	movl	%eax, %edx
	movl	%esi, %eax
	xorl	%esi, %esi
	jmp	.L8
.L13:
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L2
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.p2align 4
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rax
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rdx
	movq	%rdx, 40(%rsp)
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L22:
	movl	(%rsi,%rdx), %ecx
	movl	%ecx, (%rax,%rdx)
	addq	$4, %rdx
	cmpq	$32, %rdx
	jne	.L22
	movl	60(%rsi), %edx
	movdqu	44(%rsi), %xmm4
	leaq	32(%rsp), %r11
	xorl	%r9d, %r9d
	movl	$0, 8(%rsp)
	xorl	%ebx, %ebx
	movq	$0, (%rsp)
	movl	%edx, 28(%rsp)
	movq	%rsp, %rdx
	movups	%xmm4, 12(%rsp)
	movq	%rdx, %r10
	movq	%rdx, %rcx
	.p2align 4,,10
	.p2align 3
.L23:
	movl	(%rcx), %r8d
	leal	(%r9,%r8,2), %edi
	cmpl	%edi, %r8d
	movl	%edi, (%rcx)
	cmovne	%ebx, %r9d
	cmpl	%r8d, %edi
	setb	%r8b
	addq	$4, %rcx
	movzbl	%r8b, %r8d
	orl	%r8d, %r9d
	cmpq	%rcx, %r11
	jne	.L23
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L24:
	movl	(%rax,%rdi), %ebx
	movl	(%rdx,%rdi), %r8d
	addl	%ebx, %r8d
	addl	%ecx, %r8d
	cmpl	%r8d, %ebx
	movl	%r8d, (%rax,%rdi)
	cmovne	%ebp, %ecx
	cmpl	%ebx, %r8d
	setb	%bl
	addq	$4, %rdi
	movzbl	%bl, %ebx
	orl	%ebx, %ecx
	cmpq	$32, %rdi
	jne	.L24
	movdqu	48(%rsi), %xmm5
	movl	$0, 28(%rsp)
	leal	(%rcx,%r9), %r8d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movups	%xmm5, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L25:
	movl	(%r10), %r9d
	leal	(%rcx,%r9,2), %edi
	cmpl	%edi, %r9d
	movl	%edi, (%r10)
	cmovne	%ebx, %ecx
	cmpl	%r9d, %edi
	setb	%r9b
	addq	$4, %r10
	movzbl	%r9b, %r9d
	orl	%r9d, %ecx
	cmpq	%r10, %r11
	jne	.L25
	addl	%ecx, %r8d
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L26:
	movl	(%rax,%rcx), %r10d
	movl	(%rdx,%rcx), %edi
	addl	%r10d, %edi
	addl	%r9d, %edi
	cmpl	%edi, %r10d
	movl	%edi, (%rax,%rcx)
	cmovne	%r11d, %r9d
	cmpl	%r10d, %edi
	setb	%r10b
	addq	$4, %rcx
	movzbl	%r10b, %r10d
	orl	%r10d, %r9d
	cmpq	$32, %rcx
	jne	.L26
	movq	32(%rsi), %rcx
	movl	$0, 20(%rsp)
	addl	%r9d, %r8d
	xorl	%r11d, %r11d
	movq	$0, 12(%rsp)
	xorl	%r9d, %r9d
	movq	%rcx, (%rsp)
	movl	40(%rsi), %ecx
	movl	%ecx, 8(%rsp)
	movq	56(%rsi), %rcx
	movq	%rcx, 24(%rsp)
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L27:
	movl	(%rax,%rcx), %r10d
	movl	(%rdx,%rcx), %edi
	addl	%r10d, %edi
	addl	%r9d, %edi
	cmpl	%edi, %r10d
	movl	%edi, (%rax,%rcx)
	cmovne	%r11d, %r9d
	cmpl	%r10d, %edi
	setb	%r10b
	addq	$4, %rcx
	movzbl	%r10b, %r10d
	orl	%r10d, %r9d
	cmpq	$32, %rcx
	jne	.L27
	movdqu	32(%rsi), %xmm1
	movdqu	48(%rsi), %xmm0
	addl	%r9d, %r8d
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movdqa	%xmm0, %xmm3
	movdqa	%xmm1, %xmm2
	shufps	$245, %xmm1, %xmm3
	shufps	$80, %xmm0, %xmm1
	shufps	$41, %xmm3, %xmm2
	shufps	$46, %xmm1, %xmm0
	movaps	%xmm2, (%rsp)
	movaps	%xmm0, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	(%rax,%rcx), %r10d
	movl	(%rdx,%rcx), %edi
	addl	%r10d, %edi
	addl	%r9d, %edi
	cmpl	%edi, %r10d
	movl	%edi, (%rax,%rcx)
	cmovne	%r11d, %r9d
	cmpl	%r10d, %edi
	setb	%r10b
	addq	$4, %rcx
	movzbl	%r10b, %r10d
	orl	%r10d, %r9d
	cmpq	$32, %rcx
	jne	.L28
	movq	44(%rsi), %rcx
	movq	32(%rsi), %xmm0
	addl	%r9d, %r8d
	xorl	%r11d, %r11d
	movq	40(%rsi), %xmm1
	movl	$0, 20(%rsp)
	xorl	%r9d, %r9d
	movq	%rcx, (%rsp)
	movl	52(%rsi), %ecx
	movq	$0, 12(%rsp)
	punpckldq	%xmm1, %xmm0
	movl	%ecx, 8(%rsp)
	xorl	%ecx, %ecx
	movq	%xmm0, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L29:
	movl	(%rax,%rcx), %r10d
	movl	%r10d, %edi
	subl	%r9d, %edi
	subl	(%rdx,%rcx), %edi
	cmpl	%edi, %r10d
	movl	%edi, (%rax,%rcx)
	setb	%r10b
	cmovne	%r11d, %r9d
	addq	$4, %rcx
	movzbl	%r10b, %r10d
	orl	%r10d, %r9d
	cmpq	$32, %rcx
	jne	.L29
	movq	36(%rsi), %xmm0
	movdqu	48(%rsi), %xmm6
	subl	%r9d, %r8d
	xorl	%ecx, %ecx
	movq	44(%rsi), %xmm1
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movaps	%xmm6, (%rsp)
	punpckldq	%xmm1, %xmm0
	movq	%xmm0, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L30:
	movl	(%rax,%rcx), %r10d
	movl	%r10d, %edi
	subl	%r9d, %edi
	subl	(%rdx,%rcx), %edi
	cmpl	%edi, %r10d
	movl	%edi, (%rax,%rcx)
	setb	%r10b
	cmovne	%r11d, %r9d
	addq	$4, %rcx
	movzbl	%r10b, %r10d
	orl	%r10d, %r9d
	cmpq	$32, %rcx
	jne	.L30
	movq	36(%rsi), %rcx
	movdqu	48(%rsi), %xmm7
	subl	%r9d, %r8d
	xorl	%r11d, %r11d
	movdqu	32(%rsi), %xmm1
	movl	$0, 24(%rsp)
	xorl	%r9d, %r9d
	movq	%rcx, 16(%rsp)
	movl	48(%rsi), %ecx
	movdqa	%xmm7, %xmm0
	shufps	$240, %xmm7, %xmm1
	shufps	$41, %xmm1, %xmm0
	movaps	%xmm0, (%rsp)
	movl	%ecx, 28(%rsp)
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L31:
	movl	(%rax,%rcx), %r10d
	movl	%r10d, %edi
	subl	%r9d, %edi
	subl	(%rdx,%rcx), %edi
	cmpl	%edi, %r10d
	movl	%edi, (%rax,%rcx)
	setb	%r10b
	cmovne	%r11d, %r9d
	addq	$4, %rcx
	movzbl	%r10b, %r10d
	orl	%r10d, %r9d
	cmpq	$32, %rcx
	jne	.L31
	movq	56(%rsi), %rcx
	subl	%r9d, %r8d
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	movl	$0, 8(%rsp)
	movq	%rcx, (%rsp)
	movl	36(%rsi), %ecx
	movl	%ecx, 12(%rsp)
	movq	40(%rsi), %rcx
	movq	%rcx, 16(%rsp)
	movl	52(%rsi), %ecx
	movl	%ecx, 28(%rsp)
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L32:
	movl	(%rax,%rcx), %r9d
	movl	%r9d, %esi
	subl	%edi, %esi
	subl	(%rdx,%rcx), %esi
	cmpl	%esi, %r9d
	movl	%esi, (%rax,%rcx)
	setb	%r9b
	cmovne	%r10d, %edi
	addq	$4, %rcx
	movzbl	%r9b, %r9d
	orl	%r9d, %edi
	cmpq	$32, %rcx
	jne	.L32
	leaq	32+curve_secp256r1(%rip), %r11
	xorl	%r10d, %r10d
	leaq	-28(%r11), %r9
	subl	%edi, %r8d
	js	.L61
	.p2align 4,,10
	.p2align 3
.L33:
	testl	%r8d, %r8d
	jne	.L42
	xorl	%edx, %edx
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L62:
	cmpl	%ecx, %esi
	jb	.L42
	subq	$4, %rdx
	cmpq	$-32, %rdx
	je	.L42
.L39:
	movl	(%r11,%rdx), %esi
	movl	28(%rax,%rdx), %ecx
	cmpl	%esi, %ecx
	jnb	.L62
.L21:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L63
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L36:
	movl	(%rax,%rdx), %edi
	movl	%edi, %ecx
	subl	%esi, %ecx
	subl	(%r9,%rdx), %ecx
	cmpl	%ecx, %edi
	movl	%ecx, (%rax,%rdx)
	setb	%dil
	cmovne	%r10d, %esi
	addq	$4, %rdx
	movzbl	%dil, %edi
	orl	%edi, %esi
	cmpq	$32, %rdx
	jne	.L36
	subl	%esi, %r8d
	jmp	.L33
.L61:
	movq	%r9, %r10
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L35:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L34:
	movl	(%rax,%rdx), %edi
	movl	(%r10,%rdx), %ecx
	addl	%edi, %ecx
	addl	%esi, %ecx
	cmpl	%ecx, %edi
	movl	%ecx, (%rax,%rdx)
	cmovne	%r9d, %esi
	cmpl	%edi, %ecx
	setb	%dil
	addq	$4, %rdx
	movzbl	%dil, %edi
	orl	%edi, %esi
	cmpq	$32, %rdx
	jne	.L34
	addl	%esi, %r8d
	js	.L35
	jmp	.L21
.L63:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.p2align 4
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	movq	%rsi, %r10
	movsbq	%dl, %r9
	movl	(%rdi), %esi
	salq	$2, %r9
	leaq	(%rdi,%r9), %rax
	andl	$1, %esi
	jne	.L81
	cmpq	%rax, %rdi
	jnb	.L82
.L69:
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L73:
	movl	-4(%rax), %ecx
	subq	$4, %rax
	movl	%ecx, %edx
	sall	$31, %ecx
	shrl	%edx
	orl	%r8d, %edx
	movl	%ecx, %r8d
	movl	%edx, (%rax)
	cmpq	%rax, %rdi
	jb	.L73
.L72:
	testl	%esi, %esi
	je	.L64
	orl	$-2147483648, -4(%rdi,%r9)
.L64:
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	testb	%dl, %dl
	jle	.L66
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L67:
	movl	(%rdi,%rdx), %r8d
	movl	(%r10,%rdx), %ecx
	addl	%r8d, %ecx
	addl	%esi, %ecx
	cmpl	%ecx, %r8d
	movl	%ecx, (%rdi,%rdx)
	cmovne	%r11d, %esi
	cmpl	%r8d, %ecx
	setb	%r8b
	addq	$4, %rdx
	movzbl	%r8b, %r8d
	orl	%r8d, %esi
	cmpq	%r9, %rdx
	jne	.L67
	cmpq	%rax, %rdi
	jb	.L69
	jmp	.L72
.L82:
	ret
.L66:
	xorl	%esi, %esi
	cmpq	%rax, %rdi
	jb	.L69
	ret
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.p2align 4
	.globl	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rdi, g_rng_function(%rip)
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_set_rng, .-uECC_set_rng
	.p2align 4
	.globl	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
.LFB15:
	.cfi_startproc
	endbr64
	movq	g_rng_function(%rip), %rax
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_get_rng, .-uECC_get_rng
	.p2align 4
	.globl	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
.LFB16:
	.cfi_startproc
	endbr64
	movswl	2(%rdi), %edx
	leal	14(%rdx), %eax
	addl	$7, %edx
	cmovns	%edx, %eax
	sarl	$3, %eax
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.p2align 4
	.globl	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
.LFB17:
	.cfi_startproc
	endbr64
	movsbl	1(%rdi), %eax
	addl	%eax, %eax
	ret
	.cfi_endproc
.LFE17:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.p2align 4
	.globl	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
.LFB18:
	.cfi_startproc
	endbr64
	movq	%rdi, %rdx
	testb	%sil, %sil
	jle	.L87
	movzbl	%sil, %esi
	leaq	0(,%rsi,4), %rax
	cmpl	$8, %eax
	jnb	.L89
	testb	$4, %al
	jne	.L93
	testl	%eax, %eax
	je	.L87
	movb	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	movq	$0, (%rdi)
	leaq	8(%rdi), %rdi
	movq	$0, -16(%rdi,%rax)
	andq	$-8, %rdi
	subq	%rdi, %rdx
	leal	(%rax,%rdx), %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	rep stosq
.L87:
	ret
.L93:
	movl	$0, (%rdi)
	movl	$0, -4(%rdi,%rax)
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.p2align 4
	.globl	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
.LFB19:
	.cfi_startproc
	endbr64
	testb	%sil, %sil
	jle	.L97
	movsbq	%sil, %rsi
	xorl	%eax, %eax
	leaq	(%rdi,%rsi,4), %rdx
	andl	$1, %esi
	je	.L96
	movl	(%rdi), %eax
	addq	$4, %rdi
	cmpq	%rdi, %rdx
	je	.L104
	.p2align 4,,10
	.p2align 3
.L96:
	orl	(%rdi), %eax
	addq	$8, %rdi
	orl	-4(%rdi), %eax
	cmpq	%rdi, %rdx
	jne	.L96
.L104:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.p2align 4
	.globl	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
.LFB20:
	.cfi_startproc
	endbr64
	movl	%esi, %edx
	movl	%esi, %ecx
	movl	$1, %eax
	sarw	$5, %dx
	sall	%cl, %eax
	movswq	%dx, %rdx
	andl	(%rdi,%rdx,4), %eax
	ret
	.cfi_endproc
.LFE20:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.p2align 4
	.globl	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
.LFB22:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	subb	$1, %sil
	js	.L107
	movzbl	%sil, %eax
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L109:
	movl	%eax, %ecx
	leaq	-1(%rax), %rdx
	subb	$1, %cl
	js	.L107
	movq	%rdx, %rax
.L108:
	movl	(%rdi,%rax,4), %edx
	testl	%edx, %edx
	je	.L109
	addl	$1, %eax
.L107:
	xorl	%edx, %edx
	testb	%al, %al
	je	.L106
	movsbq	%al, %rdx
	movl	-4(%rdi,%rdx,4), %edx
	testl	%edx, %edx
	je	.L114
	bsrl	%edx, %edx
	addl	$1, %edx
.L111:
	cbtw
	subl	$1, %eax
	sall	$5, %eax
	addl	%eax, %edx
.L106:
	movl	%edx, %eax
	ret
.L114:
	xorl	%edx, %edx
	jmp	.L111
	.cfi_endproc
.LFE22:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.p2align 4
	.globl	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
.LFB23:
	.cfi_startproc
	endbr64
	testb	%dl, %dl
	jle	.L116
	movsbq	%dl, %rdx
	xorl	%eax, %eax
	leaq	0(,%rdx,4), %rcx
	.p2align 4,,10
	.p2align 3
.L118:
	movl	(%rsi,%rax), %edx
	movl	%edx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.L118
.L116:
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_set, .-uECC_vli_set
	.p2align 4
	.globl	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
.LFB24:
	.cfi_startproc
	endbr64
	subb	$1, %dl
	js	.L123
	movzbl	%dl, %edx
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L127:
	cmpl	%eax, %ecx
	jb	.L125
	subq	$1, %rdx
	testb	%dl, %dl
	js	.L123
.L122:
	movl	(%rdi,%rdx,4), %ecx
	movl	(%rsi,%rdx,4), %eax
	cmpl	%ecx, %eax
	jnb	.L127
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L123:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	movl	$-1, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.p2align 4
	.globl	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
.LFB25:
	.cfi_startproc
	endbr64
	subb	$1, %dl
	js	.L131
	movzbl	%dl, %edx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L130:
	movl	(%rdi,%rdx,4), %eax
	xorl	(%rsi,%rdx,4), %eax
	subq	$1, %rdx
	orl	%eax, %ecx
	testb	%dl, %dl
	jns	.L130
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.p2align 4
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB26:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	testl	%edx, %edx
	cmove	%esi, %eax
	imull	%edx, %edi
	orl	%edi, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	cond_set, .-cond_set
	.p2align 4
	.globl	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
.LFB27:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rdx, %r10
	testb	%cl, %cl
	jle	.L137
	movsbq	%cl, %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	leaq	0(,%rcx,4), %rdi
	.p2align 4,,10
	.p2align 3
.L136:
	movl	(%r9,%rdx), %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	subl	(%r10,%rdx), %ecx
	cmpl	%ecx, %esi
	movl	%ecx, (%r8,%rdx)
	setb	%sil
	cmovne	%r11d, %eax
	addq	$4, %rdx
	movzbl	%sil, %esi
	orl	%esi, %eax
	cmpq	%rdi, %rdx
	jne	.L136
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.p2align 4
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	endbr64
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	testb	%dl, %dl
	jle	.L144
	movsbq	%dl, %rdx
	movq	%rdi, %r9
	movq	%rsi, %r10
	xorl	%ecx, %ecx
	leaq	0(,%rdx,4), %r8
	movq	%rsp, %rdi
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L141:
	movl	(%r9,%rax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%r10,%rax), %edx
	cmpl	%edx, %esi
	movl	%edx, (%rdi,%rax)
	setb	%sil
	cmovne	%r11d, %ecx
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%r8, %rax
	jne	.L141
	testl	%ecx, %ecx
	movq	%rdi, %rdx
	leaq	(%rdi,%rax), %rsi
	setne	%r8b
	xorl	%ecx, %ecx
	testb	$4, %al
	je	.L142
	leaq	4(%rsp), %rdx
	movl	(%rdi), %ecx
	cmpq	%rsi, %rdx
	je	.L152
	.p2align 4,,10
	.p2align 3
.L142:
	orl	(%rdx), %ecx
	addq	$8, %rdx
	orl	-4(%rdx), %ecx
	cmpq	%rsi, %rdx
	jne	.L142
.L152:
	testl	%ecx, %ecx
	leal	(%r8,%r8), %edx
	setne	%al
	subl	%edx, %eax
.L139:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L154
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L144:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L139
.L154:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE29:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.p2align 4
	.globl	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rcx, %r9
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	testb	%r8b, %r8b
	jle	.L156
	movsbq	%r8b, %rbx
	movq	%rsi, %r10
	movq	%rdx, %r11
	xorl	%eax, %eax
	leaq	0(,%rbx,4), %r12
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L157:
	movl	(%r10,%rax), %esi
	movl	(%r11,%rax), %edx
	addl	%esi, %edx
	addl	%ecx, %edx
	cmpl	%edx, %esi
	movl	%edx, (%rdi,%rax)
	cmovne	%ebp, %ecx
	cmpl	%esi, %edx
	setb	%sil
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%rax, %r12
	jne	.L157
	leal	-1(%r8), %eax
	testl	%ecx, %ecx
	jne	.L158
.L164:
	movsbq	%al, %rax
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L171:
	cmpl	%edx, %ecx
	jb	.L161
	subq	$1, %rax
	testb	%al, %al
	js	.L161
.L162:
	movl	(%r9,%rax,4), %ecx
	movl	(%rdi,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L171
.L155:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	.cfi_restore_state
	movsbq	%r8b, %rbx
	testb	%r8b, %r8b
	jle	.L155
.L158:
	leaq	0(,%rbx,4), %r8
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L163:
	movl	(%rdi,%rax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%r9,%rax), %edx
	cmpl	%edx, %esi
	movl	%edx, (%rdi,%rax)
	setb	%sil
	cmovne	%r10d, %ecx
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%r8, %rax
	jne	.L163
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L156:
	.cfi_restore_state
	movl	%r8d, %eax
	subb	$1, %al
	js	.L155
	movl	$127, %eax
	jmp	.L164
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.p2align 4
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movsbl	(%rdx), %ebp
	movq	%rsi, %rdx
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	leaq	48(%rsp), %rbx
	movups	%xmm0, 20(%rsp)
	movl	%ebp, %ecx
	movq	%rbx, %rdi
	movups	%xmm0, 32(%rsp)
	movl	$3, 16(%rsp)
	call	uECC_vli_mult
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*184(%r14)
	leaq	4(%r14), %rax
	movq	%rax, 8(%rsp)
	testb	%bpl, %bpl
	jle	.L173
	movsbq	%bpl, %rdi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	salq	$2, %rdi
	leaq	16(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L174:
	movl	0(%r13,%rax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%r9,%rax), %edx
	cmpl	%edx, %esi
	movl	%edx, 0(%r13,%rax)
	setb	%sil
	cmovne	%r8d, %ecx
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%rax, %rdi
	jne	.L174
	testl	%ecx, %ecx
	jne	.L184
.L173:
	movsbl	(%r14), %ecx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	call	uECC_vli_mult
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*184(%r14)
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L185
	movq	8(%rsp), %rcx
	movl	%ebp, %r8d
	movq	%r13, %rsi
	movq	%r13, %rdi
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	132(%r14), %rdx
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
	jmp	uECC_vli_modAdd
	.p2align 4,,10
	.p2align 3
.L184:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L175:
	movl	0(%r13,%rax), %esi
	movl	4(%r14,%rax), %edx
	addl	%esi, %edx
	addl	%ecx, %edx
	cmpl	%edx, %esi
	movl	%edx, 0(%r13,%rax)
	cmovne	%r8d, %ecx
	cmpl	%esi, %edx
	setb	%sil
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%rdi, %rax
	jne	.L175
	jmp	.L173
.L185:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
	.p2align 4
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	endbr64
	testb	%r8b, %r8b
	jle	.L196
	movsbq	%r8b, %r8
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %r9
	movq	%rcx, %r10
	leaq	0(,%r8,4), %rdi
	movq	%rsi, %r11
	movq	%rdx, %rbx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L188:
	movl	(%r11,%rax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%rbx,%rax), %edx
	cmpl	%edx, %esi
	movl	%edx, (%r9,%rax)
	setb	%sil
	cmovne	%r8d, %ecx
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%rax, %rdi
	jne	.L188
	testl	%ecx, %ecx
	jne	.L199
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L199:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L189:
	movl	(%r9,%rax), %esi
	movl	(%r10,%rax), %edx
	addl	%esi, %edx
	addl	%ecx, %edx
	cmpl	%edx, %esi
	movl	%edx, (%r9,%rax)
	cmovne	%r8d, %ecx
	cmpl	%esi, %edx
	setb	%sil
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%rdi, %rax
	jne	.L189
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L196:
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.p2align 4
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movzbl	(%rcx), %r11d
	movq	%fs:40, %rdx
	movq	%rdx, 184(%rsp)
	xorl	%edx, %edx
	testb	%r11b, %r11b
	jle	.L200
	movsbq	%r11b, %r9
	movq	%rsi, %r14
	movq	%rcx, %rbp
	movq	%rdi, %rbx
	salq	$2, %r9
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	leaq	(%r9,%r15), %rsi
	testb	$4, %r9b
	je	.L202
	leaq	4(%r15), %rdx
	movl	(%r15), %ecx
	cmpq	%rdx, %rsi
	je	.L233
	.p2align 4,,10
	.p2align 3
.L202:
	orl	(%rdx), %ecx
	addq	$8, %rdx
	orl	-4(%rdx), %ecx
	cmpq	%rdx, %rsi
	jne	.L202
.L233:
	movq	%r9, 32(%rsp)
	testl	%ecx, %ecx
	je	.L200
	movsbl	%r11b, %r13d
	leaq	112(%rsp), %r12
	movq	%r14, %rdx
	movq	%r14, %rsi
	movl	%r13d, %ecx
	movq	%r12, %rdi
	movb	%r11b, 40(%rsp)
	call	uECC_vli_mult
	leaq	48(%rsp), %rdx
	movq	%r12, %rsi
	movq	%rdx, %rdi
	movq	%rdx, 16(%rsp)
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	16(%rsp), %rdx
	call	uECC_vli_mult
	leaq	80(%rsp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	*184(%rbp)
	movq	16(%rsp), %rdx
	movsbl	0(%rbp), %ecx
	movq	%r12, %rdi
	movq	%rdx, %rsi
	call	uECC_vli_mult
	movq	16(%rsp), %rdi
	movq	%r12, %rsi
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	%r15, %rdx
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	*184(%rbp)
	leaq	4(%rbp), %rax
	movl	%r13d, %r8d
	movq	%r15, %rdx
	movq	%rax, %rcx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	call	uECC_vli_modAdd
	movq	8(%rsp), %rcx
	movq	%r15, %rdi
	movl	%r13d, %r8d
	movq	%r15, %rdx
	movq	%r15, %rsi
	call	uECC_vli_modAdd
	movq	8(%rsp), %rcx
	movl	%r13d, %r8d
	movq	%r15, %rdx
	movq	%rbx, %rsi
	call	uECC_vli_modSub
	movsbl	0(%rbp), %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movl	%r13d, %r8d
	movq	%rbx, %rdx
	movq	%rbx, %rsi
	movq	8(%rsp), %rcx
	movq	%r15, %rdi
	call	uECC_vli_modAdd
	movq	8(%rsp), %rcx
	movq	%r15, %rdx
	movq	%rbx, %rdi
	movl	%r13d, %r8d
	movq	%rbx, %rsi
	call	uECC_vli_modAdd
	movl	(%rbx), %edx
	movq	32(%rsp), %r9
	movzbl	40(%rsp), %r11d
	andl	$1, %edx
	leaq	(%rbx,%r9), %rdi
	je	.L204
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L205:
	movl	(%rbx,%rdx), %ecx
	movl	4(%rbp,%rdx), %eax
	addl	%ecx, %eax
	addl	%esi, %eax
	cmpl	%eax, %ecx
	movl	%eax, (%rbx,%rdx)
	cmovne	%r8d, %esi
	cmpl	%ecx, %eax
	setb	%cl
	addq	$4, %rdx
	movzbl	%cl, %ecx
	orl	%ecx, %esi
	cmpq	%r9, %rdx
	jne	.L205
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	cmpq	%rcx, %rbx
	jnb	.L209
	.p2align 4,,10
	.p2align 3
.L208:
	movl	-4(%rcx), %eax
	subq	$4, %rcx
	movl	%eax, %edx
	sall	$31, %eax
	shrl	%edx
	orl	%edi, %edx
	movl	%eax, %edi
	movl	%edx, (%rcx)
	cmpq	%rcx, %rbx
	jb	.L208
.L209:
	sall	$31, %esi
	orl	%esi, -4(%rbx,%r9)
.L207:
	movsbl	0(%rbp), %ecx
	movq	%rbx, %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%r9, 40(%rsp)
	movb	%r11b, 32(%rsp)
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	*184(%rbp)
	movl	%r13d, %r8d
	movq	%r15, %rsi
	movq	%r15, %rdi
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rdx
	call	uECC_vli_modSub
	movq	8(%rsp), %rcx
	movl	%r13d, %r8d
	movq	%r15, %rsi
	movq	24(%rsp), %rdx
	movq	%r15, %rdi
	call	uECC_vli_modSub
	movq	24(%rsp), %rsi
	movl	%r13d, %r8d
	movq	%r15, %rdx
	movq	8(%rsp), %rcx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movsbl	0(%rbp), %ecx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movq	24(%rsp), %rdx
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movq	16(%rsp), %rdi
	movl	%r13d, %r8d
	movq	%rbx, %rsi
	movq	8(%rsp), %rcx
	movq	%rdi, %rdx
	call	uECC_vli_modSub
	movzbl	32(%rsp), %r11d
	movq	40(%rsp), %r9
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L213:
	movl	(%r15,%rdx), %eax
	movl	%eax, (%rbx,%rdx)
	addq	$4, %rdx
	cmpq	%r9, %rdx
	jne	.L213
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L214:
	movl	(%r14,%rdx), %eax
	movl	%eax, (%r15,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.L214
	salq	$2, %r11
	cmpl	$8, %r11d
	jnb	.L215
	testb	$4, %r11b
	jne	.L237
	testl	%r11d, %r11d
	je	.L200
	movzbl	48(%rsp), %eax
	movb	%al, (%r14)
	.p2align 4,,10
	.p2align 3
.L200:
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L238
	addq	$200, %rsp
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
.L204:
	.cfi_restore_state
	cmpq	%rdi, %rbx
	jnb	.L207
	movl	%edx, %ecx
	.p2align 4,,10
	.p2align 3
.L211:
	movl	-4(%rdi), %eax
	subq	$4, %rdi
	movl	%eax, %edx
	sall	$31, %eax
	shrl	%edx
	orl	%ecx, %edx
	movl	%eax, %ecx
	movl	%edx, (%rdi)
	cmpq	%rdi, %rbx
	jb	.L211
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L215:
	movq	48(%rsp), %rax
	leaq	8(%r14), %rdi
	movq	%r14, %r10
	andq	$-8, %rdi
	movq	%rax, (%r14)
	movq	16(%rsp), %rbx
	subq	%rdi, %r10
	leal	(%r11,%r10), %ecx
	movq	-8(%rbx,%r11), %rax
	subq	%r10, %rbx
	shrl	$3, %ecx
	movq	%rbx, %rsi
	movq	%rax, -8(%r14,%r11)
	rep movsq
	jmp	.L200
.L237:
	movl	48(%rsp), %eax
	movl	%eax, (%r14)
	movq	16(%rsp), %rax
	movl	-4(%rax,%r11), %eax
	movl	%eax, -4(%r14,%r11)
	jmp	.L200
.L238:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.p2align 4
	.type	XYcZ_addC, @function
XYcZ_addC:
.LFB49:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	movq	%rdx, %rdi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r15, %rdx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	4(%r8), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movsbl	(%r8), %r12d
	movq	%rsi, 24(%rsp)
	leaq	48(%rsp), %r14
	movq	%rdi, %rsi
	leaq	144(%rsp), %rbp
	movq	%rcx, 16(%rsp)
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	movq	%rdi, 8(%rsp)
	movq	%r14, %rdi
	movb	%r12b, 47(%rsp)
	call	uECC_vli_modSub
	movq	%r14, %rdx
	movl	%r12d, %ecx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	%r14, %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%r14, %rdx
	movq	%rbp, %rdi
	movq	8(%rsp), %rsi
	call	uECC_vli_mult
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	%r14, %rdi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	call	uECC_vli_modAdd
	movq	16(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	24(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	leaq	80(%rsp), %rax
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	movq	%rax, 32(%rsp)
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	32(%rsp), %rdx
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi
	call	uECC_vli_mult
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	%r15, %rsi
	movq	8(%rsp), %rdx
	movq	32(%rsp), %rdi
	call	uECC_vli_modAdd
	movq	16(%rsp), %rsi
	movsbl	(%rbx), %ecx
	movq	%rbp, %rdi
	movq	%rsi, %rdx
	call	uECC_vli_mult
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	8(%rsp), %rax
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	32(%rsp), %rdx
	movq	%rax, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modSub
	leaq	112(%rsp), %rax
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rax, 8(%rsp)
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	8(%rsp), %rdx
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi
	call	uECC_vli_mult
	movq	16(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	16(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	24(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	%r14, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	8(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	32(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movq	8(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	32(%rsp), %rdi
	movq	%r15, %rdx
	call	uECC_vli_modSub
	movq	%r14, %rdx
	movq	32(%rsp), %r14
	movsbl	(%rbx), %ecx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	call	uECC_vli_mult
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	*184(%rbx)
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	%r14, %rsi
	movq	24(%rsp), %rdx
	movq	%rdx, %rdi
	call	uECC_vli_modSub
	movzbl	47(%rsp), %eax
	testb	%al, %al
	jle	.L239
	salq	$2, %rax
	cmpl	$8, %eax
	jnb	.L241
	testb	$4, %al
	jne	.L247
	testl	%eax, %eax
	je	.L239
	movzbl	112(%rsp), %eax
	movb	%al, (%r15)
.L239:
	movq	216(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L248
	addq	$232, %rsp
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
.L241:
	.cfi_restore_state
	movq	112(%rsp), %rdx
	leaq	8(%r15), %rdi
	andq	$-8, %rdi
	movq	%rdx, (%r15)
	movq	8(%rsp), %rbx
	movq	-8(%rbx,%rax), %rdx
	movq	%rdx, -8(%r15,%rax)
	movq	%r15, %rdx
	subq	%rdi, %rdx
	leal	(%rax,%rdx), %ecx
	subq	%rdx, %rbx
	movl	%ecx, %eax
	movq	%rbx, %rsi
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
	jmp	.L239
.L247:
	movl	112(%rsp), %edx
	movl	%edx, (%r15)
	movq	8(%rsp), %rbx
	movl	-4(%rbx,%rax), %edx
	movl	%edx, -4(%r15,%rax)
	jmp	.L239
.L248:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.p2align 4
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%ecx, %r10d
	movq	%rdi, %r9
	movq	%rdx, %rdi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movsbl	%cl, %r14d
	movsbw	%r10b, %r8w
	movq	%rdx, %r11
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	sall	$6, %r8d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	movq	%rsi, 56(%rsp)
	leaq	128(%rsp), %rax
	movl	%r14d, %esi
	movq	%rax, 48(%rsp)
	call	uECC_vli_numBits
	subl	%eax, %r8d
	testw	%r8w, %r8w
	leal	31(%r8), %edx
	movl	%r8d, %eax
	cmovns	%r8d, %edx
	sarw	$15, %ax
	shrw	$11, %ax
	leal	(%r8,%rax), %esi
	sarw	$5, %dx
	andl	$31, %esi
	subl	%eax, %esi
	testb	%dl, %dl
	jle	.L257
	leal	-1(%rdx), %eax
	leaq	64(%rsp), %rdi
	movzbl	%al, %eax
	leaq	4(,%rax,4), %rbp
	cmpl	$8, %ebp
	jb	.L253
	movq	%rbp, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
.L253:
	andl	$4, %ebp
	jne	.L303
.L257:
	testw	%si, %si
	jle	.L304
.L251:
	testb	%r10b, %r10b
	je	.L302
	movswl	%si, %ebx
	movl	$32, %r12d
	leal	-1(%r14), %eax
	movq	%r11, %rsi
	leaq	4(%r11,%rax,4), %r13
	movsbl	%dl, %edi
	subl	%ebx, %r12d
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L260:
	movl	(%rsi), %edx
	movl	%ebx, %ecx
	movl	%edi, %ebp
	addq	$4, %rsi
	addl	$1, %edi
	movl	%edx, %eax
	sall	%cl, %eax
	movl	%r12d, %ecx
	orl	%r11d, %eax
	shrl	%cl, %edx
	movl	%eax, 64(%rsp,%rbp,4)
	movl	%edx, %r11d
	cmpq	%rsi, %r13
	jne	.L260
.L302:
	leaq	64(%rsp), %r15
.L261:
	movsbq	%r10b, %rdx
	movq	%r9, 24(%rsp)
	leal	-1(%r14), %ebp
	movslq	%r14d, %r12
	leaq	0(,%rdx,4), %rsi
	movq	%r15, 16(%rsp)
	leal	(%r14,%r14), %r11d
	movslq	%ebp, %rbp
	leaq	(%r15,%rsi), %rax
	movl	%r10d, 36(%rsp)
	movl	$1, %ebx
	movl	%r14d, %r10d
	leaq	-4(%rax), %rdi
	leaq	(%rax,%rsi), %rcx
	movq	%rdx, 40(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	movq	%rcx, %rdx
	subq	%rsi, %rdi
	subq	$4, %rdi
	.p2align 4,,10
	.p2align 3
.L259:
	xorl	%r9d, %r9d
	testl	%r10d, %r10d
	jle	.L280
	movl	%ebx, %ecx
	movl	%ebx, 4(%rsp)
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	movq	48(%rsp,%rcx,8), %r15
	movw	%r8w, 34(%rsp)
	movl	%ebx, %ecx
	xorl	$1, %ecx
	movq	48(%rsp,%rcx,8), %r14
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L271:
	movsbq	%cl, %rbx
	movl	64(%rsp,%rsi,4), %r13d
	movl	(%r15,%rbx,4), %r8d
	addl	%r9d, %r13d
	movl	%r8d, %esi
	subl	%r13d, %esi
	setb	%r13b
	cmpl	%esi, %r8d
	movl	%esi, (%r14,%rbx,4)
	movzbl	%r13b, %r13d
	cmovne	%r13d, %r9d
	addl	$1, %ecx
	movsbq	%cl, %rsi
	cmpl	%r11d, %esi
	jl	.L271
	movl	4(%rsp), %ebx
	movzwl	34(%rsp), %r8d
.L280:
	cmpl	%r9d, %ebx
	movq	8(%rsp), %r9
	sete	%bl
	xorl	%ecx, %ecx
	movzbl	%bl, %ebx
	movl	%ecx, %r13d
	cmpq	%rax, 16(%rsp)
	jnb	.L275
	.p2align 4,,10
	.p2align 3
.L272:
	movl	(%r9), %esi
	subq	$4, %r9
	movl	%esi, %ecx
	sall	$31, %esi
	shrl	%ecx
	orl	%r13d, %ecx
	movl	%esi, %r13d
	movl	%ecx, 4(%r9)
	cmpq	%rdi, %r9
	jne	.L272
.L275:
	movl	64(%rsp,%r12,4), %ecx
	movq	%rdx, %r9
	sall	$31, %ecx
	orl	%ecx, 64(%rsp,%rbp,4)
	xorl	%ecx, %ecx
	movl	%ecx, %r13d
	cmpq	%rdx, %rax
	jnb	.L274
	.p2align 4,,10
	.p2align 3
.L277:
	movl	-4(%r9), %esi
	subq	$4, %r9
	movl	%esi, %ecx
	sall	$31, %esi
	shrl	%ecx
	orl	%r13d, %ecx
	movl	%esi, %r13d
	movl	%ecx, (%r9)
	cmpq	%r9, %rax
	jb	.L277
.L274:
	subl	$1, %r8d
	cmpw	$-1, %r8w
	jne	.L259
	movl	36(%rsp), %r10d
	movq	24(%rsp), %r9
	movq	40(%rsp), %rdx
	movq	48(%rsp,%rbx,8), %rbx
	testb	%r10b, %r10b
	jle	.L249
.L267:
	salq	$2, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L281:
	movl	(%rbx,%rax), %ecx
	movl	%ecx, (%r9,%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L281
.L249:
	movq	200(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L305
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
.L303:
	.cfi_restore_state
	movl	$0, (%rdi)
	testw	%si, %si
	jg	.L251
.L304:
	movsbq	%dl, %rax
	leaq	64(%rsp), %r15
	salq	$2, %rax
	testb	%r10b, %r10b
	jle	.L262
	movzbl	%r10b, %edx
	addq	%r15, %rax
	salq	$2, %rdx
	cmpl	$8, %edx
	jnb	.L263
	testb	$4, %dl
	jne	.L306
	testl	%edx, %edx
	je	.L264
	movzbl	(%r11), %edx
	movb	%dl, (%rax)
.L264:
	movsbq	%r10b, %rdx
	testw	%r8w, %r8w
	jns	.L261
	jmp	.L267
.L263:
	movq	(%r11), %rcx
	leaq	8(%rax), %rdi
	movq	%r11, %rsi
	andq	$-8, %rdi
	movq	%rcx, (%rax)
	movq	-8(%r11,%rdx), %rcx
	movq	%rcx, -8(%rax,%rdx)
	subq	%rdi, %rax
	leal	(%rdx,%rax), %ecx
	subq	%rax, %rsi
	shrl	$3, %ecx
	rep movsq
	jmp	.L264
.L262:
	testw	%r8w, %r8w
	jns	.L261
	jmp	.L249
.L306:
	movl	(%r11), %ecx
	movl	%ecx, (%rax)
	movl	-4(%r11,%rdx), %ecx
	movl	%ecx, -4(%rax,%rdx)
	jmp	.L264
.L305:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.p2align 4
	.globl	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movsbl	%r8b, %ebx
	movl	%ebx, %ecx
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r13
	movq	%r13, %rdi
	call	uECC_vli_mult
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mmod
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L310
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L310:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.p2align 4
	.globl	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rcx, %rbx
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movsbl	(%rcx), %ecx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	movq	%r12, %rdi
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	*184(%rbx)
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L314
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L314:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.p2align 4
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB40:
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	movq	%rdi, 56(%rsp)
	movq	%rdx, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	testb	%cl, %cl
	jle	.L315
	movsbq	%cl, %rdx
	movl	%ecx, %r8d
	movq	%rsi, %rax
	leaq	0(,%rdx,4), %rbx
	xorl	%edx, %edx
	movq	%rbx, 72(%rsp)
	leaq	(%rbx,%rsi), %rcx
	andl	$4, %ebx
	je	.L318
	leaq	4(%rsi), %rax
	movl	(%rsi), %edx
	cmpq	%rax, %rcx
	je	.L418
	.p2align 4,,10
	.p2align 3
.L318:
	orl	(%rax), %edx
	addq	$8, %rax
	orl	-4(%rax), %edx
	cmpq	%rax, %rcx
	jne	.L318
.L418:
	testl	%edx, %edx
	je	.L430
	movzbl	%r8b, %r15d
	leaq	96(%rsp), %rbx
	leal	-1(%r8), %edx
	salq	$2, %r15
	movq	%rbx, %rdi
	cmpl	$8, %r15d
	jnb	.L431
	testb	$4, %r15b
	jne	.L432
.L328:
	leaq	128(%rsp), %rbp
	movq	(%rsp), %rsi
	movq	%rbp, %rdi
	cmpl	$8, %r15d
	jnb	.L433
	testb	$4, %r15b
	jne	.L434
.L332:
	leaq	160(%rsp), %r12
	movq	%r12, %rdi
	cmpl	$8, %r15d
	jnb	.L435
	testb	$4, %r15b
	jne	.L436
.L336:
	leaq	192(%rsp), %r14
	movl	$1, 160(%rsp)
	movq	%r14, %rdi
	cmpl	$8, %r15d
	jnb	.L437
	testb	$4, %r15b
	jne	.L438
.L340:
	movq	72(%rsp), %rax
	movq	$-4, %r13
	movq	%r15, 64(%rsp)
	leaq	0(%rbp,%rax), %rdi
	leaq	(%rbx,%rax), %r10
	subq	%rax, %r13
	leaq	-4(%rdi), %rcx
	leaq	(%rdi,%r13), %r9
	movq	%rdi, 32(%rsp)
	addq	%r10, %r13
	leaq	(%r14,%rax), %rdi
	movq	%rcx, 48(%rsp)
	addq	%r12, %rax
	leaq	-4(%r10), %rcx
	movq	%rcx, 24(%rsp)
	movsbl	%r8b, %ecx
	movq	%r10, %r15
	movq	%rax, 80(%rsp)
	movzbl	%dl, %eax
	movl	%ecx, 20(%rsp)
	movq	%rdi, 88(%rsp)
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L341:
	movq	8(%rsp), %rdx
	movq	%rdx, %rax
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L440:
	cmpl	%ecx, %esi
	jb	.L380
	subq	$1, %rdx
	testb	%dl, %dl
	js	.L439
.L365:
	movl	(%rbx,%rdx,4), %esi
	movl	0(%rbp,%rdx,4), %ecx
	cmpl	%esi, %ecx
	jnb	.L440
	movl	96(%rsp), %edx
	movl	$1, %ecx
	andl	$1, %edx
	je	.L441
.L417:
	movl	128(%rsp), %edx
	andl	$1, %edx
	je	.L442
	cmpb	$1, %cl
	jne	.L376
	movq	%rbp, %r8
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L349:
	movl	(%rsi), %edi
	movl	%edi, %edx
	subl	%ecx, %edx
	subl	(%r8), %edx
	cmpl	%edx, %edi
	movl	%edx, (%rsi)
	setb	%dil
	cmovne	%r11d, %ecx
	addq	$4, %rsi
	addq	$4, %r8
	movzbl	%dil, %edi
	orl	%edi, %ecx
	cmpq	%r15, %rsi
	jne	.L349
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	%r15, %rbx
	jnb	.L351
	movl	%edx, %edi
	.p2align 4,,10
	.p2align 3
.L350:
	movl	(%rsi), %ecx
	subq	$4, %rsi
	movl	%ecx, %edx
	shrl	%edx
	orl	%edi, %edx
	movl	%ecx, %edi
	movl	%edx, 4(%rsi)
	sall	$31, %edi
	cmpq	%rsi, %r13
	jne	.L350
	movl	(%r12,%rax,4), %ecx
	movl	(%r14,%rax,4), %edx
	cmpl	%ecx, %edx
	jb	.L353
	.p2align 4,,10
	.p2align 3
.L443:
	cmpl	%edx, %ecx
	jb	.L354
	subq	$1, %rax
	testb	%al, %al
	js	.L353
.L351:
	movl	(%r12,%rax,4), %ecx
	movl	(%r14,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L443
.L353:
	movq	80(%rsp), %r10
	movq	%r14, %rdi
	movq	%r12, %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L355:
	movl	(%rcx), %esi
	movl	%esi, %eax
	subl	%edx, %eax
	subl	(%rdi), %eax
	cmpl	%eax, %esi
	movl	%eax, (%rcx)
	setb	%sil
	cmovne	%r8d, %edx
	addq	$4, %rcx
	addq	$4, %rdi
	movzbl	%sil, %esi
	orl	%esi, %edx
	cmpq	%r10, %rcx
	jne	.L355
.L429:
	movl	20(%rsp), %edx
	movq	(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r9, 40(%rsp)
	call	vli_modInv_update
	movq	40(%rsp), %r9
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L380:
	movl	96(%rsp), %edx
	movl	$-1, %ecx
	andl	$1, %edx
	jne	.L417
.L441:
	movq	24(%rsp), %rax
	movl	%edx, %esi
	cmpq	%r15, %rbx
	jnb	.L429
	.p2align 4,,10
	.p2align 3
.L342:
	movl	(%rax), %ecx
	subq	$4, %rax
	movl	%ecx, %edx
	shrl	%edx
	orl	%esi, %edx
	movl	%ecx, %esi
	movl	%edx, 4(%rax)
	sall	$31, %esi
	cmpq	%rax, %r13
	jne	.L342
	jmp	.L429
	.p2align 4,,10
	.p2align 3
.L439:
	movq	64(%rsp), %r15
	cmpl	$8, %r15d
	jnb	.L369
	testb	$4, %r15b
	jne	.L444
	testl	%r15d, %r15d
	jne	.L445
	.p2align 4,,10
	.p2align 3
.L315:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L446
	addq	$248, %rsp
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
.L442:
	.cfi_restore_state
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rax
	movl	%edx, %esi
	cmpq	%rdi, %rbp
	jnb	.L428
	.p2align 4,,10
	.p2align 3
.L346:
	movl	(%rax), %ecx
	subq	$4, %rax
	movl	%ecx, %edx
	shrl	%edx
	orl	%esi, %edx
	movl	%ecx, %esi
	movl	%edx, 4(%rax)
	sall	$31, %esi
	cmpq	%r9, %rax
	jne	.L346
.L428:
	movl	20(%rsp), %edx
	movq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r9, 40(%rsp)
	call	vli_modInv_update
	movq	40(%rsp), %r9
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L376:
	movq	32(%rsp), %r10
	movq	%rbx, %r8
	movq	%rbp, %rsi
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L348:
	movl	(%rsi), %edi
	movl	%edi, %edx
	subl	%ecx, %edx
	subl	(%r8), %edx
	cmpl	%edx, %edi
	movl	%edx, (%rsi)
	setb	%dil
	cmovne	%r11d, %ecx
	addq	$4, %rsi
	addq	$4, %r8
	movzbl	%dil, %edi
	orl	%edi, %ecx
	cmpq	%rsi, %r10
	jne	.L348
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	%rdi, %rbp
	jnb	.L358
	movl	%edx, %edi
	.p2align 4,,10
	.p2align 3
.L357:
	movl	(%rsi), %ecx
	subq	$4, %rsi
	movl	%ecx, %edx
	shrl	%edx
	orl	%edi, %edx
	movl	%ecx, %edi
	movl	%edx, 4(%rsi)
	sall	$31, %edi
	cmpq	%r9, %rsi
	jne	.L357
	movl	(%r14,%rax,4), %ecx
	movl	(%r12,%rax,4), %edx
	cmpl	%ecx, %edx
	jb	.L360
	.p2align 4,,10
	.p2align 3
.L447:
	cmpl	%edx, %ecx
	jb	.L361
	subq	$1, %rax
	testb	%al, %al
	js	.L360
.L358:
	movl	(%r14,%rax,4), %ecx
	movl	(%r12,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L447
.L360:
	movq	88(%rsp), %r10
	movq	%r12, %rdi
	movq	%r14, %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L362:
	movl	(%rcx), %esi
	movl	%esi, %eax
	subl	%edx, %eax
	subl	(%rdi), %eax
	cmpl	%eax, %esi
	movl	%eax, (%rcx)
	setb	%sil
	cmovne	%r8d, %edx
	addq	$4, %rcx
	addq	$4, %rdi
	movzbl	%sil, %esi
	orl	%esi, %edx
	cmpq	%rcx, %r10
	jne	.L362
	jmp	.L428
	.p2align 4,,10
	.p2align 3
.L369:
	movq	56(%rsp), %rbx
	movq	160(%rsp), %rax
	movq	%r12, %rsi
	movq	%rax, (%rbx)
	movq	-8(%r12,%r15), %rax
	leaq	8(%rbx), %rdi
	andq	$-8, %rdi
	movq	%rax, -8(%rbx,%r15)
	movq	%rbx, %rax
	subq	%rdi, %rax
	leal	(%r15,%rax), %ecx
	subq	%rax, %rsi
	shrl	$3, %ecx
	rep movsq
	jmp	.L315
.L445:
	movzbl	160(%rsp), %eax
	movq	56(%rsp), %rbx
	movb	%al, (%rbx)
	jmp	.L315
.L438:
	movl	$0, (%rdi)
	jmp	.L340
.L436:
	movl	$0, (%rdi)
	jmp	.L336
.L434:
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	jmp	.L332
.L432:
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	jmp	.L328
.L433:
	movq	%r15, %rcx
	shrq	$3, %rcx
	rep movsq
	testb	$4, %r15b
	je	.L332
	jmp	.L434
.L437:
	movq	%r15, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
	testb	$4, %r15b
	je	.L340
	jmp	.L438
.L435:
	movq	%r15, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
	testb	$4, %r15b
	je	.L336
	jmp	.L436
.L431:
	movq	%r15, %rcx
	shrq	$3, %rcx
	rep movsq
	testb	$4, %r15b
	je	.L328
	jmp	.L432
.L354:
	movq	(%rsp), %rax
	movq	72(%rsp), %rdi
	movq	%r12, %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	leaq	(%rax,%rdi), %r11
	.p2align 4,,10
	.p2align 3
.L356:
	movl	(%rcx), %edi
	movl	(%rsi), %eax
	addl	%edi, %eax
	addl	%edx, %eax
	cmpl	%eax, %edi
	movl	%eax, (%rcx)
	cmovne	%r8d, %edx
	cmpl	%edi, %eax
	setb	%dil
	addq	$4, %rsi
	addq	$4, %rcx
	movzbl	%dil, %edi
	orl	%edi, %edx
	cmpq	%r11, %rsi
	jne	.L356
	jmp	.L353
.L430:
	movzbl	%r8b, %eax
	salq	$2, %rax
	cmpl	$8, %eax
	jnb	.L320
	testb	$4, %al
	jne	.L448
	testl	%eax, %eax
	je	.L315
	movq	56(%rsp), %rax
	movb	$0, (%rax)
	jmp	.L315
.L361:
	movq	(%rsp), %rax
	movq	72(%rsp), %rdi
	movq	%r14, %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	leaq	(%rdi,%rax), %r11
	.p2align 4,,10
	.p2align 3
.L363:
	movl	(%rcx), %edi
	movl	(%rsi), %eax
	addl	%edi, %eax
	addl	%edx, %eax
	cmpl	%eax, %edi
	movl	%eax, (%rcx)
	cmovne	%r8d, %edx
	cmpl	%edi, %eax
	setb	%dil
	addq	$4, %rsi
	addq	$4, %rcx
	movzbl	%dil, %edi
	orl	%edi, %edx
	cmpq	%rsi, %r11
	jne	.L363
	jmp	.L360
.L320:
	movq	56(%rsp), %rbx
	leaq	8(%rbx), %rdi
	movq	$0, (%rbx)
	movq	$0, -8(%rbx,%rax)
	andq	$-8, %rdi
	subq	%rdi, %rbx
	leal	(%rax,%rbx), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	jmp	.L315
.L444:
	movl	160(%rsp), %eax
	movq	56(%rsp), %rbx
	movl	%eax, (%rbx)
	movl	-4(%r12,%r15), %eax
	movl	%eax, -4(%rbx,%r15)
	jmp	.L315
.L448:
	movq	56(%rsp), %rbx
	movl	$0, (%rbx)
	movl	$0, -4(%rbx,%rax)
	jmp	.L315
.L446:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE40:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.p2align 4
	.globl	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
.LFB43:
	.cfi_startproc
	endbr64
	leaq	curve_secp256r1(%rip), %rax
	ret
	.cfi_endproc
.LFE43:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.p2align 4
	.globl	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
.LFB45:
	.cfi_startproc
	endbr64
	movzbl	(%rsi), %eax
	addl	%eax, %eax
	testb	%al, %al
	jle	.L453
	subl	$1, %eax
	leaq	4(%rdi), %rcx
	movzbl	%al, %eax
	leaq	(%rcx,%rax,4), %rdx
	xorl	%eax, %eax
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	andl	$4, %esi
	je	.L452
	movl	(%rdi), %eax
	movq	%rcx, %rdi
	cmpq	%rdx, %rcx
	je	.L460
	.p2align 4,,10
	.p2align 3
.L452:
	orl	(%rdi), %eax
	addq	$8, %rdi
	orl	-4(%rdi), %eax
	cmpq	%rdx, %rdi
	jne	.L452
.L460:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L453:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE45:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.p2align 4
	.globl	apply_z
	.type	apply_z, @function
apply_z:
.LFB46:
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
	movq	%rdx, %rsi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movsbl	(%rcx), %ecx
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	32(%rsp), %rbp
	movq	%rsp, %r12
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	call	uECC_vli_mult
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	*184(%rbx)
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L464
	addq	$120, %rsp
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
.L464:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE46:
	.size	apply_z, .-apply_z
	.p2align 4
	.globl	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
.LFB48:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	movq	%rdi, %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movsbl	(%r8), %r15d
	movq	%rsi, 16(%rsp)
	leaq	32(%rsp), %rbp
	leaq	64(%rsp), %r13
	movq	%r12, %rsi
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	leaq	4(%r8), %rax
	movq	%rdi, 8(%rsp)
	movl	%r15d, %r8d
	movq	%rax, %rcx
	movq	%rbp, %rdi
	movq	%rax, (%rsp)
	movb	%r15b, 31(%rsp)
	call	uECC_vli_modSub
	movl	%r15d, %ecx
	movq	%rbp, %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	uECC_vli_mult
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rbp, %rdx
	movq	%r13, %rdi
	movq	8(%rsp), %rsi
	call	uECC_vli_mult
	movq	8(%rsp), %rdi
	movq	%r13, %rsi
	call	*184(%rbx)
	movsbl	(%rbx), %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	uECC_vli_mult
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	*184(%rbx)
	movq	(%rsp), %rcx
	movl	%r15d, %r8d
	movq	%r14, %rsi
	movq	16(%rsp), %rdx
	movq	%r14, %rdi
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	%r14, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	uECC_vli_mult
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*184(%rbx)
	movq	(%rsp), %rcx
	movl	%r15d, %r8d
	movq	%rbp, %rsi
	movq	8(%rsp), %rdx
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movq	(%rsp), %rcx
	movl	%r15d, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movq	(%rsp), %rcx
	movl	%r15d, %r8d
	movq	%r12, %rsi
	movq	8(%rsp), %rdx
	movq	%r12, %rdi
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	16(%rsp), %rsi
	movq	%r12, %rdx
	movq	%r13, %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rdi
	movq	%r13, %rsi
	call	*184(%rbx)
	movq	(%rsp), %rcx
	movl	%r15d, %r8d
	movq	%rbp, %rdx
	movq	8(%rsp), %rsi
	movq	%r12, %rdi
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	uECC_vli_mult
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	*184(%rbx)
	movq	(%rsp), %rcx
	movl	%r15d, %r8d
	movq	%r14, %rsi
	movq	16(%rsp), %rdx
	movq	%r14, %rdi
	call	uECC_vli_modSub
	movzbl	31(%rsp), %eax
	testb	%al, %al
	jle	.L465
	salq	$2, %rax
	cmpl	$8, %eax
	jnb	.L467
	testb	$4, %al
	jne	.L473
	testl	%eax, %eax
	je	.L465
	movzbl	32(%rsp), %eax
	movb	%al, (%r12)
.L465:
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L474
	addq	$152, %rsp
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
.L467:
	.cfi_restore_state
	movq	32(%rsp), %rdx
	leaq	8(%r12), %rdi
	movq	%rbp, %rsi
	andq	$-8, %rdi
	movq	%rdx, (%r12)
	movq	-8(%rbp,%rax), %rdx
	movq	%rdx, -8(%r12,%rax)
	subq	%rdi, %r12
	leal	(%rax,%r12), %ecx
	subq	%r12, %rsi
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
	jmp	.L465
.L473:
	movl	32(%rsp), %edx
	movl	%edx, (%r12)
	movl	-4(%rbp,%rax), %edx
	movl	%edx, -4(%r12,%rax)
	jmp	.L465
.L474:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.p2align 4
	.globl	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rcx, %rax
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
	movq	%r9, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%r8d, %ebx
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	movq	%rdi, 72(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%fs:40, %rdx
	movq	%rdx, 328(%rsp)
	xorl	%edx, %edx
	movsbq	(%r9), %rdx
	leaq	0(,%rdx,4), %rcx
	movb	%dl, 55(%rsp)
	movq	%rcx, 64(%rsp)
	testb	%dl, %dl
	jle	.L476
	movzbl	%dl, %edx
	leaq	160(%rsp), %r10
	salq	$2, %rdx
	movq	%r10, 40(%rsp)
	movq	%r10, %rdi
	cmpl	$8, %edx
	jb	.L477
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
.L477:
	testb	$4, %dl
	jne	.L531
.L480:
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rcx
	leaq	224(%rsp), %r15
	leaq	(%rdi,%rcx), %r11
	movq	%r15, %rdi
	movq	%r11, 88(%rsp)
	movq	%r11, %rsi
	cmpl	$8, %edx
	jb	.L481
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
.L481:
	testb	$4, %dl
	jne	.L532
	testq	%rax, %rax
	je	.L533
.L485:
	leaq	256(%rsp), %rsi
	movq	%rsi, 32(%rsp)
	movq	%rsi, %rdi
	cmpl	$8, %edx
	jnb	.L534
	testb	$4, %dl
	jne	.L535
.L493:
	movq	40(%rsp), %rsi
	leaq	128(%rsp), %r12
	movq	%rdx, 8(%rsp)
	leaq	192(%rsp), %r13
	movq	%r12, %rdi
	call	memmove@PLT
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	memmove@PLT
.L487:
	movq	32(%rsp), %r14
	movq	40(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	movq	%r14, %rdx
	call	apply_z
	movq	%r15, %rsi
	movq	40(%rsp), %rdi
	movq	%rbp, %rcx
	movq	%r14, %rdx
	leal	-2(%rbx), %r15d
	call	*168(%rbp)
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	apply_z
	testw	%r15w, %r15w
	jle	.L501
	movq	%rbp, 8(%rsp)
	movq	%r12, %rax
	movl	%r15d, %r12d
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L498:
	movl	%r12d, %edx
	movq	24(%rsp), %rsi
	movl	%r12d, %ecx
	movl	$1, %eax
	sarw	$5, %dx
	sall	%cl, %eax
	xorl	%ebx, %ebx
	movq	8(%rsp), %r8
	movswq	%dx, %rdx
	andl	(%rsi,%rdx,4), %eax
	sete	%bl
	xorl	%r14d, %r14d
	salq	$5, %rbx
	leaq	0(%r13,%rbx), %rbp
	addq	%r15, %rbx
	testl	%eax, %eax
	setne	%r14b
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	salq	$5, %r14
	leaq	0(%r13,%r14), %rax
	addq	%r15, %r14
	movq	%rax, %rsi
	movq	%r14, %rdi
	movq	%rax, 16(%rsp)
	call	XYcZ_addC
	movq	8(%rsp), %r8
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	16(%rsp), %rcx
	movq	%rbx, %rdi
	call	XYcZ_add
	subw	$1, %r12w
	jne	.L498
	movq	8(%rsp), %rbp
	movq	%r15, %r12
.L501:
	movq	24(%rsp), %rax
	movq	%rbp, %r8
	leaq	96(%rsp), %rbx
	movl	(%rax), %edx
	andl	$1, %edx
	movl	%edx, %eax
	salq	$5, %rdx
	xorl	$1, %eax
	leaq	0(%r13,%rdx), %r14
	leaq	(%r12,%rdx), %r15
	salq	$5, %rax
	movq	%r14, %rsi
	movq	%r15, %rdi
	leaq	0(%r13,%rax), %r9
	addq	%r12, %rax
	movq	%r9, %rcx
	movq	%rax, %rdx
	movq	%r9, 80(%rsp)
	movq	%rax, 24(%rsp)
	call	XYcZ_addC
	leaq	4(%rbp), %r10
	movq	%r12, %rdx
	movq	%rbx, %rdi
	movsbl	55(%rsp), %r8d
	movq	40(%rsp), %rsi
	movq	%r10, %rcx
	movq	%r10, 8(%rsp)
	movl	%r8d, 16(%rsp)
	call	uECC_vli_modSub
	movsbl	0(%rbp), %ecx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	32(%rsp), %rdi
	call	uECC_vli_mult
	movq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	56(%rsp), %rdx
	movq	%rbx, %rsi
	movq	32(%rsp), %rdi
	call	uECC_vli_mult
	movq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movl	16(%rsp), %ecx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	movq	8(%rsp), %rdx
	call	uECC_vli_modInv
	movsbl	0(%rbp), %ecx
	movq	88(%rsp), %rdx
	movq	%rbx, %rsi
	movq	32(%rsp), %rdi
	call	uECC_vli_mult
	movq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	32(%rsp), %rdi
	call	uECC_vli_mult
	movq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movq	%rbp, %r8
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	80(%rsp), %rsi
	movq	24(%rsp), %rdi
	call	XYcZ_add
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	apply_z
	cmpb	$0, 55(%rsp)
	jle	.L475
	movzbl	55(%rsp), %eax
	salq	$2, %rax
	cmpl	$8, %eax
	jnb	.L502
	testb	$4, %al
	jne	.L536
	testl	%eax, %eax
	je	.L503
	movzbl	128(%rsp), %edx
	movq	72(%rsp), %rdi
	movb	%dl, (%rdi)
.L503:
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rdi
	addq	%rdi, %rdx
	cmpl	$8, %eax
	jnb	.L506
	testb	$4, %al
	jne	.L537
	testl	%eax, %eax
	je	.L475
	movzbl	192(%rsp), %eax
	movb	%al, (%rdx)
.L475:
	movq	328(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L538
	addq	$344, %rsp
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
.L502:
	.cfi_restore_state
	movq	72(%rsp), %rsi
	movq	128(%rsp), %rdx
	leaq	8(%rsi), %rdi
	movq	%rdx, (%rsi)
	movq	-8(%r12,%rax), %rdx
	andq	$-8, %rdi
	movq	%rdx, -8(%rsi,%rax)
	subq	%rdi, %rsi
	movq	%rsi, %rdx
	movq	%r12, %rsi
	leal	(%rax,%rdx), %ecx
	subq	%rdx, %rsi
	shrl	$3, %ecx
	rep movsq
	jmp	.L503
	.p2align 4,,10
	.p2align 3
.L532:
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	testq	%rax, %rax
	jne	.L485
.L533:
	leaq	256(%rsp), %rsi
	movq	%rsi, 32(%rsp)
	movq	%rsi, %rdi
	cmpl	$8, %edx
	jnb	.L539
	testb	$4, %dl
	jne	.L540
.L497:
	movl	$1, 256(%rsp)
	jmp	.L493
	.p2align 4,,10
	.p2align 3
.L531:
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	jmp	.L480
	.p2align 4,,10
	.p2align 3
.L535:
	movl	(%rax), %eax
	movl	%eax, (%rdi)
	jmp	.L493
	.p2align 4,,10
	.p2align 3
.L534:
	movq	%rdx, %rcx
	movq	%rax, %rsi
	shrq	$3, %rcx
	rep movsq
	movq	%rsi, %rax
	testb	$4, %dl
	je	.L493
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L506:
	movq	192(%rsp), %rcx
	leaq	8(%rdx), %rdi
	movq	%r13, %rsi
	andq	$-8, %rdi
	movq	%rcx, (%rdx)
	movq	-8(%r13,%rax), %rcx
	movq	%rcx, -8(%rax,%rdx)
	subq	%rdi, %rdx
	leal	(%rax,%rdx), %ecx
	subq	%rdx, %rsi
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
	jmp	.L475
	.p2align 4,,10
	.p2align 3
.L540:
	movl	$0, (%rdi)
	movl	$1, 256(%rsp)
	jmp	.L493
	.p2align 4,,10
	.p2align 3
.L539:
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep stosq
	testb	$4, %dl
	je	.L497
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L476:
	testq	%rax, %rax
	jne	.L530
	movl	$1, 256(%rsp)
.L530:
	leaq	160(%rsp), %rax
	movq	64(%rsp), %rdi
	leaq	224(%rsp), %r15
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %rax
	leaq	128(%rsp), %r12
	leaq	192(%rsp), %r13
	addq	%rdi, %rax
	movq	%rax, 88(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L487
.L537:
	movl	192(%rsp), %ecx
	movl	%ecx, (%rdx)
	movl	-4(%r13,%rax), %ecx
	movl	%ecx, -4(%rax,%rdx)
	jmp	.L475
.L536:
	movl	128(%rsp), %edx
	movq	72(%rsp), %rdi
	movl	%edx, (%rdi)
	movl	-4(%r12,%rax), %edx
	movl	%edx, -4(%rdi,%rax)
	jmp	.L503
.L538:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE50:
	.size	EccPoint_mult, .-EccPoint_mult
	.p2align 4
	.globl	regularize_k
	.type	regularize_k, @function
regularize_k:
.LFB51:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rcx, %r8
	movq	%rsi, %r9
	movq	%rdx, %r11
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movswl	2(%rcx), %r13d
	movl	%r13d, %eax
	leal	62(%r13), %r12d
	movl	%r13d, %ecx
	addl	$31, %eax
	cmovns	%eax, %r12d
	sarl	$5, %r12d
	movl	%r12d, %r10d
	movsbl	%r12b, %r14d
	testb	%r12b, %r12b
	jle	.L542
	movq	%rdi, %rbx
	xorl	%eax, %eax
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L543:
	movl	(%rbx,%rax,4), %edi
	movl	36(%r8,%rax,4), %edx
	addl	%edi, %edx
	addl	%esi, %edx
	cmpl	%edx, %edi
	movl	%edx, (%r9,%rax,4)
	cmovne	%ebp, %esi
	cmpl	%edi, %edx
	setb	%dil
	addq	$1, %rax
	movzbl	%dil, %edi
	orl	%edi, %esi
	cmpb	%al, %r10b
	jg	.L543
	testl	%esi, %esi
	je	.L557
	movl	$1, %esi
.L546:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L550:
	movl	(%r9,%rax,4), %edi
	movl	36(%r8,%rax,4), %edx
	addl	%edi, %edx
	addl	%ecx, %edx
	cmpl	%edx, %edi
	movl	%edx, (%r11,%rax,4)
	cmovne	%ebx, %ecx
	cmpl	%edi, %edx
	setb	%dil
	addq	$1, %rax
	movzbl	%dil, %edi
	orl	%edi, %ecx
	cmpb	%al, %r10b
	jg	.L550
.L541:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%esi, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L557:
	.cfi_restore_state
	sall	$5, %r14d
	cmpl	%r14d, %r13d
	jge	.L546
.L549:
	movl	%ecx, %edx
	movl	$1, %eax
	xorl	%esi, %esi
	sarw	$5, %dx
	sall	%cl, %eax
	movswq	%dx, %rdx
	andl	(%r9,%rdx,4), %eax
	setne	%sil
	testb	%r12b, %r12b
	jg	.L546
	jmp	.L541
	.p2align 4,,10
	.p2align 3
.L542:
	sall	$5, %r14d
	xorl	%esi, %esi
	cmpl	%r14d, %r13d
	jge	.L541
	jmp	.L549
	.cfi_endproc
.LFE51:
	.size	regularize_k, .-regularize_k
	.p2align 4
	.globl	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
.LFB52:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rbp, %rcx
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rsi
	leaq	48(%rsp), %rdx
	movq	%rdx, %xmm1
	movq	%rsi, %xmm0
	punpcklqdq	%xmm1, %xmm0
	movaps	%xmm0, (%rsp)
	call	regularize_k
	movzwl	2(%rbp), %ecx
	leaq	68(%rbp), %rsi
	movq	%rbp, %r9
	testl	%eax, %eax
	movq	%rbx, %rdi
	sete	%al
	leal	1(%rcx), %r8d
	xorl	%ecx, %ecx
	movzbl	%al, %eax
	movswl	%r8w, %r8d
	movq	(%rsp,%rax,8), %rdx
	call	EccPoint_mult
	movzbl	0(%rbp), %edx
	addl	%edx, %edx
	testb	%dl, %dl
	jle	.L562
	subl	$1, %edx
	leaq	4(%rbx), %rsi
	movq	%rbx, %rax
	movzbl	%dl, %edx
	leaq	(%rsi,%rdx,4), %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	andl	$4, %edi
	je	.L560
	movl	(%rbx), %edx
	movq	%rsi, %rax
	cmpq	%rsi, %rcx
	je	.L569
	.p2align 4,,10
	.p2align 3
.L560:
	orl	(%rax), %edx
	addq	$8, %rax
	orl	-4(%rax), %edx
	cmpq	%rax, %rcx
	jne	.L560
.L569:
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
.L558:
	movq	88(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L571
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L562:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L558
.L571:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.p2align 4
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	endbr64
	movl	%esi, %r8d
	leal	-1(%rsi), %r10d
	movq	%rdi, %r9
	xorl	%eax, %eax
	xorl	%esi, %esi
	testl	%r8d, %r8d
	jle	.L572
	.p2align 4,,10
	.p2align 3
.L574:
	movl	%r10d, %ecx
	movsbq	%al, %rdi
	addl	$1, %eax
	subl	%esi, %ecx
	movl	%ecx, %esi
	andl	$3, %ecx
	shrl	$2, %esi
	sall	$3, %ecx
	movl	(%rdx,%rsi,4), %esi
	shrl	%cl, %esi
	movb	%sil, (%r9,%rdi)
	movsbl	%al, %esi
	cmpl	%r8d, %esi
	jl	.L574
.L572:
	ret
	.cfi_endproc
.LFE53:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.p2align 4
	.globl	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
.LFB54:
	.cfi_startproc
	endbr64
	leal	6(%rdx), %eax
	movl	%edx, %r10d
	addl	$3, %edx
	movq	%rdi, %r8
	cmovns	%edx, %eax
	movq	%rsi, %r9
	sarl	$2, %eax
	testb	%al, %al
	jle	.L586
	subl	$1, %eax
	movzbl	%al, %eax
	leaq	4(,%rax,4), %rax
	cmpl	$8, %eax
	jnb	.L582
	testb	$4, %al
	jne	.L590
	testl	%eax, %eax
	je	.L586
	movb	$0, (%rdi)
.L586:
	leal	-1(%r10), %edi
	xorl	%eax, %eax
	xorl	%edx, %edx
	testl	%r10d, %r10d
	jle	.L591
	.p2align 4,,10
	.p2align 3
.L587:
	movl	%edi, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	andl	$3, %ecx
	shrl	$2, %edx
	sall	$3, %ecx
	leal	0(,%rdx,4), %esi
	movsbq	%al, %rdx
	addl	$1, %eax
	movzbl	(%r9,%rdx), %edx
	sall	%cl, %edx
	orl	%edx, (%r8,%rsi)
	movsbl	%al, %edx
	cmpl	%r10d, %edx
	jl	.L587
	ret
	.p2align 4,,10
	.p2align 3
.L582:
	movq	$0, (%rdi)
	leaq	8(%rdi), %rdi
	movq	%r8, %rdx
	movq	$0, -16(%rdi,%rax)
	andq	$-8, %rdi
	subq	%rdi, %rdx
	leal	(%rax,%rdx), %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	rep stosq
	leal	-1(%r10), %edi
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jg	.L587
.L591:
	ret
.L590:
	movl	$0, (%rdi)
	movl	$0, -4(%rdi,%rax)
	jmp	.L586
	.cfi_endproc
.LFE54:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.p2align 4
	.globl	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
.LFB55:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r8
	movl	%edx, %r9d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movsbl	%dl, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r14d, %esi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movq	%r8, %rdi
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	call	uECC_vli_numBits
	movq	g_rng_function(%rip), %r11
	testq	%r11, %r11
	je	.L593
	movsbw	%bpl, %cx
	movsbq	%bpl, %r15
	movl	$64, 28(%rsp)
	leaq	32(%rsp), %rbp
	sall	$5, %ecx
	salq	$2, %r15
	movb	%r9b, 27(%rsp)
	leal	0(,%r14,4), %edi
	subl	%eax, %ecx
	movl	$-1, %eax
	leaq	(%r15,%rbx), %r12
	movl	%edi, 16(%rsp)
	shrl	%cl, %eax
	leaq	0(%rbp,%r15), %r13
	leaq	-4(%rbx,%r15), %r10
	movq	%rbx, %rdi
	movl	%eax, 20(%rsp)
	movq	%rbp, %rax
	movq	%r13, %rbx
	movq	%r15, %rbp
	movq	%r12, %r13
	xorl	%r14d, %r14d
	movq	%r10, %r12
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L600:
	movq	%r8, 8(%rsp)
	movl	16(%rsp), %esi
	movq	%rdi, (%rsp)
	call	*%r11
	testl	%eax, %eax
	je	.L593
	movq	(%rsp), %rdi
	movl	20(%rsp), %eax
	xorl	%edx, %edx
	andl	%eax, (%r12)
	cmpb	$0, 27(%rsp)
	movq	8(%rsp), %r8
	movq	%rdi, %rax
	jle	.L596
	movq	%r13, %rsi
	subq	%rdi, %rsi
	andl	$4, %esi
	je	.L594
	leaq	4(%rdi), %rax
	movl	(%rdi), %edx
	cmpq	%r13, %rax
	je	.L629
	.p2align 4,,10
	.p2align 3
.L594:
	orl	(%rax), %edx
	addq	$8, %rax
	orl	-4(%rax), %edx
	cmpq	%r13, %rax
	jne	.L594
.L629:
	testl	%edx, %edx
	je	.L596
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L597:
	movl	(%r8,%rax), %ecx
	movl	%ecx, %edx
	subl	%esi, %edx
	subl	(%rdi,%rax), %edx
	cmpl	%edx, %ecx
	movl	%edx, (%r15,%rax)
	setb	%cl
	cmovne	%r14d, %esi
	addq	$4, %rax
	movzbl	%cl, %ecx
	orl	%ecx, %esi
	cmpq	%rax, %rbp
	jne	.L597
	testl	%esi, %esi
	movq	%r15, %rax
	setne	%sil
	xorl	%edx, %edx
	testb	$4, %bl
	je	.L598
	leaq	4(%r15), %rax
	movl	(%r15), %edx
	cmpq	%rbx, %rax
	je	.L628
	.p2align 4,,10
	.p2align 3
.L598:
	orl	(%rax), %edx
	addq	$8, %rax
	orl	-4(%rax), %edx
	cmpq	%rbx, %rax
	jne	.L598
.L628:
	testl	%edx, %edx
	setne	%al
	addl	%esi, %esi
	subl	%esi, %eax
	cmpb	$1, %al
	je	.L634
.L596:
	subl	$1, 28(%rsp)
	je	.L593
	movq	g_rng_function(%rip), %r11
	jmp	.L600
.L593:
	xorl	%eax, %eax
.L592:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L635
	addq	$88, %rsp
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
.L634:
	.cfi_restore_state
	movl	$1, %eax
	jmp	.L592
.L635:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.p2align 4
	.globl	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$112, %rsp
	.cfi_def_cfa_offset 160
	movzbl	(%rsi), %edi
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leal	(%rdi,%rdi), %edx
	testb	%dl, %dl
	jle	.L646
	subl	$1, %edx
	movq	%rsi, %rbp
	leaq	4(%r12), %rsi
	movq	%r12, %rax
	movzbl	%dl, %edx
	leaq	(%rsi,%rdx,4), %rcx
	xorl	%edx, %edx
	movq	%rcx, %r8
	subq	%r12, %r8
	andl	$4, %r8d
	je	.L638
	movl	(%r12), %edx
	movq	%rsi, %rax
	cmpq	%rsi, %rcx
	je	.L660
	.p2align 4,,10
	.p2align 3
.L638:
	orl	(%rax), %edx
	addq	$8, %rax
	orl	-4(%rax), %edx
	cmpq	%rax, %rcx
	jne	.L638
.L660:
	testl	%edx, %edx
	je	.L646
	movl	%edi, %ebx
	subb	$1, %bl
	js	.L649
	movzbl	%bl, %ebx
	movq	%rbx, %rax
	jmp	.L640
	.p2align 4,,10
	.p2align 3
.L662:
	cmpl	%edx, %ecx
	jb	.L649
	subq	$1, %rax
	testb	%al, %al
	js	.L649
.L640:
	movl	4(%rbp,%rax,4), %ecx
	movl	(%r12,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L662
	movsbq	%dil, %rax
	leaq	(%r12,%rax,4), %rsi
	movq	%rbx, %rax
	jmp	.L642
	.p2align 4,,10
	.p2align 3
.L663:
	cmpl	%edx, %ecx
	jb	.L649
	subq	$1, %rax
	testb	%al, %al
	js	.L649
.L642:
	movl	4(%rbp,%rax,4), %ecx
	movl	(%rsi,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L663
	leaq	32(%rsp), %r13
	movsbl	%dil, %ecx
	movq	%rsi, %rdx
	movq	%rsp, %r14
	movq	%r13, %rdi
	call	uECC_vli_mult
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	*184(%rbp)
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	*176(%rbp)
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L643:
	movl	(%r14,%rbx,4), %eax
	xorl	0(%r13,%rbx,4), %eax
	subq	$1, %rbx
	orl	%eax, %edx
	testb	%bl, %bl
	jns	.L643
	negl	%edx
	sbbl	%eax, %eax
	andl	$-3, %eax
.L636:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L664
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L649:
	.cfi_restore_state
	movl	$-2, %eax
	jmp	.L636
	.p2align 4,,10
	.p2align 3
.L646:
	movl	$-1, %eax
	jmp	.L636
.L664:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.p2align 4
	.globl	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
.LFB57:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r11
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	movsbq	1(%rsi), %r13
	movq	%rdi, %rsi
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	movl	%r13d, %edx
	movq	%rbp, %rdi
	call	uECC_vli_bytesToNative
	movsbq	(%r11), %rax
	leaq	(%rbx,%r13), %rsi
	movl	%r13d, %edx
	leaq	0(%rbp,%rax,4), %rdi
	call	uECC_vli_bytesToNative
	xorl	%eax, %eax
	leaq	60(%rsp), %rsi
	jmp	.L667
	.p2align 4,,10
	.p2align 3
.L673:
	cmpl	%edx, %ecx
	jb	.L666
	subq	$4, %rax
	cmpq	$-64, %rax
	je	.L672
.L667:
	movl	(%rsi,%rax), %ecx
	movl	128(%r11,%rax), %edx
	cmpl	%ecx, %edx
	jnb	.L673
.L666:
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	uECC_valid_point
.L665:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L674
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L672:
	.cfi_restore_state
	movl	$-4, %eax
	jmp	.L665
.L674:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE57:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.p2align 4
	.globl	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
.LFB58:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movswl	2(%rdx), %r12d
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r11
	movl	%r12d, %eax
	leal	14(%r12), %edx
	movq	%r11, %rdi
	addl	$7, %eax
	cmovns	%eax, %edx
	sarl	$3, %edx
	call	uECC_vli_bytesToNative
	leal	62(%r12), %edx
	addl	$31, %r12d
	cmovns	%r12d, %edx
	sarl	$5, %edx
	testb	%dl, %dl
	jle	.L679
	leal	-1(%rdx), %edi
	movl	%edx, %r8d
	movq	%r11, %rax
	xorl	%edx, %edx
	movzbl	%dil, %edi
	salq	$2, %rdi
	leaq	4(%rsp,%rdi), %rcx
	testb	$4, %dil
	jne	.L678
	leaq	4(%rsp), %rax
	movl	(%r11), %edx
	cmpq	%rax, %rcx
	je	.L710
	.p2align 4,,10
	.p2align 3
.L678:
	orl	(%rax), %edx
	addq	$8, %rax
	orl	-4(%rax), %edx
	cmpq	%rax, %rcx
	jne	.L678
.L710:
	testl	%edx, %edx
	je	.L679
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	leaq	32(%rsp), %r9
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L680:
	movl	36(%rbp,%rax,4), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%r11,%rax,4), %edx
	cmpl	%edx, %esi
	movl	%edx, (%r9,%rax,4)
	setb	%sil
	cmovne	%r10d, %ecx
	addq	$1, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpb	%al, %r8b
	jg	.L680
	testl	%ecx, %ecx
	leaq	36(%rsp,%rdi), %rcx
	movq	%r9, %rax
	setne	%sil
	xorl	%edx, %edx
	andl	$4, %edi
	jne	.L681
	leaq	36(%rsp), %rax
	movl	(%r9), %edx
	cmpq	%rcx, %rax
	je	.L709
	.p2align 4,,10
	.p2align 3
.L681:
	orl	(%rax), %edx
	addq	$8, %rax
	orl	-4(%rax), %edx
	cmpq	%rcx, %rax
	jne	.L681
.L709:
	testl	%edx, %edx
	leal	(%rsi,%rsi), %eax
	setne	%dl
	subl	%eax, %edx
	movl	%edx, %r12d
	cmpb	$1, %dl
	je	.L712
.L679:
	xorl	%eax, %eax
.L675:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L713
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L712:
	.cfi_restore_state
	movq	%rbp, %rdx
	movq	%r11, %rsi
	movq	%r9, %rdi
	call	EccPoint_compute_public_key
	testl	%eax, %eax
	je	.L679
	movsbl	1(%rbp), %edi
	movl	%r12d, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	subl	%ebx, %edx
	leal	-1(%rdi), %r8d
	testl	%edi, %edi
	jle	.L684
	.p2align 4,,10
	.p2align 3
.L683:
	movl	%r8d, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	andl	$3, %ecx
	shrl	$2, %eax
	sall	$3, %ecx
	movl	32(%rsp,%rax,4), %eax
	shrl	%cl, %eax
	movb	%al, (%rsi)
	leal	(%rdx,%rsi), %eax
	addq	$1, %rsi
	movsbl	%al, %eax
	cmpl	%eax, %edi
	jg	.L683
	movsbq	1(%rbp), %rsi
	movsbq	0(%rbp), %rdi
	testl	%esi, %esi
	jle	.L684
	leaq	(%rbx,%rsi), %rdx
	movl	$1, %r9d
	leal	-1(%rsi), %r8d
	xorl	%eax, %eax
	subl	%edx, %r9d
	.p2align 4,,10
	.p2align 3
.L685:
	movl	%r8d, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	andl	$3, %ecx
	shrl	$2, %eax
	sall	$3, %ecx
	addq	%rdi, %rax
	movl	32(%rsp,%rax,4), %eax
	shrl	%cl, %eax
	movb	%al, (%rdx)
	leal	(%r9,%rdx), %eax
	addq	$1, %rdx
	movsbl	%al, %eax
	cmpl	%eax, %esi
	jg	.L685
.L684:
	movl	$1, %eax
	jmp	.L675
.L713:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE58:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.data.rel,"aw"
	.align 8
	.type	g_rng_function, @object
	.size	g_rng_function, 8
g_rng_function:
	.quad	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 192
curve_secp256r1:
	.byte	8
	.byte	32
	.value	256
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	-1
	.long	-60611247
	.long	-205927742
	.long	-1491624316
	.long	-1125713235
	.long	-1
	.long	-1
	.long	0
	.long	-1
	.long	-661077354
	.long	-190760635
	.long	770388896
	.long	1996717441
	.long	1671708914
	.long	-121837851
	.long	-517193145
	.long	1796723186
	.long	935285237
	.long	-877248408
	.long	1798397646
	.long	734933847
	.long	2081398294
	.long	-1897403574
	.long	-31817829
	.long	1340293858
	.long	668098635
	.long	1003371582
	.long	-866930442
	.long	1696401072
	.long	1989707452
	.long	-1276396203
	.long	-1439001625
	.long	1522939352
	.zero	4
	.quad	double_jacobian_default
	.quad	x_side_default
	.quad	vli_mmod_fast_secp256r1
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
