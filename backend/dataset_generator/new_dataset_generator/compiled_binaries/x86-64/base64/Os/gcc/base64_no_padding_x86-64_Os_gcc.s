	.file	"base64_no_padding.c"
	.text
	.globl	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	$2, %edx
	leaq	-2(%rdx), %rax
	xorl	%ecx, %ecx
	leaq	b64(%rip), %r10
	cmpq	%rdi, %rax
	jb	.L11
	movb	$0, (%rsi,%rcx)
	ret
.L11:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.L7:
	movzbl	-2(%r8,%rdx), %eax
	leaq	-1(%rdx), %rbx
	sall	$16, %eax
	cmpq	%rdi, %rbx
	jnb	.L3
	movzbl	-1(%r8,%rdx), %r9d
	sall	$8, %r9d
	orl	%r9d, %eax
.L3:
	cmpq	%rdi, %rdx
	jnb	.L4
	movzbl	(%r8,%rdx), %r9d
	orl	%r9d, %eax
.L4:
	movl	%eax, %r11d
	movl	%eax, %r9d
	shrl	$12, %r11d
	shrl	$18, %r9d
	andl	$63, %r11d
	movb	(%r10,%r9), %r9b
	movb	(%r10,%r11), %r11b
	movb	%r9b, (%rsi,%rcx)
	leaq	2(%rcx), %r9
	movb	%r11b, 1(%rsi,%rcx)
	cmpq	%rdi, %rbx
	jnb	.L5
	movl	%eax, %r9d
	shrl	$6, %r9d
	andl	$63, %r9d
	movb	(%r10,%r9), %r9b
	movb	%r9b, 2(%rsi,%rcx)
	leaq	3(%rcx), %r9
.L5:
	cmpq	%rdi, %rdx
	jnb	.L6
	andl	$63, %eax
	movb	(%r10,%rax), %al
	movb	%al, (%rsi,%r9)
	incq	%r9
.L6:
	addq	$3, %rdx
	movq	%r9, %rcx
	leaq	-2(%rdx), %rax
	cmpq	%rdi, %rax
	jb	.L7
	movb	$0, (%rsi,%r9)
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
