	.file	"hmac_opad.c"
	.text
	.p2align 4
	.globl	hmac_create_opad
	.type	hmac_create_opad, @function
hmac_create_opad:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L5:
	cmpq	%rsi, %rax
	jnb	.L2
	movzbl	(%rdi,%rax), %ecx
	xorl	$92, %ecx
	movb	%cl, (%rdx,%rax)
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.L5
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movq	%rcx, %rax
.L2:
	movb	$92, (%rdx,%rax)
	leaq	1(%rax), %rcx
	cmpq	$63, %rax
	je	.L1
	cmpq	%rsi, %rcx
	jnb	.L6
	movzbl	(%rdi,%rcx), %r8d
	addq	$2, %rax
	xorl	$92, %r8d
	movb	%r8b, (%rdx,%rcx)
	jmp	.L5
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
