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
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	ld	a0, -32(s0)
	beqz	a0, .LBB0_3
	j	.LBB0_1
.LBB0_1:
	ld	a0, -40(s0)
	beqz	a0, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	li	a0, 1
	bnez	a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_5
.LBB0_4:
	ld	a0, -32(s0)
	addi	a0, a0, 240
	li	a1, 0
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	li	a2, 32
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	call	_set
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a0, -32(s0)
	addi	a0, a0, 272
	li	a1, 1
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	call	_set
	ld	a4, -64(s0)                     # 8-byte Folded Reload
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	lw	a2, -44(s0)
	mv	a3, a4
	call	update
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	ld	a2, -32(s0)
	sw	a1, 304(a2)
	sw	a0, -20(s0)
	j	.LBB0_5
.LBB0_5:
	lw	a0, -20(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
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
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x14
                                        # kill: def $x15 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
	sd	a3, -48(s0)
	sw	a4, -52(s0)
	li	a0, 0
	sb	a0, -53(s0)
	li	a0, 1
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	sb	a0, -54(s0)
	ld	a0, -24(s0)
	addi	a1, a0, 240
	li	a2, 32
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	call	tc_hmac_set_key
	ld	a0, -24(s0)
	call	tc_hmac_init
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	addi	a1, a0, 272
	call	tc_hmac_update
	ld	a2, -64(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	addi	a1, s0, -53
	call	tc_hmac_update
	ld	a0, -32(s0)
	beqz	a0, .LBB1_3
	j	.LBB1_1
.LBB1_1:
	lw	a0, -36(s0)
	beqz	a0, .LBB1_3
	j	.LBB1_2
.LBB1_2:
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	lw	a2, -36(s0)
	call	tc_hmac_update
	j	.LBB1_3
.LBB1_3:
	ld	a0, -48(s0)
	beqz	a0, .LBB1_6
	j	.LBB1_4
.LBB1_4:
	lw	a0, -52(s0)
	beqz	a0, .LBB1_6
	j	.LBB1_5
.LBB1_5:
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	lw	a2, -52(s0)
	call	tc_hmac_update
	j	.LBB1_6
.LBB1_6:
	ld	a2, -24(s0)
	addi	a0, a2, 240
	li	a1, 32
	sd	a1, -80(s0)                     # 8-byte Folded Spill
	call	tc_hmac_final
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	addi	a1, a0, 240
	call	tc_hmac_set_key
	ld	a0, -24(s0)
	call	tc_hmac_init
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	addi	a1, a0, 272
	call	tc_hmac_update
	ld	a1, -80(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)
	addi	a0, a2, 272
	call	tc_hmac_final
	ld	a0, -32(s0)
	beqz	a0, .LBB1_8
	j	.LBB1_7
.LBB1_7:
	lw	a0, -36(s0)
	bnez	a0, .LBB1_9
	j	.LBB1_8
.LBB1_8:
	j	.LBB1_13
.LBB1_9:
	ld	a0, -24(s0)
	addi	a1, a0, 240
	li	a2, 32
	sd	a2, -88(s0)                     # 8-byte Folded Spill
	call	tc_hmac_set_key
	ld	a0, -24(s0)
	call	tc_hmac_init
	ld	a2, -88(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	addi	a1, a0, 272
	call	tc_hmac_update
	ld	a0, -24(s0)
	addi	a1, s0, -54
	li	a2, 1
	call	tc_hmac_update
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	lw	a2, -36(s0)
	call	tc_hmac_update
	ld	a0, -48(s0)
	beqz	a0, .LBB1_12
	j	.LBB1_10
.LBB1_10:
	lw	a0, -52(s0)
	beqz	a0, .LBB1_12
	j	.LBB1_11
.LBB1_11:
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	lw	a2, -52(s0)
	call	tc_hmac_update
	j	.LBB1_12
.LBB1_12:
	ld	a2, -24(s0)
	addi	a0, a2, 240
	li	a1, 32
	sd	a1, -96(s0)                     # 8-byte Folded Spill
	call	tc_hmac_final
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	addi	a1, a0, 240
	call	tc_hmac_set_key
	ld	a0, -24(s0)
	call	tc_hmac_init
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	addi	a1, a0, 272
	call	tc_hmac_update
	ld	a1, -96(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)
	addi	a0, a2, 272
	call	tc_hmac_final
	j	.LBB1_13
.LBB1_13:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
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
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x14
                                        # kill: def $x15 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	sd	a3, -56(s0)
	sw	a4, -60(s0)
	ld	a0, -32(s0)
	beqz	a0, .LBB2_4
	j	.LBB2_1
.LBB2_1:
	ld	a0, -40(s0)
	beqz	a0, .LBB2_4
	j	.LBB2_2
.LBB2_2:
	lw	a0, -44(s0)
	li	a1, 32
	bltu	a0, a1, .LBB2_4
	j	.LBB2_3
.LBB2_3:
	li	a0, 1
	bnez	a0, .LBB2_5
	j	.LBB2_4
.LBB2_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_13
.LBB2_5:
	ld	a0, -56(s0)
	beqz	a0, .LBB2_11
	j	.LBB2_6
.LBB2_6:
	lw	a0, -60(s0)
	beqz	a0, .LBB2_8
	j	.LBB2_7
.LBB2_7:
	li	a0, 1
	bnez	a0, .LBB2_9
	j	.LBB2_8
.LBB2_8:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_13
.LBB2_9:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	lw	a2, -44(s0)
	ld	a3, -56(s0)
	lw	a4, -60(s0)
	call	update
	j	.LBB2_10
.LBB2_10:
	j	.LBB2_12
.LBB2_11:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	lw	a2, -44(s0)
	li	a4, 0
	mv	a3, a4
	call	update
	j	.LBB2_12
.LBB2_12:
	ld	a1, -32(s0)
	li	a0, -1
	sw	a0, 304(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB2_13
.LBB2_13:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
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
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	sd	a2, -48(s0)
	ld	a0, -32(s0)
	beqz	a0, .LBB3_4
	j	.LBB3_1
.LBB3_1:
	ld	a0, -48(s0)
	beqz	a0, .LBB3_4
	j	.LBB3_2
.LBB3_2:
	lw	a0, -36(s0)
	beqz	a0, .LBB3_4
	j	.LBB3_3
.LBB3_3:
	lw	a0, -36(s0)
	lui	a1, 128
	addiw	a1, a1, 1
	bltu	a0, a1, .LBB3_5
	j	.LBB3_4
.LBB3_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB3_18
.LBB3_5:
	ld	a0, -48(s0)
	lw	a0, 304(a0)
	bnez	a0, .LBB3_7
	j	.LBB3_6
.LBB3_6:
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB3_18
.LBB3_7:
	j	.LBB3_8
.LBB3_8:
	ld	a1, -48(s0)
	lw	a0, 304(a1)
	addiw	a0, a0, -1
	sw	a0, 304(a1)
	j	.LBB3_9
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	beqz	a0, .LBB3_17
	j	.LBB3_10
.LBB3_10:                               #   in Loop: Header=BB3_9 Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, 240
	li	a2, 32
	sd	a2, -64(s0)                     # 8-byte Folded Spill
	call	tc_hmac_set_key
	ld	a0, -48(s0)
	call	tc_hmac_init
	ld	a2, -64(s0)                     # 8-byte Folded Reload
	ld	a0, -48(s0)
	addi	a1, a0, 272
	call	tc_hmac_update
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	ld	a2, -48(s0)
	addi	a0, a2, 272
	call	tc_hmac_final
	lw	a1, -36(s0)
	li	a0, 31
	bltu	a0, a1, .LBB3_12
	j	.LBB3_11
.LBB3_11:                               #   in Loop: Header=BB3_9 Depth=1
	lw	a0, -36(s0)
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB3_13
.LBB3_12:                               #   in Loop: Header=BB3_9 Depth=1
	li	a0, 32
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB3_13
.LBB3_13:                               #   in Loop: Header=BB3_9 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	sw	a0, -52(s0)
	ld	a0, -32(s0)
	lw	a3, -52(s0)
	ld	a1, -48(s0)
	addi	a2, a1, 272
	mv	a1, a3
	call	_copy
	lwu	a1, -52(s0)
	ld	a0, -32(s0)
	add	a0, a0, a1
	sd	a0, -32(s0)
	lw	a0, -36(s0)
	li	a1, 33
	bltu	a0, a1, .LBB3_15
	j	.LBB3_14
.LBB3_14:                               #   in Loop: Header=BB3_9 Depth=1
	lw	a0, -36(s0)
	addiw	a0, a0, -32
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB3_16
.LBB3_15:                               #   in Loop: Header=BB3_9 Depth=1
	li	a0, 0
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB3_16
.LBB3_16:                               #   in Loop: Header=BB3_9 Depth=1
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sw	a0, -36(s0)
	j	.LBB3_9
.LBB3_17:
	ld	a0, -48(s0)
	li	a4, 0
	mv	a1, a4
	mv	a2, a4
	mv	a3, a4
	call	update
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB3_18
.LBB3_18:
	lw	a0, -20(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end3:
	.size	tc_hmac_prng_generate, .Lfunc_end3-tc_hmac_prng_generate
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _set
	.addrsig_sym update
	.addrsig_sym tc_hmac_set_key
	.addrsig_sym tc_hmac_init
	.addrsig_sym tc_hmac_update
	.addrsig_sym tc_hmac_final
	.addrsig_sym _copy
