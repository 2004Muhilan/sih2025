	.text
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  # -- Begin function aes_shift_rows
	.type	aes_shift_rows,@function
aes_shift_rows:                         # @aes_shift_rows
	.cfi_startproc
# %bb.0:
	movb	5(%rdi), %al
	movb	1(%rdi), %cl
	movb	2(%rdi), %dl
	movb	%al, 1(%rdi)
	movb	9(%rdi), %al
	movb	%al, 5(%rdi)
	movb	13(%rdi), %al
	movb	%al, 9(%rdi)
	movb	%cl, 13(%rdi)
	movb	10(%rdi), %al
	movb	%al, 2(%rdi)
	movb	%dl, 10(%rdi)
	movb	6(%rdi), %al
	movb	14(%rdi), %cl
	movb	%cl, 6(%rdi)
	movb	%al, 14(%rdi)
	movb	15(%rdi), %al
	movb	11(%rdi), %cl
	movb	%cl, 15(%rdi)
	movb	7(%rdi), %cl
	movb	%cl, 11(%rdi)
	movb	3(%rdi), %cl
	movb	%cl, 7(%rdi)
	movb	%al, 3(%rdi)
	retq
.Lfunc_end0:
	.size	aes_shift_rows, .Lfunc_end0-aes_shift_rows
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
