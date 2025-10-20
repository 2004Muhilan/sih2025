	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                # -- Begin function des_key_schedule
	.p2align	1
	.type	des_key_schedule,@function
des_key_schedule:                       # @des_key_schedule
	.cfi_startproc
# %bb.0:
	li	a2, 0
	li	a3, 64
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	srl	a4, a0, a2
	slli	a4, a4, 16
	srli	a4, a4, 16
	sd	a4, 0(a1)
	addi	a2, a2, 4
	addi	a1, a1, 8
	bne	a2, a3, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
