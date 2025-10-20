	.file	"rsa_miller_rabin.c"
	.text
	.globl	rsa_miller_rabin
	.type	rsa_miller_rabin, @function
rsa_miller_rabin:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	cmpq	$1, %rdi
	jbe	.L1
	leaq	-2(%rdi), %rdx
	movl	$1, %eax
	cmpq	$1, %rdx
	jbe	.L1
	movl	$0, %eax
	testb	$1, %dil
	je	.L1
	leaq	-1(%rdi), %rdx
	je	.L7
.L3:
	movq	%rdx, %rax
	shrq	%rax
	movq	%rax, %rdx
	testb	$1, %al
	je	.L3
	movl	$1, %eax
	ret
.L7:
	movl	$1, %eax
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
