	.text
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  # -- Begin function aes_shift_rows
	.p2align	4, 0x90
	.type	aes_shift_rows,@function
aes_shift_rows:                         # @aes_shift_rows
	.cfi_startproc
# %bb.0:
	movzbl	5(%rdi), %eax
	movzbl	1(%rdi), %ecx
	movzbl	2(%rdi), %edx
	movb	%al, 1(%rdi)
	movzbl	9(%rdi), %eax
	movb	%al, 5(%rdi)
	movzbl	13(%rdi), %eax
	movb	%al, 9(%rdi)
	movb	%cl, 13(%rdi)
	movzbl	10(%rdi), %eax
	movb	%al, 2(%rdi)
	movb	%dl, 10(%rdi)
	movzbl	6(%rdi), %eax
	movzbl	14(%rdi), %ecx
	movb	%cl, 6(%rdi)
	movb	%al, 14(%rdi)
	movzbl	15(%rdi), %eax
	movzbl	11(%rdi), %ecx
	movb	%cl, 15(%rdi)
	movzbl	7(%rdi), %ecx
	movb	%cl, 11(%rdi)
	movzbl	3(%rdi), %ecx
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
