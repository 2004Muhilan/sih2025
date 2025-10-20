	.file	"aes_add_round_key.c"
	.text
	.globl	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
.L2:
	movb	(%rsi,%rax), %dl
	xorb	%dl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	aes_add_round_key, .-aes_add_round_key
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
