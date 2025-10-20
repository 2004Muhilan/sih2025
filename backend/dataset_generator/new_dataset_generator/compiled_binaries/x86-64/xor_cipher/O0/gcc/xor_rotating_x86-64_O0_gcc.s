	.file	"xor_rotating.c"
	.text
	.type	rotate_left, @function
rotate_left:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	movzbl	-4(%rbp), %edx
	movl	$8, %eax
	subl	-8(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rotate_left, .-rotate_left
	.globl	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L4
.L5:
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	xorb	-17(%rbp), %al
	movb	%al, (%rdx)
	movzbl	-17(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$1, %esi
	movl	%ecx, %edi
	call	rotate_left
	movb	%al, (%rbx)
	addq	$1, -16(%rbp)
.L4:
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L5
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.globl	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
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
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-304(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	xor_cipher_rotating
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.globl	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
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
	call	xor_encrypt_rotating
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
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
