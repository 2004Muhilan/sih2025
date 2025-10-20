	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"xor_multi_key.c"
	.globl	xor_multi_key                   # -- Begin function xor_multi_key
	.p2align	1
	.type	xor_multi_key,@function
xor_multi_key:                          # @xor_multi_key
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_3
# %bb.1:
	li	a7, 0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	remu	a6, a7, a4
	add	a5, a2, a6
	lbu	t0, 0(a5)
	add	t1, a0, a7
	lbu	a5, 0(t1)
	xor	t0, a5, t0
	sb	t0, 0(t1)
	add	a6, a6, a3
	lbu	a5, 0(a6)
	xor	a5, a5, t0
	addi	a7, a7, 1
	sb	a5, 0(t1)
	bne	a1, a7, .LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	xor_multi_key, .Lfunc_end0-xor_multi_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
