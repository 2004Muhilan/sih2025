	.file	"aes_shift_rows.c"
	.text
	.globl	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	endbr64
	movb	5(%rdi), %dl
	movb	1(%rdi), %al
	movb	%dl, 1(%rdi)
	movb	9(%rdi), %dl
	movb	%dl, 5(%rdi)
	movb	13(%rdi), %dl
	movb	%al, 13(%rdi)
	movb	2(%rdi), %al
	movb	%dl, 9(%rdi)
	movb	10(%rdi), %dl
	movb	%al, 10(%rdi)
	movb	6(%rdi), %al
	movb	%dl, 2(%rdi)
	movb	14(%rdi), %dl
	movb	%al, 14(%rdi)
	movb	15(%rdi), %al
	movb	%dl, 6(%rdi)
	movb	11(%rdi), %dl
	movb	%dl, 15(%rdi)
	movb	7(%rdi), %dl
	movb	%dl, 11(%rdi)
	movb	3(%rdi), %dl
	movb	%al, 3(%rdi)
	movb	%dl, 7(%rdi)
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
