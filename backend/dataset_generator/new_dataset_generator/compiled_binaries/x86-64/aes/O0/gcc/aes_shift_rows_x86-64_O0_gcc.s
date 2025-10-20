	.file	"aes_shift_rows.c"
	.text
	.globl	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	5(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	9(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	9(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	13(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	13(%rax), %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	10(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	10(%rax), %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movzbl	6(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	leaq	6(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	14(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	14(%rax), %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movzbl	15(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	leaq	15(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	11(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	11(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	7(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	7(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	3(%rax), %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
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
