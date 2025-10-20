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
	addi	sp, sp, -256
	.cfi_def_cfa_offset 256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 256
	.cfi_def_cfa s0, 0
                                        # kill: def $x16 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	sd	a3, -56(s0)
	sd	a4, -64(s0)
	sd	a5, -72(s0)
	addi	a0, s0, -104
	sd	a0, -152(s0)
	addi	a0, s0, -136
	sd	a0, -144(s0)
	ld	a0, -72(s0)
	lbu	a0, 0(a0)
	sb	a0, -221(s0)
	ld	a0, -72(s0)
	lh	a0, 2(a0)
	addiw	a0, a0, 31
	srliw	a1, a0, 27
	addw	a0, a0, a1
	srli	a0, a0, 5
	sb	a0, -222(s0)
	ld	a0, -72(s0)
	lh	a0, 2(a0)
	sh	a0, -224(s0)
	ld	a0, -56(s0)
	lb	a1, -221(s0)
	call	uECC_vli_isZero
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	ld	a0, -72(s0)
	addi	a0, a0, 36
	ld	a1, -56(s0)
	lb	a2, -222(s0)
	call	uECC_vli_cmp
	li	a1, 1
	beq	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_13
.LBB0_3:
	ld	a0, -56(s0)
	ld	a3, -72(s0)
	addi	a1, s0, -104
	addi	a2, s0, -136
	call	regularize_k
	sw	a0, -220(s0)
	ld	a5, -72(s0)
	addi	a1, a5, 68
	lw	a0, -220(s0)
	seqz	a0, a0
	slli	a2, a0, 3
	addi	a0, s0, -152
	add	a0, a0, a2
	ld	a2, 0(a0)
	lh	a0, -224(s0)
	addiw	a0, a0, 1
	slli	a0, a0, 48
	srai	a4, a0, 48
	addi	a0, s0, -216
	sd	a0, -232(s0)                    # 8-byte Folded Spill
	li	a3, 0
	call	EccPoint_mult
	ld	a0, -232(s0)                    # 8-byte Folded Reload
	lb	a1, -221(s0)
	call	uECC_vli_isZero
	beqz	a0, .LBB0_5
	j	.LBB0_4
.LBB0_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_13
.LBB0_5:
	call	uECC_get_rng
	bnez	a0, .LBB0_7
	j	.LBB0_6
.LBB0_6:
	lb	a1, -222(s0)
	addi	a0, s0, -104
	call	uECC_vli_clear
	li	a0, 1
	sw	a0, -104(s0)
	j	.LBB0_10
.LBB0_7:
	ld	a0, -72(s0)
	addi	a1, a0, 36
	lb	a2, -222(s0)
	addi	a0, s0, -104
	call	uECC_generate_random_int
	bnez	a0, .LBB0_9
	j	.LBB0_8
.LBB0_8:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_13
.LBB0_9:
	j	.LBB0_10
.LBB0_10:
	ld	a1, -56(s0)
	ld	a0, -72(s0)
	addi	a3, a0, 36
	lb	a4, -222(s0)
	addi	a2, s0, -104
	sd	a2, -248(s0)                    # 8-byte Folded Spill
	mv	a0, a1
	call	uECC_vli_modMult
	ld	a1, -56(s0)
	ld	a0, -72(s0)
	addi	a2, a0, 36
	lb	a3, -222(s0)
	mv	a0, a1
	call	uECC_vli_modInv
	ld	a2, -248(s0)                    # 8-byte Folded Reload
	ld	a1, -56(s0)
	ld	a0, -72(s0)
	addi	a3, a0, 36
	lb	a4, -222(s0)
	mv	a0, a1
	call	uECC_vli_modMult
	ld	a0, -64(s0)
	ld	a1, -72(s0)
	lb	a1, 1(a1)
	addi	a2, s0, -216
	sd	a2, -256(s0)                    # 8-byte Folded Spill
	call	uECC_vli_nativeToBytes
	ld	a0, -248(s0)                    # 8-byte Folded Reload
	ld	a1, -32(s0)
	ld	a2, -72(s0)
	lh	a2, 2(a2)
	addi	a2, a2, 7
	srliw	a3, a2, 29
	add	a2, a2, a3
	srai	a2, a2, 3
	call	uECC_vli_bytesToNative
	ld	a1, -256(s0)                    # 8-byte Folded Reload
	lb	a0, -222(s0)
	slli	a2, a0, 2
	addi	a0, s0, -136
	sd	a0, -240(s0)                    # 8-byte Folded Spill
	add	a3, a2, a0
	li	a2, 0
	sw	a2, -4(a3)
	lb	a2, -221(s0)
	call	uECC_vli_set
	ld	a1, -248(s0)                    # 8-byte Folded Reload
	ld	a2, -240(s0)                    # 8-byte Folded Reload
	ld	a0, -72(s0)
	addi	a3, a0, 36
	lb	a4, -222(s0)
	mv	a0, a2
	call	uECC_vli_modMult
	ld	a0, -248(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	lw	a2, -44(s0)
	ld	a3, -72(s0)
	call	bits2int
	ld	a1, -248(s0)                    # 8-byte Folded Reload
	ld	a2, -240(s0)                    # 8-byte Folded Reload
	ld	a0, -72(s0)
	addi	a3, a0, 36
	lb	a4, -222(s0)
	mv	a0, a2
	call	uECC_vli_modAdd
	ld	a1, -240(s0)                    # 8-byte Folded Reload
	ld	a2, -56(s0)
	ld	a0, -72(s0)
	addi	a3, a0, 36
	lb	a4, -222(s0)
	mv	a0, a1
	call	uECC_vli_modMult
	ld	a0, -240(s0)                    # 8-byte Folded Reload
	lb	a1, -222(s0)
	call	uECC_vli_numBits
	mv	a1, a0
	ld	a0, -72(s0)
	lb	a0, 1(a0)
	slli	a0, a0, 3
	bge	a0, a1, .LBB0_12
	j	.LBB0_11
.LBB0_11:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_13
.LBB0_12:
	ld	a0, -64(s0)
	ld	a1, -72(s0)
	lb	a1, 1(a1)
	add	a0, a0, a1
	addi	a2, s0, -136
	call	uECC_vli_nativeToBytes
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB0_13
.LBB0_13:
	lw	a0, -20(s0)
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	uECC_sign_with_k, .Lfunc_end0-uECC_sign_with_k
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function bits2int
	.type	bits2int,@function
bits2int:                               # @bits2int
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
                                        # kill: def $x14 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
	sd	a3, -48(s0)
	ld	a0, -48(s0)
	lh	a0, 2(a0)
	addi	a0, a0, 7
	srliw	a1, a0, 29
	add	a0, a0, a1
	srli	a0, a0, 3
	sw	a0, -52(s0)
	ld	a0, -48(s0)
	lh	a0, 2(a0)
	addi	a0, a0, 31
	srliw	a1, a0, 27
	add	a0, a0, a1
	srli	a0, a0, 5
	sw	a0, -56(s0)
	lw	a1, -36(s0)
	lw	a0, -52(s0)
	bgeu	a0, a1, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	lw	a0, -52(s0)
	sw	a0, -36(s0)
	j	.LBB1_2
.LBB1_2:
	ld	a0, -24(s0)
	lb	a1, -56(s0)
	call	uECC_vli_clear
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	lw	a2, -36(s0)
	call	uECC_vli_bytesToNative
	lw	a0, -36(s0)
	slliw	a1, a0, 3
	ld	a0, -48(s0)
	lh	a0, 2(a0)
	bltu	a0, a1, .LBB1_4
	j	.LBB1_3
.LBB1_3:
	j	.LBB1_9
.LBB1_4:
	lw	a0, -36(s0)
	slliw	a0, a0, 3
	ld	a1, -48(s0)
	lh	a1, 2(a1)
	subw	a0, a0, a1
	sw	a0, -60(s0)
	li	a0, 0
	sw	a0, -64(s0)
	ld	a0, -24(s0)
	lwu	a1, -56(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	sd	a0, -72(s0)
	j	.LBB1_5
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld	a1, -72(s0)
	addi	a0, a1, -4
	sd	a0, -72(s0)
	ld	a0, -24(s0)
	bgeu	a0, a1, .LBB1_7
	j	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=1
	ld	a0, -72(s0)
	lw	a0, 0(a0)
	sw	a0, -76(s0)
	lw	a0, -76(s0)
	lwu	a1, -60(s0)
	srlw	a0, a0, a1
	lw	a1, -64(s0)
	or	a0, a0, a1
	ld	a1, -72(s0)
	sw	a0, 0(a1)
	lw	a0, -76(s0)
	lw	a1, -60(s0)
	negw	a1, a1
	sllw	a0, a0, a1
	sw	a0, -64(s0)
	j	.LBB1_5
.LBB1_7:
	ld	a0, -48(s0)
	addi	a0, a0, 36
	ld	a1, -24(s0)
	lb	a2, -56(s0)
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	beq	a0, a1, .LBB1_9
	j	.LBB1_8
.LBB1_8:
	ld	a1, -24(s0)
	ld	a0, -48(s0)
	addi	a2, a0, 36
	lb	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_sub
	j	.LBB1_9
.LBB1_9:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
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
	addi	sp, sp, -192
	.cfi_def_cfa_offset 192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 192
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	sd	a3, -56(s0)
	sd	a4, -64(s0)
	li	a0, 0
	sw	a0, -164(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -164(s0)
	li	a0, 63
	bltu	a0, a1, .LBB2_9
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	call	uECC_get_rng
	sd	a0, -176(s0)
	ld	a0, -176(s0)
	beqz	a0, .LBB2_4
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a2, -176(s0)
	addi	a0, s0, -128
	li	a1, 64
	jalr	a2
	bnez	a0, .LBB2_5
	j	.LBB2_4
.LBB2_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_10
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -64(s0)
	addi	a2, a0, 36
	lh	a0, 2(a0)
	addiw	a0, a0, 31
	srliw	a1, a0, 27
	addw	a0, a0, a1
	slli	a0, a0, 51
	srai	a3, a0, 56
	addi	a0, s0, -160
	sd	a0, -184(s0)                    # 8-byte Folded Spill
	addi	a1, s0, -128
	call	uECC_vli_mmod
	ld	a3, -184(s0)                    # 8-byte Folded Reload
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	lw	a2, -44(s0)
	ld	a4, -56(s0)
	ld	a5, -64(s0)
	call	uECC_sign_with_k
	beqz	a0, .LBB2_7
	j	.LBB2_6
.LBB2_6:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB2_10
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	j	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -164(s0)
	addiw	a0, a0, 1
	sw	a0, -164(s0)
	j	.LBB2_1
.LBB2_9:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_10
.LBB2_10:
	lw	a0, -20(s0)
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
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
	addi	sp, sp, -736
	.cfi_def_cfa_offset 736
	sd	ra, 728(sp)                     # 8-byte Folded Spill
	sd	s0, 720(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 736
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	sd	a3, -56(s0)
	sd	a4, -64(s0)
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	sb	a0, -557(s0)
	ld	a0, -64(s0)
	lh	a0, 2(a0)
	addiw	a0, a0, 31
	srliw	a1, a0, 27
	addw	a0, a0, a1
	srli	a0, a0, 5
	sb	a0, -558(s0)
	lb	a0, -558(s0)
	slli	a0, a0, 2
	addi	a1, s0, -256
	add	a1, a1, a0
	li	a0, 0
	sw	a0, -4(a1)
	lb	a1, -558(s0)
	slli	a1, a1, 2
	addi	a2, s0, -524
	sd	a2, -576(s0)                    # 8-byte Folded Spill
	add	a1, a1, a2
	sw	a0, -4(a1)
	lb	a1, -558(s0)
	slli	a1, a1, 2
	addi	a2, s0, -556
	sd	a2, -584(s0)                    # 8-byte Folded Spill
	add	a1, a1, a2
	sw	a0, -4(a1)
	ld	a1, -32(s0)
	ld	a0, -64(s0)
	lb	a2, 1(a0)
	addi	a0, s0, -492
	sd	a0, -592(s0)                    # 8-byte Folded Spill
	call	uECC_vli_bytesToNative
	ld	a0, -592(s0)                    # 8-byte Folded Reload
	lb	a1, -557(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	ld	a1, -32(s0)
	ld	a2, -64(s0)
	lb	a2, 1(a2)
	add	a1, a1, a2
	call	uECC_vli_bytesToNative
	ld	a0, -576(s0)                    # 8-byte Folded Reload
	ld	a1, -56(s0)
	ld	a2, -64(s0)
	lb	a2, 1(a2)
	call	uECC_vli_bytesToNative
	ld	a0, -584(s0)                    # 8-byte Folded Reload
	ld	a1, -56(s0)
	ld	a2, -64(s0)
	lb	a2, 1(a2)
	add	a1, a1, a2
	call	uECC_vli_bytesToNative
	ld	a0, -576(s0)                    # 8-byte Folded Reload
	lb	a1, -557(s0)
	call	uECC_vli_isZero
	bnez	a0, .LBB3_2
	j	.LBB3_1
.LBB3_1:
	lb	a1, -557(s0)
	addi	a0, s0, -556
	call	uECC_vli_isZero
	beqz	a0, .LBB3_3
	j	.LBB3_2
.LBB3_2:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB3_15
.LBB3_3:
	ld	a0, -64(s0)
	addi	a0, a0, 36
	lb	a2, -558(s0)
	addi	a1, s0, -524
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	bne	a0, a1, .LBB3_5
	j	.LBB3_4
.LBB3_4:
	ld	a0, -64(s0)
	addi	a0, a0, 36
	lb	a2, -558(s0)
	addi	a1, s0, -556
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	beq	a0, a1, .LBB3_6
	j	.LBB3_5
.LBB3_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB3_15
.LBB3_6:
	ld	a0, -64(s0)
	addi	a2, a0, 36
	lb	a3, -558(s0)
	addi	a0, s0, -160
	sd	a0, -600(s0)                    # 8-byte Folded Spill
	addi	a1, s0, -556
	call	uECC_vli_modInv
	lb	a0, -558(s0)
	slli	a1, a0, 2
	addi	a0, s0, -96
	sd	a0, -624(s0)                    # 8-byte Folded Spill
	add	a2, a1, a0
	li	a1, 0
	sd	a1, -656(s0)                    # 8-byte Folded Spill
	sw	a1, -4(a2)
	ld	a1, -40(s0)
	lw	a2, -44(s0)
	ld	a3, -64(s0)
	call	bits2int
	ld	a1, -624(s0)                    # 8-byte Folded Reload
	ld	a2, -600(s0)                    # 8-byte Folded Reload
	ld	a0, -64(s0)
	addi	a3, a0, 36
	lb	a4, -558(s0)
	mv	a0, a1
	call	uECC_vli_modMult
	ld	a2, -600(s0)                    # 8-byte Folded Reload
	ld	a0, -64(s0)
	addi	a3, a0, 36
	lb	a4, -558(s0)
	addi	a0, s0, -128
	sd	a0, -616(s0)                    # 8-byte Folded Spill
	addi	a1, s0, -524
	call	uECC_vli_modMult
	lb	a2, -557(s0)
	addi	a0, s0, -224
	sd	a0, -640(s0)                    # 8-byte Folded Spill
	addi	a1, s0, -492
	sd	a1, -648(s0)                    # 8-byte Folded Spill
	call	uECC_vli_set
	ld	a1, -648(s0)                    # 8-byte Folded Reload
	ld	a0, -640(s0)                    # 8-byte Folded Reload
	lb	a2, -557(s0)
	slli	a3, a2, 2
	add	a0, a0, a3
	add	a1, a1, a3
	call	uECC_vli_set
	ld	a0, -64(s0)
	addi	a1, a0, 68
	lb	a2, -557(s0)
	addi	a0, s0, -320
	sd	a0, -672(s0)                    # 8-byte Folded Spill
	call	uECC_vli_set
	ld	a0, -64(s0)
	lb	a2, -557(s0)
	slli	a1, a2, 2
	add	a0, a0, a1
	addi	a1, a0, 68
	addi	a0, s0, -352
	sd	a0, -664(s0)                    # 8-byte Folded Spill
	call	uECC_vli_set
	ld	a2, -672(s0)                    # 8-byte Folded Reload
	ld	a1, -640(s0)                    # 8-byte Folded Reload
	ld	a0, -600(s0)                    # 8-byte Folded Reload
	ld	a3, -64(s0)
	addi	a3, a3, 4
	lb	a4, -557(s0)
	call	uECC_vli_modSub
	ld	a0, -672(s0)                    # 8-byte Folded Reload
	ld	a1, -664(s0)                    # 8-byte Folded Reload
	ld	a2, -640(s0)                    # 8-byte Folded Reload
	lb	a3, -557(s0)
	slli	a3, a3, 2
	add	a3, a3, a2
	ld	a4, -64(s0)
	call	XYcZ_add
	ld	a1, -600(s0)                    # 8-byte Folded Reload
	ld	a0, -64(s0)
	addi	a2, a0, 4
	lb	a3, -557(s0)
	mv	a0, a1
	call	uECC_vli_modInv
	ld	a0, -640(s0)                    # 8-byte Folded Reload
	ld	a2, -600(s0)                    # 8-byte Folded Reload
	lb	a1, -557(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	ld	a3, -64(s0)
	call	apply_z
	ld	a3, -656(s0)                    # 8-byte Folded Reload
	ld	a2, -648(s0)                    # 8-byte Folded Reload
	ld	a1, -640(s0)                    # 8-byte Folded Reload
	ld	a0, -624(s0)                    # 8-byte Folded Reload
	sd	a3, -416(s0)
	ld	a3, -64(s0)
	addi	a3, a3, 68
	sd	a3, -408(s0)
	sd	a2, -400(s0)
	sd	a1, -392(s0)
	lb	a1, -558(s0)
	call	uECC_vli_numBits
	mv	a1, a0
	ld	a0, -616(s0)                    # 8-byte Folded Reload
	sd	a1, -632(s0)                    # 8-byte Folded Spill
	lb	a1, -558(s0)
	call	uECC_vli_numBits
	mv	a1, a0
	ld	a0, -632(s0)                    # 8-byte Folded Reload
	call	smax
	mv	a1, a0
	ld	a0, -624(s0)                    # 8-byte Folded Reload
	sh	a1, -426(s0)
	lh	a1, -426(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 48
	srai	a1, a1, 48
	call	uECC_vli_testBit
	mv	a1, a0
	ld	a0, -616(s0)                    # 8-byte Folded Reload
	snez	a1, a1
	sd	a1, -608(s0)                    # 8-byte Folded Spill
	lh	a1, -426(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 48
	srai	a1, a1, 48
	call	uECC_vli_testBit
	ld	a1, -608(s0)                    # 8-byte Folded Reload
	snez	a0, a0
	slli	a1, a1, 3
	slli	a0, a0, 4
	or	a1, a1, a0
	addi	a0, s0, -416
	add	a0, a0, a1
	ld	a0, 0(a0)
	sd	a0, -424(s0)
	ld	a1, -424(s0)
	lb	a2, -557(s0)
	addi	a0, s0, -256
	call	uECC_vli_set
	ld	a0, -424(s0)
	lb	a2, -557(s0)
	slli	a1, a2, 2
	add	a1, a1, a0
	addi	a0, s0, -288
	call	uECC_vli_set
	ld	a0, -600(s0)                    # 8-byte Folded Reload
	lb	a1, -557(s0)
	call	uECC_vli_clear
	li	a0, 1
	sw	a0, -160(s0)
	lh	a0, -426(s0)
	addiw	a0, a0, -2
	sh	a0, -428(s0)
	j	.LBB3_7
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	lh	a0, -428(s0)
	bltz	a0, .LBB3_12
	j	.LBB3_8
.LBB3_8:                                #   in Loop: Header=BB3_7 Depth=1
	ld	a3, -64(s0)
	ld	a4, 168(a3)
	addi	a0, s0, -256
	addi	a1, s0, -288
	addi	a2, s0, -160
	jalr	a4
	lh	a1, -428(s0)
	addi	a0, s0, -96
	call	uECC_vli_testBit
	snez	a0, a0
	sd	a0, -680(s0)                    # 8-byte Folded Spill
	lh	a1, -428(s0)
	addi	a0, s0, -128
	call	uECC_vli_testBit
	mv	a1, a0
	ld	a0, -680(s0)                    # 8-byte Folded Reload
	snez	a1, a1
	slliw	a1, a1, 1
	or	a0, a0, a1
	sw	a0, -564(s0)
	lwu	a0, -564(s0)
	slli	a1, a0, 3
	addi	a0, s0, -416
	add	a0, a0, a1
	ld	a0, 0(a0)
	sd	a0, -424(s0)
	ld	a0, -424(s0)
	beqz	a0, .LBB3_10
	j	.LBB3_9
.LBB3_9:                                #   in Loop: Header=BB3_7 Depth=1
	ld	a1, -424(s0)
	lb	a2, -557(s0)
	addi	a0, s0, -320
	sd	a0, -720(s0)                    # 8-byte Folded Spill
	call	uECC_vli_set
	ld	a0, -424(s0)
	lb	a2, -557(s0)
	slli	a1, a2, 2
	add	a1, a1, a0
	addi	a0, s0, -352
	sd	a0, -712(s0)                    # 8-byte Folded Spill
	call	uECC_vli_set
	ld	a0, -720(s0)                    # 8-byte Folded Reload
	ld	a1, -712(s0)                    # 8-byte Folded Reload
	ld	a3, -64(s0)
	addi	a2, s0, -160
	sd	a2, -696(s0)                    # 8-byte Folded Spill
	call	apply_z
	ld	a2, -720(s0)                    # 8-byte Folded Reload
	ld	a0, -64(s0)
	addi	a3, a0, 4
	lb	a4, -557(s0)
	addi	a0, s0, -384
	sd	a0, -688(s0)                    # 8-byte Folded Spill
	addi	a1, s0, -256
	sd	a1, -704(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSub
	ld	a0, -720(s0)                    # 8-byte Folded Reload
	ld	a1, -712(s0)                    # 8-byte Folded Reload
	ld	a2, -704(s0)                    # 8-byte Folded Reload
	ld	a4, -64(s0)
	addi	a3, s0, -288
	call	XYcZ_add
	ld	a1, -696(s0)                    # 8-byte Folded Reload
	ld	a2, -688(s0)                    # 8-byte Folded Reload
	ld	a3, -64(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	j	.LBB3_10
.LBB3_10:                               #   in Loop: Header=BB3_7 Depth=1
	j	.LBB3_11
.LBB3_11:                               #   in Loop: Header=BB3_7 Depth=1
	lh	a0, -428(s0)
	addiw	a0, a0, -1
	sh	a0, -428(s0)
	j	.LBB3_7
.LBB3_12:
	ld	a0, -64(s0)
	addi	a2, a0, 4
	lb	a3, -557(s0)
	addi	a1, s0, -160
	sd	a1, -736(s0)                    # 8-byte Folded Spill
	mv	a0, a1
	call	uECC_vli_modInv
	ld	a2, -736(s0)                    # 8-byte Folded Reload
	ld	a3, -64(s0)
	addi	a0, s0, -256
	sd	a0, -728(s0)                    # 8-byte Folded Spill
	addi	a1, s0, -288
	call	apply_z
	ld	a1, -728(s0)                    # 8-byte Folded Reload
	ld	a0, -64(s0)
	addi	a0, a0, 36
	lb	a2, -558(s0)
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	beq	a0, a1, .LBB3_14
	j	.LBB3_13
.LBB3_13:
	ld	a0, -64(s0)
	addi	a2, a0, 36
	lb	a3, -558(s0)
	addi	a1, s0, -256
	mv	a0, a1
	call	uECC_vli_sub
	j	.LBB3_14
.LBB3_14:
	lb	a2, -557(s0)
	addi	a0, s0, -256
	addi	a1, s0, -524
	call	uECC_vli_equal
	seqz	a0, a0
	sw	a0, -20(s0)
	j	.LBB3_15
.LBB3_15:
	lw	a0, -20(s0)
	ld	ra, 728(sp)                     # 8-byte Folded Reload
	ld	s0, 720(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 736
	ret
.Lfunc_end3:
	.size	uECC_verify, .Lfunc_end3-uECC_verify
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function smax
	.type	smax,@function
smax:                                   # @smax
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sh	a0, -18(s0)
	sh	a1, -20(s0)
	lh	a1, -18(s0)
	lh	a0, -20(s0)
	bge	a0, a1, .LBB4_2
	j	.LBB4_1
.LBB4_1:
	lh	a0, -18(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB4_3
.LBB4_2:
	lh	a0, -20(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB4_3
.LBB4_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	slli	a0, a0, 48
	srai	a0, a0, 48
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	smax, .Lfunc_end4-smax
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_sign_with_k
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_mult
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym uECC_vli_modMult
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_vli_set
	.addrsig_sym bits2int
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym XYcZ_add
	.addrsig_sym apply_z
	.addrsig_sym smax
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_equal
