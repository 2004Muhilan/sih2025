	.file	"rc4_prga.c"
	.text
	.globl	rc4_prga
	.type	rc4_prga, @function
rc4_prga:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%rdx, %rcx
	movzbl	(%rsi), %edx
	addl	$1, %edx
	movzbl	%dl, %edx
	movb	%dl, (%rsi)
	movzbl	%dl, %edx
	movzbl	(%rcx), %edi
	addb	(%rax,%rdx), %dil
	movl	%edi, %edx
	movb	%dil, (%rcx)
	movzbl	(%rsi), %edi
	addq	%rax, %rdi
	movzbl	(%rdi), %r8d
	movzbl	%dl, %edx
	movzbl	(%rax,%rdx), %edx
	movb	%dl, (%rdi)
	movzbl	(%rcx), %edx
	movb	%r8b, (%rax,%rdx)
	movzbl	(%rsi), %esi
	movzbl	(%rcx), %edx
	movzbl	(%rax,%rdx), %edx
	addb	(%rax,%rsi), %dl
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
