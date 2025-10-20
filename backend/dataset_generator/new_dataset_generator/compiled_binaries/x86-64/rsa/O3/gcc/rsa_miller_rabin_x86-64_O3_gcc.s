	.file	"rsa_miller_rabin.c"
	.text
	.p2align 4
	.globl	rsa_miller_rabin
	.type	rsa_miller_rabin, @function
rsa_miller_rabin:
.LFB0:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	cmpq	$1, %rdi
	jbe	.L1
	leaq	-2(%rdi), %rax
	andl	$1, %edi
	cmpq	$1, %rax
	movl	$1, %eax
	cmova	%edi, %eax
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_miller_rabin, .-rsa_miller_rabin
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
