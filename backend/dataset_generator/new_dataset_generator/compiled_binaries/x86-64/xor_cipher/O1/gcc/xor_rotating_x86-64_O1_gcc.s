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
	testq	%rsi, %rsi
	je	.L1
	movl	$0, %edi
.L3:
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rcx
	addq	%r9, %rdx
	movzbl	(%rdx), %eax
	xorb	%al, (%r8,%rdi)
	rolb	%al
	movb	%al, (%rdx)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.L3
.L1:
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
	subq	$272, %rsp
	.cfi_def_cfa_offset 320
	movq	%rsi, %rbp
	movq	%rdx, %r13
	movq	%rcx, %r12
	movq	%r8, %rbx
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	memcpy@PLT
	movq	%rsp, %r14
	movl	$256, %ecx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	__memcpy_chk@PLT
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	xor_cipher_rotating
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L8
	addq	$272, %rsp
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
.L8:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE16:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.globl	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
.LFB17:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	xor_encrypt_rotating
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
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
