	.file	"base64_encode_standard.c"
	.text
	.globl	base64_encode_standard
	.type	base64_encode_standard, @function
base64_encode_standard:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdi
	xorl	%edx, %edx
	leaq	b64(%rip), %r9
.L2:
	cmpq	%rdi, %rdx
	jnb	.L8
	leaq	1(%rdx), %rsi
	movzbl	(%r8,%rdx), %eax
	cmpq	%rdi, %rsi
	jnb	.L5
	leaq	2(%rdx), %rsi
	movzbl	1(%r8,%rdx), %r10d
	cmpq	%rdi, %rsi
	jnb	.L6
	leaq	3(%rdx), %rsi
	movzbl	2(%r8,%rdx), %edx
	jmp	.L3
.L5:
	xorl	%r10d, %r10d
.L6:
	xorl	%edx, %edx
.L3:
	sall	$16, %eax
	sall	$8, %r10d
	addq	$4, %rcx
	addl	%edx, %eax
	addl	%r10d, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	movb	(%r9,%rdx), %dl
	movb	%dl, -4(%rcx)
	movl	%eax, %edx
	shrl	$12, %edx
	andl	$63, %edx
	movb	(%r9,%rdx), %dl
	movb	%dl, -3(%rcx)
	movl	%eax, %edx
	andl	$63, %eax
	shrl	$6, %edx
	movb	(%r9,%rax), %al
	andl	$63, %edx
	movb	(%r9,%rdx), %dl
	movb	%al, -1(%rcx)
	movb	%dl, -2(%rcx)
	movq	%rsi, %rdx
	jmp	.L2
.L8:
	ret
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
