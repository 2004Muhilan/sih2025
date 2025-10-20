	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               # -- Begin function aes_add_round_key
	.p2align	4, 0x90
	.type	aes_add_round_key,@function
aes_add_round_key:                      # @aes_add_round_key
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rax), %ecx
	xorb	%cl, (%rdi,%rax)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
