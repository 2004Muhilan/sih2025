	.file	"custom_base64.c"
	.text
	.globl	base64_encode
	.type	base64_encode, @function
base64_encode:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	%rsi, %r9
	testq	%rsi, %rsi
	je	.L1
	movl	$0, %ecx
	movl	$0, %r10d
	leaq	b64(%rip), %rsi
	jmp	.L4
.L5:
	movq	%rdi, %rcx
	movl	%r10d, %edi
	movl	%r10d, %r11d
.L3:
	sall	$16, %eax
	addl	%r11d, %eax
	sall	$8, %edi
	addl	%edi, %eax
	movl	%eax, %edi
	shrl	$18, %edi
	movl	%edi, %edi
	movzbl	(%rsi,%rdi), %edi
	movb	%dil, (%rdx)
	movl	%eax, %edi
	shrl	$12, %edi
	andl	$63, %edi
	movzbl	(%rsi,%rdi), %edi
	movb	%dil, 1(%rdx)
	movl	%eax, %edi
	shrl	$6, %edi
	andl	$63, %edi
	movzbl	(%rsi,%rdi), %edi
	movb	%dil, 2(%rdx)
	andl	$63, %eax
	movzbl	(%rsi,%rax), %eax
	movb	%al, 3(%rdx)
	addq	$4, %rdx
	cmpq	%r9, %rcx
	jnb	.L1
.L4:
	leaq	1(%rcx), %rdi
	movzbl	(%r8,%rcx), %eax
	cmpq	%r9, %rdi
	jnb	.L5
	leaq	2(%rcx), %r11
	movzbl	1(%r8,%rcx), %edi
	cmpq	%r9, %r11
	jnb	.L6
	addq	$3, %rcx
	movzbl	(%r8,%r11), %r11d
	jmp	.L3
.L6:
	movq	%r11, %rcx
	movl	$0, %r11d
	jmp	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode, .-base64_encode
	.globl	base64_decode
	.type	base64_decode, @function
base64_decode:
.LFB1:
	.cfi_startproc
	endbr64
	movl	$0, %eax
.L9:
	movzbl	(%rdi,%rax), %edx
	movb	%dl, (%rsi,%rax)
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.L9
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode, .-base64_decode
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
