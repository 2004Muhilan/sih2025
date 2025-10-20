	.text
	.file	"rsa_key_generation.c"
	.globl	rsa_generate_keys               # -- Begin function rsa_generate_keys
	.p2align	4, 0x90
	.type	rsa_generate_keys,@function
rsa_generate_keys:                      # @rsa_generate_keys
	.cfi_startproc
# %bb.0:
	movq	$3233, (%rdi)                   # imm = 0xCA1
	movq	$17, (%rsi)
	movq	$0, (%rdx)
	retq
.Lfunc_end0:
	.size	rsa_generate_keys, .Lfunc_end0-rsa_generate_keys
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
