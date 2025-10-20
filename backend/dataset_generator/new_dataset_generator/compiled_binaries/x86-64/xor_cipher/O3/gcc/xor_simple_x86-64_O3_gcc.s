	.file	"xor_simple.c"
	.text
	.p2align 4
	.globl	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rdx, %r9
	testq	%rsi, %rsi
	je	.L1
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzbl	(%r9,%rdx), %eax
	xorb	%al, (%rdi,%r8)
	addq	$1, %r8
	cmpq	%r8, %rsi
	jne	.L3
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	xor_cipher_simple, .-xor_cipher_simple
	.p2align 4
	.globl	xor_encrypt_simple
	.type	xor_encrypt_simple, @function
xor_encrypt_simple:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	movq	%rsi, %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	movq	%rdi, %rsi
	movq	%r8, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rcx, %rbx
	call	memcpy@PLT
	testq	%rbp, %rbp
	je	.L9
	movq	%rax, %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rbx
	movzbl	(%r12,%rdx), %eax
	xorb	%al, (%r8,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %rbp
	jne	.L11
.L9:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.p2align 4
	.globl	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	movq	%rsi, %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	movq	%rdi, %rsi
	movq	%r8, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rcx, %rbx
	call	memcpy@PLT
	testq	%rbp, %rbp
	je	.L17
	movq	%rax, %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L19:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rbx
	movzbl	(%r12,%rdx), %eax
	xorb	%al, (%r8,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %rbp
	jne	.L19
.L17:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE18:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
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
