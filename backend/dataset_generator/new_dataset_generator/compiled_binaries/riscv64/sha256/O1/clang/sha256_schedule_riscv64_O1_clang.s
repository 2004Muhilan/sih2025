	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         # -- Begin function sha256_message_schedule
	.p2align	1
	.type	sha256_message_schedule,@function
sha256_message_schedule:                # @sha256_message_schedule
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
	addi	a6, a1, 256
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -60(a2)
	srliw	a3, a1, 7
	slli	a4, a1, 25
	or	a3, a3, a4
	srliw	a4, a1, 18
	slli	a5, a1, 14
	or	a4, a4, a5
	lw	a0, -8(a2)
	xor	a3, a3, a4
	srliw	a1, a1, 3
	xor	a7, a3, a1
	srliw	a3, a0, 17
	slli	a4, a0, 15
	or	a3, a3, a4
	srliw	a4, a0, 19
	slli	a5, a0, 13
	or	a4, a4, a5
	lw	a5, -64(a2)
	lw	a1, -28(a2)
	xor	a3, a3, a4
	srliw	a0, a0, 10
	xor	a0, a0, a3
	add	a1, a1, a5
	add	a1, a1, a7
	add	a0, a0, a1
	sw	a0, 0(a2)
	addi	a2, a2, 4
	bne	a2, a6, .LBB0_3
# %bb.4:
	ret
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
