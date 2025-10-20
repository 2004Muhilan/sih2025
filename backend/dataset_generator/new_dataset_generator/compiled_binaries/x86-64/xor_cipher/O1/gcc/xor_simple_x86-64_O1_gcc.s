	.file	"xor_simple.c"
	.text
	.globl	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rdx, %r9
	testq	%rsi, %rsi
	je	.L1
	movl	$0, %r8d
.L3:
	movq	%r8, %rax
	movl	$0, %edx
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
	.globl	xor_encrypt_simple
	.type	xor_encrypt_simple, @function
xor_encrypt_simple:
.LFB15:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, %rbp
	movq	%rdx, %r12
	movq	%rcx, %r13
	movq	%r8, %rbx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	memcpy@PLT
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	xor_cipher_simple
	addq	$8, %rsp
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
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.globl	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
.LFB16:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, %rbp
	movq	%rdx, %r12
	movq	%rcx, %r13
	movq	%r8, %rbx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	memcpy@PLT
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	xor_cipher_simple
	addq	$8, %rsp
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
.LFE16:
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
