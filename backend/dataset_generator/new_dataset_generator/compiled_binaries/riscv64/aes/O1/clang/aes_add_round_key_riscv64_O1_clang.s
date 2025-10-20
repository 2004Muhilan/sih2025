	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               # -- Begin function aes_add_round_key
	.p2align	1
	.type	aes_add_round_key,@function
aes_add_round_key:                      # @aes_add_round_key
	.cfi_startproc
# %bb.0:
	addi	a2, a0, 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a1)
	lbu	a4, 0(a0)
	xor	a3, a3, a4
	sb	a3, 0(a0)
	addi	a0, a0, 1
	addi	a1, a1, 1
	bne	a0, a2, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
