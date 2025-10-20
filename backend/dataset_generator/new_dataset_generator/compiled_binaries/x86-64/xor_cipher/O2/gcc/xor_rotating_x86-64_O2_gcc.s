	.file	"xor_rotating.c"
	.text
	.p2align 4
	.globl	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
.LFB15:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	%rdx, %r9
	testq	%rsi, %rsi
	je	.L1
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%r9, %rdx
	movzbl	(%rdx), %eax
	xorb	%al, (%r8,%rdi)
	addq	$1, %rdi
	rolb	%al
	movb	%al, (%rdx)
	cmpq	%rdi, %rsi
	jne	.L3
.L1:
	ret
	.cfi_endproc
.LFE15:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.p2align 4
	.globl	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	movq	%rsi, %rdx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	movq	%rdi, %rsi
	movq	%r8, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rcx, %rbx
	subq	$280, %rsp
	.cfi_def_cfa_offset 320
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	call	memcpy@PLT
	movq	%rsp, %rdi
	movl	$256, %ecx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	call	__memcpy_chk@PLT
	testq	%r12, %r12
	je	.L9
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rbx
	addq	%rdi, %rdx
	movzbl	(%rdx), %eax
	xorb	%al, 0(%rbp,%rcx)
	addq	$1, %rcx
	rolb	%al
	movb	%al, (%rdx)
	cmpq	%rcx, %r12
	jne	.L11
.L9:
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L18
	addq	$280, %rsp
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
.L18:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.p2align 4
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
