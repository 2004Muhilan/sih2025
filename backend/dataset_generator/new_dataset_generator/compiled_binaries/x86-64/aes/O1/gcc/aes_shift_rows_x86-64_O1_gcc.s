	.file	"aes_shift_rows.c"
	.text
	.globl	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	endbr64
	movzbl	1(%rdi), %eax
	movzbl	5(%rdi), %edx
	movb	%dl, 1(%rdi)
	movzbl	9(%rdi), %edx
	movb	%dl, 5(%rdi)
	movzbl	13(%rdi), %edx
	movb	%dl, 9(%rdi)
	movb	%al, 13(%rdi)
	movzbl	2(%rdi), %eax
	movzbl	10(%rdi), %edx
	movb	%dl, 2(%rdi)
	movb	%al, 10(%rdi)
	movzbl	6(%rdi), %eax
	movzbl	14(%rdi), %edx
	movb	%dl, 6(%rdi)
	movb	%al, 14(%rdi)
	movzbl	15(%rdi), %eax
	movzbl	11(%rdi), %edx
	movb	%dl, 15(%rdi)
	movzbl	7(%rdi), %edx
	movb	%dl, 11(%rdi)
	movzbl	3(%rdi), %edx
	movb	%dl, 7(%rdi)
	movb	%al, 3(%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	aes_shift_rows, .-aes_shift_rows
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
