	.file	"xor_feedback.c"
	.text
	.globl	xor_cipher_feedback
	.type	xor_cipher_feedback, @function
xor_cipher_feedback:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %r9
	movq	%rdx, %r11
	movq	%rcx, %rsi
	xorl	%r10d, %r10d
	testq	%r8, %r8
	je	.L2
	movb	(%r8), %r10b
.L2:
	xorl	%ecx, %ecx
.L3:
	cmpq	%r9, %rcx
	je	.L7
	movq	%rcx, %rax
	xorl	%edx, %edx
	movb	(%rdi,%rcx), %r8b
	divq	%rsi
	movb	(%r11,%rdx), %al
	xorl	%r8d, %eax
	xorl	%r10d, %eax
	movl	%r8d, %r10d
	movb	%al, (%rdi,%rcx)
	incq	%rcx
	jmp	.L3
.L7:
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
	movq	%rdi, %r11
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movq	%rcx, %r10
	movq	%r9, %rdi
	movq	%r11, %rsi
	movq	%rax, %rcx
	rep movsb
	movq	%r10, %rcx
	movq	%rax, %rsi
	movq	%r9, %rdi
	movb	%r8b, 4(%rsp)
	leaq	4(%rsp), %r8
	call	xor_cipher_feedback
	popq	%rdx
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
	movq	%rdi, %r10
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	xorl	%ecx, %ecx
	movq	%rdx, %r11
	cmpq	%rdi, %rcx
	jne	.L15
	ret
.L15:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.L12:
	movq	%rcx, %rax
	xorl	%edx, %edx
	movb	(%r10,%rcx), %bl
	divq	%rsi
	movb	(%r11,%rdx), %al
	xorl	%ebx, %eax
	xorl	%r8d, %eax
	movl	%ebx, %r8d
	movb	%al, (%r9,%rcx)
	incq	%rcx
	cmpq	%rdi, %rcx
	jne	.L12
	popq	%rbx
	.cfi_def_cfa_offset 8
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
