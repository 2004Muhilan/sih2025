	.file	"base64_encode_standard.c"
	.text
	.p2align 4
	.globl	base64_encode_standard
	.type	base64_encode_standard, @function
base64_encode_standard:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdx, %r8
	leaq	b64(%rip), %rcx
	xorl	%edx, %edx
	testq	%rsi, %rsi
	jne	.L4
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	movzbl	1(%rdi,%rdx), %r10d
	leaq	2(%rdx), %r9
	sall	$8, %r10d
	cmpq	%rsi, %r9
	jnb	.L7
	movzbl	(%rdi,%r9), %r9d
	addq	$3, %rdx
.L3:
	addl	%r10d, %r9d
	sall	$16, %eax
	addq	$4, %r8
	addl	%r9d, %eax
	movl	%eax, %r11d
	movl	%eax, %r9d
	movl	%eax, %r10d
	andl	$63, %eax
	shrl	$6, %r11d
	movzbl	(%rcx,%rax), %eax
	shrl	$12, %r10d
	andl	$63, %r11d
	andl	$63, %r10d
	shrl	$18, %r9d
	movzbl	(%rcx,%r11), %r11d
	sall	$8, %eax
	movzbl	(%rcx,%r10), %r10d
	movzbl	(%rcx,%r9), %r9d
	orl	%r11d, %eax
	sall	$8, %eax
	orl	%r10d, %eax
	sall	$8, %eax
	orl	%r9d, %eax
	movl	%eax, -4(%r8)
	cmpq	%rsi, %rdx
	jnb	.L1
.L4:
	leaq	1(%rdx), %r9
	movzbl	(%rdi,%rdx), %eax
	cmpq	%rsi, %r9
	jb	.L11
	movq	%r9, %rdx
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movq	%r9, %rdx
	xorl	%r9d, %r9d
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	base64_encode_standard, .-base64_encode_standard
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
