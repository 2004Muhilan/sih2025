	.file	"rsa_key_generation.c"
	.text
	.p2align 4
	.globl	rsa_generate_keys
	.type	rsa_generate_keys, @function
rsa_generate_keys:
.LFB0:
	.cfi_startproc
	endbr64
	movq	$3233, (%rdi)
	movq	$17, (%rsi)
	movq	$0, (%rdx)
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_generate_keys, .-rsa_generate_keys
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
