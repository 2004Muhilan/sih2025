	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           # -- Begin function sha1_message_schedule
	.p2align	1
	.type	sha1_message_schedule,@function
sha1_message_schedule:                  # @sha1_message_schedule
	.cfi_startproc
# %bb.0:
	addi	a2, a1, 64
	mv	a3, a1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a0)
	sw	a4, 0(a3)
	addi	a3, a3, 4
	addi	a0, a0, 4
	bne	a3, a2, .LBB0_1
# %bb.2:
	addi	a0, a1, 32
	addi	a1, a1, 288
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a2, 20(a0)
	lw	a3, 0(a0)
	lw	a4, -24(a0)
	lw	a5, -32(a0)
	xor	a2, a2, a3
	xor	a4, a4, a5
	xor	a2, a2, a4
	srliw	a3, a2, 31
	slli	a2, a2, 1
	or	a2, a2, a3
	sw	a2, 32(a0)
	addi	a0, a0, 4
	bne	a0, a1, .LBB0_3
# %bb.4:
	ret
.Lfunc_end0:
	.size	sha1_message_schedule, .Lfunc_end0-sha1_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
