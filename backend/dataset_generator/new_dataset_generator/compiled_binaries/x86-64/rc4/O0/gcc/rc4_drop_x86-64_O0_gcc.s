	.file	"rc4_drop.c"
	.text
	.globl	rc4_drop_init
	.type	rc4_drop_init, @function
rc4_drop_init:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -16(%rbp)
.L2:
	cmpl	$255, -16(%rbp)
	jle	.L3
	movb	$0, -19(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movzbl	-19(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movl	-12(%rbp), %eax
	cltq
	movl	$0, %edx
	divq	-56(%rbp)
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	(%rcx,%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%eax, %edx
	movzbl	%dl, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -19(%rbp)
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -17(%rbp)
	movzbl	-19(%rbp), %eax
	movq	-40(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movzbl	-19(%rbp), %eax
	movq	-40(%rbp), %rdx
	cltq
	movzbl	-17(%rbp), %ecx
	movb	%cl, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L4:
	cmpl	$255, -12(%rbp)
	jle	.L5
	movq	-40(%rbp), %rax
	movb	$0, 256(%rax)
	movq	-40(%rbp), %rax
	movb	$0, 257(%rax)
	movq	$0, -8(%rbp)
	jmp	.L6
.L7:
	movq	-40(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%eax, %edx
	movzbl	%dl, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, 256(%rax)
	movq	-40(%rbp), %rax
	movzbl	257(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	movq	-40(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	leal	(%rcx,%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, 257(%rax)
	movq	-40(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	movq	-40(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -18(%rbp)
	movq	-40(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %ecx
	movq	-40(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %esi
	movq	-40(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-40(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
	movq	-40(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	movq	-40(%rbp), %rdx
	cltq
	movzbl	-18(%rbp), %ecx
	movb	%cl, (%rdx,%rax)
	addq	$1, -8(%rbp)
.L6:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L7
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_drop_init, .-rc4_drop_init
	.globl	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L9
.L10:
	movq	-24(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%eax, %edx
	movzbl	%dl, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 256(%rax)
	movq	-24(%rbp), %rax
	movzbl	257(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	leal	(%rcx,%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, 257(%rax)
	movq	-24(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -10(%rbp)
	movq	-24(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-24(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
	movq	-24(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	-10(%rbp), %ecx
	movb	%cl, (%rdx,%rax)
	movq	-24(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	addl	%ecx, %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -9(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	xorb	-9(%rbp), %al
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L9:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L10
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.globl	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	%r8, -312(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$768, %ecx
	movq	%rax, %rdi
	call	rc4_drop_init
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-304(%rbp), %rdx
	movq	-312(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rc4_drop_crypt
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
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
