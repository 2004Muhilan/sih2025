	.file	"rsa_pkcs1_padding.c"
	.text
	.globl	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %r9
	movb	$0, (%rdx)
	movb	$2, 1(%rdx)
	subq	%rsi, %rcx
	leaq	-1(%rcx), %r8
	cmpq	$2, %r8
	jbe	.L2
	leaq	2(%rdx), %rax
	addq	%rdx, %r8
.L3:
	movb	$-1, (%rax)
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L3
.L2:
	movb	$0, -1(%rdx,%rcx)
	leaq	(%rdx,%rcx), %rdi
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	memcpy@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
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
