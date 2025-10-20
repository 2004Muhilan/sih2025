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
	lw	a2, 0(a0)
	sw	a2, 0(a1)
	lw	a2, 4(a0)
	sw	a2, 4(a1)
	lw	a2, 8(a0)
	sw	a2, 8(a1)
	lw	a2, 12(a0)
	sw	a2, 12(a1)
	lw	a2, 16(a0)
	sw	a2, 16(a1)
	lw	a2, 20(a0)
	sw	a2, 20(a1)
	lw	a2, 24(a0)
	sw	a2, 24(a1)
	lw	a2, 28(a0)
	sw	a2, 28(a1)
	lw	a2, 32(a0)
	sw	a2, 32(a1)
	lw	a2, 36(a0)
	sw	a2, 36(a1)
	lw	a2, 40(a0)
	sw	a2, 40(a1)
	lw	a2, 44(a0)
	sw	a2, 44(a1)
	lw	a2, 48(a0)
	sw	a2, 48(a1)
	lw	a2, 52(a0)
	sw	a2, 52(a1)
	lw	a2, 56(a0)
	sw	a2, 56(a1)
	lw	a0, 60(a0)
	sw	a0, 60(a1)
	addi	a0, a1, 64
	addi	a6, a1, 256
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a2, -60(a0)
	srliw	a3, a2, 7
	slli	a4, a2, 25
	or	a3, a3, a4
	srliw	a4, a2, 18
	slli	a5, a2, 14
	or	a4, a4, a5
	lw	a1, -8(a0)
	xor	a3, a3, a4
	srliw	a2, a2, 3
	xor	a7, a3, a2
	srliw	a3, a1, 17
	slli	a4, a1, 15
	or	a3, a3, a4
	srliw	a4, a1, 19
	slli	a5, a1, 13
	or	a4, a4, a5
	lw	a5, -64(a0)
	lw	a2, -28(a0)
	xor	a3, a3, a4
	srliw	a1, a1, 10
	xor	a1, a1, a3
	add	a2, a2, a5
	add	a2, a2, a7
	add	a1, a1, a2
	sw	a1, 0(a0)
	addi	a0, a0, 4
	bne	a0, a6, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
