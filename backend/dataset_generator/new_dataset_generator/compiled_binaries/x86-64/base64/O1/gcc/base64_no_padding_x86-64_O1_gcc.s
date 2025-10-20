	.file	"base64_no_padding.c"
	.text
	.globl	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdx, %r10
	testq	%rsi, %rsi
	je	.L8
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %r11
	movl	$2, %edi
	movl	$1, %edx
	movl	$0, %ecx
	leaq	b64(%rip), %rbx
	jmp	.L7
.L3:
	cmpq	%rsi, %rdi
	jnb	.L4
	movzbl	1(%r11,%rdx), %r8d
	orl	%r8d, %eax
.L4:
	movl	%eax, %r8d
	shrl	$18, %r8d
	movl	%r8d, %r8d
	movzbl	(%rbx,%r8), %r8d
	movb	%r8b, (%r10,%rcx)
	leaq	2(%rcx), %r9
	movl	%eax, %r8d
	shrl	$12, %r8d
	andl	$63, %r8d
	movzbl	(%rbx,%r8), %r8d
	movb	%r8b, 1(%r10,%rcx)
	cmpq	%rsi, %rdx
	jnb	.L5
	movl	%eax, %r8d
	shrl	$6, %r8d
	andl	$63, %r8d
	movzbl	(%rbx,%r8), %r8d
	movb	%r8b, 2(%r10,%rcx)
	leaq	3(%rcx), %r9
.L5:
	movq	%r9, %rcx
	cmpq	%rsi, %rdi
	jnb	.L6
	leaq	1(%r9), %rcx
	andl	$63, %eax
	movzbl	(%rbx,%rax), %eax
	movb	%al, (%r10,%r9)
.L6:
	leaq	3(%rdx), %rax
	addq	$3, %rdi
	addq	$2, %rdx
	cmpq	%rsi, %rdx
	jnb	.L15
	movq	%rax, %rdx
.L7:
	movzbl	-1(%r11,%rdx), %eax
	sall	$16, %eax
	cmpq	%rsi, %rdx
	jnb	.L3
	movzbl	(%r11,%rdx), %r8d
	sall	$8, %r8d
	orl	%r8d, %eax
	jmp	.L3
.L8:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	movb	$0, (%rdx,%rsi)
	ret
.L15:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movb	$0, (%r10,%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
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
