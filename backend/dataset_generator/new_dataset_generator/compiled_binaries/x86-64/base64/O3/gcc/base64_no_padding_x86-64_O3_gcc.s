	.file	"base64_no_padding.c"
	.text
	.p2align 4
	.globl	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdx, %r11
	testq	%rsi, %rsi
	je	.L14
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r10
	movl	$1, %edx
	movl	$2, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	xorl	%r14d, %r14d
	leaq	b64(%rip), %r9
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%eax, %r8d
	addq	$3, %r14
	shrl	$6, %r8d
	andl	$63, %r8d
	movzbl	(%r9,%r8), %r8d
	movb	%r8b, (%r11,%rbp)
.L5:
	cmpq	%rsi, %rdi
	jnb	.L6
	andl	$63, %eax
	movzbl	(%r9,%rax), %eax
	movb	%al, (%r11,%r14)
	addq	$1, %r14
.L6:
	leaq	3(%rdx), %rax
	addq	$2, %rdx
	addq	$3, %rdi
	cmpq	%rsi, %rdx
	jnb	.L18
	movq	%rax, %rdx
.L7:
	movzbl	-1(%r10,%rdx), %eax
	sall	$16, %eax
	cmpq	%rsi, %rdx
	jnb	.L3
	movzbl	(%r10,%rdx), %r8d
	sall	$8, %r8d
	orl	%r8d, %eax
.L3:
	cmpq	%rsi, %rdi
	jnb	.L4
	movzbl	1(%r10,%rdx), %r8d
	orl	%r8d, %eax
.L4:
	movl	%eax, %r8d
	xorl	%ebx, %ebx
	leaq	2(%r14), %rbp
	shrl	$18, %r8d
	movb	(%r9,%r8), %bl
	movl	%eax, %r8d
	shrl	$12, %r8d
	andl	$63, %r8d
	movzbl	(%r9,%r8), %ecx
	movb	%cl, %bh
	movw	%bx, (%r11,%r14)
	cmpq	%rsi, %rdx
	jb	.L19
	movq	%rbp, %r14
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L18:
	addq	%r14, %r11
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movb	$0, (%r11)
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 14
	movb	$0, (%rdx)
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.align 32
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
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
