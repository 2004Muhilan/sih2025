	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"xor_counter_mode.c"
	.globl	xor_counter_mode                # -- Begin function xor_counter_mode
	.p2align	1
	.type	xor_counter_mode,@function
xor_counter_mode:                       # @xor_counter_mode
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_3
# %bb.1:
	li	a6, 0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	remu	a5, a6, a3
	add	a7, a2, a5
	add	t1, a0, a6
	lbu	t0, 0(t1)
	lbu	a7, 0(a7)
	add	a5, a4, a6
	xor	a5, a5, t0
	xor	a5, a7, a5
	addi	a6, a6, 1
	sb	a5, 0(t1)
	bne	a1, a6, .LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	xor_counter_mode, .Lfunc_end0-xor_counter_mode
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
