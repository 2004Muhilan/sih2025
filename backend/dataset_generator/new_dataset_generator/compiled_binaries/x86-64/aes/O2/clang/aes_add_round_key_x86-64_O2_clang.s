	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               # -- Begin function aes_add_round_key
	.p2align	4, 0x90
	.type	aes_add_round_key,@function
aes_add_round_key:                      # @aes_add_round_key
	.cfi_startproc
# %bb.0:
	movzbl	(%rsi), %eax
	xorb	%al, (%rdi)
	movzbl	1(%rsi), %eax
	xorb	%al, 1(%rdi)
	movzbl	2(%rsi), %eax
	xorb	%al, 2(%rdi)
	movzbl	3(%rsi), %eax
	xorb	%al, 3(%rdi)
	movzbl	4(%rsi), %eax
	xorb	%al, 4(%rdi)
	movzbl	5(%rsi), %eax
	xorb	%al, 5(%rdi)
	movzbl	6(%rsi), %eax
	xorb	%al, 6(%rdi)
	movzbl	7(%rsi), %eax
	xorb	%al, 7(%rdi)
	movzbl	8(%rsi), %eax
	xorb	%al, 8(%rdi)
	movzbl	9(%rsi), %eax
	xorb	%al, 9(%rdi)
	movzbl	10(%rsi), %eax
	xorb	%al, 10(%rdi)
	movzbl	11(%rsi), %eax
	xorb	%al, 11(%rdi)
	movzbl	12(%rsi), %eax
	xorb	%al, 12(%rdi)
	movzbl	13(%rsi), %eax
	xorb	%al, 13(%rdi)
	movzbl	14(%rsi), %eax
	xorb	%al, 14(%rdi)
	movzbl	15(%rsi), %eax
	xorb	%al, 15(%rdi)
	retq
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
