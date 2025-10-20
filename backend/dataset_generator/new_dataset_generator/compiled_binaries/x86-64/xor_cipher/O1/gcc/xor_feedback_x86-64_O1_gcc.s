	.file	"xor_feedback.c"
	.text
	.globl	xor_cipher_feedback
	.type	xor_cipher_feedback, @function
xor_cipher_feedback:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	movq	%rdx, %r11
	movq	%rcx, %r9
	movl	$0, %esi
	testq	%r8, %r8
	je	.L2
	movzbl	(%r8), %esi
.L2:
	testq	%r10, %r10
	je	.L1
	movl	$0, %ecx
.L4:
	movl	%esi, %r8d
	movzbl	(%rdi,%rcx), %esi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%r9
	movl	%esi, %eax
	xorb	(%r11,%rdx), %al
	xorl	%r8d, %eax
	movb	%al, (%rdi,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r10
	jne	.L4
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.globl	xor_encrypt_feedback
	.type	xor_encrypt_feedback, @function
xor_encrypt_feedback:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, %rbp
	movq	%rdx, %r12
	movq	%rcx, %r13
	movq	%r9, %rbx
	movb	%r8b, 12(%rsp)
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r9, %rdi
	call	memcpy@PLT
	leaq	12(%rsp), %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	xor_cipher_feedback
	addq	$24, %rsp
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
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.globl	xor_decrypt_feedback
	.type	xor_decrypt_feedback, @function
xor_decrypt_feedback:
.LFB16:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	testq	%rsi, %rsi
	je	.L14
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %r11
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movl	$0, %ecx
.L11:
	movl	%r8d, %edi
	movzbl	(%r11,%rcx), %r8d
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movl	%r8d, %eax
	xorb	(%rbx,%rdx), %al
	xorl	%edi, %eax
	movb	%al, (%r9,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r10
	jne	.L11
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE16:
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
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
