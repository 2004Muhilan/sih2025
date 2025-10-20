	.file	"rsa_pkcs1_padding.c"
	.text
	.p2align 4
	.globl	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$512, %eax
	subq	%rsi, %rcx
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movw	%ax, (%rdx)
	leaq	-1(%rcx), %rax
	cmpq	$2, %rax
	jbe	.L2
	leaq	-3(%rcx), %rdx
	leaq	2(%rbx), %rdi
	movl	$255, %esi
	call	memset@PLT
.L2:
	movb	$0, -1(%rbx,%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	(%rbx,%rbp), %rdi
	movq	%r13, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 32
	movq	%r12, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memcpy@PLT
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
