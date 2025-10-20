	.file	"aes_shift_rows.c"
	.text
	.p2align 4
	.globl	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	endbr64
	movzbl	9(%rdi), %ecx
	movzbl	5(%rdi), %edx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movb	10(%rdi), %dh
	movzbl	1(%rdi), %esi
	movzbl	13(%rdi), %eax
	movb	2(%rdi), %ah
	movw	%dx, 1(%rdi)
	movzbl	%cl, %edx
	movb	14(%rdi), %dh
	movw	%ax, 9(%rdi)
	movzbl	%sil, %eax
	movb	6(%rdi), %ah
	movw	%dx, 5(%rdi)
	movzbl	11(%rdi), %edx
	movw	%ax, 13(%rdi)
	movzbl	15(%rdi), %eax
	movb	%dl, 15(%rdi)
	movzbl	7(%rdi), %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	movb	%dl, 11(%rdi)
	movzbl	3(%rdi), %edx
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
