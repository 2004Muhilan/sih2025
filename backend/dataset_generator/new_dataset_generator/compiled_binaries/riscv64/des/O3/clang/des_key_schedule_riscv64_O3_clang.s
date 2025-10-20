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
	slli	a2, a0, 16
	srli	a2, a2, 16
	sd	a2, 0(a1)
	slli	a2, a0, 12
	srli	a2, a2, 16
	sd	a2, 8(a1)
	slli	a2, a0, 8
	srli	a2, a2, 16
	sd	a2, 16(a1)
	slli	a2, a0, 4
	srli	a2, a2, 16
	sd	a2, 24(a1)
	srli	a2, a0, 16
	sd	a2, 32(a1)
	srli	a2, a0, 20
	sd	a2, 40(a1)
	srli	a2, a0, 24
	sd	a2, 48(a1)
	srli	a2, a0, 28
	sd	a2, 56(a1)
	srli	a2, a0, 32
	sd	a2, 64(a1)
	srli	a2, a0, 36
	sd	a2, 72(a1)
	srli	a2, a0, 40
	sd	a2, 80(a1)
	srli	a2, a0, 44
	sd	a2, 88(a1)
	srli	a2, a0, 48
	sd	a2, 96(a1)
	srli	a2, a0, 52
	sd	a2, 104(a1)
	srli	a2, a0, 56
	sd	a2, 112(a1)
	srli	a0, a0, 60
	sd	a0, 120(a1)
	ret
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
