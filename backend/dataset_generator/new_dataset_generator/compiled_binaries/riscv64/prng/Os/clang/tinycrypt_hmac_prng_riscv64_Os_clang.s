	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"tinycrypt_hmac_prng.c"
	.globl	tc_hmac_prng_init               # -- Begin function tc_hmac_prng_init
	.p2align	1
	.type	tc_hmac_prng_init,@function
tc_hmac_prng_init:                      # @tc_hmac_prng_init
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	li	s1, 0
	beqz	a0, .LBB0_3
# %bb.1:
	mv	s3, a1
	beqz	a1, .LBB0_3
# %bb.2:
	mv	s2, a2
	mv	s0, a0
	addi	a0, a0, 240
	li	a2, 32
	li	a1, 0
	call	_set
	addi	a0, s0, 272
	li	a1, 1
	li	a2, 32
	li	s1, 1
	call	_set
	mv	a0, s0
	mv	a1, s3
	mv	a2, s2
	li	a3, 0
	li	a4, 0
	call	update
	sw	zero, 304(s0)
.LBB0_3:
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	tc_hmac_prng_init, .Lfunc_end0-tc_hmac_prng_init
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function update
	.type	update,@function
update:                                 # @update
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	mv	s3, a4
	mv	s4, a3
	mv	s5, a2
	mv	s6, a1
	mv	s0, a0
	sb	zero, 7(sp)
	li	a0, 1
	sb	a0, 6(sp)
	addi	s1, s0, 240
	li	a2, 32
	mv	a0, s0
	mv	a1, s1
	call	tc_hmac_set_key
	mv	a0, s0
	call	tc_hmac_init
	addi	s2, s0, 272
	li	a2, 32
	mv	a0, s0
	mv	a1, s2
	call	tc_hmac_update
	addi	a1, sp, 7
	li	a2, 1
	mv	a0, s0
	call	tc_hmac_update
	beqz	s6, .LBB1_3
# %bb.1:
	beqz	s5, .LBB1_3
# %bb.2:
	mv	a0, s0
	mv	a1, s6
	mv	a2, s5
	call	tc_hmac_update
.LBB1_3:
	snez	a0, s4
	snez	a1, s3
	and	s7, a0, a1
	beqz	s7, .LBB1_5
# %bb.4:
	mv	a0, s0
	mv	a1, s4
	mv	a2, s3
	call	tc_hmac_update
.LBB1_5:
	li	a1, 32
	mv	a0, s1
	mv	a2, s0
	call	tc_hmac_final
	li	a2, 32
	mv	a0, s0
	mv	a1, s1
	call	tc_hmac_set_key
	mv	a0, s0
	call	tc_hmac_init
	li	a2, 32
	mv	a0, s0
	mv	a1, s2
	call	tc_hmac_update
	li	a1, 32
	mv	a0, s2
	mv	a2, s0
	call	tc_hmac_final
	beqz	s6, .LBB1_10
# %bb.6:
	beqz	s5, .LBB1_10
# %bb.7:
	li	a2, 32
	mv	a0, s0
	mv	a1, s1
	call	tc_hmac_set_key
	mv	a0, s0
	call	tc_hmac_init
	li	a2, 32
	mv	a0, s0
	mv	a1, s2
	call	tc_hmac_update
	addi	a1, sp, 6
	li	a2, 1
	mv	a0, s0
	call	tc_hmac_update
	mv	a0, s0
	mv	a1, s6
	mv	a2, s5
	call	tc_hmac_update
	beqz	s7, .LBB1_9
# %bb.8:
	mv	a0, s0
	mv	a1, s4
	mv	a2, s3
	call	tc_hmac_update
.LBB1_9:
	li	a1, 32
	mv	a0, s1
	mv	a2, s0
	call	tc_hmac_final
	li	a2, 32
	mv	a0, s0
	mv	a1, s1
	call	tc_hmac_set_key
	mv	a0, s0
	call	tc_hmac_init
	li	a2, 32
	mv	a0, s0
	mv	a1, s2
	call	tc_hmac_update
	li	a1, 32
	mv	a0, s2
	mv	a2, s0
	call	tc_hmac_final
.LBB1_10:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	update, .Lfunc_end1-update
	.cfi_endproc
                                        # -- End function
	.globl	tc_hmac_prng_reseed             # -- Begin function tc_hmac_prng_reseed
	.p2align	1
	.type	tc_hmac_prng_reseed,@function
tc_hmac_prng_reseed:                    # @tc_hmac_prng_reseed
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	mv	s0, a0
	li	a0, 0
	beqz	s0, .LBB2_9
# %bb.1:
	beqz	a1, .LBB2_9
# %bb.2:
	li	a5, 32
	bltu	a2, a5, .LBB2_9
# %bb.3:
	beqz	a3, .LBB2_6
# %bb.4:
	beqz	a4, .LBB2_8
# %bb.5:
	mv	a0, s0
	j	.LBB2_7
.LBB2_6:
	mv	a0, s0
	li	a4, 0
.LBB2_7:
	call	update
	li	a0, -1
	sw	a0, 304(s0)
	li	a0, 1
	j	.LBB2_9
.LBB2_8:
	li	a0, 0
.LBB2_9:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	tc_hmac_prng_reseed, .Lfunc_end2-tc_hmac_prng_reseed
	.cfi_endproc
                                        # -- End function
	.globl	tc_hmac_prng_generate           # -- Begin function tc_hmac_prng_generate
	.p2align	1
	.type	tc_hmac_prng_generate,@function
tc_hmac_prng_generate:                  # @tc_hmac_prng_generate
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	lui	a3, 1048448
	addi	a4, a3, -1
	addw	a4, a4, a1
	mv	s0, a0
	li	a0, 0
	bltu	a4, a3, .LBB3_10
# %bb.1:
	beqz	s0, .LBB3_10
# %bb.2:
	mv	s4, a2
	beqz	a2, .LBB3_10
# %bb.3:
	lw	a0, 304(s4)
	beqz	a0, .LBB3_9
# %bb.4:
	addi	a0, a0, -1
	sw	a0, 304(s4)
	addi	s2, s4, 240
	addi	s3, s4, 272
	li	s6, 32
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	mv	s5, a1
	li	a2, 32
	mv	a0, s4
	mv	a1, s2
	call	tc_hmac_set_key
	mv	a0, s4
	call	tc_hmac_init
	li	a2, 32
	mv	a0, s4
	mv	a1, s3
	call	tc_hmac_update
	li	a1, 32
	mv	a0, s3
	mv	a2, s4
	call	tc_hmac_final
	mv	s1, s5
	bltu	s5, s6, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	li	s1, 32
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	mv	a0, s0
	mv	a1, s1
	mv	a2, s3
	mv	a3, s1
	call	_copy
	add	s0, s0, s1
	addiw	a1, s5, -32
	bltu	s6, s5, .LBB3_5
# %bb.8:
	mv	a0, s4
	li	a1, 0
	li	a2, 0
	li	a3, 0
	li	a4, 0
	call	update
	li	a0, 1
	j	.LBB3_10
.LBB3_9:
	li	a0, -1
.LBB3_10:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	tc_hmac_prng_generate, .Lfunc_end3-tc_hmac_prng_generate
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
