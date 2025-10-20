	.file	"xor_rotating.c"
	.text
	.globl	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
.LFB15:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	%rdx, %r9
	xorl	%edi, %edi
.L2:
	cmpq	%rsi, %rdi
	je	.L5
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%r9, %rdx
	movb	(%rdx), %al
	xorb	%al, (%r8,%rdi)
	incq	%rdi
	rolb	%al
	movb	%al, (%rdx)
	jmp	.L2
.L5:
	ret
	.cfi_endproc
.LFE15:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.globl	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r9
	movq	%rdx, %rax
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%r8, %rdi
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movq	%r9, %rsi
	movq	%rbx, %rcx
	subq	$272, %rsp
	.cfi_def_cfa_offset 304
	movq	%fs:40, %rdx
	movq	%rdx, 264(%rsp)
	xorl	%edx, %edx
	movq	%r12, %rdx
	rep movsb
	leaq	8(%rsp), %rdi
	movl	$256, %ecx
	movq	%rax, %rsi
	call	__memcpy_chk@PLT
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	xor_cipher_rotating
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	addq	$272, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.globl	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
.LFB17:
	.cfi_startproc
	endbr64
	jmp	xor_encrypt_rotating
	.cfi_endproc
.LFE17:
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
