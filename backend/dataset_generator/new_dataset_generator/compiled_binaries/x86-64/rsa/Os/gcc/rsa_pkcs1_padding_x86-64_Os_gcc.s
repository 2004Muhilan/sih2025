	.file	"rsa_pkcs1_padding.c"
	.text
	.globl	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	endbr64
	movq	%rsi, %rax
	movw	$512, (%rdx)
	movq	%rdi, %r8
	movl	$2, %esi
	subq	%rax, %rcx
	leaq	-1(%rcx), %rdi
.L2:
	cmpq	%rdi, %rsi
	jnb	.L5
	movb	$-1, (%rdx,%rsi)
	incq	%rsi
	jmp	.L2
.L5:
	movb	$0, -1(%rdx,%rcx)
	addq	%rcx, %rdx
	movq	%r8, %rsi
	movq	%rax, %rcx
	movq	%rdx, %rdi
	rep movsb
	ret
	.cfi_endproc
.LFE14:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
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
