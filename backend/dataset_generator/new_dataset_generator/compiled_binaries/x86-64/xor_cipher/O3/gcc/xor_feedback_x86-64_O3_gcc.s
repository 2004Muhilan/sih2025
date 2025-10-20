	.file	"xor_feedback.c"
	.text
	.p2align 4
	.globl	xor_cipher_feedback
	.type	xor_cipher_feedback, @function
xor_cipher_feedback:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	movq	%rdx, %r11
	movq	%rcx, %r9
	xorl	%esi, %esi
	testq	%r8, %r8
	je	.L2
	movzbl	(%r8), %esi
.L2:
	testq	%r10, %r10
	je	.L1
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movl	%esi, %r8d
	movzbl	(%rdi,%rcx), %esi
	divq	%r9
	movzbl	(%r11,%rdx), %eax
	xorl	%esi, %eax
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
	.p2align 4
	.globl	xor_encrypt_feedback
	.type	xor_encrypt_feedback, @function
xor_encrypt_feedback:
.LFB15:
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
	movq	%r9, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%r8d, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	memcpy@PLT
	testq	%r12, %r12
	je	.L12
	movq	%rax, %r9
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L14:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movl	%ebx, %esi
	movzbl	(%r9,%rcx), %ebx
	divq	%rbp
	movzbl	0(%r13,%rdx), %eax
	xorl	%ebx, %eax
	xorl	%esi, %eax
	movb	%al, (%r9,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r12
	jne	.L14
.L12:
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
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.p2align 4
	.globl	xor_decrypt_feedback
	.type	xor_decrypt_feedback, @function
xor_decrypt_feedback:
.LFB16:
	.cfi_startproc
	endbr64
	movq	%rsi, %r10
	testq	%rsi, %rsi
	je	.L28
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rcx, %rsi
	movq	%rdi, %r11
	movq	%rdx, %rbx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L22:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movl	%r8d, %edi
	movzbl	(%r11,%rcx), %r8d
	divq	%rsi
	movzbl	(%rbx,%rdx), %eax
	xorl	%r8d, %eax
	xorl	%edi, %eax
	movb	%al, (%r9,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r10
	jne	.L22
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
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
