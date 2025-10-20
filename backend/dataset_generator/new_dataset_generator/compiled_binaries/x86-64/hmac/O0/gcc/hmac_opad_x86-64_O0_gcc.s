	.file	"hmac_opad.c"
	.text
	.globl	hmac_create_opad
	.type	hmac_create_opad, @function
hmac_create_opad:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L5:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	$92, %eax
	jmp	.L4
.L3:
	movl	$92, %eax
.L4:
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L2:
	cmpq	$63, -8(%rbp)
	jbe	.L5
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_create_opad, .-hmac_create_opad
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
