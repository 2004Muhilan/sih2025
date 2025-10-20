	.text
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  # -- Begin function aes_shift_rows
	.p2align	4, 0x90
	.type	aes_shift_rows,@function
aes_shift_rows:                         # @aes_shift_rows
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	1(%rax), %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movb	5(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	9(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 5(%rax)
	movq	-8(%rbp), %rax
	movb	13(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 9(%rax)
	movb	-9(%rbp), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 13(%rax)
	movq	-8(%rbp), %rax
	movb	2(%rax), %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movb	10(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 2(%rax)
	movb	-9(%rbp), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 10(%rax)
	movq	-8(%rbp), %rax
	movb	6(%rax), %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movb	14(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 6(%rax)
	movb	-9(%rbp), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 14(%rax)
	movq	-8(%rbp), %rax
	movb	15(%rax), %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movb	11(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 15(%rax)
	movq	-8(%rbp), %rax
	movb	7(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 11(%rax)
	movq	-8(%rbp), %rax
	movb	3(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 7(%rax)
	movb	-9(%rbp), %cl
	movq	-8(%rbp), %rax
	movb	%cl, 3(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	aes_shift_rows, .Lfunc_end0-aes_shift_rows
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
