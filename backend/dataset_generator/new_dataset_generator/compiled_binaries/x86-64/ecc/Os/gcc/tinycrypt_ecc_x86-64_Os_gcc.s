	.file	"tinycrypt_ecc.c"
	.text
	.type	uECC_vli_add, @function
uECC_vli_add:
.LFB28:
	.cfi_startproc
	movq	%rsi, %r9
	movq	%rdi, %r8
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%r11d, %r11d
.L2:
	cmpb	%sil, %cl
	jle	.L5
	movl	(%r9,%rsi,4), %r10d
	movl	(%rdx,%rsi,4), %edi
	addl	%r10d, %edi
	addl	%eax, %edi
	cmpl	%edi, %r10d
	movl	%edi, (%r8,%rsi,4)
	cmovne	%r11d, %eax
	cmpl	%r10d, %edi
	setb	%r10b
	incq	%rsi
	movzbl	%r10b, %r10d
	orl	%r10d, %eax
	jmp	.L2
.L5:
	ret
	.cfi_endproc
.LFE28:
	.size	uECC_vli_add, .-uECC_vli_add
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
.LFB30:
	.cfi_startproc
	movsbq	%sil, %rsi
	xorl	%ecx, %ecx
	leaq	(%rdi,%rsi,4), %rax
.L7:
	cmpq	%rax, %rdi
	jnb	.L9
	movl	-4(%rax), %esi
	subq	$4, %rax
	movl	%esi, %edx
	shrl	%edx
	orl	%ecx, %edx
	movl	%esi, %ecx
	movl	%edx, (%rax)
	sall	$31, %ecx
	jmp	.L7
.L9:
	ret
	.cfi_endproc
.LFE30:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movsbl	%dl, %ecx
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	(%rdi), %r8d
	movq	%rdi, %rbx
	andl	$1, %r8d
	je	.L11
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	call	uECC_vli_add
	movl	%eax, %r8d
.L11:
	movl	%ecx, %esi
	movq	%rbx, %rdi
	call	uECC_vli_rshift1
	testl	%r8d, %r8d
	je	.L10
	movsbq	%bpl, %rbp
	orl	$-2147483648, -4(%rbx,%rbp,4)
.L10:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r11
	xorl	%r8d, %r8d
	movl	%ecx, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%eax, %eax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%ecx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	xorl	%edx, %edx
.L21:
	movl	%r8d, %r13d
	cmpb	%bpl, %r8b
	jge	.L34
	leaq	(%rbx,%r8,4), %r12
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
.L24:
	movl	(%r12), %r14d
	movl	(%r11,%r9,4), %ecx
	salq	$32, %rdx
	orq	%rax, %rdx
	imulq	%r14, %rcx
	addq	%rdx, %rcx
	movq	%rcx, %r14
	adcl	$0, %r10d
	incq	%r9
	movl	%ecx, %eax
	shrq	$32, %r14
	subq	$4, %r12
	movl	%r14d, %edx
	cmpb	%r9b, %r13b
	jge	.L24
	movl	%ecx, (%rdi,%r8,4)
	movl	%r14d, %eax
	incq	%r8
	movl	%r10d, %edx
	jmp	.L21
.L34:
	movsbl	%sil, %esi
	movb	$1, %r10b
	leal	-1(%rbp), %r13d
	addl	%esi, %esi
	movl	%esi, -4(%rsp)
	leal	-1(%rsi), %r12d
.L26:
	leal	0(%r13,%r10), %r8d
	movsbl	%r8b, %ecx
	cmpl	%r12d, %ecx
	jge	.L35
	movsbq	%r8b, %r8
	movl	%edx, %ecx
	movsbq	%r10b, %r9
	xorl	%edx, %edx
	leaq	(%rbx,%r8,4), %r14
.L27:
	cmpb	%r9b, %bpl
	jle	.L36
	imulq	$-4, %r9, %rsi
	salq	$32, %rcx
	orq	%rax, %rcx
	movl	(%r14,%rsi), %r15d
	movl	(%r11,%r9,4), %esi
	imulq	%r15, %rsi
	addq	%rcx, %rsi
	movq	%rsi, %rax
	adcl	$0, %edx
	incq	%r9
	shrq	$32, %rax
	movl	%eax, %ecx
	movl	%esi, %eax
	jmp	.L27
.L36:
	movl	%eax, (%rdi,%r8,4)
	incl	%r10d
	movl	%ecx, %eax
	jmp	.L26
.L35:
	movslq	-4(%rsp), %rdx
	movl	%eax, -4(%rdi,%rdx,4)
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
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
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
	.globl	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
.LFB16:
	.cfi_startproc
	endbr64
	movswl	2(%rdi), %eax
	movl	$8, %ecx
	addl	$7, %eax
	cltd
	idivl	%ecx
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
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
	.globl	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
.LFB18:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
.L42:
	cmpb	%al, %sil
	jle	.L44
	xorl	%edx, %edx
	movl	%edx, (%rdi,%rax,4)
	incq	%rax
	jmp	.L42
.L44:
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.globl	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
.LFB19:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	xorl	%edx, %edx
.L46:
	cmpb	%al, %sil
	jle	.L48
	orl	(%rdi,%rax,4), %edx
	incq	%rax
	jmp	.L46
.L48:
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	ret
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
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
	.globl	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
.LFB22:
	.cfi_startproc
	endbr64
	decl	%esi
	movsbq	%sil, %rsi
.L52:
	testb	%sil, %sil
	js	.L51
	cmpl	$0, (%rdi,%rsi,4)
	leaq	-1(%rsi), %rax
	jne	.L51
	movq	%rax, %rsi
	jmp	.L52
.L51:
	xorl	%eax, %eax
	incb	%sil
	je	.L50
	movsbq	%sil, %rax
	movsbw	%sil, %si
	movl	-4(%rdi,%rax,4), %edx
	bsrl	%edx, %eax
	incl	%eax
	testl	%edx, %edx
	movl	$0, %edx
	cmove	%edx, %eax
	decl	%esi
	sall	$5, %esi
	addl	%esi, %eax
.L50:
	ret
	.cfi_endproc
.LFE22:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.globl	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
.LFB23:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
.L57:
	cmpb	%al, %dl
	jle	.L59
	movl	(%rsi,%rax,4), %ecx
	movl	%ecx, (%rdi,%rax,4)
	incq	%rax
	jmp	.L57
.L59:
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_set, .-uECC_vli_set
	.globl	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
.LFB24:
	.cfi_startproc
	endbr64
	decl	%edx
	movsbq	%dl, %rdx
.L61:
	testb	%dl, %dl
	js	.L66
	movl	(%rdi,%rdx,4), %ecx
	movl	(%rsi,%rdx,4), %eax
	cmpl	%ecx, %eax
	jb	.L64
	decq	%rdx
	cmpl	%eax, %ecx
	jnb	.L61
	movb	$-1, %al
	ret
.L66:
	xorl	%eax, %eax
	ret
.L64:
	movb	$1, %al
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.globl	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
.LFB25:
	.cfi_startproc
	endbr64
	decl	%edx
	xorl	%eax, %eax
	movsbq	%dl, %rdx
.L68:
	testb	%dl, %dl
	js	.L70
	movl	(%rdi,%rdx,4), %ecx
	xorl	(%rsi,%rdx,4), %ecx
	decq	%rdx
	orl	%ecx, %eax
	jmp	.L68
.L70:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
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
	.globl	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
.LFB27:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdi, %r8
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%r11d, %r11d
.L73:
	cmpb	%sil, %cl
	jle	.L75
	movl	(%r9,%rsi,4), %r10d
	movl	%r10d, %edi
	subl	%eax, %edi
	subl	(%rdx,%rsi,4), %edi
	cmpl	%edi, %r10d
	movl	%edi, (%r8,%rsi,4)
	setb	%r10b
	cmovne	%r11d, %eax
	incq	%rsi
	movzbl	%r10b, %r10d
	orl	%r10d, %eax
	jmp	.L73
.L75:
	ret
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$8, %edx
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	call	uECC_vli_set
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%edx, 16(%rsp)
	movq	44(%rsi), %rdx
	movq	%rax, 8(%rsp)
	movl	60(%rsi), %eax
	movq	%rdx, 20(%rsp)
	movq	52(%rsi), %rdx
	movl	%eax, 36(%rsp)
	movq	%rdx, 28(%rsp)
	leaq	8(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rdx, %rdi
	call	uECC_vli_add
	movq	%r12, %rsi
	movq	%r12, %rdi
	movl	%eax, %ebp
	call	uECC_vli_add
	xorl	%esi, %esi
	movq	%rdx, %rdi
	addl	%eax, %ebp
	movq	48(%rbx), %rax
	movl	%esi, 36(%rsp)
	movq	%rdx, %rsi
	movq	%rax, 20(%rsp)
	movq	56(%rbx), %rax
	movq	%rax, 28(%rsp)
	call	uECC_vli_add
	movq	%r12, %rsi
	movq	%r12, %rdi
	addl	%eax, %ebp
	call	uECC_vli_add
	movq	32(%rbx), %rcx
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	addl	%eax, %ebp
	movl	40(%rbx), %eax
	movq	%rdi, 20(%rsp)
	movq	%r12, %rsi
	movq	%rcx, 8(%rsp)
	movq	%r12, %rdi
	movl	$8, %ecx
	movl	%eax, 16(%rsp)
	movq	56(%rbx), %rax
	movl	%r8d, 28(%rsp)
	movq	%rax, 32(%rsp)
	call	uECC_vli_add
	movq	36(%rbx), %rcx
	movq	52(%rbx), %rsi
	movq	%r12, %rdi
	addl	%eax, %ebp
	movl	44(%rbx), %eax
	movq	%rcx, 8(%rsp)
	movl	60(%rbx), %ecx
	movl	%eax, 16(%rsp)
	movl	52(%rbx), %eax
	movq	%rsi, 20(%rsp)
	movq	%r12, %rsi
	movl	%eax, 32(%rsp)
	movl	32(%rbx), %eax
	movl	%ecx, 28(%rsp)
	movl	$8, %ecx
	movl	%eax, 36(%rsp)
	call	uECC_vli_add
	movq	44(%rbx), %rcx
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	addl	%eax, %ebp
	movl	52(%rbx), %eax
	movq	%r12, %rsi
	movq	%r12, %rdi
	movq	%rcx, 8(%rsp)
	movl	$8, %ecx
	movl	%eax, 16(%rsp)
	movl	32(%rbx), %eax
	movq	%r9, 20(%rsp)
	movl	%eax, 32(%rsp)
	movl	40(%rbx), %eax
	movl	%r10d, 28(%rsp)
	movl	%eax, 36(%rsp)
	call	uECC_vli_sub
	movq	%r12, %rsi
	movq	%r12, %rdi
	subl	%eax, %ebp
	movq	48(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	56(%rbx), %rax
	movq	%rax, 16(%rsp)
	movl	36(%rbx), %eax
	movl	%eax, 32(%rsp)
	movl	44(%rbx), %eax
	movl	%eax, 36(%rsp)
	call	uECC_vli_sub
	movq	52(%rbx), %rcx
	xorl	%r11d, %r11d
	movq	%r12, %rsi
	subl	%eax, %ebp
	movl	60(%rbx), %eax
	movq	%r12, %rdi
	movl	%r11d, 32(%rsp)
	movq	%rcx, 8(%rsp)
	movq	32(%rbx), %rcx
	movl	%eax, 16(%rsp)
	movl	40(%rbx), %eax
	movq	%rcx, 20(%rsp)
	movl	$8, %ecx
	movl	%eax, 28(%rsp)
	movl	48(%rbx), %eax
	movl	%eax, 36(%rsp)
	call	uECC_vli_sub
	movq	36(%rbx), %rcx
	movq	%r12, %rsi
	movq	%r12, %rdi
	subl	%eax, %ebp
	movq	56(%rbx), %rax
	movq	%rcx, 20(%rsp)
	movl	$8, %ecx
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	%eax, 16(%rsp)
	movl	44(%rbx), %eax
	movl	%eax, 28(%rsp)
	movl	52(%rbx), %eax
	movl	%ebp, %ebx
	leaq	4+curve_secp256r1(%rip), %rbp
	movl	%eax, 36(%rsp)
	call	uECC_vli_sub
	subl	%eax, %ebx
	jns	.L77
.L78:
	movl	$8, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	uECC_vli_add
	addl	%eax, %ebx
	js	.L78
	jmp	.L76
.L85:
	movl	$8, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_cmp_unsafe
	decb	%al
	je	.L76
.L79:
	movl	$8, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	uECC_vli_sub
	subl	%eax, %ebx
.L77:
	testl	%ebx, %ebx
	je	.L85
	jmp	.L79
.L76:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movsbl	%dl, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	call	uECC_vli_sub
	movl	%ecx, %esi
	movq	%rbx, %rdi
	movl	%eax, %r8d
	call	uECC_vli_isZero
	testl	%eax, %eax
	sete	%al
	testl	%r8d, %r8d
	setne	%dl
	addl	%edx, %edx
	subl	%edx, %eax
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE29:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.globl	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movsbl	%r8b, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%ebp, %ecx
	movq	%rdi, %rbx
	call	uECC_vli_add
	testl	%eax, %eax
	jne	.L90
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	uECC_vli_cmp_unsafe
	decb	%al
	je	.L89
.L90:
	movl	%ebp, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	uECC_vli_sub
.L89:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rcx, %rbp
	movsbl	%r8b, %ecx
	pushq	%r9
	.cfi_def_cfa_offset 24
	movq	%rdi, (%rsp)
	call	uECC_vli_sub
	movq	(%rsp), %rdi
	testl	%eax, %eax
	je	.L93
	movq	%rbp, %rdx
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movq	%rdi, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	uECC_vli_add
.L93:
	.cfi_restore_state
	popq	%rax
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movsbl	%cl, %r9d
	movsbw	%cl, %r8w
	movl	%ecx, %r10d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	sall	$6, %r8d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movsbl	%cl, %r12d
	movl	$32, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, 8(%rsp)
	movq	%rdx, %rdi
	leaq	40(%rsp), %r11
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	movq	%rsi, 32(%rsp)
	leaq	104(%rsp), %rax
	movl	%r9d, %esi
	movq	%rax, 24(%rsp)
	call	uECC_vli_numBits
	movq	%r11, %rdi
	subl	%eax, %r8d
	movl	%r8d, %edx
	movl	%r8d, %eax
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %ecx
	movsbl	%al, %esi
	movl	%eax, %ebp
	movsbl	%al, %r13d
	call	uECC_vli_clear
	testw	%cx, %cx
	jle	.L112
	movswl	%cx, %edi
	movl	$32, %edx
	xorl	%eax, %eax
	xorl	%esi, %esi
	subl	%edi, %edx
.L97:
	cmpl	%r12d, %eax
	jnb	.L100
	movl	(%rbx,%rax,4), %ebp
	movl	%edi, %ecx
	leal	0(%r13,%rax), %r14d
	incq	%rax
	movl	%ebp, %r15d
	sall	%cl, %r15d
	movl	%r15d, %ecx
	orl	%esi, %ecx
	movl	%ebp, %esi
	movl	%ecx, 40(%rsp,%r14,4)
	movl	%edx, %ecx
	shrl	%cl, %esi
	jmp	.L97
.L112:
	movsbq	%bpl, %rbp
	movl	%r9d, %edx
	movq	%rbx, %rsi
	leaq	(%r11,%rbp,4), %rdi
	call	uECC_vli_set
.L100:
	movsbq	%r10b, %r10
	leal	(%r9,%r9), %r13d
	movslq	%r9d, %rbp
	leaq	40(%rsp,%r10,4), %rbx
	movl	$1, %r10d
.L101:
	testw	%r8w, %r8w
	js	.L113
	movl	%r10d, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%r10d, %r15d
	xorl	$1, %esi
.L106:
	movsbq	%dl, %rdi
	cmpl	%r13d, %edi
	jge	.L114
	movq	24(%rsp,%r15,8), %rcx
	movsbq	%dl, %r12
	movl	40(%rsp,%rdi,4), %r14d
	movl	(%rcx,%r12,4), %ecx
	addl	%eax, %r14d
	movl	%ecx, %edi
	subl	%r14d, %edi
	setb	%r14b
	cmpl	%edi, %ecx
	movq	24(%rsp,%rsi,8), %rcx
	movzbl	%r14b, %r14d
	cmovne	%r14d, %eax
	movl	%edi, (%rcx,%r12,4)
	incl	%edx
	jmp	.L106
.L114:
	cmpl	%eax, %r10d
	movl	%r9d, %esi
	movq	%r11, %rdi
	sete	%r10b
	decl	%r8d
	call	uECC_vli_rshift1
	movl	40(%rsp,%rbp,4), %edx
	leal	-1(%r9), %eax
	movl	%r9d, %esi
	cltq
	movq	%rbx, %rdi
	movzbl	%r10b, %r10d
	sall	$31, %edx
	orl	%edx, 40(%rsp,%rax,4)
	call	uECC_vli_rshift1
	jmp	.L101
.L113:
	movq	24(%rsp,%r10,8), %rsi
	movq	8(%rsp), %rdi
	movl	%r9d, %edx
	call	uECC_vli_set
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	je	.L107
	call	__stack_chk_fail@PLT
.L107:
	addq	$184, %rsp
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
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.globl	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movsbl	%r8b, %ebx
	movl	%ebx, %ecx
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %rdi
	call	uECC_vli_mult
	movq	%rdi, %rsi
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rdi
	call	uECC_vli_mmod
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.globl	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rcx, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	movsbl	(%rcx), %ecx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %rdi
	call	uECC_vli_mult
	movq	%rdi, %rsi
	movq	%rbp, %rdi
	call	*184(%rbx)
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	je	.L119
	call	__stack_chk_fail@PLT
.L119:
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
.LFB38:
	.cfi_startproc
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	jmp	uECC_vli_modMult_fast
	.cfi_endproc
.LFE38:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB41:
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
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movq	%rdx, %rdi
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	%rsi, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movsbq	(%rcx), %rax
	movl	%eax, %esi
	movl	%eax, 12(%rsp)
	movq	%rax, %r15
	call	uECC_vli_isZero
	testl	%eax, %eax
	jne	.L122
	leaq	40(%rsp), %rax
	movq	24(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%rcx, %r12
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	leaq	72(%rsp), %r14
	leaq	4(%r12), %r13
	call	uECC_vli_modSquare_fast
	movq	16(%rsp), %rdx
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modMult_fast
	movq	16(%rsp), %rsi
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSquare_fast
	movq	24(%rsp), %rsi
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	%r15b, %r8d
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modAdd
	movsbl	%r15b, %r8d
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modAdd
	movsbl	%r15b, %r8d
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movsbl	%r15b, %r8d
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modAdd
	movsbl	%r15b, %r8d
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modAdd
	testb	$1, (%rbx)
	je	.L124
	movsbl	%r15b, %ecx
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_add
	movl	%ecx, %esi
	movq	%rbx, %rdi
	movl	%eax, %r8d
	call	uECC_vli_rshift1
	sall	$31, %r8d
	orl	%r8d, -4(%rbx,%r15,4)
	jmp	.L125
.L124:
	movl	12(%rsp), %esi
	movq	%rbx, %rdi
	call	uECC_vli_rshift1
.L125:
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSquare_fast
	movl	12(%rsp), %r8d
	movq	%r13, %rcx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movl	12(%rsp), %r8d
	movq	%r13, %rcx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movl	12(%rsp), %r8d
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSub
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movq	16(%rsp), %rdx
	movq	%r13, %rcx
	movq	%rbx, %rsi
	movl	12(%rsp), %r8d
	movq	%rdx, %rdi
	call	uECC_vli_modSub
	movl	12(%rsp), %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_set
	movl	12(%rsp), %edx
	movq	24(%rsp), %rsi
	movq	%rbp, %rdi
	call	uECC_vli_set
	movl	12(%rsp), %edx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	call	uECC_vli_set
.L122:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	je	.L126
	call	__stack_chk_fail@PLT
.L126:
	addq	$120, %rsp
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
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$7, %ecx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	movb	(%rdx), %r13b
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	leaq	28(%rsp), %rdi
	movl	$3, 24(%rsp)
	rep stosl
	movq	%rbx, %rdi
	call	uECC_vli_modSquare_fast
	movsbl	%r13b, %r8d
	leaq	4(%rbp), %r13
	movq	%rbx, %rsi
	leaq	24(%rsp), %rdx
	movq	%r13, %rcx
	movq	%rbx, %rdi
	movl	%r8d, 12(%rsp)
	call	uECC_vli_modSub
	movq	%rbp, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movl	12(%rsp), %r8d
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	je	.L129
	call	__stack_chk_fail@PLT
.L129:
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	movq	%r13, %rcx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	leaq	132(%rbp), %rdx
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	uECC_vli_modAdd
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
	.type	XYcZ_addC, @function
XYcZ_addC:
.LFB49:
	.cfi_startproc
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
	movq	%rdx, %r13
	movq	%rdi, %rdx
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	4(%r8), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r12, %rcx
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movsbl	(%r8), %ebx
	movq	%rdi, 8(%rsp)
	leaq	40(%rsp), %r15
	movq	%rsi, 16(%rsp)
	movl	%ebx, %r8d
	movq	%r13, %rsi
	movq	%r15, %rdi
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	call	uECC_vli_modSub
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modSquare_fast
	movq	8(%rsp), %rsi
	movq	%rbp, %rcx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast
	movq	%rbp, %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movq	16(%rsp), %rdx
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modAdd
	movq	16(%rsp), %rdx
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSub
	leaq	72(%rsp), %rax
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%rax, (%rsp)
	call	uECC_vli_modSub
	movq	16(%rsp), %rsi
	movq	(%rsp), %rdx
	movq	%rbp, %rcx
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast
	movq	8(%rsp), %rsi
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	(%rsp), %rdi
	movq	%r13, %rdx
	call	uECC_vli_modAdd
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSquare_fast
	movq	(%rsp), %rdx
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSub
	leaq	104(%rsp), %rax
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	movq	%r13, %rdx
	movq	%rax, 24(%rsp)
	call	uECC_vli_modSub
	movq	24(%rsp), %rdx
	movq	%rbp, %rcx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modMult_fast
	movq	16(%rsp), %rdx
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSub
	movq	24(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%r15, %rsi
	call	uECC_vli_modSquare_fast
	movq	24(%rsp), %rsi
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movq	8(%rsp), %rdx
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	24(%rsp), %rsi
	movq	(%rsp), %rdi
	call	uECC_vli_modSub
	movq	(%rsp), %rsi
	movq	%rbp, %rcx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast
	movq	16(%rsp), %rdx
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	(%rsp), %rsi
	movq	%rdx, %rdi
	call	uECC_vli_modSub
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdi
	movl	%ebx, %edx
	call	uECC_vli_set
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	je	.L133
	call	__stack_chk_fail@PLT
.L133:
	addq	$152, %rsp
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
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
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
	movsbl	%cl, %ebx
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdi, 8(%rsp)
	movq	%rsi, %rdi
	movl	%ebx, %esi
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	call	uECC_vli_isZero
	testl	%eax, %eax
	je	.L136
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L150
	movq	8(%rsp), %rdi
	addq	$168, %rsp
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
	jmp	uECC_vli_clear
.L136:
	.cfi_restore_state
	leaq	24(%rsp), %r14
	movl	%ebx, %edx
	leaq	56(%rsp), %r15
	movq	%rdi, %rsi
	movq	%r14, %rdi
	leaq	88(%rsp), %rbp
	leaq	120(%rsp), %r12
	call	uECC_vli_set
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	uECC_vli_set
	movq	%rbp, %rdi
	movl	%ebx, %esi
	call	uECC_vli_clear
	movq	%r12, %rdi
	movl	$1, 88(%rsp)
	call	uECC_vli_clear
.L138:
	movl	%ebx, %edx
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	je	.L152
	testb	$1, 24(%rsp)
	jne	.L139
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	uECC_vli_rshift1
	jmp	.L151
.L139:
	testb	$1, 56(%rsp)
	jne	.L141
	movl	%ebx, %esi
	movq	%r15, %rdi
	call	uECC_vli_rshift1
	jmp	.L148
.L141:
	movl	%ebx, %ecx
	testb	%al, %al
	jle	.L142
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_sub
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	uECC_vli_rshift1
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	jns	.L143
	movl	%ebx, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	call	uECC_vli_add
.L143:
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_sub
.L151:
	movl	%ebx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	jmp	.L149
.L142:
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_sub
	movl	%ebx, %esi
	movq	%r15, %rdi
	call	uECC_vli_rshift1
	movl	%ebx, %edx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	jns	.L144
	movl	%ebx, %ecx
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	uECC_vli_add
.L144:
	movl	%ebx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	uECC_vli_sub
.L148:
	movl	%ebx, %edx
	movq	%r13, %rsi
	movq	%r12, %rdi
.L149:
	call	vli_modInv_update
	jmp	.L138
.L152:
	movq	8(%rsp), %rdi
	movl	%ebx, %edx
	movq	%rbp, %rsi
	call	uECC_vli_set
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	je	.L146
.L150:
	call	__stack_chk_fail@PLT
.L146:
	addq	$168, %rsp
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
.LFE40:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
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
	.globl	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
.LFB45:
	.cfi_startproc
	endbr64
	movb	(%rsi), %sil
	addl	%esi, %esi
	movsbl	%sil, %esi
	jmp	uECC_vli_isZero
	.cfi_endproc
.LFE45:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.globl	apply_z
	.type	apply_z, @function
apply_z:
.LFB46:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdx, %r13
	movq	%rcx, %rdx
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	movq	%r13, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rcx, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdi
	call	uECC_vli_modSquare_fast
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modMult_fast
	movq	%rbx, %rcx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult_fast
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	uECC_vli_modMult_fast
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	je	.L156
	call	__stack_chk_fail@PLT
.L156:
	addq	$48, %rsp
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
	.cfi_endproc
.LFE46:
	.size	apply_z, .-apply_z
	.globl	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
.LFB48:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	4(%r8), %r14
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
	movq	%r14, %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movsbl	(%r8), %r12d
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rsi
	movq	%rdi, %rdx
	movl	%r12d, %r8d
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	leaq	24(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	call	uECC_vli_modSub
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSquare_fast
	movq	(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movq	(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	uECC_vli_modSquare_fast
	movq	(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movq	(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	8(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movq	8(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movq	8(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modMult_fast
	movq	(%rsp), %rdx
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	8(%rsp), %rdi
	movq	%r13, %rsi
	call	uECC_vli_modSub
	movq	8(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult_fast
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	movl	%r12d, %r8d
	movq	%r14, %rcx
	call	uECC_vli_modSub
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdi
	movl	%r12d, %edx
	call	uECC_vli_set
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	je	.L159
	call	__stack_chk_fail@PLT
.L159:
	addq	$72, %rsp
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
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.globl	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movq	%rcx, %r10
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
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
	movl	%r8d, %ebx
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	movq	%rdi, 56(%rsp)
	leaq	136(%rsp), %r12
	movq	%rsi, 24(%rsp)
	movq	%r12, %rdi
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	movsbq	(%r9), %rax
	movl	%eax, %edx
	movq	%rax, %r8
	movl	%eax, 4(%rsp)
	call	uECC_vli_set
	leaq	0(,%r8,4), %rax
	movl	4(%rsp), %edx
	leaq	200(%rsp), %rdi
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	%rax, 40(%rsp)
	call	uECC_vli_set
	testq	%r10, %r10
	leaq	72(%rsp), %rdi
	je	.L162
	movl	4(%rsp), %edx
	movq	%r10, %rsi
	call	uECC_vli_set
	jmp	.L163
.L162:
	movl	4(%rsp), %esi
	call	uECC_vli_clear
	movl	$1, 72(%rsp)
.L163:
	leaq	104(%rsp), %rax
	movl	4(%rsp), %edx
	movq	%r12, %rsi
	subl	$2, %ebx
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	leaq	72(%rsp), %r13
	leaq	168(%rsp), %rbp
	call	uECC_vli_set
	leaq	200(%rsp), %rax
	movl	4(%rsp), %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	movq	%rax, 8(%rsp)
	call	uECC_vli_set
	movq	8(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rcx
	movq	%r13, %rdx
	call	apply_z
	movq	%r12, %rdi
	movq	8(%rsp), %rsi
	movq	%r14, %rcx
	movq	%r13, %rdx
	movswl	%bx, %r12d
	call	*168(%r14)
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	16(%rsp), %rdi
	call	apply_z
.L164:
	testw	%bx, %bx
	jle	.L168
	movl	%r12d, %esi
	movq	%r15, %rdi
	movq	%r14, %r8
	call	uECC_vli_testBit
	xorl	%edx, %edx
	testl	%eax, %eax
	sete	%dl
	salq	$5, %rdx
	testl	%eax, %eax
	setne	%al
	leaq	0(%rbp,%rdx), %rcx
	decl	%ebx
	decl	%r12d
	movzbl	%al, %eax
	movq	%rcx, 8(%rsp)
	leaq	104(%rsp), %rcx
	salq	$5, %rax
	leaq	(%rcx,%rdx), %rsi
	leaq	0(%rbp,%rax), %r13
	addq	%rcx, %rax
	movq	8(%rsp), %rcx
	movq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%r13, %rsi
	movq	%rax, 48(%rsp)
	call	XYcZ_addC
	movq	48(%rsp), %rdx
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	call	XYcZ_add
	jmp	.L164
.L168:
	movl	(%r15), %eax
	leaq	104(%rsp), %rbx
	movq	%r14, %r8
	leaq	72(%rsp), %r13
	leaq	168(%rsp), %rbp
	leaq	4(%r14), %r12
	andl	$1, %eax
	movl	%eax, %edx
	salq	$5, %rax
	xorl	$1, %edx
	salq	$5, %rdx
	leaq	(%rbx,%rdx), %rcx
	leaq	0(%rbp,%rdx), %r15
	movq	%rcx, 48(%rsp)
	leaq	0(%rbp,%rax), %rcx
	movq	48(%rsp), %rdx
	addq	%rbx, %rax
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	movq	%r15, %rcx
	movq	%rax, 16(%rsp)
	call	XYcZ_addC
	movl	4(%rsp), %r8d
	movq	%r12, %rcx
	movq	%rbx, %rdx
	leaq	136(%rsp), %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSub
	movq	8(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movq	24(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movl	4(%rsp), %ecx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modInv
	movq	40(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movq	16(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movq	8(%rsp), %rcx
	movq	%r14, %r8
	movq	%r15, %rsi
	movq	16(%rsp), %rdx
	movq	48(%rsp), %rdi
	call	XYcZ_add
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	apply_z
	movl	4(%rsp), %edx
	movq	56(%rsp), %rdi
	movq	%rbx, %rsi
	call	uECC_vli_set
	movq	32(%rsp), %rax
	movq	56(%rsp), %rdi
	movq	%rbp, %rsi
	movl	4(%rsp), %edx
	addq	%rax, %rdi
	call	uECC_vli_set
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	je	.L166
	call	__stack_chk_fail@PLT
.L166:
	addq	$248, %rsp
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
.LFE50:
	.size	EccPoint_mult, .-EccPoint_mult
	.globl	regularize_k
	.type	regularize_k, @function
regularize_k:
.LFB51:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	movl	$32, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	36(%rcx), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movswl	2(%rcx), %r15d
	leal	31(%r15), %eax
	cltd
	idivl	%esi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rdi
	movsbl	%al, %ebx
	movl	%ebx, %ecx
	call	uECC_vli_add
	testl	%eax, %eax
	jne	.L170
	movl	%ebx, %eax
	xorl	%r14d, %r14d
	sall	$5, %eax
	cmpl	%eax, %r15d
	jge	.L170
	movl	%r15d, %esi
	movq	%r12, %rdi
	xorl	%r14d, %r14d
	call	uECC_vli_testBit
	testl	%eax, %eax
	setne	%r14b
.L170:
	movl	%ebx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	uECC_vli_add
	popq	%rbx
	.cfi_def_cfa_offset 48
	movl	%r14d, %eax
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
.LFE51:
	.size	regularize_k, .-regularize_k
	.globl	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
.LFB52:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdx, %rbx
	movq	%rbx, %rcx
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	leaq	24(%rsp), %rsi
	leaq	56(%rsp), %rdx
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	call	regularize_k
	movw	2(%rbx), %cx
	leaq	68(%rbx), %rsi
	movq	%rbp, %rdi
	testl	%eax, %eax
	movq	%rbx, %r9
	sete	%al
	leal	1(%rcx), %r8d
	xorl	%ecx, %ecx
	movzbl	%al, %eax
	movswl	%r8w, %r8d
	movq	8(%rsp,%rax,8), %rdx
	call	EccPoint_mult
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	EccPoint_isZero
	testl	%eax, %eax
	sete	%al
	movq	88(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L175
	call	__stack_chk_fail@PLT
.L175:
	addq	$104, %rsp
	.cfi_def_cfa_offset 24
	movzbl	%al, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	xorl	%esi, %esi
	leal	-1(%rax), %r9d
.L178:
	movsbl	%sil, %r8d
	cmpl	%eax, %r8d
	jge	.L180
	movl	%r9d, %ecx
	movsbq	%sil, %r10
	incl	%esi
	subl	%r8d, %ecx
	movl	%ecx, %r8d
	andl	$3, %ecx
	shrl	$2, %r8d
	sall	$3, %ecx
	movl	(%rdx,%r8,4), %r8d
	shrl	%cl, %r8d
	movb	%r8b, (%rdi,%r10)
	jmp	.L178
.L180:
	ret
	.cfi_endproc
.LFE53:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.globl	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
.LFB54:
	.cfi_startproc
	endbr64
	leal	3(%rdx), %eax
	movl	%edx, %r8d
	movl	$4, %ecx
	movq	%rsi, %r9
	cltd
	leal	-1(%r8), %r10d
	idivl	%ecx
	movsbl	%al, %esi
	call	uECC_vli_clear
	xorl	%eax, %eax
.L182:
	movsbl	%al, %edx
	cmpl	%r8d, %edx
	jge	.L184
	movl	%r10d, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	andl	$3, %ecx
	shrl	$2, %edx
	sall	$3, %ecx
	leal	0(,%rdx,4), %esi
	movsbq	%al, %rdx
	incl	%eax
	movzbl	(%r9,%rdx), %edx
	sall	%cl, %edx
	orl	%edx, (%rdi,%rsi)
	jmp	.L182
.L184:
	ret
	.cfi_endproc
.LFE54:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.globl	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
.LFB55:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %ecx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movsbl	%dl, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ebp, %esi
	movq	%rdi, %rbx
	movq	%r12, %rdi
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	uECC_vli_numBits
	cmpq	$0, g_rng_function(%rip)
	je	.L186
	leal	0(,%rbp,4), %edx
	orl	$-1, %r14d
	movl	$64, %r13d
	movl	%edx, 12(%rsp)
	movsbq	%cl, %rdx
	movsbw	%cl, %cx
	sall	$5, %ecx
	leaq	-4(%rbx,%rdx,4), %r15
	subl	%eax, %ecx
	shrl	%cl, %r14d
.L189:
	movl	12(%rsp), %esi
	movq	%rbx, %rdi
	call	*g_rng_function(%rip)
	testl	%eax, %eax
	je	.L186
	andl	%r14d, (%r15)
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	jne	.L187
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	uECC_vli_cmp
	decb	%al
	je	.L190
.L187:
	decl	%r13d
	jne	.L189
.L186:
	xorl	%eax, %eax
	jmp	.L185
.L190:
	movl	$1, %eax
.L185:
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
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
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
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	movsbq	(%rsi), %r8
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	call	EccPoint_isZero
	movl	%eax, %edx
	orl	$-1, %eax
	testl	%edx, %edx
	jne	.L196
	movq	%rdi, %rbp
	movsbl	%r8b, %r12d
	leaq	4(%rbx), %rdi
	movl	%r12d, %edx
	movq	%rbp, %rsi
	call	uECC_vli_cmp_unsafe
	movl	%eax, %edx
	movl	$-2, %eax
	decb	%dl
	jne	.L196
	movl	%r12d, %edx
	leaq	0(%rbp,%r8,4), %rsi
	call	uECC_vli_cmp_unsafe
	movl	%eax, %edx
	movl	$-2, %eax
	decb	%dl
	jne	.L196
	leaq	8(%rsp), %r13
	movq	%rbx, %rdx
	leaq	40(%rsp), %r14
	movq	%r13, %rdi
	call	uECC_vli_modSquare_fast
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	*176(%rbx)
	movl	%r12d, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	uECC_vli_equal
	negl	%eax
	sbbl	%eax, %eax
	andl	$-3, %eax
.L196:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L198
	call	__stack_chk_fail@PLT
.L198:
	addq	$80, %rsp
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
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
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
	leaq	8(%rsp), %rbp
	movl	%r13d, %edx
	movq	%rbp, %rdi
	call	uECC_vli_bytesToNative
	movsbq	(%r11), %rax
	leaq	(%rbx,%r13), %rsi
	movl	%r13d, %edx
	leaq	0(%rbp,%rax,4), %rdi
	call	uECC_vli_bytesToNative
	movl	$16, %edx
	leaq	68(%r11), %rsi
	movq	%rbp, %rdi
	call	uECC_vli_cmp_unsafe
	movl	%eax, %edx
	movl	$-4, %eax
	testb	%dl, %dl
	je	.L204
	movq	%r11, %rsi
	call	uECC_valid_point
.L204:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	addq	$88, %rsp
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
	.cfi_endproc
.LFE57:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.globl	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
.LFB58:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$8, %ecx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	movq	%rdi, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	subq	$120, %rsp
	.cfi_def_cfa_offset 160
	movswl	2(%rdx), %r11d
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	8(%rsp), %r12
	leal	7(%r11), %eax
	movq	%r12, %rdi
	cltd
	idivl	%ecx
	movl	%eax, %edx
	call	uECC_vli_bytesToNative
	leal	31(%r11), %eax
	movl	$32, %ecx
	cltd
	idivl	%ecx
	movsbl	%al, %r11d
	movl	%r11d, %esi
	call	uECC_vli_isZero
	testl	%eax, %eax
	je	.L211
.L213:
	xorl	%eax, %eax
	jmp	.L210
.L211:
	leaq	36(%rbx), %rdi
	movl	%r11d, %edx
	movq	%r12, %rsi
	call	uECC_vli_cmp
	decb	%al
	jne	.L213
	leaq	40(%rsp), %r13
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	EccPoint_compute_public_key
	testl	%eax, %eax
	je	.L213
	movsbl	1(%rbx), %esi
	movq	%r13, %rdx
	movq	%rbp, %rdi
	call	uECC_vli_nativeToBytes
	movsbq	1(%rbx), %rsi
	movsbq	(%rbx), %rdx
	leaq	0(%rbp,%rsi), %rdi
	leaq	0(%r13,%rdx,4), %rdx
	call	uECC_vli_nativeToBytes
	movl	$1, %eax
.L210:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L214
	call	__stack_chk_fail@PLT
.L214:
	addq	$120, %rsp
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
