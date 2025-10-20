	.file	"rc4_standard.c"
	.text
	.globl	rc4_init
	.type	rc4_init, @function
rc4_init:
.LFB0:
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
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L2:
	cmpl	$255, -8(%rbp)
	jle	.L3
	movb	$0, -10(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movzbl	-10(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	addl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	$0, %edx
	divq	-40(%rbp)
	movq	-32(%rbp), %rax
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
	movb	%al, -10(%rbp)
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	(%rdx,%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movzbl	-10(%rbp), %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	-9(%rbp), %ecx
	movb	%cl, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L4:
	cmpl	$255, -4(%rbp)
	jle	.L5
	movq	-24(%rbp), %rax
	movb	$0, 256(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 257(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_init, .-rc4_init
	.globl	rc4_crypt
	.type	rc4_crypt, @function
rc4_crypt:
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
	jmp	.L7
.L8:
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
.L7:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L8
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	rc4_crypt, .-rc4_crypt
	.globl	rc4_encrypt
	.type	rc4_encrypt, @function
rc4_encrypt:
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
	movq	-280(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rc4_init
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
	call	rc4_crypt
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rc4_encrypt, .-rc4_encrypt
	.globl	rc4_decrypt
	.type	rc4_decrypt, @function
rc4_decrypt:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rc4_encrypt
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rc4_decrypt, .-rc4_decrypt
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
