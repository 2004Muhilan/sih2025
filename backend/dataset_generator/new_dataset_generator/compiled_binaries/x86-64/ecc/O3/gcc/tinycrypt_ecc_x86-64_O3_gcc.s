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
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	movsbq	%dl, %r9
	movl	(%rdi), %ecx
	movq	%rsi, %r10
	salq	$2, %r9
	leaq	(%rdi,%r9), %rax
	andl	$1, %ecx
	je	.L22
	testb	%dl, %dl
	jle	.L23
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L24:
	movl	(%rdi,%rdx), %r8d
	movl	(%r10,%rdx), %esi
	addl	%r8d, %esi
	addl	%ecx, %esi
	cmpl	%esi, %r8d
	movl	%esi, (%rdi,%rdx)
	cmovne	%r11d, %ecx
	cmpl	%r8d, %esi
	setb	%r8b
	addq	$4, %rdx
	movzbl	%r8b, %r8d
	orl	%r8d, %ecx
	cmpq	%r9, %rdx
	jne	.L24
	cmpq	%rax, %rdi
	jnb	.L29
.L26:
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L30:
	movl	-4(%rax), %esi
	subq	$4, %rax
	movl	%esi, %edx
	sall	$31, %esi
	shrl	%edx
	orl	%r8d, %edx
	movl	%esi, %r8d
	movl	%edx, (%rax)
	cmpq	%rax, %rdi
	jb	.L30
.L29:
	testl	%ecx, %ecx
	je	.L21
	orl	$-2147483648, -4(%rdi,%r9)
.L21:
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	cmpq	%rax, %rdi
	jb	.L26
	ret
.L23:
	xorl	%ecx, %ecx
	cmpq	%rax, %rdi
	jb	.L26
	ret
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.p2align 4
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	endbr64
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	addq	$4, %rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	%rsi, %rcx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %rax
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
	cmpq	$8, %rcx
	jbe	.L39
	movdqu	(%rdx), %xmm6
	movups	%xmm6, (%rdi)
	movdqu	16(%rdx), %xmm7
	movups	%xmm7, 16(%rdi)
.L40:
	movl	44(%rdx), %ecx
	movl	48(%rdx), %esi
	movl	52(%rdx), %r8d
	movl	56(%rdx), %ebp
	leal	(%rcx,%rcx), %r11d
	movl	60(%rdx), %ebx
	cmpl	%ecx, %r11d
	setb	%r9b
	movzbl	%r9b, %ecx
	leal	(%rcx,%rsi,2), %r10d
	xorl	%ecx, %ecx
	cmpl	%r10d, %esi
	sete	%cl
	xorl	%edi, %edi
	testb	%r9b, %r9b
	cmove	%edi, %ecx
	cmpl	%esi, %r10d
	setb	%sil
	movzbl	%sil, %esi
	orl	%esi, %ecx
	xorl	%esi, %esi
	leal	(%rcx,%r8,2), %r9d
	cmpl	%r9d, %r8d
	sete	%sil
	andl	%ecx, %esi
	xorl	%ecx, %ecx
	cmpl	%r8d, %r9d
	setb	%cl
	orl	%ecx, %esi
	xorl	%ecx, %ecx
	leal	(%rsi,%rbp,2), %r8d
	cmpl	%r8d, %ebp
	sete	%cl
	andl	%esi, %ecx
	xorl	%esi, %esi
	cmpl	%ebp, %r8d
	movl	16(%rax), %ebp
	setb	%sil
	orl	%esi, %ecx
	leal	(%rcx,%rbx,2), %esi
	cmpl	%esi, %ebx
	cmovne	%edi, %ecx
	cmpl	%ebx, %esi
	setb	%bl
	movzbl	%bl, %ebx
	orl	%ebx, %ecx
	addl	12(%rax), %r11d
	setc	%r12b
	addl	%ebp, %r10d
	movl	%r11d, 12(%rax)
	movzbl	%r12b, %ebx
	addl	%ebx, %r10d
	xorl	%ebx, %ebx
	cmpl	%r10d, %ebp
	movl	%r10d, 16(%rax)
	sete	%bl
	testb	%r12b, %r12b
	cmove	%edi, %ebx
	cmpl	%ebp, %r10d
	setb	%bpl
	xorl	%r12d, %r12d
	movzbl	%bpl, %ebp
	orl	%ebp, %ebx
	movl	20(%rax), %ebp
	addl	%ebp, %r9d
	addl	%ebx, %r9d
	cmpl	%r9d, %ebp
	movl	%r9d, 20(%rax)
	sete	%r12b
	andl	%ebx, %r12d
	xorl	%ebx, %ebx
	cmpl	%ebp, %r9d
	movl	24(%rax), %ebp
	setb	%bl
	orl	%ebx, %r12d
	addl	%ebp, %r8d
	xorl	%ebx, %ebx
	addl	%r12d, %r8d
	cmpl	%r8d, %ebp
	movl	%r8d, 24(%rax)
	sete	%bl
	andl	%r12d, %ebx
	cmpl	%ebp, %r8d
	setb	%bpl
	movzbl	%bpl, %ebp
	orl	%ebp, %ebx
	movl	28(%rax), %ebp
	addl	%ebp, %esi
	addl	%ebx, %esi
	cmpl	%esi, %ebp
	movl	%esi, 28(%rax)
	movl	52(%rdx), %r13d
	cmovne	%edi, %ebx
	cmpl	%ebp, %esi
	movl	56(%rdx), %r12d
	movl	60(%rdx), %r14d
	setb	%bpl
	movzbl	%bpl, %ebp
	orl	%ebp, %ebx
	addl	%ecx, %ebx
	movl	48(%rdx), %ecx
	movl	%ebx, -28(%rsp)
	leal	(%rcx,%rcx), %ebp
	cmpl	%ecx, %ebp
	setb	%r15b
	movzbl	%r15b, %ecx
	leal	(%rcx,%r13,2), %ebx
	xorl	%ecx, %ecx
	cmpl	%ebx, %r13d
	sete	%cl
	testb	%r15b, %r15b
	cmove	%edi, %ecx
	cmpl	%r13d, %ebx
	setb	%r13b
	xorl	%r15d, %r15d
	movzbl	%r13b, %r13d
	orl	%r13d, %ecx
	leal	(%rcx,%r12,2), %r13d
	cmpl	%r13d, %r12d
	sete	%r15b
	andl	%r15d, %ecx
	cmpl	%r12d, %r13d
	setb	%r12b
	xorl	%r15d, %r15d
	movzbl	%r12b, %r12d
	orl	%r12d, %ecx
	leal	(%rcx,%r14,2), %r12d
	cmpl	%r12d, %r14d
	sete	%r15b
	andl	%r15d, %ecx
	cmpl	%r14d, %r12d
	setb	%r14b
	movzbl	%r14b, %r14d
	orl	%r14d, %ecx
	addl	%r11d, %ebp
	setc	%r11b
	adcl	%r10d, %ebx
	xorl	%r14d, %r14d
	movl	%ebp, 12(%rax)
	cmpl	%r10d, %ebx
	movl	%ebx, 16(%rax)
	sete	%r14b
	testb	%r11b, %r11b
	leal	0(%r13,%r9), %r11d
	cmove	%edi, %r14d
	cmpl	%r10d, %ebx
	setb	%r10b
	movzbl	%r10b, %r10d
	orl	%r10d, %r14d
	xorl	%r10d, %r10d
	addl	%r14d, %r11d
	cmpl	%r9d, %r11d
	movl	%r11d, 20(%rax)
	sete	%r10b
	andl	%r14d, %r10d
	cmpl	%r9d, %r11d
	setb	%r9b
	movzbl	%r9b, %r9d
	orl	%r9d, %r10d
	xorl	%r9d, %r9d
	movl	%r10d, %r13d
	leal	(%r12,%r8), %r10d
	addl	%r13d, %r10d
	cmpl	%r8d, %r10d
	movl	%r10d, 24(%rax)
	sete	%r9b
	andl	%r13d, %r9d
	cmpl	%r8d, %r10d
	setb	%r8b
	addl	%esi, %ecx
	movzbl	%r8b, %r8d
	orl	%r9d, %r8d
	leal	(%rcx,%r8), %r9d
	cmpl	%esi, %r9d
	movl	-28(%rsp), %esi
	movl	%r9d, 28(%rax)
	cmovne	%edi, %r8d
	setb	%cl
	movl	40(%rdx), %r12d
	movzbl	%cl, %ecx
	orl	%ecx, %r8d
	movl	56(%rdx), %ecx
	addl	%r8d, %esi
	movl	36(%rdx), %r8d
	movl	%esi, -28(%rsp)
	movl	%ecx, -24(%rsp)
	movl	60(%rdx), %r15d
	movl	32(%rdx), %ecx
	addl	(%rax), %ecx
	setc	%r13b
	addl	4(%rax), %r8d
	movl	%r15d, -20(%rsp)
	movzbl	%r13b, %esi
	movl	%ecx, (%rax)
	addl	%esi, %r8d
	xorl	%esi, %esi
	cmpl	4(%rax), %r8d
	sete	%sil
	testb	%r13b, %r13b
	cmove	%edi, %esi
	movl	%esi, %r14d
	xorl	%esi, %esi
	cmpl	4(%rax), %r8d
	movl	%r8d, 4(%rax)
	setb	%sil
	xorl	%r13d, %r13d
	orl	%esi, %r14d
	movl	8(%rax), %esi
	addl	%r12d, %esi
	addl	%r14d, %esi
	cmpl	8(%rax), %esi
	sete	%r13b
	xorl	%r12d, %r12d
	andl	%r14d, %r13d
	cmpl	8(%rax), %esi
	movl	%esi, 8(%rax)
	setb	%r12b
	xorl	%r14d, %r14d
	orl	%r12d, %r13d
	movl	%r13d, %r15d
	addl	%ebp, %r15d
	setc	%r14b
	xorl	%r12d, %r12d
	cmpl	%ebp, %r15d
	movl	%r15d, 12(%rax)
	sete	%r12b
	andl	%r13d, %r12d
	xorl	%r13d, %r13d
	orl	%r14d, %r12d
	movl	%r12d, %r14d
	addl	%ebx, %r14d
	setc	%r13b
	xorl	%ebp, %ebp
	cmpl	%ebx, %r14d
	movl	%r14d, 16(%rax)
	sete	%bpl
	andl	%r12d, %ebp
	xorl	%r12d, %r12d
	orl	%r13d, %ebp
	movl	%ebp, %ebx
	addl	%r11d, %ebx
	setc	%r12b
	cmpl	%r11d, %ebx
	movl	%ebx, 20(%rax)
	sete	%r11b
	movzbl	%r11b, %r11d
	andl	%ebp, %r11d
	orl	%r12d, %r11d
	xorl	%r12d, %r12d
	movl	%r11d, %ebp
	movl	-24(%rsp), %r11d
	addl	%r10d, %r11d
	addl	%ebp, %r11d
	cmpl	%r10d, %r11d
	movl	%r11d, 24(%rax)
	sete	%r12b
	andl	%ebp, %r12d
	cmpl	%r10d, %r11d
	setb	%r10b
	movzbl	%r10b, %r10d
	orl	%r10d, %r12d
	movl	-20(%rsp), %r10d
	movl	%r12d, %ebp
	addl	%r9d, %r10d
	addl	%r12d, %r10d
	cmpl	%r9d, %r10d
	movl	%r10d, 28(%rax)
	movl	56(%rdx), %r12d
	cmovne	%edi, %ebp
	setb	%r9b
	movl	40(%rdx), %r13d
	movzbl	%r9b, %r9d
	movl	%r12d, -20(%rsp)
	movl	60(%rdx), %r12d
	orl	%ebp, %r9d
	movl	-28(%rsp), %ebp
	movl	%r12d, -16(%rsp)
	movl	32(%rdx), %r12d
	addl	%ebp, %r9d
	movl	44(%rdx), %ebp
	movl	%r9d, -24(%rsp)
	movl	52(%rdx), %r9d
	movl	%r9d, -28(%rsp)
	movl	%r12d, -12(%rsp)
	addl	36(%rdx), %ecx
	setc	%r12b
	adcl	%r8d, %r13d
	xorl	%r9d, %r9d
	movl	%ecx, (%rax)
	cmpl	%r8d, %r13d
	movl	%r13d, 4(%rax)
	sete	%r9b
	testb	%r12b, %r12b
	cmove	%edi, %r9d
	cmpl	%r8d, %r13d
	setb	%r8b
	addl	%esi, %ebp
	movzbl	%r8b, %r8d
	orl	%r8d, %r9d
	xorl	%r8d, %r8d
	addl	%r9d, %ebp
	cmpl	%esi, %ebp
	movl	%ebp, 8(%rax)
	sete	%r8b
	andl	%r9d, %r8d
	cmpl	%esi, %ebp
	movl	-28(%rsp), %r9d
	setb	%sil
	movzbl	%sil, %esi
	leal	(%r9,%r15), %r12d
	orl	%esi, %r8d
	xorl	%esi, %esi
	addl	%r8d, %r12d
	cmpl	%r15d, %r12d
	movl	%r12d, 12(%rax)
	sete	%sil
	andl	%r8d, %esi
	xorl	%r8d, %r8d
	cmpl	%r15d, %r12d
	movl	-24(%rsp), %r15d
	setb	%r8b
	orl	%r8d, %esi
	movl	-20(%rsp), %r8d
	leal	(%r8,%r14), %r9d
	xorl	%r8d, %r8d
	addl	%esi, %r9d
	cmpl	%r14d, %r9d
	movl	%r9d, 16(%rax)
	sete	%r8b
	andl	%esi, %r8d
	xorl	%esi, %esi
	cmpl	%r14d, %r9d
	movl	-16(%rsp), %r14d
	setb	%sil
	orl	%r8d, %esi
	leal	(%r14,%rbx), %r8d
	xorl	%r14d, %r14d
	addl	%esi, %r8d
	cmpl	%ebx, %r8d
	movl	%r8d, 20(%rax)
	sete	%r14b
	andl	%esi, %r14d
	xorl	%esi, %esi
	cmpl	%ebx, %r8d
	movl	-28(%rsp), %ebx
	setb	%sil
	orl	%esi, %r14d
	leal	(%rbx,%r11), %esi
	xorl	%ebx, %ebx
	addl	%r14d, %esi
	cmpl	%r11d, %esi
	movl	%esi, 24(%rax)
	sete	%bl
	andl	%r14d, %ebx
	cmpl	%r11d, %esi
	setb	%r11b
	movzbl	%r11b, %r11d
	orl	%ebx, %r11d
	movl	-12(%rsp), %ebx
	addl	%r10d, %ebx
	addl	%r11d, %ebx
	cmpl	%r10d, %ebx
	movl	%ebx, 28(%rax)
	movl	52(%rdx), %r14d
	cmovne	%edi, %r11d
	setb	%r10b
	movzbl	%r10b, %r10d
	orl	%r11d, %r10d
	movl	32(%rdx), %r11d
	addl	%r10d, %r15d
	movl	48(%rdx), %r10d
	movl	%r11d, -24(%rsp)
	movl	40(%rdx), %r11d
	movl	%r15d, -28(%rsp)
	xorl	%r15d, %r15d
	subl	44(%rdx), %ecx
	setb	%r15b
	movl	%r11d, -20(%rsp)
	movl	%r13d, %r11d
	subl	%r15d, %r11d
	movl	%ecx, (%rax)
	subl	%r10d, %r11d
	cmpl	%r13d, %r11d
	movl	%r11d, 4(%rax)
	cmovne	%edi, %r15d
	xorl	%r10d, %r10d
	cmpl	%r11d, %r13d
	setb	%r10b
	xorl	%r13d, %r13d
	orl	%r10d, %r15d
	movl	%ebp, %r10d
	subl	%r14d, %r10d
	subl	%r15d, %r10d
	cmpl	%ebp, %r10d
	movl	%r10d, 8(%rax)
	sete	%r13b
	andl	%r15d, %r13d
	cmpl	%r10d, %ebp
	setb	%bpl
	xorl	%r14d, %r14d
	movzbl	%bpl, %ebp
	orl	%r13d, %ebp
	movl	%r12d, %r13d
	subl	%ebp, %r13d
	setb	%r14b
	cmpl	%r12d, %r13d
	movl	%r9d, %r12d
	movl	%r13d, 12(%rax)
	cmovne	%edi, %ebp
	orl	%r14d, %ebp
	xorl	%r14d, %r14d
	subl	%ebp, %r12d
	setb	%r14b
	cmpl	%r9d, %r12d
	movl	%ebp, %r9d
	movl	%r8d, %ebp
	cmovne	%edi, %r9d
	movl	%r12d, 16(%rax)
	orl	%r14d, %r9d
	xorl	%r14d, %r14d
	subl	%r9d, %ebp
	setb	%r14b
	cmpl	%r8d, %ebp
	movl	%ebp, 20(%rax)
	sete	%r8b
	movzbl	%r8b, %r8d
	andl	%r9d, %r8d
	movl	%esi, %r9d
	orl	%r14d, %r8d
	movl	-24(%rsp), %r14d
	subl	%r14d, %r9d
	xorl	%r14d, %r14d
	subl	%r8d, %r9d
	cmpl	%esi, %r9d
	movl	%r9d, 24(%rax)
	movl	-28(%rsp), %r15d
	sete	%r14b
	andl	%r8d, %r14d
	cmpl	%r9d, %esi
	movl	%ebx, %r8d
	setb	%sil
	movzbl	%sil, %esi
	orl	%esi, %r14d
	movl	-20(%rsp), %esi
	subl	%esi, %r8d
	subl	%r14d, %r8d
	cmpl	%ebx, %r8d
	movl	%r8d, 28(%rax)
	cmovne	%edi, %r14d
	xorl	%esi, %esi
	cmpl	%r8d, %ebx
	movl	60(%rdx), %ebx
	setb	%sil
	orl	%esi, %r14d
	movl	36(%rdx), %esi
	movl	%ebx, -24(%rsp)
	subl	%r14d, %r15d
	movl	44(%rdx), %ebx
	movl	52(%rdx), %r14d
	movl	%esi, -20(%rsp)
	xorl	%esi, %esi
	subl	48(%rdx), %ecx
	setb	%sil
	movl	%ebx, -16(%rsp)
	movl	%r11d, %ebx
	addl	%esi, %r14d
	movl	%r15d, -28(%rsp)
	movl	56(%rdx), %r15d
	subl	%r14d, %ebx
	movl	%ecx, (%rax)
	setb	%r14b
	cmpl	%r11d, %ebx
	movl	%r10d, %r11d
	movl	%ebx, 4(%rax)
	cmovne	%edi, %esi
	movzbl	%r14b, %r14d
	orl	%r14d, %esi
	movl	-24(%rsp), %r14d
	subl	%esi, %r11d
	subl	%r15d, %r11d
	movl	-28(%rsp), %r15d
	cmpl	%r10d, %r11d
	movl	%r11d, 8(%rax)
	cmovne	%edi, %esi
	cmpl	%r11d, %r10d
	setb	%r10b
	movzbl	%r10b, %r10d
	orl	%r10d, %esi
	movl	%r13d, %r10d
	subl	%r14d, %r10d
	subl	%esi, %r10d
	cmpl	%r13d, %r10d
	movl	%r10d, 12(%rax)
	cmovne	%edi, %esi
	cmpl	%r10d, %r13d
	setb	%r13b
	xorl	%r14d, %r14d
	movzbl	%r13b, %r13d
	orl	%r13d, %esi
	movl	%r12d, %r13d
	subl	%esi, %r13d
	setb	%r14b
	cmpl	%r12d, %r13d
	movd	%r13d, %xmm0
	movl	%ebp, %r12d
	cmovne	%edi, %esi
	orl	%r14d, %esi
	xorl	%r14d, %r14d
	subl	%esi, %r12d
	setb	%r14b
	cmpl	%ebp, %r12d
	movd	%r12d, %xmm3
	movl	%r9d, %ebp
	cmovne	%edi, %esi
	punpckldq	%xmm3, %xmm0
	orl	%r14d, %esi
	movl	-20(%rsp), %r14d
	subl	%r14d, %ebp
	movl	-16(%rsp), %r14d
	subl	%esi, %ebp
	cmpl	%r9d, %ebp
	movd	%ebp, %xmm1
	cmovne	%edi, %esi
	cmpl	%ebp, %r9d
	setb	%r9b
	movzbl	%r9b, %r9d
	orl	%r9d, %esi
	movl	%r8d, %r9d
	subl	%r14d, %r9d
	subl	%esi, %r9d
	cmpl	%r8d, %r9d
	movd	%r9d, %xmm2
	cmovne	%edi, %esi
	cmpl	%r9d, %r8d
	punpckldq	%xmm2, %xmm1
	setb	%r8b
	punpcklqdq	%xmm1, %xmm0
	movzbl	%r8b, %r8d
	movups	%xmm0, 16(%rax)
	movl	60(%rdx), %r14d
	orl	%r8d, %esi
	movl	36(%rdx), %r8d
	subl	%esi, %r15d
	movl	32(%rdx), %esi
	movl	%r15d, -28(%rsp)
	movl	56(%rdx), %r15d
	movl	%esi, -24(%rsp)
	movl	40(%rdx), %esi
	movl	%r8d, -20(%rsp)
	movl	%esi, -16(%rsp)
	movl	48(%rdx), %r8d
	xorl	%esi, %esi
	subl	52(%rdx), %ecx
	setb	%sil
	movl	%r8d, -12(%rsp)
	movl	%ebx, %r8d
	addl	%esi, %r15d
	movl	%ecx, (%rax)
	subl	%r15d, %r8d
	setb	%r15b
	cmpl	%r8d, %ebx
	movl	%r11d, %ebx
	movl	%r8d, 4(%rax)
	cmovne	%edi, %esi
	movzbl	%r15b, %r15d
	orl	%r15d, %esi
	movl	-28(%rsp), %r15d
	subl	%esi, %ebx
	subl	%r14d, %ebx
	movl	-24(%rsp), %r14d
	cmpl	%ebx, %r11d
	movl	%ebx, 8(%rax)
	cmovne	%edi, %esi
	setb	%r11b
	movzbl	%r11b, %r11d
	orl	%r11d, %esi
	movl	%r10d, %r11d
	subl	%esi, %r11d
	subl	%r14d, %r11d
	cmpl	%r11d, %r10d
	movl	%r13d, %r10d
	movl	%r11d, 12(%rax)
	cmovne	%edi, %esi
	movl	%esi, %r14d
	setb	%sil
	movzbl	%sil, %esi
	orl	%r14d, %esi
	movl	-20(%rsp), %r14d
	subl	%r14d, %r10d
	movl	-16(%rsp), %r14d
	subl	%esi, %r10d
	cmpl	%r10d, %r13d
	movl	%r10d, 16(%rax)
	cmovne	%edi, %esi
	setb	%r13b
	movzbl	%r13b, %r13d
	orl	%r13d, %esi
	movl	%r12d, %r13d
	subl	%r14d, %r13d
	subl	%esi, %r13d
	cmpl	%r13d, %r12d
	movl	%r13d, 20(%rax)
	cmovne	%edi, %esi
	setb	%r12b
	xorl	%r14d, %r14d
	movzbl	%r12b, %r12d
	orl	%r12d, %esi
	movl	%ebp, %r12d
	subl	%esi, %r12d
	setb	%r14b
	cmpl	%r12d, %ebp
	movl	%r9d, %ebp
	movl	%r12d, 24(%rax)
	cmovne	%edi, %esi
	orl	%r14d, %esi
	movl	-12(%rsp), %r14d
	subl	%r14d, %ebp
	subl	%esi, %ebp
	cmpl	%r9d, %ebp
	movl	%ebp, 28(%rax)
	movl	40(%rdx), %r14d
	cmovne	%edi, %esi
	cmpl	%ebp, %r9d
	setb	%r9b
	movzbl	%r9b, %r9d
	orl	%r9d, %esi
	movl	36(%rdx), %r9d
	subl	%esi, %r15d
	movl	60(%rdx), %esi
	subl	56(%rdx), %ecx
	movl	%r15d, -28(%rsp)
	movl	44(%rdx), %r15d
	movl	%r15d, -24(%rsp)
	movl	52(%rdx), %r15d
	setb	%dl
	adcl	$0, %esi
	movl	%ecx, (%rax)
	movl	%r15d, -20(%rsp)
	movl	%r8d, %r15d
	subl	%esi, %r15d
	setb	%sil
	cmpl	%r15d, %r8d
	movl	%r15d, 4(%rax)
	sete	%r8b
	testb	%dl, %dl
	movzbl	%sil, %esi
	movzbl	%r8b, %r8d
	movl	%r8d, %edx
	cmove	%edi, %edx
	xorl	%r8d, %r8d
	orl	%esi, %edx
	movl	%ebx, %esi
	subl	%edx, %esi
	setb	%r8b
	cmpl	%esi, %ebx
	movl	-24(%rsp), %ebx
	movl	%esi, 8(%rax)
	cmovne	%edi, %edx
	orl	%r8d, %edx
	movl	%r11d, %r8d
	addl	%edx, %r9d
	subl	%r9d, %r8d
	setb	%r9b
	cmpl	%r8d, %r11d
	movd	%r8d, %xmm0
	movl	%r13d, %r11d
	cmovne	%edi, %edx
	movzbl	%r9b, %r9d
	orl	%r9d, %edx
	movl	%r10d, %r9d
	subl	%edx, %r9d
	subl	%r14d, %r9d
	cmpl	%r9d, %r10d
	movd	%r9d, %xmm5
	cmovne	%edi, %edx
	setb	%r10b
	punpckldq	%xmm5, %xmm0
	movzbl	%r10b, %r10d
	orl	%r10d, %edx
	subl	%edx, %r11d
	subl	%ebx, %r11d
	cmpl	%r11d, %r13d
	movd	%r11d, %xmm1
	cmovne	%edi, %edx
	movl	%edx, %r10d
	setb	%dl
	xorl	%r13d, %r13d
	movzbl	%dl, %edx
	orl	%edx, %r10d
	movl	%r12d, %edx
	subl	%r10d, %edx
	movl	%r10d, %ebx
	movl	%ebp, %r10d
	setb	%r13b
	movd	%edx, %xmm4
	cmpl	%edx, %r12d
	cmovne	%edi, %ebx
	punpckldq	%xmm4, %xmm1
	punpcklqdq	%xmm1, %xmm0
	orl	%r13d, %ebx
	movups	%xmm0, 12(%rax)
	movl	-20(%rsp), %r14d
	subl	%ebx, %r10d
	subl	%r14d, %r10d
	cmpl	%ebp, %r10d
	movl	%r10d, 28(%rax)
	cmovne	%edi, %ebx
	xorl	%edi, %edi
	cmpl	%r10d, %ebp
	setb	%dil
	orl	%edi, %ebx
	movl	-28(%rsp), %edi
	subl	%ebx, %edi
	jns	.L87
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L119:
	movl	4(%rax), %r11d
	movl	(%rax), %ecx
	movl	8(%rax), %ebp
	movl	12(%rax), %ebx
	movl	16(%rax), %r9d
	movl	20(%rax), %esi
	movl	24(%rax), %r8d
.L97:
	leal	1(%rcx), %edx
	cmpl	%edx, %ecx
	movl	%edx, (%rax)
	leal	1(%r11), %ecx
	setb	%r12b
	movzbl	%r12b, %edx
	subl	%edx, %ecx
	cmpl	%r11d, %ecx
	movl	%ecx, 4(%rax)
	sete	%dl
	andl	%r12d, %edx
	cmpl	%ecx, %r11d
	setb	%r11b
	orl	%r11d, %edx
	leal	1(%rbp), %r11d
	movzbl	%dl, %ecx
	subl	%ecx, %r11d
	cmpl	%ebp, %r11d
	movl	%r11d, 8(%rax)
	sete	%cl
	andl	%edx, %ecx
	cmpl	%r11d, %ebp
	movl	%ebx, %r11d
	setb	%dl
	xorl	%ebp, %ebp
	orl	%edx, %ecx
	movzbl	%cl, %edx
	subl	%edx, %r11d
	setb	%bpl
	cmpl	%ebx, %r11d
	movl	%r11d, 12(%rax)
	movl	%r9d, %r11d
	sete	%dl
	xorl	%ebx, %ebx
	andl	%ecx, %edx
	orl	%ebp, %edx
	movzbl	%dl, %ecx
	subl	%ecx, %r11d
	setb	%bl
	cmpl	%r9d, %r11d
	movl	%esi, %r9d
	movl	%r11d, 16(%rax)
	sete	%cl
	xorl	%r11d, %r11d
	andl	%edx, %ecx
	orl	%ebx, %ecx
	movzbl	%cl, %edx
	subl	%edx, %r9d
	setb	%r11b
	cmpl	%esi, %r9d
	movl	%r9d, 20(%rax)
	sete	%dl
	andl	%ecx, %edx
	leal	-1(%r8), %ecx
	orl	%r11d, %edx
	movzbl	%dl, %esi
	subl	%esi, %ecx
	cmpl	%r8d, %ecx
	movl	%ecx, 24(%rax)
	sete	%sil
	andl	%edx, %esi
	cmpl	%ecx, %r8d
	leal	1(%r10), %ecx
	setb	%dl
	orl	%edx, %esi
	movzbl	%sil, %edx
	subl	%edx, %ecx
	cmpl	%r10d, %ecx
	movl	%ecx, 28(%rax)
	sete	%dl
	andl	%esi, %edx
	cmpl	%ecx, %r10d
	movl	%ecx, %r10d
	setb	%sil
	orl	%esi, %edx
	movzbl	%dl, %edx
	subl	%edx, %edi
.L87:
	testl	%edi, %edi
	jne	.L119
	cmpl	$-1, %r10d
	jne	.L38
	movl	24(%rax), %r8d
	testl	%r8d, %r8d
	je	.L38
	movl	20(%rax), %esi
	movl	16(%rax), %r9d
	movl	12(%rax), %ebx
	movl	8(%rax), %ebp
	cmpl	$1, %r8d
	jne	.L117
	testl	%esi, %esi
	jne	.L117
	testl	%r9d, %r9d
	jne	.L117
	testl	%ebx, %ebx
	jne	.L117
	cmpl	$-1, %ebp
	jne	.L38
	cmpl	$-1, 4(%rax)
	jne	.L38
	movl	(%rax), %r11d
	cmpl	$-1, %r11d
	jne	.L38
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	$-1, %ecx
	jmp	.L97
.L118:
	subl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L94:
	cmpl	$-1, %ecx
	movl	%r15d, %ebp
	movl	%r8d, %r13d
	setne	%r12b
	movzbl	%r12b, %ebx
	leal	-1(%r15,%rbx), %r15d
	cmpl	%r15d, %ebp
	sete	%bl
	andl	%r12d, %ebx
	cmpl	%ebp, %r15d
	movl	%esi, %r12d
	setb	%bpl
	orl	%ebp, %ebx
	movzbl	%bl, %ebp
	leal	-1(%rsi,%rbp), %esi
	cmpl	%esi, %r12d
	sete	%bpl
	andl	%ebx, %ebp
	cmpl	%r12d, %esi
	setb	%bl
	xorl	%r12d, %r12d
	orl	%ebx, %ebp
	movzbl	%bpl, %ebx
	addl	%r8d, %ebx
	setc	%r12b
	cmpl	%ebx, %r13d
	movl	%ebx, %r8d
	movl	%r9d, %r13d
	sete	%bl
	andl	%ebp, %ebx
	orl	%r12d, %ebx
	xorl	%r12d, %r12d
	movzbl	%bl, %ebp
	addl	%r9d, %ebp
	setc	%r12b
	cmpl	%ebp, %r13d
	movl	%ebp, %r9d
	movl	%r11d, %r13d
	sete	%bpl
	andl	%ebx, %ebp
	orl	%r12d, %ebp
	xorl	%r12d, %r12d
	movzbl	%bpl, %ebx
	addl	%r11d, %ebx
	setc	%r12b
	cmpl	%ebx, %r13d
	movl	%ebx, %r11d
	sete	%bl
	andl	%ebp, %ebx
	orl	%r12d, %ebx
	movl	%edx, %r12d
	movzbl	%bl, %ebp
	leal	1(%rdx,%rbp), %edx
	cmpl	%edx, %r12d
	sete	%bpl
	andl	%ebx, %ebp
	cmpl	%r12d, %edx
	movl	%r10d, %r12d
	setb	%bl
	orl	%ebx, %ebp
	movzbl	%bpl, %ebx
	leal	-1(%r10,%rbx), %r10d
	cmpl	%r10d, %r12d
	sete	%bl
	andl	%ebp, %ebx
	cmpl	%r12d, %r10d
	setb	%bpl
	orl	%ebp, %ebx
	movl	%ecx, %ebp
	subl	$1, %ecx
	movzbl	%bl, %ebx
	addl	%ebx, %edi
	jne	.L94
	movl	%ebp, (%rax)
	movl	%r15d, 4(%rax)
	movl	%esi, 8(%rax)
	movl	%r8d, 12(%rax)
	movl	%r9d, 16(%rax)
	movl	%r11d, 20(%rax)
	movl	%edx, 24(%rax)
	movl	%r10d, 28(%rax)
.L38:
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
.L117:
	.cfi_restore_state
	movl	4(%rax), %r11d
	movl	(%rax), %ecx
	jmp	.L97
.L39:
	movl	(%rdx), %ecx
	movl	%ecx, (%rdi)
	movl	4(%rdx), %ecx
	movl	%ecx, 4(%rdi)
	movl	8(%rdx), %ecx
	movl	%ecx, 8(%rdi)
	movl	12(%rdx), %ecx
	movl	%ecx, 12(%rdi)
	movl	16(%rdx), %ecx
	movl	%ecx, 16(%rdi)
	movl	20(%rdx), %ecx
	movl	%ecx, 20(%rdi)
	movl	24(%rdx), %ecx
	movl	%ecx, 24(%rdi)
	movl	28(%rdx), %ecx
	movl	%ecx, 28(%rdi)
	jmp	.L40
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.p2align 4
	.type	uECC_vli_modInv.part.0, @function
uECC_vli_modInv.part.0:
.LFB60:
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	movq	%rdi, 80(%rsp)
	movq	%rdx, 16(%rsp)
	movl	%ecx, 68(%rsp)
	movb	%cl, 67(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	testb	%cl, %cl
	jle	.L121
	movzbl	%cl, %edx
	leaq	96(%rsp), %rbp
	salq	$2, %rdx
	movq	%rbp, %rdi
	cmpl	$8, %edx
	jb	.L122
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
.L122:
	testb	$4, %dl
	jne	.L230
.L125:
	leaq	128(%rsp), %rbx
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	cmpl	$8, %edx
	jb	.L126
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
.L126:
	testb	$4, %dl
	jne	.L231
.L129:
	leaq	160(%rsp), %r12
	movq	%r12, %rdi
	cmpl	$8, %edx
	jb	.L130
	movq	%rdx, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
.L130:
	testb	$4, %dl
	jne	.L232
.L133:
	leaq	192(%rsp), %r13
	movl	$1, 160(%rsp)
	movq	%r13, %rdi
	cmpl	$8, %edx
	jb	.L134
	movq	%rdx, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
.L134:
	andl	$4, %edx
	jne	.L233
.L138:
	movl	68(%rsp), %edi
	movq	$-4, %r15
	movsbq	%dil, %rdx
	movl	%edi, %eax
	leaq	0(,%rdx,4), %rdi
	subl	$1, %eax
	leaq	(%rbx,%rdi), %r8
	subq	%rdi, %r15
	movq	%rdi, 88(%rsp)
	leaq	0(%r13,%rdi), %r9
	leaq	-4(%r8), %rcx
	leaq	(%r8,%r15), %r14
	movq	%rcx, 48(%rsp)
	leaq	0(%rbp,%rdi), %rcx
	addq	%r12, %rdi
	movq	%rdi, 72(%rsp)
	leaq	-4(%rcx), %rsi
	movzbl	%al, %edi
	addq	%rcx, %r15
	movq	%rcx, 40(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdi, 8(%rsp)
	testb	%al, %al
	js	.L120
	.p2align 4,,10
	.p2align 3
.L139:
	movq	8(%rsp), %rdx
	movq	%rdx, %rax
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L235:
	cmpl	%ecx, %esi
	jb	.L186
	subq	$1, %rdx
	testb	%dl, %dl
	js	.L234
.L167:
	movl	0(%rbp,%rdx,4), %esi
	movl	(%rbx,%rdx,4), %ecx
	cmpl	%esi, %ecx
	jnb	.L235
	movl	96(%rsp), %edx
	movl	$1, %ecx
	andl	$1, %edx
	je	.L236
.L220:
	movl	128(%rsp), %edx
	andl	$1, %edx
	je	.L237
	cmpb	$1, %cl
	je	.L147
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	cmpb	$0, 67(%rsp)
	movq	%rbp, %r10
	movq	%rbx, %rsi
	jle	.L149
	.p2align 4,,10
	.p2align 3
.L148:
	movl	(%rsi), %edi
	movl	%edi, %edx
	subl	%ecx, %edx
	subl	(%r10), %edx
	cmpl	%edx, %edi
	movl	%edx, (%rsi)
	setb	%dil
	cmovne	%r11d, %ecx
	addq	$4, %rsi
	addq	$4, %r10
	movzbl	%dil, %edi
	orl	%edi, %ecx
	cmpq	%rsi, %r8
	jne	.L148
.L149:
	movq	48(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	%r8, %rbx
	jnb	.L160
	movl	%edx, %edi
	.p2align 4,,10
	.p2align 3
.L159:
	movl	(%rsi), %ecx
	subq	$4, %rsi
	movl	%ecx, %edx
	shrl	%edx
	orl	%edi, %edx
	movl	%ecx, %edi
	movl	%edx, 4(%rsi)
	sall	$31, %edi
	cmpq	%r14, %rsi
	jne	.L159
	movl	0(%r13,%rax,4), %ecx
	movl	(%r12,%rax,4), %edx
	cmpl	%ecx, %edx
	jb	.L162
	.p2align 4,,10
	.p2align 3
.L238:
	cmpl	%edx, %ecx
	jb	.L163
	subq	$1, %rax
	testb	%al, %al
	js	.L162
.L160:
	movl	0(%r13,%rax,4), %ecx
	movl	(%r12,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L238
.L162:
	cmpb	$0, 67(%rsp)
	jle	.L146
.L177:
	movq	%r12, %rdi
	movq	%r13, %rcx
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L165:
	movl	(%rcx), %esi
	movl	%esi, %eax
	subl	%edx, %eax
	subl	(%rdi), %eax
	cmpl	%eax, %esi
	movl	%eax, (%rcx)
	setb	%sil
	cmovne	%r10d, %edx
	addq	$4, %rcx
	addq	$4, %rdi
	movzbl	%sil, %esi
	orl	%esi, %edx
	cmpq	%rcx, %r9
	jne	.L165
.L146:
	movsbl	67(%rsp), %edx
	movq	16(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r9, 32(%rsp)
	movq	%r8, 24(%rsp)
	call	vli_modInv_update
	movq	24(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L186:
	movl	96(%rsp), %edx
	movl	$-1, %ecx
	andl	$1, %edx
	jne	.L220
.L236:
	movq	40(%rsp), %rdi
	movq	56(%rsp), %rax
	movl	%edx, %esi
	cmpq	%rdi, %rbp
	jnb	.L143
	.p2align 4,,10
	.p2align 3
.L141:
	movl	(%rax), %ecx
	subq	$4, %rax
	movl	%ecx, %edx
	shrl	%edx
	orl	%esi, %edx
	movl	%ecx, %esi
	movl	%edx, 4(%rax)
	sall	$31, %esi
	cmpq	%r15, %rax
	jne	.L141
.L143:
	movsbl	67(%rsp), %edx
	movq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r9, 32(%rsp)
	movq	%r8, 24(%rsp)
	call	vli_modInv_update
	movq	24(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L237:
	movq	48(%rsp), %rax
	movl	%edx, %esi
	cmpq	%r8, %rbx
	jnb	.L146
	.p2align 4,,10
	.p2align 3
.L145:
	movl	(%rax), %ecx
	subq	$4, %rax
	movl	%ecx, %edx
	shrl	%edx
	orl	%esi, %edx
	movl	%ecx, %esi
	movl	%edx, 4(%rax)
	sall	$31, %esi
	cmpq	%r14, %rax
	jne	.L145
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L147:
	cmpb	$0, 67(%rsp)
	jle	.L150
	movq	%rax, 24(%rsp)
	movq	40(%rsp), %rax
	movq	%rbx, %r10
	movq	%rbp, %rsi
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L151:
	movl	(%rsi), %edi
	movl	%edi, %edx
	subl	%ecx, %edx
	subl	(%r10), %edx
	cmpl	%edx, %edi
	movl	%edx, (%rsi)
	setb	%dil
	cmovne	%r11d, %ecx
	addq	$4, %rsi
	addq	$4, %r10
	movzbl	%dil, %edi
	orl	%edi, %ecx
	cmpq	%rsi, %rax
	jne	.L151
	movq	24(%rsp), %rax
.L150:
	movq	40(%rsp), %rdi
	movq	56(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	%rdi, %rbp
	jnb	.L153
	movl	%edx, %edi
	.p2align 4,,10
	.p2align 3
.L152:
	movl	(%rsi), %ecx
	subq	$4, %rsi
	movl	%ecx, %edx
	shrl	%edx
	orl	%edi, %edx
	movl	%ecx, %edi
	movl	%edx, 4(%rsi)
	sall	$31, %edi
	cmpq	%r15, %rsi
	jne	.L152
	movl	(%r12,%rax,4), %ecx
	movl	0(%r13,%rax,4), %edx
	cmpl	%ecx, %edx
	jb	.L155
	.p2align 4,,10
	.p2align 3
.L239:
	cmpl	%edx, %ecx
	jb	.L156
	subq	$1, %rax
	testb	%al, %al
	js	.L155
.L153:
	movl	(%r12,%rax,4), %ecx
	movl	0(%r13,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L239
.L155:
	cmpb	$0, 67(%rsp)
	jle	.L143
.L175:
	movq	72(%rsp), %r11
	movq	%r13, %rdi
	movq	%r12, %rcx
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L158:
	movl	(%rcx), %esi
	movl	%esi, %eax
	subl	%edx, %eax
	subl	(%rdi), %eax
	cmpl	%eax, %esi
	movl	%eax, (%rcx)
	setb	%sil
	cmovne	%r10d, %edx
	addq	$4, %rcx
	addq	$4, %rdi
	movzbl	%sil, %esi
	orl	%esi, %edx
	cmpq	%rcx, %r11
	jne	.L158
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L234:
	cmpb	$0, 68(%rsp)
	jle	.L120
	movq	8(%rsp), %rax
	leaq	4(,%rax,4), %rax
	cmpl	$8, %eax
	jb	.L240
	movq	80(%rsp), %rbx
	movq	160(%rsp), %rdx
	movq	%r12, %rsi
	movq	%rdx, (%rbx)
	leaq	8(%rbx), %rdi
	movq	-8(%r12,%rax), %rdx
	andq	$-8, %rdi
	movq	%rdx, -8(%rbx,%rax)
	subq	%rdi, %rbx
	addl	%ebx, %eax
	subq	%rbx, %rsi
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
.L120:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L241
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
.L240:
	.cfi_restore_state
	testb	$4, %al
	jne	.L242
	testl	%eax, %eax
	je	.L120
	movzbl	160(%rsp), %eax
	movq	80(%rsp), %rbx
	movb	%al, (%rbx)
	jmp	.L120
.L233:
	movl	$0, (%rdi)
	jmp	.L138
.L232:
	movl	$0, (%rdi)
	jmp	.L133
.L231:
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	jmp	.L129
.L230:
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L163:
	cmpb	$0, 67(%rsp)
	jle	.L146
	movq	16(%rsp), %rax
	movq	88(%rsp), %rdi
	movq	%r13, %rcx
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	movq	%rax, %rsi
	leaq	(%rdi,%rax), %r11
	.p2align 4,,10
	.p2align 3
.L164:
	movl	(%rcx), %edi
	movl	(%rsi), %eax
	addl	%edi, %eax
	addl	%edx, %eax
	cmpl	%eax, %edi
	movl	%eax, (%rcx)
	cmovne	%r10d, %edx
	cmpl	%edi, %eax
	setb	%dil
	addq	$4, %rsi
	addq	$4, %rcx
	movzbl	%dil, %edi
	orl	%edi, %edx
	cmpq	%rsi, %r11
	jne	.L164
	jmp	.L177
.L156:
	cmpb	$0, 67(%rsp)
	jle	.L143
	movq	16(%rsp), %rax
	movq	88(%rsp), %rdi
	movq	%r12, %rcx
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	movq	%rax, %rsi
	leaq	(%rax,%rdi), %r11
	.p2align 4,,10
	.p2align 3
.L157:
	movl	(%rcx), %edi
	movl	(%rsi), %eax
	addl	%edi, %eax
	addl	%edx, %eax
	cmpl	%eax, %edi
	movl	%eax, (%rcx)
	cmovne	%r10d, %edx
	cmpl	%edi, %eax
	setb	%dil
	addq	$4, %rsi
	addq	$4, %rcx
	movzbl	%dil, %edi
	orl	%edi, %edx
	cmpq	%r11, %rsi
	jne	.L157
	jmp	.L175
.L121:
	movl	$1, 160(%rsp)
	leaq	96(%rsp), %rbp
	leaq	128(%rsp), %rbx
	leaq	160(%rsp), %r12
	leaq	192(%rsp), %r13
	jmp	.L138
.L242:
	movl	160(%rsp), %edx
	movq	80(%rsp), %rbx
	movl	%edx, (%rbx)
	movl	-4(%r12,%rax), %edx
	movl	%edx, -4(%rbx,%rax)
	jmp	.L120
.L241:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE60:
	.size	uECC_vli_modInv.part.0, .-uECC_vli_modInv.part.0
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
	jle	.L247
	movzbl	%sil, %esi
	leaq	0(,%rsi,4), %rax
	cmpl	$8, %eax
	jnb	.L249
	testb	$4, %al
	jne	.L253
	testl	%eax, %eax
	je	.L247
	movb	$0, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L249:
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
.L247:
	ret
.L253:
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
	movq	%rdi, %rcx
	testb	%sil, %sil
	jle	.L259
	leal	-1(%rsi), %eax
	cmpb	$2, %al
	jbe	.L260
	movl	%esi, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L257:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	por	%xmm2, %xmm0
	cmpq	%rax, %rdx
	jne	.L257
	movdqa	%xmm0, %xmm1
	movl	%esi, %edx
	psrldq	$8, %xmm1
	andl	$-4, %edx
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$3, %sil
	je	.L258
.L256:
	movsbq	%dl, %rdi
	orl	(%rcx,%rdi,4), %eax
	leal	1(%rdx), %edi
	cmpb	%dil, %sil
	jle	.L258
	movzbl	%dil, %edi
	addl	$2, %edx
	orl	(%rcx,%rdi,4), %eax
	cmpb	%dl, %sil
	jle	.L258
	movzbl	%dl, %edx
	orl	(%rcx,%rdx,4), %eax
.L258:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L259:
	movl	$1, %eax
	ret
.L260:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L256
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
	js	.L264
	movzbl	%sil, %eax
	jmp	.L265
	.p2align 4,,10
	.p2align 3
.L266:
	movl	%eax, %ecx
	leaq	-1(%rax), %rdx
	subb	$1, %cl
	js	.L264
	movq	%rdx, %rax
.L265:
	movl	(%rdi,%rax,4), %edx
	testl	%edx, %edx
	je	.L266
	addl	$1, %eax
.L264:
	xorl	%edx, %edx
	testb	%al, %al
	je	.L263
	movsbq	%al, %rdx
	movl	-4(%rdi,%rdx,4), %edx
	testl	%edx, %edx
	je	.L271
	bsrl	%edx, %edx
	addl	$1, %edx
.L268:
	cbtw
	subl	$1, %eax
	sall	$5, %eax
	addl	%eax, %edx
.L263:
	movl	%edx, %eax
	ret
.L271:
	xorl	%edx, %edx
	jmp	.L268
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
	movq	%rdi, %rcx
	movl	%edx, %eax
	testb	%dl, %dl
	jle	.L273
	leal	-1(%rdx), %edx
	cmpb	$2, %dl
	jbe	.L275
	leaq	4(%rsi), %rdi
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	cmpq	$8, %rdx
	ja	.L282
.L275:
	movsbq	%al, %rax
	leaq	0(,%rax,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L278:
	movl	(%rsi,%rax), %edi
	movl	%edi, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L278
.L273:
	ret
	.p2align 4,,10
	.p2align 3
.L282:
	movl	%eax, %edi
	xorl	%edx, %edx
	shrb	$2, %dil
	movzbl	%dil, %edi
	salq	$4, %rdi
	.p2align 4,,10
	.p2align 3
.L276:
	movdqu	(%rsi,%rdx), %xmm0
	movups	%xmm0, (%rcx,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rdi
	jne	.L276
	movl	%eax, %edx
	andl	$-4, %edx
	testb	$3, %al
	je	.L273
	movzbl	%dl, %edi
	movl	(%rsi,%rdi,4), %r8d
	movl	%r8d, (%rcx,%rdi,4)
	leal	1(%rdx), %edi
	cmpb	%dil, %al
	jle	.L273
	movzbl	%dil, %edi
	addl	$2, %edx
	movl	(%rsi,%rdi,4), %r8d
	movl	%r8d, (%rcx,%rdi,4)
	cmpb	%dl, %al
	jle	.L273
	movzbl	%dl, %edx
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
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
	js	.L286
	movzbl	%dl, %edx
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L290:
	cmpl	%eax, %ecx
	jb	.L288
	subq	$1, %rdx
	testb	%dl, %dl
	js	.L286
.L285:
	movl	(%rdi,%rdx,4), %ecx
	movl	(%rsi,%rdx,4), %eax
	cmpl	%ecx, %eax
	jnb	.L290
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L286:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L288:
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
	leal	-1(%rdx), %r10d
	movq	%rsi, %r8
	movl	%edx, %esi
	movl	%r10d, %edx
	testb	%r10b, %r10b
	js	.L296
	cmpb	$2, %r10b
	jbe	.L297
	movl	%esi, %edx
	movzbl	%r10b, %eax
	pxor	%xmm1, %xmm1
	shrb	$2, %dl
	leaq	-12(,%rax,4), %rcx
	xorl	%eax, %eax
	movzbl	%dl, %edx
	leaq	(%rdi,%rcx), %r9
	addq	%r8, %rcx
	negq	%rdx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L294:
	movdqu	(%r9,%rax), %xmm0
	movdqu	(%rcx,%rax), %xmm2
	subq	$16, %rax
	pxor	%xmm2, %xmm0
	pshufd	$27, %xmm0, %xmm0
	por	%xmm0, %xmm1
	cmpq	%rdx, %rax
	jne	.L294
	movdqa	%xmm1, %xmm0
	movl	%esi, %ecx
	psrldq	$8, %xmm0
	andl	$-4, %ecx
	andl	$3, %esi
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrldq	$4, %xmm0
	por	%xmm0, %xmm1
	movd	%xmm1, %eax
	je	.L295
	movl	%r10d, %edx
	subl	%ecx, %edx
.L293:
	movsbq	%dl, %rsi
	movl	(%rdi,%rsi,4), %ecx
	xorl	(%r8,%rsi,4), %ecx
	orl	%ecx, %eax
	leal	-1(%rdx), %ecx
	testb	%dl, %dl
	je	.L295
	movzbl	%cl, %ecx
	movl	(%r8,%rcx,4), %esi
	xorl	(%rdi,%rcx,4), %esi
	leal	-2(%rdx), %ecx
	orl	%esi, %eax
	cmpb	$1, %dl
	je	.L295
	movzbl	%cl, %edx
	movl	(%r8,%rdx,4), %ecx
	xorl	(%rdi,%rdx,4), %ecx
	orl	%ecx, %eax
.L295:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L296:
	xorl	%eax, %eax
	ret
.L297:
	xorl	%eax, %eax
	jmp	.L293
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
	jle	.L309
	movsbq	%cl, %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	leaq	0(,%rcx,4), %rdi
	.p2align 4,,10
	.p2align 3
.L308:
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
	jne	.L308
	ret
	.p2align 4,,10
	.p2align 3
.L309:
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	testb	%dl, %dl
	jle	.L318
	movsbq	%dl, %r10
	movq	%rdi, %r8
	movq	%rsi, %r9
	movl	%edx, %r11d
	salq	$2, %r10
	xorl	%ecx, %ecx
	movq	%rsp, %rdi
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L313:
	movl	(%r8,%rax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%r9,%rax), %edx
	cmpl	%edx, %esi
	movl	%edx, (%rdi,%rax)
	setb	%sil
	cmovne	%ebx, %ecx
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%rax, %r10
	jne	.L313
	testl	%ecx, %ecx
	leal	-1(%r11), %eax
	setne	%sil
	cmpb	$2, %al
	jbe	.L319
	movl	%r11d, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	leaq	(%rdi,%rdx), %rcx
	andl	$16, %edx
	je	.L315
	leaq	16(%rsp), %rax
	movdqa	(%rdi), %xmm0
	cmpq	%rcx, %rax
	je	.L330
	.p2align 4,,10
	.p2align 3
.L315:
	por	(%rax), %xmm0
	addq	$32, %rax
	por	-16(%rax), %xmm0
	cmpq	%rcx, %rax
	jne	.L315
.L330:
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$3, %r11b
	je	.L316
	movl	%r11d, %edx
	andl	$-4, %edx
.L314:
	movsbq	%dl, %rcx
	orl	(%rsp,%rcx,4), %eax
	leal	1(%rdx), %ecx
	cmpb	%cl, %r11b
	jle	.L316
	movzbl	%cl, %ecx
	addl	$2, %edx
	orl	(%rsp,%rcx,4), %eax
	cmpb	%dl, %r11b
	jle	.L316
	movzbl	%dl, %edx
	orl	(%rsp,%rdx,4), %eax
.L316:
	testl	%eax, %eax
	leal	(%rsi,%rsi), %edx
	setne	%al
	subl	%edx, %eax
.L311:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L332
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L318:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L311
.L319:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L314
.L332:
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
	jle	.L334
	movsbq	%r8b, %rbx
	movq	%rsi, %r10
	movq	%rdx, %r11
	xorl	%eax, %eax
	leaq	0(,%rbx,4), %r12
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L335:
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
	jne	.L335
	testl	%ecx, %ecx
	je	.L349
.L336:
	leaq	0(,%rbx,4), %r8
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L341:
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
	jne	.L341
.L333:
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
.L349:
	.cfi_restore_state
	leal	-1(%r8), %eax
.L342:
	movsbq	%al, %rax
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L350:
	cmpl	%edx, %ecx
	jb	.L339
	subq	$1, %rax
	testb	%al, %al
	js	.L339
.L340:
	movl	(%r9,%rax,4), %ecx
	movl	(%rdi,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L350
	jmp	.L333
	.p2align 4,,10
	.p2align 3
.L339:
	movsbq	%r8b, %rbx
	testb	%r8b, %r8b
	jg	.L336
	jmp	.L333
	.p2align 4,,10
	.p2align 3
.L334:
	movl	%r8d, %eax
	subb	$1, %al
	js	.L333
	movl	$127, %eax
	jmp	.L342
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.p2align 4
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	endbr64
	testb	%r8b, %r8b
	jle	.L361
	movsbq	%r8b, %r8
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rcx, %r9
	movq	%rsi, %r10
	movq	%rdx, %r11
	salq	$2, %r8
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L353:
	movl	(%r10,%rax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%r11,%rax), %edx
	cmpl	%edx, %esi
	movl	%edx, (%rdi,%rax)
	setb	%sil
	cmovne	%ebx, %ecx
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%rax, %r8
	jne	.L353
	testl	%ecx, %ecx
	je	.L351
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L354:
	movl	(%rdi,%rax), %esi
	movl	(%r9,%rax), %edx
	addl	%esi, %edx
	addl	%ecx, %edx
	cmpl	%edx, %esi
	movl	%edx, (%rdi,%rax)
	cmovne	%r10d, %ecx
	cmpl	%esi, %edx
	setb	%sil
	addq	$4, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpq	%r8, %rax
	jne	.L354
.L351:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L361:
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
	movzbl	(%rcx), %r9d
	movq	%fs:40, %rdx
	movq	%rdx, 184(%rsp)
	xorl	%edx, %edx
	testb	%r9b, %r9b
	jle	.L364
	leal	-1(%r9), %eax
	movq	%rdi, %rbx
	movq	%rsi, %r14
	movq	%rcx, %rbp
	cmpb	$2, %al
	jbe	.L395
	movl	%r9d, %ecx
	movq	%r15, %rdx
	pxor	%xmm0, %xmm0
	shrb	$2, %cl
	movzbl	%cl, %ecx
	salq	$4, %rcx
	addq	%r15, %rcx
	.p2align 4,,10
	.p2align 3
.L367:
	movdqu	(%rdx), %xmm2
	addq	$16, %rdx
	por	%xmm2, %xmm0
	cmpq	%rcx, %rdx
	jne	.L367
	movdqa	%xmm0, %xmm1
	movl	%r9d, %ecx
	psrldq	$8, %xmm1
	andl	$-4, %ecx
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %edx
	testb	$3, %r9b
	je	.L368
.L366:
	movsbq	%cl, %rsi
	orl	(%r15,%rsi,4), %edx
	leal	1(%rcx), %esi
	cmpb	%sil, %r9b
	jle	.L368
	movzbl	%sil, %esi
	addl	$2, %ecx
	orl	(%r15,%rsi,4), %edx
	cmpb	%cl, %r9b
	jle	.L368
	movzbl	%cl, %ecx
	orl	(%r15,%rcx,4), %edx
.L368:
	movb	%al, 46(%rsp)
	testl	%edx, %edx
	je	.L364
	movsbl	%r9b, %r13d
	leaq	112(%rsp), %r12
	movq	%r14, %rdx
	movq	%r14, %rsi
	movl	%r13d, %ecx
	movq	%r12, %rdi
	movb	%r9b, 32(%rsp)
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
	movsbq	32(%rsp), %r11
	movl	(%rbx), %edx
	movzbl	46(%rsp), %eax
	movq	%r11, %r9
	salq	$2, %r11
	andl	$1, %edx
	leaq	(%rbx,%r11), %rdi
	je	.L370
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L371:
	movl	(%rbx,%rdx), %r10d
	movl	4(%rbp,%rdx), %ecx
	addl	%r10d, %ecx
	addl	%esi, %ecx
	cmpl	%ecx, %r10d
	movl	%ecx, (%rbx,%rdx)
	cmovne	%r8d, %esi
	cmpl	%r10d, %ecx
	setb	%r10b
	addq	$4, %rdx
	movzbl	%r10b, %r10d
	orl	%r10d, %esi
	cmpq	%rdx, %r11
	jne	.L371
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movl	%edx, %r8d
	cmpq	%rdi, %rbx
	jnb	.L375
	.p2align 4,,10
	.p2align 3
.L374:
	movl	-4(%rcx), %edi
	subq	$4, %rcx
	movl	%edi, %edx
	sall	$31, %edi
	shrl	%edx
	orl	%r8d, %edx
	movl	%edi, %r8d
	movl	%edx, (%rcx)
	cmpq	%rcx, %rbx
	jb	.L374
.L375:
	sall	$31, %esi
	orl	%esi, -4(%rbx,%r11)
.L373:
	movsbl	0(%rbp), %ecx
	movq	%rbx, %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	movb	%al, 47(%rsp)
	movq	%r11, 32(%rsp)
	movb	%r9b, 46(%rsp)
	call	uECC_vli_mult
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	*184(%rbp)
	movq	%r15, %rdi
	movl	%r13d, %r8d
	movq	%r15, %rsi
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rdx
	call	uECC_vli_modSub
	movq	8(%rsp), %rcx
	movl	%r13d, %r8d
	movq	%r15, %rsi
	movq	24(%rsp), %rdx
	call	uECC_vli_modSub
	movq	24(%rsp), %rdi
	movl	%r13d, %r8d
	movq	%r15, %rdx
	movq	8(%rsp), %rcx
	movq	%rdi, %rsi
	call	uECC_vli_modSub
	movsbl	0(%rbp), %ecx
	movq	%rdi, %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
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
	movzbl	47(%rsp), %eax
	movzbl	46(%rsp), %r9d
	movq	32(%rsp), %r11
	cmpb	$2, %al
	jbe	.L396
	leaq	4(%r15), %rdx
	movq	%rbx, %rcx
	subq	%rdx, %rcx
	xorl	%edx, %edx
	cmpq	$8, %rcx
	ja	.L411
	.p2align 4,,10
	.p2align 3
.L382:
	movl	(%r15,%rdx), %ecx
	movl	%ecx, (%rbx,%rdx)
	addq	$4, %rdx
	cmpq	%r11, %rdx
	jne	.L382
	cmpb	$2, %al
	ja	.L384
.L385:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L388:
	movl	(%r14,%rdx), %eax
	movl	%eax, (%r15,%rdx)
	addq	$4, %rdx
	cmpq	%r11, %rdx
	jne	.L388
.L389:
	movzbl	%r9b, %r9d
	salq	$2, %r9
	cmpl	$8, %r9d
	jnb	.L390
.L414:
	testb	$4, %r9b
	jne	.L412
	testl	%r9d, %r9d
	je	.L364
	movzbl	48(%rsp), %eax
	movb	%al, (%r14)
	.p2align 4,,10
	.p2align 3
.L364:
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L413
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
.L411:
	.cfi_restore_state
	movl	%r9d, %ecx
	shrb	$2, %cl
	movzbl	%cl, %ecx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L380:
	movdqu	(%r15,%rdx), %xmm3
	movups	%xmm3, (%rbx,%rdx)
	addq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L380
	movl	%r9d, %edx
	andl	$-4, %edx
	testb	$3, %r9b
	je	.L384
	movzbl	%dl, %ecx
	movl	(%r15,%rcx,4), %esi
	movl	%esi, (%rbx,%rcx,4)
	leal	1(%rdx), %ecx
	cmpb	%cl, %r9b
	jle	.L384
	movzbl	%cl, %ecx
	addl	$2, %edx
	movl	(%r15,%rcx,4), %esi
	movl	%esi, (%rbx,%rcx,4)
	cmpb	%dl, %r9b
	jle	.L384
	movzbl	%dl, %edx
	movl	(%r15,%rdx,4), %ecx
	movl	%ecx, (%rbx,%rdx,4)
.L384:
	leaq	4(%r14), %rcx
	movq	%r15, %rdx
	subq	%rcx, %rdx
	cmpq	$8, %rdx
	jbe	.L385
	movl	%r9d, %ecx
	xorl	%edx, %edx
	shrb	$2, %cl
	movzbl	%cl, %ecx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L386:
	movdqu	(%r14,%rdx), %xmm4
	movups	%xmm4, (%r15,%rdx)
	addq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L386
	movl	%r9d, %edx
	andl	$-4, %edx
	testb	$3, %r9b
	je	.L389
	movzbl	%dl, %ecx
	movl	(%r14,%rcx,4), %esi
	movl	%esi, (%r15,%rcx,4)
	leal	1(%rdx), %ecx
	cmpb	%cl, %r9b
	jle	.L389
	movzbl	%cl, %ecx
	addl	$2, %edx
	movl	(%r14,%rcx,4), %esi
	movl	%esi, (%r15,%rcx,4)
	cmpb	%dl, %r9b
	jle	.L389
	movzbl	%dl, %edx
	movzbl	%r9b, %r9d
	movl	(%r14,%rdx,4), %ecx
	salq	$2, %r9
	movl	%ecx, (%r15,%rdx,4)
	cmpl	$8, %r9d
	jb	.L414
.L390:
	movq	48(%rsp), %rax
	leaq	8(%r14), %rdi
	movq	%r14, %r10
	andq	$-8, %rdi
	movq	%rax, (%r14)
	movq	16(%rsp), %rbx
	subq	%rdi, %r10
	leal	(%r9,%r10), %ecx
	movq	-8(%rbx,%r9), %rax
	subq	%r10, %rbx
	shrl	$3, %ecx
	movq	%rbx, %rsi
	movq	%rax, -8(%r14,%r9)
	rep movsq
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L370:
	cmpq	%rdi, %rbx
	jnb	.L373
	movl	%edx, %esi
	.p2align 4,,10
	.p2align 3
.L377:
	movl	-4(%rdi), %ecx
	subq	$4, %rdi
	movl	%ecx, %edx
	shrl	%edx
	orl	%esi, %edx
	movl	%ecx, %esi
	movl	%edx, (%rdi)
	sall	$31, %esi
	cmpq	%rdi, %rbx
	jb	.L377
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L396:
	xorl	%edx, %edx
	jmp	.L382
.L395:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L366
.L412:
	movl	48(%rsp), %eax
	movl	%eax, (%r14)
	movq	16(%rsp), %rax
	movl	-4(%rax,%r9), %eax
	movl	%eax, -4(%r14,%r9)
	jmp	.L364
.L413:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	leaq	4(%rbx), %r15
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movsbl	(%rdx), %r14d
	movq	%rsi, %rdx
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	32(%rsp), %r13
	movups	%xmm0, 4(%rsp)
	movl	%r14d, %ecx
	movq	%r13, %rdi
	movups	%xmm0, 16(%rsp)
	movl	$3, (%rsp)
	call	uECC_vli_mult
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*184(%rbx)
	movq	%rsp, %rdx
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	call	uECC_vli_mult
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*184(%rbx)
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L419
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r14d, %r8d
	movq	%r15, %rcx
	movq	%rbp, %rsi
	leaq	132(%rbx), %rdx
	movq	%rbp, %rdi
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
.L419:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
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
	movq	%rsi, 16(%rsp)
	leaq	48(%rsp), %r14
	movq	%rdi, %rsi
	leaq	144(%rsp), %rbp
	movq	%rcx, 8(%rsp)
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	movq	%rdi, 24(%rsp)
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
	movq	24(%rsp), %rsi
	call	uECC_vli_mult
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	%r14, %rdi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	call	uECC_vli_modAdd
	movq	8(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	16(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	leaq	80(%rsp), %rax
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	24(%rsp), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	16(%rsp), %rsi
	movq	%rdi, %rdx
	movq	%rdi, 32(%rsp)
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	%r15, %rsi
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rdi
	call	uECC_vli_modAdd
	movq	8(%rsp), %rsi
	movsbl	(%rbx), %ecx
	movq	%rbp, %rdi
	movq	%rsi, %rdx
	call	uECC_vli_mult
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	24(%rsp), %rdi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	32(%rsp), %rdx
	movq	%rdi, %rsi
	call	uECC_vli_modSub
	leaq	112(%rsp), %rax
	movl	%r12d, %r8d
	movq	%rdi, %rdx
	movq	%r13, %rcx
	movq	%rax, %rdi
	movq	%r15, %rsi
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	8(%rsp), %rsi
	movq	%rdi, %rdx
	movq	%rdi, 24(%rsp)
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	8(%rsp), %rsi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	16(%rsp), %rdx
	movq	%rsi, %rdi
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	%r14, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	call	*184(%rbx)
	movq	24(%rsp), %rdi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	32(%rsp), %rdx
	movq	%rdi, %rsi
	call	uECC_vli_modSub
	movq	%rdi, %rsi
	movq	32(%rsp), %rdi
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	%r15, %rdx
	call	uECC_vli_modSub
	movsbl	(%rbx), %ecx
	movq	%r14, %rdx
	movq	%rdi, %rsi
	movq	%rdi, %r14
	movq	%rbp, %rdi
	call	uECC_vli_mult
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	*184(%rbx)
	movl	%r12d, %r8d
	movq	%r13, %rcx
	movq	%r14, %rsi
	movq	16(%rsp), %rdx
	movq	%rdx, %rdi
	call	uECC_vli_modSub
	movzbl	47(%rsp), %eax
	testb	%al, %al
	jle	.L420
	salq	$2, %rax
	cmpl	$8, %eax
	jnb	.L422
	testb	$4, %al
	jne	.L428
	testl	%eax, %eax
	je	.L420
	movzbl	112(%rsp), %eax
	movb	%al, (%r15)
.L420:
	movq	216(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L429
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
.L422:
	.cfi_restore_state
	movq	112(%rsp), %rdx
	leaq	8(%r15), %rdi
	andq	$-8, %rdi
	movq	%rdx, (%r15)
	movq	24(%rsp), %rbx
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
	jmp	.L420
.L428:
	movl	112(%rsp), %edx
	movl	%edx, (%r15)
	movq	24(%rsp), %rbx
	movl	-4(%rbx,%rax), %edx
	movl	%edx, -4(%r15,%rax)
	jmp	.L420
.L429:
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
	movq	%rsi, %r10
	movq	%rdx, %rsi
	movl	%ecx, %edx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r8
	movl	%ecx, %r9d
	movsbl	%cl, %r15d
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
	movsbw	%cl, %bx
	sall	$6, %ebx
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	leaq	128(%rsp), %rax
	movq	%r10, 56(%rsp)
	movq	%rax, 48(%rsp)
	subb	$1, %dl
	js	.L475
	movzbl	%dl, %eax
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L433:
	movl	%eax, %edi
	leaq	-1(%rax), %rcx
	subb	$1, %dil
	js	.L431
	movq	%rcx, %rax
.L432:
	movl	(%rsi,%rax,4), %ecx
	testl	%ecx, %ecx
	je	.L433
	addl	$1, %eax
.L431:
	testb	%al, %al
	je	.L434
	movsbq	%al, %rcx
	movl	-4(%rsi,%rcx,4), %ecx
	testl	%ecx, %ecx
	je	.L477
	bsrl	%ecx, %ecx
	addl	$1, %ecx
.L435:
	cbtw
	subl	$1, %eax
	sall	$5, %eax
	subl	%eax, %ebx
	subl	%ecx, %ebx
.L434:
	testw	%bx, %bx
	leal	31(%rbx), %ebp
	movl	%ebx, %eax
	movl	%ebx, %r11d
	cmovns	%ebx, %ebp
	sarw	$15, %ax
	shrw	$11, %ax
	leal	(%rbx,%rax), %edi
	sarw	$5, %bp
	andl	$31, %edi
	subl	%eax, %edi
	movl	%edi, %r12d
	testb	%bpl, %bpl
	jle	.L443
	leal	-1(%rbp), %eax
	leaq	64(%rsp), %rdi
	movzbl	%al, %eax
	leaq	4(,%rax,4), %r13
	cmpl	$8, %r13d
	jb	.L439
	movq	%r13, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
.L439:
	andl	$4, %r13d
	jne	.L545
.L443:
	testw	%r12w, %r12w
	jle	.L546
.L437:
	testb	%r9b, %r9b
	je	.L544
	movl	(%rsi), %r10d
	movswl	%r12w, %edi
	movl	$32, %eax
	movsbl	%bpl, %ebx
	movl	%edi, %ecx
	subl	%edi, %eax
	movq	%rbx, %rbp
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%eax, %ecx
	movl	%r14d, 64(%rsp,%rbx,4)
	shrl	%cl, %r10d
	cmpl	$1, %r15d
	je	.L544
	movl	4(%rsi), %ebx
	movl	%edi, %ecx
	leal	1(%rbp), %r12d
	movl	%ebx, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%r10d, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$2, %r15d
	je	.L544
	movl	8(%rsi), %r10d
	movl	%edi, %ecx
	leal	2(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %r10d
	cmpl	$3, %r15d
	je	.L544
	movl	12(%rsi), %ebx
	movl	%edi, %ecx
	leal	3(%rbp), %r12d
	movl	%ebx, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%r10d, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$4, %r15d
	je	.L544
	movl	16(%rsi), %r10d
	movl	%edi, %ecx
	leal	4(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %r10d
	cmpl	$5, %r15d
	je	.L544
	movl	20(%rsi), %ebx
	movl	%edi, %ecx
	leal	5(%rbp), %r12d
	movl	%ebx, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%r10d, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$6, %r15d
	je	.L544
	movl	24(%rsi), %r10d
	movl	%edi, %ecx
	leal	6(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %r10d
	cmpl	$7, %r15d
	je	.L544
	movl	28(%rsi), %ebx
	movl	%edi, %ecx
	leal	7(%rbp), %r12d
	movl	%ebx, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%r10d, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$8, %r15d
	je	.L544
	movl	32(%rsi), %r10d
	movl	%edi, %ecx
	leal	8(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%r10d, %ebx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$9, %r15d
	je	.L544
	movl	36(%rsi), %r10d
	movl	%edi, %ecx
	leal	9(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%r10d, %ebx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$10, %r15d
	je	.L544
	movl	40(%rsi), %r10d
	movl	%edi, %ecx
	leal	10(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %r10d
	cmpl	$11, %r15d
	je	.L544
	movl	44(%rsi), %ebx
	movl	%edi, %ecx
	leal	11(%rbp), %r12d
	movl	%ebx, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%r10d, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$12, %r15d
	je	.L544
	movl	48(%rsi), %r10d
	movl	%edi, %ecx
	leal	12(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%r10d, %ebx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$13, %r15d
	je	.L544
	movl	52(%rsi), %r10d
	movl	%edi, %ecx
	leal	13(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%r10d, %ebx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	cmpl	$14, %r15d
	je	.L544
	movl	56(%rsi), %r10d
	movl	%edi, %ecx
	leal	14(%rbp), %r12d
	movl	%r10d, %r14d
	sall	%cl, %r14d
	movl	%r14d, %ecx
	orl	%ebx, %ecx
	movl	%ecx, 64(%rsp,%r12,4)
	movl	%eax, %ecx
	shrl	%cl, %r10d
	cmpl	$15, %r15d
	je	.L544
	movl	60(%rsi), %eax
	movl	%edi, %ecx
	leal	15(%rbp), %ebx
	sall	%cl, %eax
	orl	%r10d, %eax
	movl	%eax, 64(%rsp,%rbx,4)
	leaq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.L452
.L545:
	movl	$0, (%rdi)
	testw	%r12w, %r12w
	jg	.L437
.L546:
	movsbq	%bpl, %rax
	salq	$2, %rax
	testb	%r9b, %r9b
	jle	.L447
	leaq	64(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	addq	%rcx, %rax
	movzbl	%dl, %ecx
	leaq	4(,%rcx,4), %rcx
	cmpl	$8, %ecx
	jnb	.L448
	testb	$4, %cl
	jne	.L547
	testl	%ecx, %ecx
	je	.L449
	movzbl	(%rsi), %ecx
	movb	%cl, (%rax)
.L449:
	testw	%bx, %bx
	jns	.L452
	jmp	.L453
.L544:
	leaq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
.L452:
	movsbq	%r9b, %rax
	movq	8(%rsp), %rcx
	movb	%dl, 43(%rsp)
	movslq	%r15d, %r12
	salq	$2, %rax
	leal	-1(%r15), %ebp
	movq	%r8, 32(%rsp)
	leal	(%r15,%r15), %ebx
	addq	%rax, %rcx
	movl	%r9d, 44(%rsp)
	movslq	%ebp, %rbp
	movl	%r15d, %r9d
	movq	%rcx, %rsi
	leaq	-4(%rcx), %rdi
	leaq	(%rcx,%rax), %r13
	subq	%rax, %rsi
	movq	%rdi, 16(%rsp)
	movl	$1, %edi
	movq	%r13, %r8
	subq	$4, %rsi
	movl	%edi, 4(%rsp)
	movq	%rsi, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L445:
	xorl	%r13d, %r13d
	testl	%r9d, %r9d
	jle	.L458
	movl	4(%rsp), %eax
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	movq	48(%rsp,%rax,8), %r14
	xorl	$1, %eax
	movq	48(%rsp,%rax,8), %r15
	.p2align 4,,10
	.p2align 3
.L459:
	movsbq	%dl, %rdi
	movl	64(%rsp,%r10,4), %esi
	movl	(%r14,%rdi,4), %eax
	addl	%r13d, %esi
	movl	%eax, %r10d
	subl	%esi, %r10d
	setb	%sil
	movzbl	%sil, %esi
	cmpl	%r10d, %eax
	je	.L456
	addl	$1, %edx
	movl	%r10d, (%r15,%rdi,4)
	movl	%esi, %r13d
	movsbq	%dl, %r10
	cmpl	%r10d, %ebx
	jg	.L459
.L458:
	xorl	%eax, %eax
	cmpl	%r13d, 4(%rsp)
	movq	16(%rsp), %r10
	sete	%al
	movl	%eax, 4(%rsp)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rsp)
	jnb	.L463
	movq	24(%rsp), %rsi
	movl	%eax, %r13d
	.p2align 4,,10
	.p2align 3
.L460:
	movl	(%r10), %edx
	subq	$4, %r10
	movl	%edx, %eax
	sall	$31, %edx
	shrl	%eax
	orl	%r13d, %eax
	movl	%edx, %r13d
	movl	%eax, 4(%r10)
	cmpq	%r10, %rsi
	jne	.L460
.L463:
	movl	64(%rsp,%r12,4), %eax
	movq	%r8, %r10
	sall	$31, %eax
	orl	%eax, 64(%rsp,%rbp,4)
	xorl	%eax, %eax
	movl	%eax, %r13d
	cmpq	%r8, %rcx
	jnb	.L462
	.p2align 4,,10
	.p2align 3
.L465:
	movl	-4(%r10), %edx
	subq	$4, %r10
	movl	%edx, %eax
	sall	$31, %edx
	shrl	%eax
	orl	%r13d, %eax
	movl	%edx, %r13d
	movl	%eax, (%r10)
	cmpq	%r10, %rcx
	jb	.L465
.L462:
	subl	$1, %r11d
	cmpw	$-1, %r11w
	jne	.L445
	movl	4(%rsp), %edi
	movl	44(%rsp), %r9d
	movzbl	43(%rsp), %edx
	movq	32(%rsp), %r8
	movq	48(%rsp,%rdi,8), %r10
	testb	%r9b, %r9b
	jle	.L430
.L453:
	cmpb	$2, %dl
	jbe	.L468
	leaq	4(%r10), %rdx
	movq	%r8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rax
	ja	.L548
.L468:
	movsbq	%r9b, %rdx
	xorl	%eax, %eax
	salq	$2, %rdx
	.p2align 4,,10
	.p2align 3
.L472:
	movl	(%r10,%rax), %ecx
	movl	%ecx, (%r8,%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L472
.L430:
	movq	200(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L549
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
.L456:
	.cfi_restore_state
	addl	$1, %edx
	movl	%eax, (%r15,%rdi,4)
	movsbq	%dl, %r10
	cmpl	%ebx, %r10d
	jl	.L459
	jmp	.L458
.L548:
	movl	%r9d, %edx
	xorl	%eax, %eax
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L469:
	movdqu	(%r10,%rax), %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L469
	movl	%r9d, %eax
	andl	$-4, %eax
	testb	$3, %r9b
	je	.L430
	movzbl	%al, %edx
	movl	(%r10,%rdx,4), %ecx
	movl	%ecx, (%r8,%rdx,4)
	leal	1(%rax), %edx
	cmpb	%dl, %r9b
	jle	.L430
	movzbl	%dl, %edx
	addl	$2, %eax
	movl	(%r10,%rdx,4), %ecx
	movl	%ecx, (%r8,%rdx,4)
	cmpb	%al, %r9b
	jle	.L430
	movzbl	%al, %eax
	movl	(%r10,%rax,4), %edx
	movl	%edx, (%r8,%rax,4)
	jmp	.L430
.L448:
	movq	(%rsi), %rdi
	movq	%rdi, (%rax)
	movq	-8(%rsi,%rcx), %rdi
	movq	%rdi, -8(%rax,%rcx)
	leaq	8(%rax), %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	addl	%eax, %ecx
	subq	%rax, %rsi
	shrl	$3, %ecx
	rep movsq
	jmp	.L449
.L477:
	xorl	%ecx, %ecx
	jmp	.L435
.L475:
	movl	%ecx, %eax
	jmp	.L431
.L447:
	leaq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	testw	%bx, %bx
	jns	.L452
	jmp	.L430
.L547:
	movl	(%rsi), %edi
	movl	%edi, (%rax)
	movl	-4(%rsi,%rcx), %esi
	movl	%esi, -4(%rax,%rcx)
	jmp	.L449
.L549:
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
	jne	.L553
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
.L553:
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
	jne	.L557
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
.L557:
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
	movq	%rdx, %r8
	movl	%ecx, %edx
	testb	%cl, %cl
	jle	.L558
	leal	-1(%rcx), %eax
	cmpb	$2, %al
	jbe	.L570
	shrb	$2, %cl
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	movzbl	%cl, %ecx
	salq	$4, %rcx
	addq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L562:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	por	%xmm2, %xmm0
	cmpq	%rax, %rcx
	jne	.L562
	movdqa	%xmm0, %xmm1
	movl	%edx, %ecx
	psrldq	$8, %xmm1
	andl	$-4, %ecx
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$3, %dl
	je	.L563
.L561:
	movsbq	%cl, %r9
	orl	(%rsi,%r9,4), %eax
	leal	1(%rcx), %r9d
	cmpb	%r9b, %dl
	jle	.L563
	movzbl	%r9b, %r9d
	addl	$2, %ecx
	orl	(%rsi,%r9,4), %eax
	cmpb	%cl, %dl
	jle	.L563
	movzbl	%cl, %ecx
	orl	(%rsi,%rcx,4), %eax
.L563:
	testl	%eax, %eax
	je	.L564
	movsbl	%dl, %ecx
	movq	%r8, %rdx
	jmp	uECC_vli_modInv.part.0
.L564:
	movzbl	%dl, %eax
	salq	$2, %rax
	cmpl	$8, %eax
	jb	.L572
	leaq	8(%rdi), %rsi
	movq	$0, (%rdi)
	movq	$0, -8(%rdi,%rax)
	andq	$-8, %rsi
	subq	%rsi, %rdi
	leal	(%rax,%rdi), %ecx
	xorl	%eax, %eax
	movq	%rsi, %rdi
	shrl	$3, %ecx
	rep stosq
.L558:
	ret
.L572:
	testb	$4, %al
	jne	.L573
	testl	%eax, %eax
	je	.L558
	movb	$0, (%rdi)
	ret
.L570:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L561
.L573:
	movl	$0, (%rdi)
	movl	$0, -4(%rdi,%rax)
	ret
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
	movzbl	(%rsi), %ecx
	addl	%ecx, %ecx
	testb	%cl, %cl
	jle	.L581
	leal	-1(%rcx), %eax
	cmpb	$2, %al
	jbe	.L577
	movl	%ecx, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L578:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	por	%xmm2, %xmm0
	cmpq	%rax, %rdx
	jne	.L578
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$2, %cl
	je	.L579
	movl	%ecx, %edx
	andl	$-4, %edx
	movsbq	%dl, %rsi
	orl	(%rdi,%rsi,4), %eax
	leal	1(%rdx), %esi
	cmpb	%sil, %cl
	jle	.L579
.L580:
	movsbq	%sil, %rsi
	addl	$2, %edx
	orl	(%rdi,%rsi,4), %eax
	cmpb	%dl, %cl
	jle	.L579
	movzbl	%dl, %edx
	orl	(%rdi,%rdx,4), %eax
.L579:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L581:
	movl	$1, %eax
	ret
.L577:
	movl	(%rdi), %eax
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	.L580
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
	jne	.L589
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
.L589:
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
	movq	%rbp, %rdi
	movl	%r15d, %r8d
	movq	8(%rsp), %rdx
	movq	%rbp, %rsi
	call	uECC_vli_modSub
	movq	(%rsp), %rcx
	movl	%r15d, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rsi
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
	jle	.L590
	salq	$2, %rax
	cmpl	$8, %eax
	jnb	.L592
	testb	$4, %al
	jne	.L598
	testl	%eax, %eax
	je	.L590
	movzbl	32(%rsp), %eax
	movb	%al, (%r12)
.L590:
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L599
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
.L592:
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
	jmp	.L590
.L598:
	movl	32(%rsp), %edx
	movl	%edx, (%r12)
	movl	-4(%rbp,%rax), %edx
	movl	%edx, -4(%r12,%rax)
	jmp	.L590
.L599:
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
	subq	$328, %rsp
	.cfi_def_cfa_offset 384
	movq	%rdi, 56(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%fs:40, %rdx
	movq	%rdx, 312(%rsp)
	xorl	%edx, %edx
	movsbq	(%r9), %rdx
	leaq	0(,%rdx,4), %rcx
	movb	%dl, 75(%rsp)
	movq	%rcx, 48(%rsp)
	testb	%dl, %dl
	jle	.L601
	movzbl	%dl, %r9d
	leaq	144(%rsp), %r11
	leaq	0(,%r9,4), %rdx
	movq	%r11, 32(%rsp)
	movq	%r11, %rdi
	cmpl	$8, %edx
	jb	.L602
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
.L602:
	testb	$4, %dl
	jne	.L682
.L605:
	movq	40(%rsp), %rdi
	movq	48(%rsp), %rsi
	leaq	208(%rsp), %r15
	leaq	(%rdi,%rsi), %r10
	movq	%r15, %rdi
	movq	%r10, 64(%rsp)
	movq	%r10, %rsi
	cmpl	$8, %edx
	jb	.L606
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep movsq
.L606:
	testb	$4, %dl
	jne	.L683
	testq	%rax, %rax
	je	.L684
.L610:
	leaq	240(%rsp), %rsi
	movq	%rsi, 16(%rsp)
	movq	%rsi, %rdi
	cmpl	$8, %edx
	jnb	.L685
	testb	$4, %dl
	jne	.L686
.L618:
	movq	32(%rsp), %rsi
	leaq	112(%rsp), %r12
	movq	%rdx, (%rsp)
	leaq	176(%rsp), %r13
	movq	%r12, %rdi
	call	memmove@PLT
	movq	(%rsp), %rdx
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	memmove@PLT
.L612:
	movq	16(%rsp), %r14
	movq	32(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	movq	%r14, %rdx
	call	apply_z
	movq	%r15, %rsi
	movq	32(%rsp), %rdi
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
	jle	.L626
	movq	%rbp, (%rsp)
	movq	%r13, %rax
	movq	%r12, %r13
	movl	%r15d, %r12d
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L623:
	movl	%r12d, %edx
	movq	24(%rsp), %rsi
	movl	%r12d, %ecx
	movl	$1, %eax
	sarw	$5, %dx
	sall	%cl, %eax
	xorl	%ebx, %ebx
	movq	(%rsp), %r8
	movswq	%dx, %rdx
	andl	(%rsi,%rdx,4), %eax
	sete	%bl
	xorl	%r14d, %r14d
	salq	$5, %rbx
	leaq	(%r15,%rbx), %rbp
	addq	%r13, %rbx
	testl	%eax, %eax
	setne	%r14b
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	salq	$5, %r14
	leaq	(%r15,%r14), %rax
	addq	%r13, %r14
	movq	%rax, %rsi
	movq	%r14, %rdi
	movq	%rax, 8(%rsp)
	call	XYcZ_addC
	movq	(%rsp), %r8
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	8(%rsp), %rcx
	movq	%rbx, %rdi
	call	XYcZ_add
	subw	$1, %r12w
	jne	.L623
	movq	(%rsp), %rbp
	movq	%r13, %r12
	movq	%r15, %r13
.L626:
	movq	24(%rsp), %rax
	movq	%rbp, %r8
	leaq	80(%rsp), %rbx
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	salq	$5, %rax
	xorl	$1, %edx
	leaq	0(%r13,%rax), %r14
	leaq	(%r12,%rax), %r15
	salq	$5, %rdx
	movq	%r14, %rsi
	movq	%r15, %rdi
	leaq	0(%r13,%rdx), %rcx
	addq	%r12, %rdx
	movq	%rcx, (%rsp)
	movq	%rdx, 8(%rsp)
	call	XYcZ_addC
	leaq	4(%rbp), %r9
	movq	%r12, %rdx
	movq	%rbx, %rdi
	movsbl	75(%rsp), %r8d
	movq	32(%rsp), %rsi
	movq	%r9, %rcx
	movq	%r9, 24(%rsp)
	movl	%r8d, 76(%rsp)
	call	uECC_vli_modSub
	movsbl	0(%rbp), %ecx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	16(%rsp), %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	40(%rsp), %rdx
	movq	%rbx, %rsi
	movq	16(%rsp), %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	cmpb	$0, 75(%rsp)
	movq	24(%rsp), %r9
	movl	76(%rsp), %r8d
	jle	.L687
	movzbl	75(%rsp), %esi
	leal	-1(%rsi), %eax
	cmpb	$2, %al
	jbe	.L646
	shrb	$2, %sil
	movq	%rbx, %rax
	pxor	%xmm0, %xmm0
	movzbl	%sil, %edx
	salq	$4, %rdx
	leaq	(%rbx,%rdx), %rcx
	andl	$16, %edx
	je	.L628
	leaq	96(%rsp), %rax
	movdqa	(%rbx), %xmm0
	cmpq	%rax, %rcx
	je	.L677
	.p2align 4,,10
	.p2align 3
.L628:
	por	(%rax), %xmm0
	addq	$32, %rax
	por	-16(%rax), %xmm0
	cmpq	%rax, %rcx
	jne	.L628
.L677:
	movdqa	%xmm0, %xmm1
	movzbl	75(%rsp), %esi
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$3, %sil
	je	.L629
	movl	%esi, %edx
	movl	%esi, %edi
	andl	$-4, %edx
.L627:
	movsbq	%dl, %rcx
	orl	80(%rsp,%rcx,4), %eax
	leal	1(%rdx), %ecx
	cmpb	%cl, %dil
	jle	.L629
	movzbl	%cl, %ecx
	addl	$2, %edx
	orl	80(%rsp,%rcx,4), %eax
	cmpb	%dl, %dil
	jle	.L629
	movzbl	%dl, %edx
	orl	80(%rsp,%rdx,4), %eax
.L629:
	testl	%eax, %eax
	je	.L631
	movq	%r9, %rdx
	movl	%r8d, %ecx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	uECC_vli_modInv.part.0
	movzbl	75(%rsp), %r9d
.L632:
	movsbl	0(%rbp), %ecx
	movq	64(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r9, 24(%rsp)
	movq	16(%rsp), %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	16(%rsp), %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movq	(%rsp), %rsi
	movq	%rbp, %r8
	movq	%r14, %rcx
	movq	8(%rsp), %rdi
	movq	%r15, %rdx
	call	XYcZ_add
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	apply_z
	movq	24(%rsp), %r9
	leaq	0(,%r9,4), %rdx
	cmpl	$8, %edx
	jnb	.L637
	testb	$4, %dl
	jne	.L688
	testl	%edx, %edx
	je	.L638
	movzbl	112(%rsp), %eax
	movq	56(%rsp), %rdi
	movb	%al, (%rdi)
.L638:
	movq	56(%rsp), %rax
	movq	48(%rsp), %rdi
	addq	%rdi, %rax
	cmpl	$8, %edx
	jnb	.L641
	testb	$4, %dl
	jne	.L689
	testl	%edx, %edx
	je	.L600
	movzbl	176(%rsp), %edx
	movb	%dl, (%rax)
.L600:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L690
	addq	$328, %rsp
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
.L637:
	.cfi_restore_state
	movq	56(%rsp), %rdi
	movq	112(%rsp), %rax
	movq	%r12, %rsi
	movq	%rax, (%rdi)
	movq	-8(%r12,%rdx), %rax
	movq	%rax, -8(%rdi,%rdx)
	movq	%rdi, %rax
	leaq	8(%rdi), %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	leal	(%rdx,%rax), %ecx
	subq	%rax, %rsi
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
	jmp	.L638
	.p2align 4,,10
	.p2align 3
.L683:
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	testq	%rax, %rax
	jne	.L610
.L684:
	leaq	240(%rsp), %rsi
	movq	%rsi, 16(%rsp)
	movq	%rsi, %rdi
	cmpl	$8, %edx
	jnb	.L691
	testb	$4, %dl
	jne	.L692
.L622:
	movl	$1, 240(%rsp)
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L682:
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	jmp	.L605
	.p2align 4,,10
	.p2align 3
.L686:
	movl	(%rax), %eax
	movl	%eax, (%rdi)
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L685:
	movq	%rdx, %rcx
	movq	%rax, %rsi
	shrq	$3, %rcx
	rep movsq
	movq	%rsi, %rax
	testb	$4, %dl
	je	.L618
	jmp	.L686
	.p2align 4,,10
	.p2align 3
.L641:
	movq	176(%rsp), %rcx
	leaq	8(%rax), %rdi
	movq	%r13, %rsi
	andq	$-8, %rdi
	movq	%rcx, (%rax)
	movq	-8(%r13,%rdx), %rcx
	movq	%rcx, -8(%rdx,%rax)
	subq	%rdi, %rax
	leal	(%rdx,%rax), %ecx
	subq	%rax, %rsi
	shrl	$3, %ecx
	rep movsq
	jmp	.L600
	.p2align 4,,10
	.p2align 3
.L631:
	movzbl	75(%rsp), %r9d
	movq	%rbx, %rdi
	leaq	0(,%r9,4), %rdx
	cmpl	$8, %edx
	jnb	.L693
	andl	$4, %edx
	je	.L632
.L694:
	movl	$0, (%rdi)
	jmp	.L632
	.p2align 4,,10
	.p2align 3
.L692:
	movl	$0, (%rdi)
	movl	$1, 240(%rsp)
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L693:
	movq	%rdx, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	andl	$4, %edx
	rep stosq
	je	.L632
	jmp	.L694
	.p2align 4,,10
	.p2align 3
.L691:
	movq	%rdx, %rcx
	shrq	$3, %rcx
	rep stosq
	testb	$4, %dl
	je	.L622
	jmp	.L692
	.p2align 4,,10
	.p2align 3
.L687:
	movsbl	0(%rbp), %ecx
	movq	64(%rsp), %rdx
	movq	%rbx, %rsi
	movq	16(%rsp), %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movsbl	0(%rbp), %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	16(%rsp), %rdi
	call	uECC_vli_mult
	movq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	*184(%rbp)
	movq	(%rsp), %rsi
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	8(%rsp), %rdi
	movq	%rbp, %r8
	call	XYcZ_add
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	apply_z
	jmp	.L600
	.p2align 4,,10
	.p2align 3
.L601:
	movq	%rcx, %rdi
	testq	%rax, %rax
	jne	.L681
	movl	$1, 240(%rsp)
.L681:
	leaq	144(%rsp), %rax
	leaq	208(%rsp), %r15
	movq	%rax, 32(%rsp)
	movq	40(%rsp), %rax
	leaq	112(%rsp), %r12
	leaq	176(%rsp), %r13
	addq	%rdi, %rax
	movq	%rax, 64(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.L612
.L646:
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%esi, %edi
	jmp	.L627
.L688:
	movl	112(%rsp), %eax
	movq	56(%rsp), %rdi
	movl	%eax, (%rdi)
	movl	-4(%r12,%rdx), %eax
	movl	%eax, -4(%rdi,%rdx)
	jmp	.L638
.L689:
	movl	176(%rsp), %ecx
	movl	%ecx, (%rax)
	movl	-4(%r13,%rdx), %ecx
	movl	%ecx, -4(%rdx,%rax)
	jmp	.L600
.L690:
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
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %r11
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movswl	2(%rcx), %r13d
	movq	%rdi, %rbx
	movl	%r13d, %eax
	leal	62(%r13), %r12d
	movl	%r13d, %ecx
	addl	$31, %eax
	cmovns	%eax, %r12d
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	sarl	$5, %r12d
	movl	%r12d, %r10d
	testb	%r12b, %r12b
	jle	.L711
	.p2align 4,,10
	.p2align 3
.L696:
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
	jg	.L696
	testl	%esi, %esi
	je	.L712
	movl	$1, %esi
.L701:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L702:
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
	jg	.L702
.L695:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L712:
	.cfi_restore_state
	movsbl	%r12b, %eax
	sall	$5, %eax
	cmpl	%eax, %r13d
	jge	.L701
.L697:
	movl	%ecx, %edx
	movl	$1, %eax
	xorl	%esi, %esi
	sarw	$5, %dx
	sall	%cl, %eax
	movswq	%dx, %rdx
	andl	(%r9,%rdx,4), %eax
	setne	%sil
	testb	%r12b, %r12b
	jg	.L701
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L711:
	movsbl	%r12b, %eax
	sall	$5, %eax
	cmpl	%eax, %r13d
	jl	.L697
	jmp	.L695
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
	movq	%rdx, %xmm3
	movq	%rsi, %xmm0
	punpcklqdq	%xmm3, %xmm0
	movaps	%xmm0, (%rsp)
	call	regularize_k
	movzwl	2(%rbp), %edi
	leaq	68(%rbp), %rsi
	movq	%rbp, %r9
	testl	%eax, %eax
	sete	%al
	leal	1(%rdi), %r8d
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movzbl	%al, %eax
	movswl	%r8w, %r8d
	movq	(%rsp,%rax,8), %rdx
	call	EccPoint_mult
	movzbl	0(%rbp), %ecx
	addl	%ecx, %ecx
	testb	%cl, %cl
	jle	.L720
	leal	-1(%rcx), %eax
	cmpb	$2, %al
	jbe	.L715
	movl	%ecx, %edx
	movq	%rbx, %rax
	pxor	%xmm0, %xmm0
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	addq	%rbx, %rdx
	.p2align 4,,10
	.p2align 3
.L716:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	por	%xmm2, %xmm0
	cmpq	%rax, %rdx
	jne	.L716
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$2, %cl
	je	.L717
	movl	%ecx, %edx
	andl	$-4, %edx
	movsbq	%dl, %rsi
	orl	(%rbx,%rsi,4), %eax
	leal	1(%rdx), %esi
	cmpb	%sil, %cl
	jle	.L717
.L718:
	movsbq	%sil, %rsi
	addl	$2, %edx
	orl	(%rbx,%rsi,4), %eax
	cmpb	%dl, %cl
	jle	.L717
	movzbl	%dl, %edx
	orl	(%rbx,%rdx,4), %eax
.L717:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L713:
	movq	88(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L726
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
.L720:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L713
.L715:
	movl	(%rbx), %eax
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	.L718
.L726:
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
	jle	.L727
	.p2align 4,,10
	.p2align 3
.L729:
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
	jl	.L729
.L727:
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
	jle	.L741
	subl	$1, %eax
	movzbl	%al, %eax
	leaq	4(,%rax,4), %rax
	cmpl	$8, %eax
	jnb	.L737
	testb	$4, %al
	jne	.L745
	testl	%eax, %eax
	je	.L741
	movb	$0, (%rdi)
.L741:
	leal	-1(%r10), %edi
	xorl	%eax, %eax
	xorl	%edx, %edx
	testl	%r10d, %r10d
	jle	.L746
	.p2align 4,,10
	.p2align 3
.L742:
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
	jl	.L742
	ret
	.p2align 4,,10
	.p2align 3
.L737:
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
	jg	.L742
.L746:
	ret
.L745:
	movl	$0, (%rdi)
	movl	$0, -4(%rdi,%rax)
	jmp	.L741
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
	movl	%edx, %r10d
	movq	%rsi, %r15
	movl	%edx, %r9d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movsbl	%dl, %ecx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movb	%dl, 2(%rsp)
	subb	$1, %r10b
	js	.L767
	movzbl	%r10b, %eax
	jmp	.L749
	.p2align 4,,10
	.p2align 3
.L750:
	movl	%eax, %edi
	leaq	-1(%rax), %rdx
	subb	$1, %dil
	js	.L748
	movq	%rdx, %rax
.L749:
	movl	(%r15,%rax,4), %edx
	testl	%edx, %edx
	je	.L750
	addl	$1, %eax
.L748:
	xorl	%edx, %edx
	testb	%al, %al
	je	.L751
	movsbq	%al, %rdx
	movl	-4(%r15,%rdx,4), %edx
	testl	%edx, %edx
	je	.L770
	bsrl	%edx, %edx
	addl	$1, %edx
.L752:
	cbtw
	subl	$1, %eax
	sall	$5, %eax
	addl	%eax, %edx
.L751:
	movq	g_rng_function(%rip), %rax
	testq	%rax, %rax
	je	.L753
	movl	%r12d, %r14d
	leal	0(,%rcx,4), %edi
	movsbq	%r12b, %r8
	movsbw	%r12b, %cx
	shrb	$2, %r14b
	salq	$2, %r8
	movl	%edi, 4(%rsp)
	andl	$-4, %r12d
	sall	$5, %ecx
	movzbl	%r14b, %r14d
	leaq	-4(%rbx,%r8), %rdi
	movl	$64, 20(%rsp)
	salq	$4, %r14
	leaq	32(%rsp), %rbp
	subl	%edx, %ecx
	movl	$-1, %edx
	movq	%rdi, 8(%rsp)
	shrl	%cl, %edx
	leaq	0(%rbp,%r14), %rdi
	leaq	(%r14,%rbx), %r13
	movl	%edx, 16(%rsp)
	xorl	%r14d, %r14d
	movq	%rdi, 24(%rsp)
	movb	%r10b, 1(%rsp)
	movb	%r12b, 3(%rsp)
	movq	%r15, %r12
	movq	%rbp, %r15
	movq	%rbx, %rbp
	movq	%r13, %rbx
	movq	%r8, %r13
	.p2align 4,,10
	.p2align 3
.L765:
	movb	%r9b, (%rsp)
	movl	4(%rsp), %esi
	movq	%rbp, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L753
	movq	8(%rsp), %rax
	movzbl	(%rsp), %r9d
	movl	16(%rsp), %edi
	andl	%edi, (%rax)
	testb	%r9b, %r9b
	jle	.L759
	cmpb	$2, 1(%rsp)
	jbe	.L771
	movq	%rbp, %rax
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L757:
	movdqu	(%rax), %xmm2
	addq	$16, %rax
	por	%xmm2, %xmm0
	cmpq	%rbx, %rax
	jne	.L757
	movdqa	%xmm0, %xmm1
	movzbl	3(%rsp), %edi
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movl	%edi, %edx
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpb	%dil, 2(%rsp)
	je	.L758
.L756:
	movsbq	%dl, %rsi
	orl	0(%rbp,%rsi,4), %eax
	leal	1(%rdx), %esi
	cmpb	%sil, %r9b
	jle	.L758
	movzbl	%sil, %esi
	addl	$2, %edx
	orl	0(%rbp,%rsi,4), %eax
	cmpb	%dl, %r9b
	jle	.L758
	movzbl	%dl, %edx
	orl	0(%rbp,%rdx,4), %eax
.L758:
	testl	%eax, %eax
	je	.L759
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L760:
	movl	(%r12,%rax), %ecx
	movl	%ecx, %edx
	subl	%esi, %edx
	subl	0(%rbp,%rax), %edx
	cmpl	%edx, %ecx
	movl	%edx, (%r15,%rax)
	setb	%cl
	cmovne	%r14d, %esi
	addq	$4, %rax
	movzbl	%cl, %ecx
	orl	%ecx, %esi
	cmpq	%rax, %r13
	jne	.L760
	testl	%esi, %esi
	setne	%sil
	cmpb	$2, 1(%rsp)
	jbe	.L772
	movq	24(%rsp), %rdi
	movq	%r15, %rax
	pxor	%xmm0, %xmm0
	movq	%rdi, %rdx
	subq	%r15, %rdx
	andl	$16, %edx
	je	.L793
	movdqa	(%r15), %xmm0
	leaq	16(%r15), %rax
	cmpq	%rax, 24(%rsp)
	je	.L792
.L793:
	movq	%rdi, %rdx
.L762:
	por	(%rax), %xmm0
	addq	$32, %rax
	por	-16(%rax), %xmm0
	cmpq	%rax, %rdx
	jne	.L762
.L792:
	movdqa	%xmm0, %xmm1
	movzbl	3(%rsp), %edi
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movl	%edi, %edx
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpb	%dil, 2(%rsp)
	je	.L763
.L761:
	movsbq	%dl, %r11
	orl	32(%rsp,%r11,4), %eax
	leal	1(%rdx), %r11d
	cmpb	%r11b, %r9b
	jle	.L763
	movzbl	%r11b, %r11d
	addl	$2, %edx
	orl	32(%rsp,%r11,4), %eax
	cmpb	%dl, %r9b
	jle	.L763
	movzbl	%dl, %edx
	orl	32(%rsp,%rdx,4), %eax
.L763:
	testl	%eax, %eax
	setne	%al
	addl	%esi, %esi
	subl	%esi, %eax
	cmpb	$1, %al
	je	.L795
.L759:
	subl	$1, 20(%rsp)
	je	.L753
	movq	g_rng_function(%rip), %rax
	jmp	.L765
.L771:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L756
.L753:
	xorl	%eax, %eax
.L747:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L796
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
.L772:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L761
.L795:
	movl	$1, %eax
	jmp	.L747
.L770:
	xorl	%edx, %edx
	jmp	.L752
.L767:
	movl	%edx, %eax
	jmp	.L748
.L796:
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
	movzbl	(%rsi), %r12d
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	leal	(%r12,%r12), %ecx
	testb	%cl, %cl
	jle	.L813
	leal	-1(%rcx), %eax
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpb	$2, %al
	jbe	.L799
	movl	%ecx, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L800:
	movdqu	(%rax), %xmm3
	addq	$16, %rax
	por	%xmm3, %xmm0
	cmpq	%rdx, %rax
	jne	.L800
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$2, %cl
	je	.L801
	movl	%ecx, %edx
	andl	$-4, %edx
	movsbq	%dl, %rsi
	orl	0(%rbp,%rsi,4), %eax
	leal	1(%rdx), %esi
	cmpb	%sil, %cl
	jle	.L801
.L810:
	movsbq	%sil, %rsi
	addl	$2, %edx
	orl	0(%rbp,%rsi,4), %eax
	cmpb	%dl, %cl
	jle	.L801
	movzbl	%dl, %edx
	orl	0(%rbp,%rdx,4), %eax
.L801:
	testl	%eax, %eax
	je	.L813
	leal	-1(%r12), %r13d
	movl	%r13d, %r14d
	testb	%r13b, %r13b
	js	.L816
	movzbl	%r13b, %r8d
	movq	%r8, %rax
	jmp	.L803
	.p2align 4,,10
	.p2align 3
.L834:
	cmpl	%edx, %ecx
	jb	.L816
	subq	$1, %rax
	testb	%al, %al
	js	.L816
.L803:
	movl	4(%rbx,%rax,4), %ecx
	movl	0(%rbp,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L834
	movsbq	%r12b, %rax
	leaq	0(%rbp,%rax,4), %rsi
	movq	%r8, %rax
	jmp	.L805
	.p2align 4,,10
	.p2align 3
.L835:
	cmpl	%edx, %ecx
	jb	.L816
	subq	$1, %rax
	testb	%al, %al
	js	.L816
.L805:
	movl	4(%rbx,%rax,4), %ecx
	movl	(%rsi,%rax,4), %edx
	cmpl	%ecx, %edx
	jnb	.L835
	leaq	48(%rsp), %r15
	movq	%rsi, %rdx
	movsbl	%r12b, %ecx
	movq	%r8, 8(%rsp)
	movq	%r15, %rdi
	call	uECC_vli_mult
	leaq	16(%rsp), %rcx
	movq	%r15, %rsi
	movq	%rcx, %rdi
	movq	%rcx, (%rsp)
	call	*184(%rbx)
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	*176(%rbx)
	cmpb	$2, %r13b
	movq	(%rsp), %rcx
	movq	8(%rsp), %r8
	jbe	.L836
	movl	%r12d, %edx
	leaq	-12(,%r8,4), %rsi
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	shrb	$2, %dl
	addq	%rsi, %rcx
	addq	%r15, %rsi
	movzbl	%dl, %edx
	negq	%rdx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L806:
	movdqu	(%rcx,%rax), %xmm0
	movdqu	(%rsi,%rax), %xmm2
	subq	$16, %rax
	pxor	%xmm2, %xmm0
	pshufd	$27, %xmm0, %xmm0
	por	%xmm0, %xmm1
	cmpq	%rdx, %rax
	jne	.L806
	movdqa	%xmm1, %xmm0
	movl	%r12d, %edx
	psrldq	$8, %xmm0
	andl	$-4, %edx
	andl	$3, %r12d
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrldq	$4, %xmm0
	por	%xmm0, %xmm1
	movd	%xmm1, %eax
	je	.L807
	movl	%r13d, %r14d
	subl	%edx, %r14d
.L808:
	movsbq	%r14b, %rcx
	movl	16(%rsp,%rcx,4), %edx
	xorl	48(%rsp,%rcx,4), %edx
	orl	%edx, %eax
	leal	-1(%r14), %edx
	testb	%r14b, %r14b
	je	.L807
	movzbl	%dl, %edx
	movl	16(%rsp,%rdx,4), %ecx
	xorl	48(%rsp,%rdx,4), %ecx
	leal	-2(%r14), %edx
	orl	%ecx, %eax
	cmpb	$1, %r14b
	je	.L807
	movzbl	%dl, %edx
	movl	48(%rsp,%rdx,4), %ecx
	xorl	16(%rsp,%rdx,4), %ecx
	orl	%ecx, %eax
.L807:
	negl	%eax
	sbbl	%eax, %eax
	andl	$-3, %eax
.L797:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L837
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
.L816:
	.cfi_restore_state
	movl	$-2, %eax
	jmp	.L797
	.p2align 4,,10
	.p2align 3
.L813:
	movl	$-1, %eax
	jmp	.L797
.L836:
	xorl	%eax, %eax
	jmp	.L808
.L799:
	movl	(%rdi), %eax
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	.L810
.L837:
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	movsbq	1(%rsi), %rsi
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	%esi, %eax
	leal	6(%rsi), %ebx
	addl	$3, %eax
	cmovns	%eax, %ebx
	sarl	$2, %ebx
	testl	%esi, %esi
	jle	.L853
	movzbl	%bl, %ebx
	movq	%rsp, %r10
	movq	%rdi, %r11
	movq	%rsi, %rdx
	leaq	0(,%rbx,4), %r8
	movq	%r10, %rdi
	cmpl	$8, %r8d
	jb	.L840
	movq	%r8, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
.L840:
	andl	$4, %r8d
	jne	.L871
.L843:
	movsbq	(%r9), %rcx
	leal	-1(%rsi), %r8d
	xorl	%eax, %eax
	xorl	%edi, %edi
	testl	%esi, %esi
	jle	.L872
	.p2align 4,,10
	.p2align 3
.L848:
	movl	%r8d, %ecx
	subl	%edi, %ecx
	movl	%ecx, %edi
	andl	$3, %ecx
	shrl	$2, %edi
	sall	$3, %ecx
	leal	0(,%rdi,4), %ebp
	movsbq	%al, %rdi
	addl	$1, %eax
	movzbl	(%r11,%rdi), %edi
	sall	%cl, %edi
	orl	%edi, (%r10,%rbp)
	movsbl	%al, %edi
	cmpl	%edi, %esi
	jg	.L848
	movsbq	(%r9), %rax
	salq	$2, %rbx
	leaq	(%r10,%rax,4), %r10
	cmpl	$8, %ebx
	jnb	.L854
	testb	$4, %bl
	jne	.L873
	testl	%ebx, %ebx
	je	.L855
	movb	$0, (%r10)
.L855:
	addq	%r11, %rdx
	movl	$1, %r11d
	xorl	%eax, %eax
	subl	%edx, %r11d
	.p2align 4,,10
	.p2align 3
.L858:
	movl	%r8d, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	andl	$3, %ecx
	shrl	$2, %eax
	sall	$3, %ecx
	leal	0(,%rax,4), %edi
	movzbl	(%rdx), %eax
	sall	%cl, %eax
	orl	%eax, (%r10,%rdi)
	leal	(%r11,%rdx), %eax
	addq	$1, %rdx
	movsbl	%al, %eax
	cmpl	%eax, %esi
	jg	.L858
.L853:
	movl	60(%rsp), %edx
	movl	128(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	56(%rsp), %edx
	movl	124(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	52(%rsp), %edx
	movl	120(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	48(%rsp), %edx
	movl	116(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	44(%rsp), %edx
	movl	112(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	40(%rsp), %edx
	movl	108(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	36(%rsp), %edx
	movl	104(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	32(%rsp), %edx
	movl	100(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	28(%rsp), %edx
	movl	96(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	24(%rsp), %edx
	movl	92(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	20(%rsp), %edx
	movl	88(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	16(%rsp), %edx
	movl	84(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	12(%rsp), %edx
	movl	80(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	8(%rsp), %edx
	movl	76(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	4(%rsp), %edx
	movl	72(%r9), %eax
	cmpl	%edx, %eax
	jb	.L846
	cmpl	%eax, %edx
	jb	.L846
	movl	(%rsp), %ecx
	movl	68(%r9), %edx
	cmpl	%ecx, %edx
	jb	.L846
	movl	$-4, %eax
	cmpl	%edx, %ecx
	jnb	.L838
	.p2align 4,,10
	.p2align 3
.L846:
	movq	%rsp, %rdi
	movq	%r9, %rsi
	call	uECC_valid_point
.L838:
	movq	72(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L874
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L854:
	.cfi_restore_state
	leaq	8(%r10), %rdi
	movq	%r10, %rax
	movq	$0, (%r10)
	movq	$0, -8(%r10,%rbx)
	andq	$-8, %rdi
	subq	%rdi, %rax
	leal	(%rbx,%rax), %ecx
	xorl	%eax, %eax
	movl	%ecx, %ebx
	shrl	$3, %ebx
	movl	%ebx, %ecx
	rep stosq
	jmp	.L855
	.p2align 4,,10
	.p2align 3
.L871:
	movl	$0, (%rdi)
	jmp	.L843
	.p2align 4,,10
	.p2align 3
.L872:
	salq	$2, %rbx
	leaq	(%r10,%rcx,4), %rax
	cmpl	$8, %ebx
	jnb	.L849
	testb	$4, %bl
	jne	.L875
	testl	%ebx, %ebx
	je	.L853
	movb	$0, (%rax)
	jmp	.L853
.L849:
	leaq	8(%rax), %rdi
	movq	$0, (%rax)
	movq	$0, -8(%rbx,%rax)
	andq	$-8, %rdi
	subq	%rdi, %rax
	addl	%eax, %ebx
	xorl	%eax, %eax
	shrl	$3, %ebx
	movl	%ebx, %ecx
	rep stosq
	jmp	.L853
.L873:
	movl	$0, (%r10)
	movl	$0, -4(%r10,%rbx)
	jmp	.L855
.L875:
	movl	$0, (%rax)
	movl	$0, -4(%rbx,%rax)
	jmp	.L853
.L874:
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
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r8
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$200, %rsp
	.cfi_def_cfa_offset 240
	movswl	2(%rdx), %r9d
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	movl	%r9d, %eax
	leal	14(%r9), %esi
	movl	%r9d, %r12d
	addl	$7, %eax
	cmovns	%eax, %esi
	sarl	$3, %esi
	movl	%esi, %edx
	leal	6(%rsi), %eax
	addl	$3, %edx
	cmovns	%edx, %eax
	sarl	$2, %eax
	testb	%al, %al
	jle	.L884
	subl	$1, %eax
	leaq	16(%rsp), %rdi
	movzbl	%al, %eax
	leaq	4(,%rax,4), %rdx
	cmpl	$8, %edx
	jb	.L880
	movq	%rdx, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
.L880:
	andl	$4, %edx
	jne	.L954
.L884:
	testl	%r9d, %r9d
	jle	.L879
	leal	-1(%rsi), %r11d
	xorl	%eax, %eax
	leaq	16(%rsp), %rdi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L887:
	movl	%r11d, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	andl	$3, %ecx
	shrl	$2, %edx
	sall	$3, %ecx
	leal	0(,%rdx,4), %r10d
	movsbq	%al, %rdx
	addl	$1, %eax
	movzbl	(%r8,%rdx), %edx
	sall	%cl, %edx
	orl	%edx, (%rdi,%r10)
	movsbl	%al, %edx
	cmpl	%edx, %esi
	jg	.L887
.L879:
	leal	62(%r9), %r8d
	addl	$31, %r9d
	cmovns	%r9d, %r8d
	sarl	$5, %r8d
	movl	%r8d, %r9d
	testb	%r8b, %r8b
	jle	.L888
	leal	-1(%r8), %r10d
	cmpb	$2, %r10b
	jbe	.L907
	movl	%r8d, %edx
	leaq	16(%rsp), %rax
	pxor	%xmm0, %xmm0
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	andl	$16, %edx
	je	.L890
	movdqa	(%rax), %xmm0
	leaq	32(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L952
	.p2align 4,,10
	.p2align 3
.L890:
	por	(%rax), %xmm0
	addq	$32, %rax
	por	-16(%rax), %xmm0
	cmpq	%rax, %rcx
	jne	.L890
.L952:
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$3, %r8b
	je	.L891
	movl	%r8d, %edx
	andl	$-4, %edx
.L889:
	movsbq	%dl, %rcx
	orl	16(%rsp,%rcx,4), %eax
	leal	1(%rdx), %ecx
	cmpb	%cl, %r8b
	jle	.L891
	movzbl	%cl, %ecx
	addl	$2, %edx
	orl	16(%rsp,%rcx,4), %eax
	cmpb	%dl, %r8b
	jle	.L891
	movzbl	%dl, %edx
	orl	16(%rsp,%rdx,4), %eax
.L891:
	testl	%eax, %eax
	je	.L888
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	leaq	16(%rsp), %rdi
	xorl	%r11d, %r11d
	leaq	112(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L892:
	movl	36(%rbp,%rax,4), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	subl	(%rdi,%rax,4), %edx
	cmpl	%edx, %esi
	movl	%edx, 0(%r13,%rax,4)
	setb	%sil
	cmovne	%r11d, %ecx
	addq	$1, %rax
	movzbl	%sil, %esi
	orl	%esi, %ecx
	cmpb	%al, %r9b
	jg	.L892
	testl	%ecx, %ecx
	setne	%cl
	cmpb	$2, %r10b
	jbe	.L908
	movl	%r8d, %edx
	movq	%r13, %rax
	pxor	%xmm0, %xmm0
	shrb	$2, %dl
	movzbl	%dl, %edx
	salq	$4, %rdx
	leaq	0(%r13,%rdx), %rsi
	andl	$16, %edx
	je	.L894
	leaq	128(%rsp), %rax
	movdqa	0(%r13), %xmm0
	cmpq	%rax, %rsi
	je	.L951
	.p2align 4,,10
	.p2align 3
.L894:
	por	(%rax), %xmm0
	addq	$32, %rax
	por	-16(%rax), %xmm0
	cmpq	%rax, %rsi
	jne	.L894
.L951:
	movdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	psrldq	$8, %xmm1
	andl	$-4, %edx
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$3, %r8b
	je	.L895
.L893:
	movsbq	%dl, %rsi
	orl	112(%rsp,%rsi,4), %eax
	leal	1(%rdx), %esi
	cmpb	%sil, %r8b
	jle	.L895
	movzbl	%sil, %esi
	addl	$2, %edx
	orl	112(%rsp,%rsi,4), %eax
	cmpb	%dl, %r8b
	jle	.L895
	movzbl	%dl, %edx
	orl	112(%rsp,%rdx,4), %eax
.L895:
	testl	%eax, %eax
	setne	%al
	addl	%ecx, %ecx
	subl	%ecx, %eax
	cmpb	$1, %al
	je	.L955
.L888:
	xorl	%eax, %eax
.L876:
	movq	184(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L956
	addq	$200, %rsp
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
.L954:
	.cfi_restore_state
	movl	$0, (%rdi)
	jmp	.L884
	.p2align 4,,10
	.p2align 3
.L955:
	leaq	48(%rsp), %rsi
	leaq	80(%rsp), %rdx
	movq	%rbp, %rcx
	movq	%rdx, %xmm2
	movq	%rsi, %xmm0
	punpcklqdq	%xmm2, %xmm0
	movaps	%xmm0, (%rsp)
	call	regularize_k
	leal	1(%r12), %r8d
	movq	%rbp, %r9
	movq	%r13, %rdi
	testl	%eax, %eax
	leaq	68(%rbp), %rsi
	movswl	%r8w, %r8d
	sete	%al
	xorl	%ecx, %ecx
	movzbl	%al, %eax
	movq	(%rsp,%rax,8), %rdx
	call	EccPoint_mult
	movzbl	0(%rbp), %eax
	leal	(%rax,%rax), %edx
	testb	%dl, %dl
	jle	.L888
	leal	-1(%rdx), %eax
	cmpb	$2, %al
	jbe	.L897
	movl	%edx, %eax
	pxor	%xmm0, %xmm0
	shrb	$2, %al
	movzbl	%al, %eax
	salq	$4, %rax
	leaq	0(%r13,%rax), %rcx
	testb	$16, %al
	je	.L898
	movdqa	0(%r13), %xmm0
	leaq	128(%rsp), %r13
	cmpq	%r13, %rcx
	je	.L950
	.p2align 4,,10
	.p2align 3
.L898:
	por	0(%r13), %xmm0
	addq	$32, %r13
	por	-16(%r13), %xmm0
	cmpq	%r13, %rcx
	jne	.L898
.L950:
	movdqa	%xmm0, %xmm1
	movl	%edx, %ecx
	psrldq	$8, %xmm1
	andl	$-4, %ecx
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	testb	$2, %dl
	je	.L899
	movsbq	%cl, %rsi
	orl	112(%rsp,%rsi,4), %eax
	leal	1(%rcx), %esi
	cmpb	%dl, %sil
	jge	.L899
.L905:
	movsbq	%sil, %rsi
	addl	$2, %ecx
	orl	112(%rsp,%rsi,4), %eax
	cmpb	%dl, %cl
	jge	.L899
	movzbl	%cl, %ecx
	orl	112(%rsp,%rcx,4), %eax
.L899:
	testl	%eax, %eax
	je	.L888
	movsbl	1(%rbp), %esi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	subl	%ebx, %edi
	leal	-1(%rsi), %r8d
	testl	%esi, %esi
	jle	.L903
	.p2align 4,,10
	.p2align 3
.L902:
	movl	%r8d, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	andl	$3, %ecx
	shrl	$2, %eax
	sall	$3, %ecx
	movl	112(%rsp,%rax,4), %eax
	shrl	%cl, %eax
	movb	%al, (%rdx)
	leal	(%rdi,%rdx), %eax
	addq	$1, %rdx
	movsbl	%al, %eax
	cmpl	%eax, %esi
	jg	.L902
	movsbq	1(%rbp), %rsi
	movsbq	0(%rbp), %rdi
	testl	%esi, %esi
	jle	.L903
	leaq	(%rbx,%rsi), %rdx
	movl	$1, %r9d
	leal	-1(%rsi), %r8d
	xorl	%eax, %eax
	subl	%edx, %r9d
	.p2align 4,,10
	.p2align 3
.L904:
	movl	%r8d, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	andl	$3, %ecx
	shrl	$2, %eax
	sall	$3, %ecx
	addq	%rdi, %rax
	movl	112(%rsp,%rax,4), %eax
	shrl	%cl, %eax
	movb	%al, (%rdx)
	leal	(%r9,%rdx), %eax
	addq	$1, %rdx
	movsbl	%al, %eax
	cmpl	%eax, %esi
	jg	.L904
.L903:
	movl	$1, %eax
	jmp	.L876
.L907:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L889
.L908:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L893
.L897:
	movl	112(%rsp), %eax
	movl	$1, %esi
	xorl	%ecx, %ecx
	jmp	.L905
.L956:
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
