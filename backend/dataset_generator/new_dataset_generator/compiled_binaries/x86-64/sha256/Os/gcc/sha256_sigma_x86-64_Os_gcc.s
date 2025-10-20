	.file	"sha256_sigma.c"
	.text
	.globl	sha256_sigma0
	.type	sha256_sigma0, @function
sha256_sigma0:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	movl	%edi, %edx
	roll	$10, %edi
	rorl	$2, %eax
	rorl	$13, %edx
	xorl	%edx, %eax
	xorl	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_sigma0, .-sha256_sigma0
	.globl	sha256_sigma1
	.type	sha256_sigma1, @function
sha256_sigma1:
.LFB1:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	movl	%edi, %edx
	roll	$7, %edi
	rorl	$6, %eax
	rorl	$11, %edx
	xorl	%edx, %eax
	xorl	%edi, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	sha256_sigma1, .-sha256_sigma1
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
