	.file	"sha256_sigma.c"
	.text
	.globl	sha256_sigma0
	.type	sha256_sigma0, @function
sha256_sigma0:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	rorl	$2, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	rorl	$13, %eax
	xorl	%eax, %edx
	movl	-4(%rbp), %eax
	roll	$10, %eax
	xorl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	rorl	$6, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	rorl	$11, %eax
	xorl	%eax, %edx
	movl	-4(%rbp), %eax
	roll	$7, %eax
	xorl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
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
