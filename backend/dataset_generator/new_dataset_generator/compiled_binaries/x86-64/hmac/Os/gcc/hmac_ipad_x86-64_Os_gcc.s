	.file	"hmac_ipad.c"
	.text
	.globl	hmac_create_ipad
	.type	hmac_create_ipad, @function
hmac_create_ipad:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
.L3:
	movb	$54, %cl
	cmpq	%rsi, %rax
	jnb	.L2
	movb	(%rdi,%rax), %cl
	xorl	$54, %ecx
.L2:
	movb	%cl, (%rdx,%rax)
	incq	%rax
	cmpq	$64, %rax
	jne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_create_ipad, .-hmac_create_ipad
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
