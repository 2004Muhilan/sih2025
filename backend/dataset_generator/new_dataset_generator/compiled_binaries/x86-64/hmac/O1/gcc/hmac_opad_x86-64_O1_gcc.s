	.file	"hmac_opad.c"
	.text
	.globl	hmac_create_opad
	.type	hmac_create_opad, @function
hmac_create_opad:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	movl	$92, %r8d
	jmp	.L3
.L2:
	movb	%cl, (%rdx,%rax)
	addq	$1, %rax
	cmpq	$64, %rax
	je	.L6
.L3:
	movl	%r8d, %ecx
	cmpq	%rsi, %rax
	jnb	.L2
	movzbl	(%rdi,%rax), %ecx
	xorl	$92, %ecx
	jmp	.L2
.L6:
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
