	.file	"rc4_prga.c"
	.text
	.p2align 4
	.globl	rc4_prga
	.type	rc4_prga, @function
rc4_prga:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movzbl	(%rsi), %edi
	leal	1(%rdi), %ecx
	movzbl	%cl, %edi
	movb	%cl, (%rsi)
	movzbl	(%rdx), %ecx
	addb	(%rax,%rdi), %cl
	movb	%cl, (%rdx)
	movzbl	%cl, %ecx
	movzbl	(%rsi), %edi
	movzbl	(%rax,%rcx), %ecx
	addq	%rax, %rdi
	movzbl	(%rdi), %r8d
	movb	%cl, (%rdi)
	movzbl	(%rdx), %ecx
	movb	%r8b, (%rax,%rcx)
	movzbl	(%rsi), %ecx
	movzbl	(%rdx), %edx
	movzbl	(%rax,%rdx), %edx
	addb	(%rax,%rcx), %dl
	movzbl	%dl, %edx
	movzbl	(%rax,%rdx), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_prga, .-rc4_prga
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
