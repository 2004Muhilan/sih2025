	.file	"xor_simple.c"
	.text
	.globl	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rdx, %r9
	xorl	%r8d, %r8d
.L2:
	cmpq	%rsi, %r8
	je	.L5
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rcx
	movb	(%r9,%rdx), %al
	xorb	%al, (%rdi,%r8)
	incq	%r8
	jmp	.L2
.L5:
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
	movq	%rsi, %rax
	movq	%rdi, %r10
	movq	%rcx, %r9
	movq	%r8, %rdi
	movq	%r10, %rsi
	movq	%rax, %rcx
	rep movsb
	movq	%r9, %rcx
	movq	%rax, %rsi
	movq	%r8, %rdi
	jmp	xor_cipher_simple
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.globl	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
.LFB18:
	.cfi_startproc
	endbr64
	jmp	xor_encrypt_simple
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
