	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"tinycrypt_ecc_dsa.c"
	.globl	uECC_sign_with_k                # -- Begin function uECC_sign_with_k
	.p2align	1
	.type	uECC_sign_with_k,@function
uECC_sign_with_k:                       # @uECC_sign_with_k
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -240
	.cfi_def_cfa_offset 240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 216(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	sd	s5, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 176(sp)                     # 8-byte Folded Spill
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	s8, 160(sp)                     # 8-byte Folded Spill
	sd	s9, 152(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	mv	s1, a5
	mv	s2, a4
	mv	s9, a3
	mv	s3, a2
	mv	s4, a1
	mv	s8, a0
	addi	a0, sp, 120
	lb	s7, 0(a5)
	lh	s0, 2(a5)
	sd	a0, 72(sp)
	addi	a0, sp, 88
	sd	a0, 80(sp)
	mv	a0, a3
	mv	a1, s7
	call	uECC_vli_isZero
	bnez	a0, .LBB0_5
# %bb.1:
	addi	a0, s0, 31
	srliw	a1, a0, 27
	add	a0, a0, a1
	srai	a0, a0, 5
	addi	s6, s1, 36
	slli	a0, a0, 56
	srai	s5, a0, 56
	mv	a0, s6
	mv	a1, s9
	mv	a2, s5
	call	uECC_vli_cmp
	li	a1, 1
	bne	a0, a1, .LBB0_5
# %bb.2:
	slli	s0, s0, 48
	srli	s0, s0, 48
	addi	a1, sp, 120
	addi	a2, sp, 88
	mv	a0, s9
	mv	a3, s1
	call	regularize_k
	seqz	a0, a0
	slli	a0, a0, 3
	addi	a1, sp, 72
	add	a0, a0, a1
	ld	a2, 0(a0)
	addi	a1, s1, 68
	addi	s0, s0, 1
	slli	a4, s0, 48
	srai	a4, a4, 48
	addi	a0, sp, 8
	li	a3, 0
	mv	a5, s1
	call	EccPoint_mult
	addi	a0, sp, 8
	mv	a1, s7
	call	uECC_vli_isZero
	mv	a1, a0
	li	a0, 0
	bnez	a1, .LBB0_6
# %bb.3:
	call	uECC_get_rng
	beqz	a0, .LBB0_7
# %bb.4:
	addi	a0, sp, 120
	mv	a1, s6
	mv	a2, s5
	call	uECC_generate_random_int
	bnez	a0, .LBB0_8
	j	.LBB0_6
.LBB0_5:
	li	a0, 0
.LBB0_6:
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	ld	s9, 152(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 240
	ret
.LBB0_7:
	addi	a0, sp, 120
	mv	a1, s5
	call	uECC_vli_clear
	li	a0, 1
	sw	a0, 120(sp)
.LBB0_8:
	addi	a2, sp, 120
	mv	a0, s9
	mv	a1, s9
	mv	a3, s6
	mv	a4, s5
	call	uECC_vli_modMult
	mv	a0, s9
	mv	a1, s9
	mv	a2, s6
	mv	a3, s5
	call	uECC_vli_modInv
	addi	a2, sp, 120
	mv	a0, s9
	mv	a1, s9
	mv	a3, s6
	mv	a4, s5
	call	uECC_vli_modMult
	lb	a1, 1(s1)
	addi	a2, sp, 8
	mv	a0, s2
	call	uECC_vli_nativeToBytes
	lh	a0, 2(s1)
	addi	a0, a0, 7
	srliw	a1, a0, 29
	add	a0, a0, a1
	srai	a2, a0, 3
	addi	a0, sp, 120
	mv	a1, s8
	call	uECC_vli_bytesToNative
	slli	a0, s5, 2
	addi	a1, sp, 88
	add	a0, a0, a1
	sw	zero, -4(a0)
	addi	a0, sp, 88
	addi	a1, sp, 8
	mv	a2, s7
	call	uECC_vli_set
	addi	a0, sp, 88
	addi	a1, sp, 120
	addi	a2, sp, 88
	mv	a3, s6
	mv	a4, s5
	call	uECC_vli_modMult
	addi	a0, sp, 120
	mv	a1, s4
	mv	a2, s3
	mv	a3, s1
	call	bits2int
	addi	a0, sp, 88
	addi	a1, sp, 120
	addi	a2, sp, 88
	mv	a3, s6
	mv	a4, s5
	call	uECC_vli_modAdd
	addi	a0, sp, 88
	addi	a1, sp, 88
	mv	a2, s9
	mv	a3, s6
	mv	a4, s5
	call	uECC_vli_modMult
	addi	a0, sp, 88
	mv	a1, s5
	call	uECC_vli_numBits
	lb	a1, 1(s1)
	slli	a3, a1, 3
	mv	a2, a0
	li	a0, 0
	blt	a3, a2, .LBB0_6
# %bb.9:
	add	a0, s2, a1
	addi	a2, sp, 88
	call	uECC_vli_nativeToBytes
	li	a0, 1
	j	.LBB0_6
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function bits2int
	.type	bits2int,@function
bits2int:                               # @bits2int
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
	mv	s3, a3
	lh	s6, 2(a3)
	mv	s4, a1
	mv	s0, a0
	addi	a0, s6, 7
	srliw	a1, a0, 29
	add	a0, a0, a1
	srai	s1, a0, 3
	addi	a0, s6, 31
	srliw	a1, a0, 27
	add	a0, a0, a1
	srai	s5, a0, 5
	bltu	s1, a2, .LBB1_2
# %bb.1:
	mv	s1, a2
.LBB1_2:
	slli	a0, s5, 56
	srai	s2, a0, 56
	mv	a0, s0
	mv	a1, s2
	call	uECC_vli_clear
	mv	a0, s0
	mv	a1, s4
	mv	a2, s1
	call	uECC_vli_bytesToNative
	lh	a0, 2(s3)
	slliw	a1, s1, 3
	bgeu	a0, a1, .LBB1_7
# %bb.3:
	addi	a2, s6, 62
	li	a3, 63
	bltu	a2, a3, .LBB1_6
# %bb.4:
	li	a2, 0
	subw	a0, a1, a0
	slli	s5, s5, 32
	srli	a3, s5, 30
	add	a3, a3, s0
	li	a1, 32
	subw	a1, a1, a0
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	lw	a4, -4(a3)
	addi	a5, a3, -4
	srlw	s1, a4, a0
	or	a2, a2, s1
	sw	a2, -4(a3)
	sllw	a2, a4, a1
	mv	a3, a5
	bltu	s0, a5, .LBB1_5
.LBB1_6:
	addi	s1, s3, 36
	mv	a0, s1
	mv	a1, s0
	mv	a2, s2
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	bne	a0, a1, .LBB1_8
.LBB1_7:
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
.LBB1_8:
	mv	a0, s0
	mv	a1, s0
	mv	a2, s1
	mv	a3, s2
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	uECC_vli_sub
.Lfunc_end1:
	.size	bits2int, .Lfunc_end1-bits2int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_sign                       # -- Begin function uECC_sign
	.p2align	1
	.type	uECC_sign,@function
uECC_sign:                              # @uECC_sign
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	mv	s0, a4
	mv	s2, a3
	mv	s3, a2
	mv	s4, a1
	mv	s5, a0
	addi	s6, a4, 36
	li	s1, 64
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	call	uECC_get_rng
	beqz	a0, .LBB2_7
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	mv	a2, a0
	addi	a0, sp, 32
	li	a1, 64
	jalr	a2
	beqz	a0, .LBB2_7
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	lh	a0, 2(s0)
	addi	a0, a0, 31
	srliw	a1, a0, 27
	add	a0, a0, a1
	slli	a0, a0, 51
	srai	a3, a0, 56
	mv	a0, sp
	addi	a1, sp, 32
	mv	a2, s6
	call	uECC_vli_mmod
	mv	a3, sp
	mv	a0, s5
	mv	a1, s4
	mv	a2, s3
	mv	a4, s2
	mv	a5, s0
	call	uECC_sign_with_k
	bnez	a0, .LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	addiw	s1, s1, -1
	bnez	s1, .LBB2_1
# %bb.5:
	li	a0, 0
	j	.LBB2_7
.LBB2_6:
	li	a0, 1
.LBB2_7:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end2:
	.size	uECC_sign, .Lfunc_end2-uECC_sign
	.cfi_endproc
                                        # -- End function
	.globl	uECC_verify                     # -- Begin function uECC_verify
	.p2align	1
	.type	uECC_verify,@function
uECC_verify:                            # @uECC_verify
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -576
	.cfi_def_cfa_offset 576
	sd	ra, 568(sp)                     # 8-byte Folded Spill
	sd	s0, 560(sp)                     # 8-byte Folded Spill
	sd	s1, 552(sp)                     # 8-byte Folded Spill
	sd	s2, 544(sp)                     # 8-byte Folded Spill
	sd	s3, 536(sp)                     # 8-byte Folded Spill
	sd	s4, 528(sp)                     # 8-byte Folded Spill
	sd	s5, 520(sp)                     # 8-byte Folded Spill
	sd	s6, 512(sp)                     # 8-byte Folded Spill
	sd	s7, 504(sp)                     # 8-byte Folded Spill
	sd	s8, 496(sp)                     # 8-byte Folded Spill
	sd	s9, 488(sp)                     # 8-byte Folded Spill
	sd	s10, 480(sp)                    # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	mv	s7, a4
	lh	a4, 2(a4)
	mv	s1, a3
	mv	s4, a2
	mv	s5, a1
	mv	s0, a0
	lb	s6, 0(s7)
	addi	a4, a4, 31
	srliw	a0, a4, 27
	add	a0, a0, a4
	srai	a0, a0, 5
	slli	a0, a0, 56
	srai	s2, a0, 56
	addi	s10, s2, -1
	slli	s10, s10, 2
	addi	a0, sp, 288
	add	a0, a0, s10
	sw	zero, 0(a0)
	addi	a0, sp, 32
	add	a0, a0, s10
	sw	zero, 0(a0)
	lb	a2, 1(s7)
	mv	a0, sp
	add	a0, a0, s10
	sw	zero, 0(a0)
	addi	a0, sp, 64
	addi	s8, sp, 64
	mv	a1, s0
	call	uECC_vli_bytesToNative
	lb	a2, 1(s7)
	slli	s9, s6, 2
	add	s8, s8, s9
	add	a1, s0, a2
	mv	a0, s8
	call	uECC_vli_bytesToNative
	lb	a2, 1(s7)
	addi	a0, sp, 32
	mv	a1, s1
	call	uECC_vli_bytesToNative
	lb	a2, 1(s7)
	add	a1, s1, a2
	mv	a0, sp
	call	uECC_vli_bytesToNative
	addi	a0, sp, 32
	mv	a1, s6
	call	uECC_vli_isZero
	mv	a1, a0
	li	a0, 0
	bnez	a1, .LBB3_15
# %bb.1:
	mv	a0, sp
	mv	a1, s6
	call	uECC_vli_isZero
	bnez	a0, .LBB3_14
# %bb.2:
	addi	s3, s7, 36
	addi	a1, sp, 32
	mv	a0, s3
	mv	a2, s2
	call	uECC_vli_cmp_unsafe
	li	s0, 1
	bne	a0, s0, .LBB3_14
# %bb.3:
	mv	a1, sp
	mv	a0, s3
	mv	a2, s2
	call	uECC_vli_cmp_unsafe
	bne	a0, s0, .LBB3_14
# %bb.4:
	addi	a0, sp, 384
	mv	a1, sp
	mv	a2, s3
	mv	a3, s2
	call	uECC_vli_modInv
	addi	a0, sp, 448
	add	a0, a0, s10
	sw	zero, 0(a0)
	addi	a0, sp, 448
	mv	a1, s5
	mv	a2, s4
	mv	a3, s7
	call	bits2int
	addi	a0, sp, 448
	addi	a1, sp, 448
	addi	a2, sp, 384
	mv	a3, s3
	mv	a4, s2
	call	uECC_vli_modMult
	addi	a0, sp, 416
	addi	a1, sp, 32
	addi	a2, sp, 384
	mv	a3, s3
	mv	a4, s2
	call	uECC_vli_modMult
	addi	s5, sp, 320
	addi	a0, sp, 320
	addi	a1, sp, 64
	addi	s10, sp, 64
	mv	a2, s6
	call	uECC_vli_set
	add	s0, s5, s9
	mv	a0, s0
	mv	a1, s8
	mv	a2, s6
	call	uECC_vli_set
	addi	s1, s7, 68
	addi	a0, sp, 224
	mv	a1, s1
	mv	a2, s6
	call	uECC_vli_set
	add	a1, s1, s9
	addi	a0, sp, 192
	mv	a2, s6
	call	uECC_vli_set
	addi	s4, s7, 4
	addi	a0, sp, 384
	addi	a1, sp, 320
	addi	a2, sp, 224
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	addi	a0, sp, 224
	addi	a1, sp, 192
	addi	a2, sp, 320
	mv	a3, s0
	mv	a4, s7
	call	XYcZ_add
	addi	a0, sp, 384
	addi	a1, sp, 384
	mv	a2, s4
	mv	a3, s6
	call	uECC_vli_modInv
	addi	a0, sp, 320
	addi	a2, sp, 384
	mv	a1, s0
	mv	a3, s7
	call	apply_z
	sd	zero, 128(sp)
	sd	s1, 136(sp)
	sd	s10, 144(sp)
	sd	s5, 152(sp)
	addi	a0, sp, 448
	mv	a1, s2
	call	uECC_vli_numBits
	mv	s10, a0
	addi	a0, sp, 416
	mv	a1, s2
	call	uECC_vli_numBits
	blt	a0, s10, .LBB3_6
# %bb.5:
	mv	s10, a0
.LBB3_6:
	addi	a0, s10, -1
	slli	a0, a0, 48
	srai	s1, a0, 48
	addi	a0, sp, 448
	mv	a1, s1
	call	uECC_vli_testBit
	snez	s0, a0
	addi	a0, sp, 416
	mv	a1, s1
	call	uECC_vli_testBit
	snez	a0, a0
	slli	s0, s0, 3
	slli	a0, a0, 4
	or	a0, a0, s0
	addi	s8, sp, 128
	add	a0, a0, s8
	ld	s1, 0(a0)
	addi	a0, sp, 288
	mv	a1, s1
	mv	a2, s6
	call	uECC_vli_set
	add	a1, s1, s9
	addi	a0, sp, 256
	mv	a2, s6
	call	uECC_vli_set
	addi	a0, sp, 384
	mv	a1, s6
	call	uECC_vli_clear
	li	s5, 1
	addi	s0, s10, -2
	slli	s0, s0, 48
	sw	s5, 384(sp)
	bltz	s0, .LBB3_11
# %bb.7:
	srai	s0, s0, 48
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	ld	a4, 168(s7)
	addi	a0, sp, 288
	addi	a1, sp, 256
	addi	a2, sp, 384
	mv	a3, s7
	jalr	a4
	slli	a0, s0, 48
	srai	s10, a0, 48
	addi	a0, sp, 448
	mv	a1, s10
	call	uECC_vli_testBit
	snez	s1, a0
	addi	a0, sp, 416
	mv	a1, s10
	call	uECC_vli_testBit
	snez	a0, a0
	slli	s1, s1, 3
	slli	a0, a0, 4
	or	a0, a0, s1
	add	a0, a0, s8
	ld	s1, 0(a0)
	beqz	s1, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	addi	a0, sp, 224
	mv	a1, s1
	mv	a2, s6
	call	uECC_vli_set
	add	a1, s1, s9
	addi	a0, sp, 192
	mv	a2, s6
	call	uECC_vli_set
	addi	a0, sp, 224
	addi	a1, sp, 192
	addi	a2, sp, 384
	mv	a3, s7
	call	apply_z
	addi	a0, sp, 160
	addi	a1, sp, 288
	addi	a2, sp, 224
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	addi	a0, sp, 224
	addi	a1, sp, 192
	addi	a2, sp, 288
	addi	a3, sp, 256
	mv	a4, s7
	call	XYcZ_add
	addi	a0, sp, 384
	addi	a1, sp, 384
	addi	a2, sp, 160
	mv	a3, s7
	call	uECC_vli_modMult_fast
.LBB3_10:                               #   in Loop: Header=BB3_8 Depth=1
	addi	s0, s0, -1
	bgtz	s10, .LBB3_8
.LBB3_11:
	addi	a0, sp, 384
	addi	a1, sp, 384
	mv	a2, s4
	mv	a3, s6
	call	uECC_vli_modInv
	addi	a0, sp, 288
	addi	a1, sp, 256
	addi	a2, sp, 384
	mv	a3, s7
	call	apply_z
	addi	a1, sp, 288
	mv	a0, s3
	mv	a2, s2
	call	uECC_vli_cmp_unsafe
	beq	a0, s5, .LBB3_13
# %bb.12:
	addi	a0, sp, 288
	addi	a1, sp, 288
	mv	a2, s3
	mv	a3, s2
	call	uECC_vli_sub
.LBB3_13:
	addi	a0, sp, 288
	addi	a1, sp, 32
	mv	a2, s6
	call	uECC_vli_equal
	seqz	a0, a0
	j	.LBB3_15
.LBB3_14:
	li	a0, 0
.LBB3_15:
	ld	ra, 568(sp)                     # 8-byte Folded Reload
	ld	s0, 560(sp)                     # 8-byte Folded Reload
	ld	s1, 552(sp)                     # 8-byte Folded Reload
	ld	s2, 544(sp)                     # 8-byte Folded Reload
	ld	s3, 536(sp)                     # 8-byte Folded Reload
	ld	s4, 528(sp)                     # 8-byte Folded Reload
	ld	s5, 520(sp)                     # 8-byte Folded Reload
	ld	s6, 512(sp)                     # 8-byte Folded Reload
	ld	s7, 504(sp)                     # 8-byte Folded Reload
	ld	s8, 496(sp)                     # 8-byte Folded Reload
	ld	s9, 488(sp)                     # 8-byte Folded Reload
	ld	s10, 480(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 576
	ret
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
