	.file	"tinycrypt_ecc.c"
	.text
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
.LFB30:
	.cfi_startproc
	movsbq	%sil, %rsi
	leaq	(%rdi,%rsi,4), %rax
	cmpq	%rax, %rdi
	jnb	.L1
	movl	$0, %esi
.L3:
	movl	-4(%rax), %ecx
	movl	%ecx, %edx
	shrl	%edx
	orl	%esi, %edx
	movl	%edx, -4(%rax)
	movl	%ecx, %esi
	sall	$31, %esi
	subq	$4, %rax
	cmpq	%rax, %rdi
	jb	.L3
.L1:
	ret
	.cfi_endproc
.LFE30:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB32:
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
	movq	%rdi, %rbp
	movq	%rsi, %r9
	movq	%rdx, %r10
	movl	%ecx, %r12d
	movl	%ecx, %r13d
	testb	%cl, %cl
	jle	.L15
	movsbq	%cl, %rbx
	movl	$0, %edi
	movl	$0, %eax
	movl	$0, %r14d
	movl	$0, %r11d
	jmp	.L7
.L15:
	movl	$0, %esi
	movl	$0, %eax
	jmp	.L6
.L17:
	movl	%eax, %edx
	movl	%esi, %eax
	movl	$0, %esi
	jmp	.L11
.L26:
	movl	%r14d, 0(%rbp,%rdi,4)
	addq	$1, %rdi
	movl	$0, %esi
.L14:
	movl	%eax, %r14d
	movl	%esi, %eax
.L7:
	movl	%edi, %r8d
	movl	$0, %esi
	movl	%r11d, %ecx
	testb	%dil, %dil
	js	.L26
.L8:
	movsbl	%cl, %r15d
	movl	%edi, %edx
	subl	%r15d, %edx
	movslq	%edx, %rdx
	movl	(%r10,%rdx,4), %edx
	movsbq	%cl, %r15
	movl	(%r9,%r15,4), %r15d
	imulq	%r15, %rdx
	salq	$32, %rax
	movl	%r14d, %r14d
	orq	%r14, %rax
	addq	%rax, %rdx
	adcl	$0, %esi
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%edx, %r14d
	leal	1(%rcx), %r15d
	movl	%r15d, %ecx
	cmpb	%r8b, %r15b
	jle	.L8
	movl	%edx, 0(%rbp,%rdi,4)
	addq	$1, %rdi
	cmpq	%rbx, %rdi
	jne	.L14
.L6:
	movsbl	%r12b, %edx
	leal	(%rdx,%rdx), %edi
	leal	-1(%rdi), %r14d
	cmpl	%edx, %r14d
	jle	.L10
	movl	$1, %ebx
	movl	%edi, %r11d
.L13:
	cmpb	%bl, %r13b
	jle	.L17
	movsbq	%bl, %rcx
	movslq	%edx, %rdx
	subq	%rcx, %rdx
	leaq	(%r10,%rdx,4), %r8
	leaq	(%r9,%rcx,4), %rdi
	movl	%r13d, %edx
	subl	%ebx, %edx
	movzbl	%dl, %edx
	addq	%rcx, %rdx
	leaq	(%r9,%rdx,4), %r15
	movl	%eax, %edx
	movl	%esi, %eax
	movl	$0, %esi
	movb	%bl, -1(%rsp)
.L12:
	movl	(%rdi), %ebx
	movl	(%r8), %ecx
	imulq	%rbx, %rcx
	salq	$32, %rax
	movl	%edx, %edx
	orq	%rdx, %rax
	addq	%rax, %rcx
	adcl	$0, %esi
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%ecx, %edx
	subq	$4, %r8
	addq	$4, %rdi
	cmpq	%r15, %rdi
	jne	.L12
	movzbl	-1(%rsp), %ebx
.L11:
	movsbq	%r12b, %rcx
	movl	%edx, 0(%rbp,%rcx,4)
	leal	1(%r12), %edx
	movl	%edx, %r12d
	movsbl	%dl, %edx
	addl	$1, %ebx
	cmpl	%edx, %r14d
	jg	.L13
	movl	%r11d, %edi
.L10:
	movslq	%edi, %rdi
	movl	%eax, -4(%rbp,%rdi,4)
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
	.type	uECC_vli_add, @function
uECC_vli_add:
.LFB28:
	.cfi_startproc
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rdx, %r10
	testb	%cl, %cl
	jle	.L30
	movsbq	%cl, %rcx
	leaq	0(,%rcx,4), %rdi
	movl	$0, %edx
	movl	$0, %eax
	movl	$0, %r11d
.L29:
	movl	(%r9,%rdx), %esi
	movl	%esi, %ecx
	addl	(%r10,%rdx), %ecx
	addl	%eax, %ecx
	cmpl	%ecx, %esi
	cmovne	%r11d, %eax
	cmpl	%esi, %ecx
	setb	%sil
	movzbl	%sil, %esi
	orl	%esi, %eax
	movl	%ecx, (%r8,%rdx)
	addq	$4, %rdx
	cmpq	%rdi, %rdx
	jne	.L29
	ret
.L30:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE28:
	.size	uECC_vli_add, .-uECC_vli_add
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
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
	movl	%edx, %ebp
	testb	$1, (%rdi)
	jne	.L36
	movsbl	%dl, %esi
	call	uECC_vli_rshift1
	jmp	.L32
.L36:
	movsbl	%dl, %r13d
	movl	%r13d, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	call	uECC_vli_add
	movl	%eax, %r12d
	movl	%r13d, %esi
	movq	%rbx, %rdi
	call	uECC_vli_rshift1
	testl	%r12d, %r12d
	je	.L32
	movsbq	%bpl, %rbp
	orl	$-2147483648, -4(%rbx,%rbp,4)
.L32:
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
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
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
	movswl	2(%rdi), %edx
	leal	14(%rdx), %eax
	addl	$7, %edx
	cmovns	%edx, %eax
	sarl	$3, %eax
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
	testb	%sil, %sil
	jle	.L41
	movq	%rdi, %rax
	movsbq	%sil, %rsi
	leaq	(%rdi,%rsi,4), %rdx
.L43:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L43
.L41:
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
	testb	%sil, %sil
	jle	.L48
	movq	%rdi, %rax
	movsbq	%sil, %rsi
	leaq	(%rdi,%rsi,4), %rcx
	movl	$0, %edx
.L47:
	orl	(%rax), %edx
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L47
.L46:
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %eax
	ret
.L48:
	movl	$0, %edx
	jmp	.L46
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.globl	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
.LFB20:
	.cfi_startproc
	endbr64
	movl	%esi, %ecx
	movl	%esi, %edx
	sarw	$5, %dx
	movswq	%dx, %rdx
	movl	$1, %eax
	sall	%cl, %eax
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
	subb	$1, %sil
	js	.L52
	movsbq	%sil, %rsi
.L53:
	movl	%esi, %eax
	cmpl	$0, (%rdi,%rsi,4)
	jne	.L64
	subq	$1, %rsi
	testb	%sil, %sil
	jns	.L53
	leal	-1(%rax), %esi
.L52:
	movl	$0, %eax
	addb	$1, %sil
	jne	.L59
	ret
.L64:
	addl	$1, %esi
.L59:
	movsbq	%sil, %rax
	movl	-4(%rdi,%rax,4), %eax
	testl	%eax, %eax
	je	.L57
	movl	%eax, %edx
.L58:
	shrl	%edx
	jne	.L58
	bsrl	%eax, %edx
	xorl	$31, %edx
	movl	$32, %eax
	subl	%edx, %eax
.L57:
	movsbw	%sil, %si
	subl	$1, %esi
	sall	$5, %esi
	addl	%esi, %eax
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
	testb	%dl, %dl
	jle	.L65
	movsbq	%dl, %rdx
	leaq	0(,%rdx,4), %rcx
	movl	$0, %eax
.L67:
	movl	(%rsi,%rax), %edx
	movl	%edx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L67
.L65:
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
	subb	$1, %dl
	js	.L72
	movsbq	%dl, %rdx
.L71:
	movl	(%rdi,%rdx,4), %ecx
	movl	(%rsi,%rdx,4), %eax
	cmpl	%ecx, %eax
	jb	.L73
	cmpl	%eax, %ecx
	jb	.L74
	subq	$1, %rdx
	testb	%dl, %dl
	jns	.L71
	movl	$0, %eax
	ret
.L72:
	movl	$0, %eax
	ret
.L73:
	movl	$1, %eax
	ret
.L74:
	movl	$-1, %eax
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
	subb	$1, %dl
	js	.L79
	movsbq	%dl, %rdx
	movl	$0, %ecx
.L78:
	movl	(%rdi,%rdx,4), %eax
	xorl	(%rsi,%rdx,4), %eax
	orl	%eax, %ecx
	subq	$1, %rdx
	testb	%dl, %dl
	jns	.L78
.L77:
	testl	%ecx, %ecx
	setne	%al
	movzbl	%al, %eax
	ret
.L79:
	movl	$0, %ecx
	jmp	.L77
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB26:
	.cfi_startproc
	endbr64
	testl	%edx, %edx
	movl	$0, %eax
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
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rdx, %r10
	testb	%cl, %cl
	jle	.L85
	movsbq	%cl, %rcx
	leaq	0(,%rcx,4), %rdi
	movl	$0, %edx
	movl	$0, %eax
	movl	$0, %r11d
.L84:
	movl	(%r9,%rdx), %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	subl	(%r10,%rdx), %ecx
	cmpl	%ecx, %esi
	cmovne	%r11d, %eax
	setb	%sil
	movzbl	%sil, %esi
	orl	%esi, %eax
	movl	%ecx, (%r8,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %rdi
	jne	.L84
	ret
.L85:
	movl	$0, %eax
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
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movl	$8, %edx
	call	uECC_vli_set
	movl	$0, 8(%rsp)
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)
	movl	44(%r12), %eax
	movl	%eax, 12(%rsp)
	movl	48(%r12), %eax
	movl	%eax, 16(%rsp)
	movl	52(%r12), %eax
	movl	%eax, 20(%rsp)
	movl	56(%r12), %eax
	movl	%eax, 24(%rsp)
	movl	60(%r12), %eax
	movl	%eax, 28(%rsp)
	movq	%rsp, %r13
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_add
	movl	%eax, %ebx
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_add
	addl	%eax, %ebx
	movl	48(%r12), %eax
	movl	%eax, 12(%rsp)
	movl	52(%r12), %eax
	movl	%eax, 16(%rsp)
	movl	56(%r12), %eax
	movl	%eax, 20(%rsp)
	movl	60(%r12), %eax
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_add
	addl	%eax, %ebx
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_add
	addl	%eax, %ebx
	movl	32(%r12), %eax
	movl	%eax, (%rsp)
	movl	36(%r12), %eax
	movl	%eax, 4(%rsp)
	movl	40(%r12), %eax
	movl	%eax, 8(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 12(%rsp)
	movl	56(%r12), %eax
	movl	%eax, 24(%rsp)
	movl	60(%r12), %eax
	movl	%eax, 28(%rsp)
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_add
	addl	%eax, %ebx
	movl	36(%r12), %eax
	movl	%eax, (%rsp)
	movl	40(%r12), %eax
	movl	%eax, 4(%rsp)
	movl	44(%r12), %eax
	movl	%eax, 8(%rsp)
	movl	52(%r12), %eax
	movl	%eax, 12(%rsp)
	movl	56(%r12), %edx
	movl	%edx, 16(%rsp)
	movl	60(%r12), %edx
	movl	%edx, 20(%rsp)
	movl	%eax, 24(%rsp)
	movl	32(%r12), %eax
	movl	%eax, 28(%rsp)
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_add
	addl	%eax, %ebx
	movl	44(%r12), %eax
	movl	%eax, (%rsp)
	movl	48(%r12), %eax
	movl	%eax, 4(%rsp)
	movl	52(%r12), %eax
	movl	%eax, 8(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 12(%rsp)
	movl	32(%r12), %eax
	movl	%eax, 24(%rsp)
	movl	40(%r12), %eax
	movl	%eax, 28(%rsp)
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_sub
	subl	%eax, %ebx
	movl	48(%r12), %eax
	movl	%eax, (%rsp)
	movl	52(%r12), %eax
	movl	%eax, 4(%rsp)
	movl	56(%r12), %eax
	movl	%eax, 8(%rsp)
	movl	60(%r12), %eax
	movl	%eax, 12(%rsp)
	movl	36(%r12), %eax
	movl	%eax, 24(%rsp)
	movl	44(%r12), %eax
	movl	%eax, 28(%rsp)
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_sub
	subl	%eax, %ebx
	movl	52(%r12), %eax
	movl	%eax, (%rsp)
	movl	56(%r12), %eax
	movl	%eax, 4(%rsp)
	movl	60(%r12), %eax
	movl	%eax, 8(%rsp)
	movl	32(%r12), %eax
	movl	%eax, 12(%rsp)
	movl	36(%r12), %eax
	movl	%eax, 16(%rsp)
	movl	40(%r12), %eax
	movl	%eax, 20(%rsp)
	movl	$0, 24(%rsp)
	movl	48(%r12), %eax
	movl	%eax, 28(%rsp)
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_sub
	subl	%eax, %ebx
	movl	56(%r12), %eax
	movl	%eax, (%rsp)
	movl	60(%r12), %eax
	movl	%eax, 4(%rsp)
	movl	$0, 8(%rsp)
	movl	36(%r12), %eax
	movl	%eax, 12(%rsp)
	movl	40(%r12), %eax
	movl	%eax, 16(%rsp)
	movl	44(%r12), %eax
	movl	%eax, 20(%rsp)
	movl	52(%r12), %eax
	movl	%eax, 28(%rsp)
	movl	$8, %ecx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_sub
	leaq	4+curve_secp256r1(%rip), %r12
	subl	%eax, %ebx
	jns	.L88
.L89:
	movl	$8, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_add
	addl	%ebx, %eax
	movl	%eax, %ebx
	js	.L89
	jmp	.L87
.L91:
	movl	$8, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_sub
	subl	%eax, %ebx
.L88:
	testl	%ebx, %ebx
	jne	.L91
	movl	$8, %edx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	jne	.L91
.L87:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L96
	addq	$56, %rsp
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
.L96:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movsbl	%dl, %ebx
	movq	%rsp, %r12
	movl	%ebx, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r12, %rdi
	call	uECC_vli_sub
	movl	%eax, %ebp
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	sete	%al
	testl	%ebp, %ebp
	setne	%dl
	addl	%edx, %edx
	subl	%edx, %eax
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L100
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L100:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rcx, %r12
	movsbl	%r8b, %ebp
	movl	%ebp, %ecx
	call	uECC_vli_add
	testl	%eax, %eax
	jne	.L102
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	je	.L101
.L102:
	movl	%ebp, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_sub
.L101:
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rcx, %r12
	movsbl	%r8b, %ebp
	movl	%ebp, %ecx
	call	uECC_vli_sub
	testl	%eax, %eax
	jne	.L108
.L105:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L108:
	.cfi_restore_state
	movl	%ebp, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_add
	jmp	.L105
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, (%rsp)
	movq	%rdx, %r15
	movl	%ecx, %r13d
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	leaq	96(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movsbl	%cl, %ebx
	movl	%ebx, %esi
	movq	%rdx, %rdi
	call	uECC_vli_numBits
	movsbw	%r13b, %bp
	sall	$6, %ebp
	subl	%eax, %ebp
	leal	31(%rbp), %r12d
	testw	%bp, %bp
	cmovns	%ebp, %r12d
	sarw	$5, %r12w
	movl	%ebp, %eax
	sarw	$15, %ax
	shrw	$11, %ax
	leal	0(%rbp,%rax), %edx
	andl	$31, %edx
	subl	%eax, %edx
	movw	%dx, 14(%rsp)
	movl	%edx, %r14d
	movsbl	%r12b, %esi
	leaq	32(%rsp), %rdi
	call	uECC_vli_clear
	cmpb	$0, 14(%rsp)
	jle	.L110
	testb	%r13b, %r13b
	je	.L119
	movq	%r15, %rax
	movsbl	%r12b, %r12d
	leal	-1(%rbx), %edx
	leaq	4(%r15,%rdx,4), %r10
	movl	$0, %edi
	movsbl	%r14b, %edx
	movl	$32, %r9d
	subl	%edx, %r9d
.L112:
	movl	(%rax), %esi
	movl	%r12d, %r8d
	movl	%esi, %edx
	movl	%r14d, %ecx
	sall	%cl, %edx
	orl	%edi, %edx
	movl	%edx, 32(%rsp,%r8,4)
	movl	%esi, %edi
	movl	%r9d, %ecx
	shrl	%cl, %edi
	addq	$4, %rax
	addl	$1, %r12d
	cmpq	%r10, %rax
	jne	.L112
.L119:
	leal	(%rbx,%rbx), %r12d
	movsbq	%r13b, %r13
	leaq	32(%rsp,%r13,4), %r15
	movl	$1, %r14d
	leal	-1(%rbx), %r13d
	movslq	%r13d, %r13
	jmp	.L114
.L110:
	movsbq	%r12b, %r12
	leaq	32(%rsp,%r12,4), %rdi
	movl	%ebx, %edx
	movq	%r15, %rsi
	call	uECC_vli_set
	movl	$1, %r14d
	testw	%bp, %bp
	jns	.L119
.L113:
	movl	%r14d, %r14d
	movq	16(%rsp,%r14,8), %rsi
	movl	%ebx, %edx
	movq	(%rsp), %rdi
	call	uECC_vli_set
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L125
	addq	$184, %rsp
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
.L126:
	.cfi_restore_state
	setb	%sil
	movzbl	%sil, %esi
.L115:
	movl	%eax, (%rdi,%r9,4)
	leal	1(%rcx), %eax
	movl	%eax, %ecx
	movsbl	%al, %eax
	cmpl	%r12d, %eax
	jge	.L118
.L116:
	movsbq	%cl, %r9
	movl	(%r8,%r9,4), %edx
	cltq
	movl	%esi, %r10d
	addl	32(%rsp,%rax,4), %r10d
	movl	%edx, %eax
	subl	%r10d, %eax
	cmpl	%eax, %edx
	jne	.L126
	jmp	.L115
.L118:
	cmpl	%esi, %r14d
	sete	%r14b
	movzbl	%r14b, %r14d
	leaq	32(%rsp), %rdi
	movl	%ebx, %esi
	call	uECC_vli_rshift1
	movslq	%ebx, %rax
	movl	32(%rsp,%rax,4), %eax
	sall	$31, %eax
	orl	%eax, 32(%rsp,%r13,4)
	movl	%ebx, %esi
	movq	%r15, %rdi
	call	uECC_vli_rshift1
	leal	-1(%rbp), %eax
	movl	%eax, %ebp
	cmpw	$-1, %ax
	je	.L113
.L114:
	movl	$0, %esi
	testl	%ebx, %ebx
	jle	.L118
	movl	%r14d, %eax
	movq	16(%rsp,%rax,8), %r8
	movl	%r14d, %eax
	xorl	$1, %eax
	movl	%eax, %eax
	movq	16(%rsp,%rax,8), %rdi
	movl	$0, %ecx
	movl	$0, %esi
	movl	$0, %eax
	jmp	.L116
.L125:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
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
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, %rbp
	movq	%rcx, %r12
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movsbl	%r8b, %ebx
	movq	%rsp, %r13
	movl	%ebx, %ecx
	movq	%r13, %rdi
	call	uECC_vli_mult
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mmod
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L130
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
.L130:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
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
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, %rbp
	movq	%rcx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movsbl	(%rcx), %ecx
	movq	%rsp, %r12
	movq	%r12, %rdi
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	*184(%rbx)
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L134
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
.L134:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
.LFB38:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	call	uECC_vli_modMult_fast
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%rdi, %rbp
	movq	%rsi, (%rsp)
	movq	%rdx, %rbx
	movq	%rcx, %r13
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movzbl	(%rcx), %r15d
	movsbl	%r15b, %r12d
	movl	%r12d, %esi
	movq	%rdx, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	je	.L143
.L137:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L144
	addq	$104, %rsp
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
.L143:
	.cfi_restore_state
	leaq	16(%rsp), %r14
	movq	%r13, %rdx
	movq	(%rsp), %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSquare_fast
	leaq	48(%rsp), %rdi
	movq	%r13, %rcx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	call	uECC_vli_modMult_fast
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSquare_fast
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	(%rsp), %rsi
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSquare_fast
	leaq	4(%r13), %r14
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modAdd
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modAdd
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSub
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult_fast
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modAdd
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modAdd
	movl	$0, %esi
	movq	%rbp, %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	je	.L139
	movl	%r12d, %ecx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_add
	movl	%eax, 12(%rsp)
	movl	%r12d, %esi
	movq	%rbp, %rdi
	call	uECC_vli_rshift1
	movsbq	%r15b, %r15
	movl	12(%rsp), %eax
	sall	$31, %eax
	orl	%eax, -4(%rbp,%r15,4)
.L140:
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSquare_fast
	leaq	48(%rsp), %r15
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSub
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSub
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modSub
	movq	%r13, %rcx
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modMult_fast
	leaq	16(%rsp), %r13
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSub
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_set
	movl	%r12d, %edx
	movq	(%rsp), %r15
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_set
	movl	%r12d, %edx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	uECC_vli_set
	jmp	.L137
.L139:
	movl	%r12d, %esi
	movq	%rbp, %rdi
	call	uECC_vli_rshift1
	jmp	.L140
.L144:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB42:
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, %rbx
	movq	%rsi, %r13
	movq	%rdx, %rbp
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movups	%xmm0, 4(%rsp)
	movups	%xmm0, 16(%rsp)
	movl	$3, (%rsp)
	movzbl	(%rdx), %r12d
	call	uECC_vli_modSquare_fast
	movsbl	%r12b, %r12d
	leaq	4(%rbp), %r14
	movq	%rsp, %rdx
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSub
	movq	%rbp, %rcx
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	leaq	132(%rbp), %rdx
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modAdd
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L148
	addq	$48, %rsp
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
.L148:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%rdi, %r14
	movq	%rsi, 8(%rsp)
	movq	%rdx, %r13
	movq	%rcx, 16(%rsp)
	movq	%r8, %rbp
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movsbl	(%r8), %ebx
	leaq	4(%r8), %r12
	leaq	32(%rsp), %r15
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%rdi, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modSub
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modSquare_fast
	movq	%rbp, %rcx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r14, 24(%rsp)
	movq	%r14, %rdi
	call	uECC_vli_modMult_fast
	movq	%rbp, %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r14
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	uECC_vli_modAdd
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	8(%rsp), %rdx
	movq	%r14, %rsi
	movq	%r14, 16(%rsp)
	movq	%r14, %rdi
	call	uECC_vli_modSub
	leaq	64(%rsp), %r14
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	24(%rsp), %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSub
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movq	8(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	24(%rsp), %rsi
	movq	%r14, %rdi
	call	uECC_vli_modAdd
	movq	%rbp, %rdx
	movq	16(%rsp), %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSquare_fast
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSub
	leaq	96(%rsp), %rax
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	24(%rsp), %r13
	movq	%r13, %rsi
	movq	%rax, 24(%rsp)
	movq	%rax, %rdi
	call	uECC_vli_modSub
	movq	%rbp, %rcx
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	%rsi, %rdi
	call	uECC_vli_modMult_fast
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	24(%rsp), %rdi
	call	uECC_vli_modSquare_fast
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	24(%rsp), %rsi
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	24(%rsp), %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSub
	movq	%rbp, %rcx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modMult_fast
	movl	%ebx, %r8d
	movq	%r12, %rcx
	movq	8(%rsp), %rdx
	movq	%r14, %rsi
	movq	%rdx, %rdi
	call	uECC_vli_modSub
	movl	%ebx, %edx
	movq	24(%rsp), %rsi
	movq	%r13, %rdi
	call	uECC_vli_set
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L152
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
.L152:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB40:
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
	subq	$144, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, %r13
	movq	%rsi, %rbp
	movq	%rdx, %r12
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movsbl	%cl, %ebx
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	jne	.L166
	movq	%rsp, %rdi
	movl	%ebx, %edx
	movq	%rbp, %rsi
	call	uECC_vli_set
	leaq	32(%rsp), %rdi
	movl	%ebx, %edx
	movq	%r12, %rsi
	call	uECC_vli_set
	leaq	64(%rsp), %rdi
	movl	%ebx, %esi
	call	uECC_vli_clear
	movl	$1, 64(%rsp)
	leaq	96(%rsp), %rdi
	movl	%ebx, %esi
	call	uECC_vli_clear
	leaq	32(%rsp), %rbp
	jmp	.L156
.L166:
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	uECC_vli_clear
	jmp	.L153
.L168:
	movq	%rsp, %rdi
	movl	%ebx, %esi
	call	uECC_vli_rshift1
	leaq	64(%rsp), %rdi
	movl	%ebx, %edx
	movq	%r12, %rsi
	call	vli_modInv_update
.L156:
	movq	%rsp, %rdi
	movl	%ebx, %edx
	movq	%rbp, %rsi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	je	.L167
	testb	$1, (%rsp)
	je	.L168
	testb	$1, 32(%rsp)
	je	.L169
	testb	%al, %al
	jle	.L160
	movq	%rsp, %r14
	movl	%ebx, %ecx
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_sub
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	uECC_vli_rshift1
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %rdi
	movl	%ebx, %edx
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	js	.L170
.L161:
	leaq	96(%rsp), %rdx
	leaq	64(%rsp), %r14
	movl	%ebx, %ecx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_sub
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	vli_modInv_update
	jmp	.L156
.L169:
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	uECC_vli_rshift1
	leaq	96(%rsp), %rdi
	movl	%ebx, %edx
	movq	%r12, %rsi
	call	vli_modInv_update
	jmp	.L156
.L170:
	leaq	64(%rsp), %rdi
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rdi, %rsi
	call	uECC_vli_add
	jmp	.L161
.L160:
	movq	%rsp, %rdx
	movl	%ebx, %ecx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_sub
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	uECC_vli_rshift1
	leaq	64(%rsp), %rsi
	leaq	96(%rsp), %rdi
	movl	%ebx, %edx
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	js	.L171
.L162:
	leaq	64(%rsp), %rdx
	leaq	96(%rsp), %r14
	movl	%ebx, %ecx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	uECC_vli_sub
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	vli_modInv_update
	jmp	.L156
.L171:
	leaq	96(%rsp), %rdi
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%rdi, %rsi
	call	uECC_vli_add
	jmp	.L162
.L167:
	leaq	64(%rsp), %rsi
	movl	%ebx, %edx
	movq	%r13, %rdi
	call	uECC_vli_set
.L153:
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L172
	addq	$144, %rsp
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
.L172:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
	movzbl	(%rsi), %esi
	addl	%esi, %esi
	movsbl	%sil, %esi
	call	uECC_vli_isZero
	ret
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, %r14
	movq	%rsi, %r12
	movq	%rdx, %r13
	movq	%rcx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	movq	%rcx, %rdx
	movq	%r13, %rsi
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
	jne	.L178
	addq	$48, %rsp
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
.L178:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsi, 8(%rsp)
	movq	%rdx, %rbx
	movq	%rcx, %r13
	movq	%r8, %r12
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movsbl	(%r8), %r14d
	leaq	4(%r8), %r15
	leaq	16(%rsp), %rbp
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	%rdi, (%rsp)
	movq	%rdi, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSquare_fast
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	(%rsp), %rdi
	movq	%rdi, %rsi
	call	uECC_vli_modMult_fast
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	8(%rsp), %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSub
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSquare_fast
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSub
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	8(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, %rdi
	call	uECC_vli_modMult_fast
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	%rbp, %rdx
	movq	(%rsp), %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modSub
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modMult_fast
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	8(%rsp), %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	uECC_vli_modSub
	movl	%r14d, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_set
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L182
	addq	$72, %rsp
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
.L182:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
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
	movq	%rdi, 48(%rsp)
	movq	%rsi, %r13
	movq	%rsi, 56(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, %rbp
	movl	%r8d, (%rsp)
	movq	%r9, %r14
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	movzbl	(%r9), %ebx
	movsbl	%bl, %r15d
	movl	%r15d, 28(%rsp)
	leaq	128(%rsp), %rdi
	movl	%r15d, %edx
	call	uECC_vli_set
	movsbq	%bl, %rbx
	leaq	0(,%rbx,4), %rax
	movq	%rax, 32(%rsp)
	leaq	0(%r13,%rax), %rsi
	movq	%rsi, 40(%rsp)
	leaq	192(%rsp), %rdi
	movl	%r15d, %edx
	call	uECC_vli_set
	testq	%rbp, %rbp
	je	.L184
	leaq	64(%rsp), %rdi
	movl	%r15d, %edx
	movq	%rbp, %rsi
	call	uECC_vli_set
.L185:
	leaq	96(%rsp), %r15
	leaq	128(%rsp), %rbp
	movl	28(%rsp), %ebx
	movl	%ebx, %edx
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	uECC_vli_set
	leaq	160(%rsp), %r13
	leaq	192(%rsp), %r12
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	uECC_vli_set
	leaq	64(%rsp), %rbx
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	apply_z
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	*168(%r14)
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	apply_z
	movl	(%rsp), %eax
	movl	%eax, %edx
	leal	-2(%rdx), %r12d
	testw	%r12w, %r12w
	jle	.L186
	movswl	%r12w, %r12d
	movl	%eax, %r15d
	subl	$3, %r15d
	movzwl	%r15w, %r15d
	movl	%r12d, %eax
	subl	%r15d, %eax
	movl	%eax, 16(%rsp)
	movq	%r13, %r15
	movq	%r14, (%rsp)
.L187:
	movl	%r12d, %esi
	movq	8(%rsp), %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	sete	%bl
	movzbl	%bl, %ebx
	salq	$5, %rbx
	leaq	(%r15,%rbx), %r13
	leaq	96(%rsp), %rbp
	addq	%rbp, %rbx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	salq	$5, %rax
	leaq	(%r15,%rax), %r14
	addq	%rax, %rbp
	movq	(%rsp), %r8
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	XYcZ_addC
	movq	(%rsp), %r8
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	XYcZ_add
	movl	%r12d, %eax
	subl	$1, %r12d
	movl	16(%rsp), %ecx
	cmpl	%ecx, %eax
	jne	.L187
	movq	(%rsp), %r14
.L186:
	movl	$0, %esi
	movq	8(%rsp), %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	sete	%dl
	movzbl	%dl, %edx
	salq	$5, %rdx
	leaq	160(%rsp), %r12
	leaq	(%r12,%rdx), %rcx
	leaq	96(%rsp), %rbp
	addq	%rbp, %rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	salq	$5, %rax
	leaq	(%r12,%rax), %r13
	leaq	0(%rbp,%rax), %r15
	movq	%r14, %r8
	movq	%rcx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	XYcZ_addC
	leaq	4(%r14), %rax
	leaq	128(%rsp), %rsi
	leaq	64(%rsp), %rbx
	movl	28(%rsp), %r8d
	movq	%rax, 16(%rsp)
	movq	%rax, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	call	uECC_vli_modSub
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movq	%r14, %rcx
	movq	56(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movl	28(%rsp), %ecx
	movq	16(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modInv
	movq	%r14, %rcx
	movq	40(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modMult_fast
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r15, %rdx
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdi
	call	XYcZ_add
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	apply_z
	movl	28(%rsp), %ebx
	movl	%ebx, %edx
	movq	%rbp, %rsi
	movq	48(%rsp), %r15
	movq	%r15, %rdi
	call	uECC_vli_set
	movq	%r15, %rdi
	movq	32(%rsp), %rax
	addq	%rax, %rdi
	movl	%ebx, %edx
	movq	%r12, %rsi
	call	uECC_vli_set
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L191
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
.L184:
	.cfi_restore_state
	leaq	64(%rsp), %rdi
	movl	28(%rsp), %esi
	call	uECC_vli_clear
	movl	$1, 64(%rsp)
	jmp	.L185
.L191:
	call	__stack_chk_fail@PLT
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
	movq	%rsi, %r12
	movq	%rdx, %r14
	movswl	2(%rcx), %r13d
	leal	62(%r13), %ebx
	movl	%r13d, %edx
	addl	$31, %edx
	cmovns	%edx, %ebx
	sarl	$5, %ebx
	movsbl	%bl, %ebx
	leaq	36(%rcx), %rbp
	movl	%ebx, %ecx
	movq	%rbp, %rdx
	movq	%rdi, %rsi
	movq	%r12, %rdi
	call	uECC_vli_add
	movl	$1, %r15d
	testl	%eax, %eax
	jne	.L193
	movl	%ebx, %eax
	sall	$5, %eax
	movl	$0, %r15d
	cmpl	%eax, %r13d
	jge	.L193
	movl	%r13d, %esi
	movq	%r12, %rdi
	call	uECC_vli_testBit
	testl	%eax, %eax
	setne	%r15b
	movzbl	%r15b, %r15d
.L193:
	movl	%ebx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	uECC_vli_add
	movl	%r15d, %eax
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
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rsi
	movq	%rsi, (%rsp)
	leaq	48(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rbx, %rcx
	call	regularize_k
	movzwl	2(%rbx), %ecx
	leal	1(%rcx), %r8d
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	(%rsp,%rax,8), %rdx
	leaq	68(%rbx), %rsi
	movq	%rbx, %r9
	movswl	%r8w, %r8d
	movl	$0, %ecx
	movq	%rbp, %rdi
	call	EccPoint_mult
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	EccPoint_isZero
	testl	%eax, %eax
	sete	%al
	movq	88(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L200
	movzbl	%al, %eax
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L200:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	endbr64
	movq	%rdx, %r8
	testl	%esi, %esi
	jle	.L201
	movl	$0, %edx
	movl	$0, %eax
	leal	-1(%rsi), %r9d
.L203:
	movl	%r9d, %ecx
	subl	%eax, %ecx
	movsbq	%dl, %r10
	movl	%ecx, %eax
	shrl	$2, %eax
	movl	%eax, %eax
	andl	$3, %ecx
	sall	$3, %ecx
	movl	(%r8,%rax,4), %eax
	shrl	%cl, %eax
	movb	%al, (%rdi,%r10)
	leal	1(%rdx), %eax
	movl	%eax, %edx
	movsbl	%al, %eax
	cmpl	%esi, %eax
	jl	.L203
.L201:
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movl	%edx, %ebp
	leal	6(%rdx), %esi
	movl	%edx, %eax
	addl	$3, %eax
	cmovns	%eax, %esi
	sarl	$2, %esi
	movsbl	%sil, %esi
	call	uECC_vli_clear
	testl	%ebp, %ebp
	jle	.L205
	movl	$0, %edx
	movl	$0, %eax
	leal	-1(%rbp), %edi
.L207:
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$2, %eax
	leal	0(,%rax,4), %esi
	movsbq	%dl, %rax
	movzbl	(%r12,%rax), %eax
	andl	$3, %ecx
	sall	$3, %ecx
	sall	%cl, %eax
	orl	%eax, (%rbx,%rsi)
	leal	1(%rdx), %eax
	movl	%eax, %edx
	movsbl	%al, %eax
	cmpl	%ebp, %eax
	jl	.L207
.L205:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, 8(%rsp)
	cmpq	$0, g_rng_function(%rip)
	je	.L214
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movl	%edx, %ebx
	movsbl	%dl, %r13d
	movl	%r13d, %esi
	call	uECC_vli_numBits
	leal	0(,%r13,4), %r15d
	movsbq	%bl, %rdx
	leaq	-4(%rbp,%rdx,4), %r12
	movsbw	%bl, %cx
	sall	$5, %ecx
	subl	%eax, %ecx
	movl	$-1, %r14d
	shrl	%cl, %r14d
	movl	$64, %ebx
	jmp	.L213
.L212:
	subl	$1, %ebx
	je	.L218
.L213:
	movl	%r15d, %esi
	movq	%rbp, %rdi
	call	*g_rng_function(%rip)
	testl	%eax, %eax
	je	.L210
	andl	%r14d, (%r12)
	movl	%r13d, %esi
	movq	%rbp, %rdi
	call	uECC_vli_isZero
	testl	%eax, %eax
	jne	.L212
	movl	%r13d, %edx
	movq	%rbp, %rsi
	movq	8(%rsp), %rdi
	call	uECC_vli_cmp
	cmpb	$1, %al
	jne	.L212
	movl	$1, %eax
.L210:
	addq	$24, %rsp
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
.L218:
	.cfi_restore_state
	movl	$0, %eax
	jmp	.L210
.L214:
	movl	$0, %eax
	jmp	.L210
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
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movzbl	(%rsi), %r12d
	call	EccPoint_isZero
	testl	%eax, %eax
	jne	.L222
	movsbl	%r12b, %r13d
	leaq	4(%rbx), %r14
	movl	%r13d, %edx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	jne	.L223
	movsbq	%r12b, %r12
	leaq	0(%rbp,%r12,4), %r12
	movl	%r13d, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	uECC_vli_cmp_unsafe
	cmpb	$1, %al
	jne	.L224
	movq	%rsp, %r14
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	uECC_vli_modSquare_fast
	leaq	32(%rsp), %r12
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	*176(%rbx)
	movl	%r13d, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	uECC_vli_equal
	negl	%eax
	sbbl	%eax, %eax
	andl	$-3, %eax
.L219:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L227
	addq	$80, %rsp
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
.L222:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	.L219
.L223:
	movl	$-2, %eax
	jmp	.L219
.L224:
	movl	$-2, %eax
	jmp	.L219
.L227:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.globl	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
.LFB57:
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
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movzbl	1(%rsi), %r12d
	movsbl	%r12b, %r14d
	movq	%rsp, %r13
	movl	%r14d, %edx
	movq	%rdi, %rsi
	movq	%r13, %rdi
	call	uECC_vli_bytesToNative
	movsbq	%r12b, %r12
	leaq	(%rbx,%r12), %rsi
	movsbq	0(%rbp), %rax
	leaq	0(%r13,%rax,4), %rdi
	movl	%r14d, %edx
	call	uECC_vli_bytesToNative
	leaq	68(%rbp), %rsi
	movl	$16, %edx
	movq	%r13, %rdi
	call	uECC_vli_cmp_unsafe
	testb	%al, %al
	je	.L231
	movq	%rsp, %rdi
	movq	%rbp, %rsi
	call	uECC_valid_point
.L228:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L233
	addq	$80, %rsp
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
.L231:
	.cfi_restore_state
	movl	$-4, %eax
	jmp	.L228
.L233:
	call	__stack_chk_fail@PLT
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
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$120, %rsp
	.cfi_def_cfa_offset 160
	movq	%rsi, %r12
	movq	%rdx, %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movswl	2(%rdx), %ebx
	leal	14(%rbx), %edx
	movl	%ebx, %eax
	addl	$7, %eax
	cmovns	%eax, %edx
	sarl	$3, %edx
	movq	%rsp, %r13
	movq	%rdi, %rsi
	movq	%r13, %rdi
	call	uECC_vli_bytesToNative
	leal	62(%rbx), %eax
	addl	$31, %ebx
	cmovs	%eax, %ebx
	sarl	$5, %ebx
	movsbl	%bl, %ebx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	uECC_vli_isZero
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	jne	.L234
	movq	%rsp, %rsi
	leaq	36(%rbp), %rdi
	movl	%ebx, %edx
	call	uECC_vli_cmp
	movl	%eax, %edx
	movl	$0, %eax
	cmpb	$1, %dl
	je	.L241
.L234:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L242
	addq	$120, %rsp
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
.L241:
	.cfi_restore_state
	movq	%rsp, %rsi
	leaq	32(%rsp), %rdi
	movq	%rbp, %rdx
	call	EccPoint_compute_public_key
	movl	%eax, %edx
	movl	$0, %eax
	testl	%edx, %edx
	je	.L234
	leaq	32(%rsp), %rbx
	movsbl	1(%rbp), %esi
	movq	%rbx, %rdx
	movq	%r12, %rdi
	call	uECC_vli_nativeToBytes
	movzbl	1(%rbp), %eax
	movsbq	0(%rbp), %rdx
	leaq	(%rbx,%rdx,4), %rdx
	movsbl	%al, %esi
	movsbq	%al, %rax
	leaq	(%r12,%rax), %rdi
	call	uECC_vli_nativeToBytes
	movl	$1, %eax
	jmp	.L234
.L242:
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
