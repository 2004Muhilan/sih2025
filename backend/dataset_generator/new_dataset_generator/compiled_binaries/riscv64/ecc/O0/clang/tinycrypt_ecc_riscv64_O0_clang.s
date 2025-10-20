	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    # -- Begin function uECC_set_rng
	.p2align	1
	.type	uECC_set_rng,@function
uECC_set_rng:                           # @uECC_set_rng
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
	sd	a0, -24(s0)
	ld	a0, -24(s0)
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(g_rng_function)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
	sd	a0, 0(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	uECC_set_rng, .Lfunc_end0-uECC_set_rng
	.cfi_endproc
                                        # -- End function
	.globl	uECC_get_rng                    # -- Begin function uECC_get_rng
	.p2align	1
	.type	uECC_get_rng,@function
uECC_get_rng:                           # @uECC_get_rng
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(g_rng_function)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1)
	ld	a0, 0(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	uECC_get_rng, .Lfunc_end1-uECC_get_rng
	.cfi_endproc
                                        # -- End function
	.globl	uECC_curve_private_key_size     # -- Begin function uECC_curve_private_key_size
	.p2align	1
	.type	uECC_curve_private_key_size,@function
uECC_curve_private_key_size:            # @uECC_curve_private_key_size
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
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	lh	a0, 2(a0)
	addi	a0, a0, 7
	srliw	a1, a0, 29
	add	a0, a0, a1
	srai	a0, a0, 3
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	uECC_curve_private_key_size, .Lfunc_end2-uECC_curve_private_key_size
	.cfi_endproc
                                        # -- End function
	.globl	uECC_curve_public_key_size      # -- Begin function uECC_curve_public_key_size
	.p2align	1
	.type	uECC_curve_public_key_size,@function
uECC_curve_public_key_size:             # @uECC_curve_public_key_size
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
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	lb	a0, 1(a0)
	slli	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	uECC_curve_public_key_size, .Lfunc_end3-uECC_curve_public_key_size
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_clear                  # -- Begin function uECC_vli_clear
	.p2align	1
	.type	uECC_vli_clear,@function
uECC_vli_clear:                         # @uECC_vli_clear
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
	sd	a0, -24(s0)
	sb	a1, -25(s0)
	li	a0, 0
	sb	a0, -26(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lb	a0, -26(s0)
	lb	a1, -25(s0)
	bge	a0, a1, .LBB4_4
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	ld	a0, -24(s0)
	lb	a1, -26(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	li	a0, 0
	sw	a0, 0(a1)
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	lbu	a0, -26(s0)
	addiw	a0, a0, 1
	sb	a0, -26(s0)
	j	.LBB4_1
.LBB4_4:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	uECC_vli_clear, .Lfunc_end4-uECC_vli_clear
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_isZero                 # -- Begin function uECC_vli_isZero
	.p2align	1
	.type	uECC_vli_isZero,@function
uECC_vli_isZero:                        # @uECC_vli_isZero
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sb	a1, -25(s0)
	li	a0, 0
	sw	a0, -32(s0)
	sb	a0, -33(s0)
	j	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lb	a0, -33(s0)
	lb	a1, -25(s0)
	bge	a0, a1, .LBB5_4
	j	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	ld	a0, -24(s0)
	lb	a1, -33(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	lw	a0, -32(s0)
	or	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	lbu	a0, -33(s0)
	addiw	a0, a0, 1
	sb	a0, -33(s0)
	j	.LBB5_1
.LBB5_4:
	lw	a0, -32(s0)
	seqz	a0, a0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	uECC_vli_isZero, .Lfunc_end5-uECC_vli_isZero
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_testBit                # -- Begin function uECC_vli_testBit
	.p2align	1
	.type	uECC_vli_testBit,@function
uECC_vli_testBit:                       # @uECC_vli_testBit
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
	sd	a0, -24(s0)
	sh	a1, -26(s0)
	ld	a0, -24(s0)
	lh	a2, -26(s0)
	srai	a1, a2, 5
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	li	a1, 1
	sllw	a1, a1, a2
	and	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end6:
	.size	uECC_vli_testBit, .Lfunc_end6-uECC_vli_testBit
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_numBits                # -- Begin function uECC_vli_numBits
	.p2align	1
	.type	uECC_vli_numBits,@function
uECC_vli_numBits:                       # @uECC_vli_numBits
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sb	a1, -33(s0)
	ld	a0, -32(s0)
	lb	a1, -33(s0)
	call	vli_numDigits
	sb	a0, -45(s0)
	lb	a0, -45(s0)
	bnez	a0, .LBB7_2
	j	.LBB7_1
.LBB7_1:
	li	a0, 0
	sh	a0, -18(s0)
	j	.LBB7_7
.LBB7_2:
	ld	a1, -32(s0)
	lb	a0, -45(s0)
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, -4(a0)
	sw	a0, -44(s0)
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB7_3
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	beqz	a0, .LBB7_6
	j	.LBB7_4
.LBB7_4:                                #   in Loop: Header=BB7_3 Depth=1
	lwu	a0, -44(s0)
	srli	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB7_5
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB7_3
.LBB7_6:
	lb	a0, -45(s0)
	slliw	a0, a0, 5
	lw	a1, -40(s0)
	addw	a0, a0, a1
	addiw	a0, a0, -32
	sh	a0, -18(s0)
	j	.LBB7_7
.LBB7_7:
	lh	a0, -18(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vli_numDigits
	.type	vli_numDigits,@function
vli_numDigits:                          # @vli_numDigits
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sb	a1, -25(s0)
	lbu	a0, -25(s0)
	addiw	a0, a0, -1
	sb	a0, -26(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lb	a0, -26(s0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB8_3
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	ld	a0, -24(s0)
	lb	a1, -26(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	seqz	a0, a0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB8_6
	j	.LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	j	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	lbu	a0, -26(s0)
	addiw	a0, a0, -1
	sb	a0, -26(s0)
	j	.LBB8_1
.LBB8_6:
	lbu	a0, -26(s0)
	addiw	a0, a0, 1
	slli	a0, a0, 56
	srai	a0, a0, 56
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end8:
	.size	vli_numDigits, .Lfunc_end8-vli_numDigits
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.p2align	1
	.type	uECC_vli_set,@function
uECC_vli_set:                           # @uECC_vli_set
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sb	a2, -33(s0)
	li	a0, 0
	sb	a0, -34(s0)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	lb	a0, -34(s0)
	lb	a1, -33(s0)
	bge	a0, a1, .LBB9_4
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	ld	a0, -32(s0)
	lb	a1, -34(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	lbu	a0, -34(s0)
	addiw	a0, a0, 1
	sb	a0, -34(s0)
	j	.LBB9_1
.LBB9_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end9:
	.size	uECC_vli_set, .Lfunc_end9-uECC_vli_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.p2align	1
	.type	uECC_vli_cmp_unsafe,@function
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sb	a2, -41(s0)
	lbu	a0, -41(s0)
	addiw	a0, a0, -1
	sb	a0, -42(s0)
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	lb	a0, -42(s0)
	bltz	a0, .LBB10_9
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	ld	a0, -32(s0)
	lb	a1, -42(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a1, 0(a0)
	ld	a0, -40(s0)
	add	a0, a0, a2
	lw	a0, 0(a0)
	bgeu	a0, a1, .LBB10_4
	j	.LBB10_3
.LBB10_3:
	li	a0, 1
	sb	a0, -17(s0)
	j	.LBB10_10
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	ld	a0, -32(s0)
	lb	a1, -42(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -40(s0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	bgeu	a0, a1, .LBB10_6
	j	.LBB10_5
.LBB10_5:
	li	a0, 255
	sb	a0, -17(s0)
	j	.LBB10_10
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	j	.LBB10_7
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	j	.LBB10_8
.LBB10_8:                               #   in Loop: Header=BB10_1 Depth=1
	lbu	a0, -42(s0)
	addiw	a0, a0, -1
	sb	a0, -42(s0)
	j	.LBB10_1
.LBB10_9:
	li	a0, 0
	sb	a0, -17(s0)
	j	.LBB10_10
.LBB10_10:
	lb	a0, -17(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end10:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end10-uECC_vli_cmp_unsafe
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.p2align	1
	.type	uECC_vli_equal,@function
uECC_vli_equal:                         # @uECC_vli_equal
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sb	a2, -33(s0)
	li	a0, 0
	sw	a0, -40(s0)
	lbu	a0, -33(s0)
	addiw	a0, a0, -1
	sb	a0, -41(s0)
	j	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	lb	a0, -41(s0)
	bltz	a0, .LBB11_4
	j	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	ld	a0, -24(s0)
	lb	a1, -41(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	xor	a1, a1, a0
	lw	a0, -40(s0)
	or	a0, a0, a1
	sw	a0, -40(s0)
	j	.LBB11_3
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	lbu	a0, -41(s0)
	addiw	a0, a0, -1
	sb	a0, -41(s0)
	j	.LBB11_1
.LBB11_4:
	lw	a0, -40(s0)
	snez	a0, a0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end11:
	.size	uECC_vli_equal, .Lfunc_end11-uECC_vli_equal
	.cfi_endproc
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.p2align	1
	.type	cond_set,@function
cond_set:                               # @cond_set
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
                                        # kill: def $x13 killed $x12
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	sw	a2, -28(s0)
	lw	a0, -20(s0)
	lw	a2, -28(s0)
	mulw	a0, a0, a2
	lw	a1, -24(s0)
	seqz	a2, a2
	mulw	a1, a1, a2
	or	a0, a0, a1
	sext.w	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end12:
	.size	cond_set, .Lfunc_end12-cond_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.p2align	1
	.type	uECC_vli_sub,@function
uECC_vli_sub:                           # @uECC_vli_sub
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
                                        # kill: def $x14 killed $x13
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sb	a3, -41(s0)
	li	a0, 0
	sw	a0, -48(s0)
	sb	a0, -49(s0)
	j	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	lb	a0, -49(s0)
	lb	a1, -41(s0)
	bge	a0, a1, .LBB13_4
	j	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	ld	a0, -32(s0)
	lb	a1, -49(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -40(s0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	subw	a0, a0, a1
	lw	a1, -48(s0)
	subw	a0, a0, a1
	sw	a0, -56(s0)
	lw	a1, -56(s0)
	ld	a0, -32(s0)
	lb	a2, -49(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	sltu	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	lw	a1, -48(s0)
	lw	a2, -56(s0)
	ld	a3, -32(s0)
	lb	a4, -49(s0)
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	xor	a2, a2, a3
	snez	a2, a2
	call	cond_set
	sw	a0, -48(s0)
	lw	a0, -56(s0)
	ld	a1, -24(s0)
	lb	a2, -49(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	lbu	a0, -49(s0)
	addiw	a0, a0, 1
	sb	a0, -49(s0)
	j	.LBB13_1
.LBB13_4:
	lw	a0, -48(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end13:
	.size	uECC_vli_sub, .Lfunc_end13-uECC_vli_sub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.p2align	1
	.type	uECC_vli_cmp,@function
uECC_vli_cmp:                           # @uECC_vli_cmp
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
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sb	a2, -33(s0)
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	lb	a3, -33(s0)
	addi	a0, s0, -68
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	call	uECC_vli_sub
	mv	a1, a0
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	snez	a1, a1
	sw	a1, -72(s0)
	lb	a1, -33(s0)
	call	uECC_vli_isZero
	sw	a0, -76(s0)
	lw	a0, -76(s0)
	seqz	a0, a0
	lw	a1, -72(s0)
	slliw	a1, a1, 1
	subw	a0, a0, a1
	slli	a0, a0, 56
	srai	a0, a0, 56
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end14:
	.size	uECC_vli_cmp, .Lfunc_end14-uECC_vli_cmp
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.p2align	1
	.type	uECC_vli_modAdd,@function
uECC_vli_modAdd:                        # @uECC_vli_modAdd
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sb	a4, -49(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	lb	a3, -49(s0)
	call	uECC_vli_add
	sw	a0, -56(s0)
	lw	a0, -56(s0)
	bnez	a0, .LBB15_2
	j	.LBB15_1
.LBB15_1:
	ld	a0, -48(s0)
	ld	a1, -24(s0)
	lb	a2, -49(s0)
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	beq	a0, a1, .LBB15_3
	j	.LBB15_2
.LBB15_2:
	ld	a1, -24(s0)
	ld	a2, -48(s0)
	lb	a3, -49(s0)
	mv	a0, a1
	call	uECC_vli_sub
	j	.LBB15_3
.LBB15_3:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end15:
	.size	uECC_vli_modAdd, .Lfunc_end15-uECC_vli_modAdd
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function uECC_vli_add
	.type	uECC_vli_add,@function
uECC_vli_add:                           # @uECC_vli_add
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
                                        # kill: def $x14 killed $x13
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sb	a3, -41(s0)
	li	a0, 0
	sw	a0, -48(s0)
	sb	a0, -49(s0)
	j	.LBB16_1
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	lb	a0, -49(s0)
	lb	a1, -41(s0)
	bge	a0, a1, .LBB16_4
	j	.LBB16_2
.LBB16_2:                               #   in Loop: Header=BB16_1 Depth=1
	ld	a0, -32(s0)
	lb	a1, -49(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -40(s0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	addw	a0, a0, a1
	lw	a1, -48(s0)
	addw	a0, a0, a1
	sw	a0, -56(s0)
	lw	a0, -56(s0)
	ld	a1, -32(s0)
	lb	a2, -49(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	sltu	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	lw	a1, -48(s0)
	lw	a2, -56(s0)
	ld	a3, -32(s0)
	lb	a4, -49(s0)
	slli	a4, a4, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	xor	a2, a2, a3
	snez	a2, a2
	call	cond_set
	sw	a0, -48(s0)
	lw	a0, -56(s0)
	ld	a1, -24(s0)
	lb	a2, -49(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB16_3
.LBB16_3:                               #   in Loop: Header=BB16_1 Depth=1
	lbu	a0, -49(s0)
	addiw	a0, a0, 1
	sb	a0, -49(s0)
	j	.LBB16_1
.LBB16_4:
	lw	a0, -48(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end16:
	.size	uECC_vli_add, .Lfunc_end16-uECC_vli_add
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.p2align	1
	.type	uECC_vli_modSub,@function
uECC_vli_modSub:                        # @uECC_vli_modSub
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sb	a4, -49(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	lb	a3, -49(s0)
	call	uECC_vli_sub
	sw	a0, -56(s0)
	lw	a0, -56(s0)
	beqz	a0, .LBB17_2
	j	.LBB17_1
.LBB17_1:
	ld	a1, -24(s0)
	ld	a2, -48(s0)
	lb	a3, -49(s0)
	mv	a0, a1
	call	uECC_vli_add
	j	.LBB17_2
.LBB17_2:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end17:
	.size	uECC_vli_modSub, .Lfunc_end17-uECC_vli_modSub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_mmod                   # -- Begin function uECC_vli_mmod
	.p2align	1
	.type	uECC_vli_mmod,@function
uECC_vli_mmod:                          # @uECC_vli_mmod
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -240
	.cfi_def_cfa_offset 240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 240
	.cfi_def_cfa s0, 0
                                        # kill: def $x14 killed $x13
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sb	a3, -41(s0)
	addi	a0, s0, -172
	sd	a0, -192(s0)
	ld	a0, -32(s0)
	sd	a0, -184(s0)
	lb	a1, -41(s0)
	slliw	a0, a1, 6
	sd	a0, -232(s0)                    # 8-byte Folded Spill
	ld	a0, -40(s0)
	call	uECC_vli_numBits
	mv	a1, a0
	ld	a0, -232(s0)                    # 8-byte Folded Reload
	subw	a0, a0, a1
	sh	a0, -198(s0)
	lh	a0, -198(s0)
	srliw	a1, a0, 27
	addw	a0, a0, a1
	srli	a0, a0, 5
	sb	a0, -199(s0)
	lh	a0, -198(s0)
	srliw	a1, a0, 27
	addw	a1, a1, a0
	andi	a1, a1, 224
	subw	a0, a0, a1
	sb	a0, -200(s0)
	li	a0, 0
	sd	a0, -224(s0)                    # 8-byte Folded Spill
	sw	a0, -204(s0)
	lb	a1, -199(s0)
	addi	a0, s0, -108
	call	uECC_vli_clear
	ld	a0, -224(s0)                    # 8-byte Folded Reload
	lb	a1, -200(s0)
	bge	a0, a1, .LBB18_6
	j	.LBB18_1
.LBB18_1:
	li	a0, 0
	sw	a0, -196(s0)
	j	.LBB18_2
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -196(s0)
	lb	a1, -41(s0)
	bgeu	a0, a1, .LBB18_5
	j	.LBB18_3
.LBB18_3:                               #   in Loop: Header=BB18_2 Depth=1
	ld	a0, -40(s0)
	lwu	a2, -196(s0)
	slli	a1, a2, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lb	a1, -200(s0)
	sllw	a0, a0, a1
	lw	a1, -204(s0)
	or	a0, a0, a1
	lb	a1, -199(s0)
	addw	a1, a1, a2
	slli	a1, a1, 32
	srli	a2, a1, 30
	addi	a1, s0, -108
	add	a1, a1, a2
	sw	a0, 0(a1)
	ld	a0, -40(s0)
	lwu	a1, -196(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lb	a1, -200(s0)
	negw	a1, a1
	srlw	a0, a0, a1
	sw	a0, -204(s0)
	j	.LBB18_4
.LBB18_4:                               #   in Loop: Header=BB18_2 Depth=1
	lw	a0, -196(s0)
	addiw	a0, a0, 1
	sw	a0, -196(s0)
	j	.LBB18_2
.LBB18_5:
	j	.LBB18_7
.LBB18_6:
	lb	a0, -199(s0)
	slli	a1, a0, 2
	addi	a0, s0, -108
	add	a0, a0, a1
	ld	a1, -40(s0)
	lb	a2, -41(s0)
	call	uECC_vli_set
	j	.LBB18_7
.LBB18_7:
	li	a0, 1
	sw	a0, -196(s0)
	j	.LBB18_8
.LBB18_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_10 Depth 2
	lh	a0, -198(s0)
	bltz	a0, .LBB18_17
	j	.LBB18_9
.LBB18_9:                               #   in Loop: Header=BB18_8 Depth=1
	li	a0, 0
	sw	a0, -208(s0)
	sb	a0, -209(s0)
	j	.LBB18_10
.LBB18_10:                              #   Parent Loop BB18_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lb	a0, -209(s0)
	lb	a1, -41(s0)
	slli	a1, a1, 1
	bge	a0, a1, .LBB18_15
	j	.LBB18_11
.LBB18_11:                              #   in Loop: Header=BB18_10 Depth=2
	lwu	a0, -196(s0)
	slli	a0, a0, 3
	addi	a1, s0, -192
	add	a0, a0, a1
	ld	a0, 0(a0)
	lb	a2, -209(s0)
	slli	a3, a2, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	addi	a2, s0, -108
	add	a2, a2, a3
	lw	a2, 0(a2)
	subw	a0, a0, a2
	lw	a2, -208(s0)
	subw	a0, a0, a2
	sw	a0, -216(s0)
	lw	a0, -216(s0)
	lwu	a2, -196(s0)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lb	a2, -209(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	beq	a0, a1, .LBB18_13
	j	.LBB18_12
.LBB18_12:                              #   in Loop: Header=BB18_10 Depth=2
	lw	a1, -216(s0)
	lwu	a0, -196(s0)
	slli	a2, a0, 3
	addi	a0, s0, -192
	add	a0, a0, a2
	ld	a0, 0(a0)
	lb	a2, -209(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	sltu	a0, a0, a1
	sw	a0, -208(s0)
	j	.LBB18_13
.LBB18_13:                              #   in Loop: Header=BB18_10 Depth=2
	lw	a0, -216(s0)
	lw	a2, -196(s0)
	li	a1, 1
	subw	a1, a1, a2
	slli	a1, a1, 32
	srli	a2, a1, 29
	addi	a1, s0, -192
	add	a1, a1, a2
	ld	a1, 0(a1)
	lb	a2, -209(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB18_14
.LBB18_14:                              #   in Loop: Header=BB18_10 Depth=2
	lbu	a0, -209(s0)
	addiw	a0, a0, 1
	sb	a0, -209(s0)
	j	.LBB18_10
.LBB18_15:                              #   in Loop: Header=BB18_8 Depth=1
	lw	a0, -196(s0)
	lw	a1, -208(s0)
	xor	a0, a0, a1
	seqz	a0, a0
	sw	a0, -196(s0)
	lb	a1, -41(s0)
	addi	a0, s0, -108
	sd	a0, -240(s0)                    # 8-byte Folded Spill
	call	uECC_vli_rshift1
	ld	a0, -240(s0)                    # 8-byte Folded Reload
	lb	a1, -41(s0)
	slli	a1, a1, 2
	add	a2, a0, a1
	lw	a1, 0(a2)
	slliw	a3, a1, 31
	lw	a1, -4(a2)
	or	a1, a1, a3
	sw	a1, -4(a2)
	lb	a1, -41(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	call	uECC_vli_rshift1
	j	.LBB18_16
.LBB18_16:                              #   in Loop: Header=BB18_8 Depth=1
	lh	a0, -198(s0)
	addiw	a0, a0, -1
	sh	a0, -198(s0)
	j	.LBB18_8
.LBB18_17:
	ld	a0, -24(s0)
	lwu	a1, -196(s0)
	slli	a2, a1, 3
	addi	a1, s0, -192
	add	a1, a1, a2
	ld	a1, 0(a1)
	lb	a2, -41(s0)
	call	uECC_vli_set
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 240
	ret
.Lfunc_end18:
	.size	uECC_vli_mmod, .Lfunc_end18-uECC_vli_mmod
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function uECC_vli_rshift1
	.type	uECC_vli_rshift1,@function
uECC_vli_rshift1:                       # @uECC_vli_rshift1
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sb	a1, -25(s0)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	li	a0, 0
	sw	a0, -44(s0)
	lb	a1, -25(s0)
	ld	a0, -24(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB19_1
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	ld	a1, -24(s0)
	addi	a0, a1, -4
	sd	a0, -24(s0)
	ld	a0, -40(s0)
	bgeu	a0, a1, .LBB19_3
	j	.LBB19_2
.LBB19_2:                               #   in Loop: Header=BB19_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	sw	a0, -48(s0)
	lwu	a0, -48(s0)
	srli	a0, a0, 1
	lw	a1, -44(s0)
	or	a0, a0, a1
	ld	a1, -24(s0)
	sw	a0, 0(a1)
	lw	a0, -48(s0)
	slliw	a0, a0, 31
	sw	a0, -44(s0)
	j	.LBB19_1
.LBB19_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end19:
	.size	uECC_vli_rshift1, .Lfunc_end19-uECC_vli_rshift1
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.p2align	1
	.type	uECC_vli_modMult,@function
uECC_vli_modMult:                       # @uECC_vli_modMult
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
                                        # kill: def $x15 killed $x14
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sb	a4, -49(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	lb	a3, -49(s0)
	addi	a0, s0, -116
	sd	a0, -128(s0)                    # 8-byte Folded Spill
	call	uECC_vli_mult
	ld	a1, -128(s0)                    # 8-byte Folded Reload
	ld	a0, -24(s0)
	ld	a2, -48(s0)
	lb	a3, -49(s0)
	call	uECC_vli_mmod
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end20:
	.size	uECC_vli_modMult, .Lfunc_end20-uECC_vli_modMult
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
uECC_vli_mult:                          # @uECC_vli_mult
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
                                        # kill: def $x14 killed $x13
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sb	a3, -41(s0)
	li	a0, 0
	sw	a0, -48(s0)
	sw	a0, -52(s0)
	sw	a0, -56(s0)
	sb	a0, -58(s0)
	j	.LBB21_1
.LBB21_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	lb	a0, -58(s0)
	lb	a1, -41(s0)
	bge	a0, a1, .LBB21_8
	j	.LBB21_2
.LBB21_2:                               #   in Loop: Header=BB21_1 Depth=1
	li	a0, 0
	sb	a0, -57(s0)
	j	.LBB21_3
.LBB21_3:                               #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lb	a1, -57(s0)
	lb	a0, -58(s0)
	blt	a0, a1, .LBB21_6
	j	.LBB21_4
.LBB21_4:                               #   in Loop: Header=BB21_3 Depth=2
	ld	a0, -32(s0)
	lb	a3, -57(s0)
	slli	a1, a3, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a1, -40(s0)
	lb	a2, -58(s0)
	sub	a2, a2, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a2, s0, -48
	addi	a3, s0, -52
	addi	a4, s0, -56
	call	muladd
	j	.LBB21_5
.LBB21_5:                               #   in Loop: Header=BB21_3 Depth=2
	lbu	a0, -57(s0)
	addiw	a0, a0, 1
	sb	a0, -57(s0)
	j	.LBB21_3
.LBB21_6:                               #   in Loop: Header=BB21_1 Depth=1
	lw	a0, -48(s0)
	ld	a1, -24(s0)
	lb	a2, -58(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -52(s0)
	sw	a0, -48(s0)
	lw	a0, -56(s0)
	sw	a0, -52(s0)
	li	a0, 0
	sw	a0, -56(s0)
	j	.LBB21_7
.LBB21_7:                               #   in Loop: Header=BB21_1 Depth=1
	lbu	a0, -58(s0)
	addiw	a0, a0, 1
	sb	a0, -58(s0)
	j	.LBB21_1
.LBB21_8:
	lbu	a0, -41(s0)
	sb	a0, -58(s0)
	j	.LBB21_9
.LBB21_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_11 Depth 2
	lb	a0, -58(s0)
	lb	a1, -41(s0)
	slli	a1, a1, 1
	addi	a1, a1, -1
	bge	a0, a1, .LBB21_16
	j	.LBB21_10
.LBB21_10:                              #   in Loop: Header=BB21_9 Depth=1
	lbu	a0, -58(s0)
	lbu	a1, -41(s0)
	subw	a0, a0, a1
	addiw	a0, a0, 1
	sb	a0, -57(s0)
	j	.LBB21_11
.LBB21_11:                              #   Parent Loop BB21_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lb	a0, -57(s0)
	lb	a1, -41(s0)
	bge	a0, a1, .LBB21_14
	j	.LBB21_12
.LBB21_12:                              #   in Loop: Header=BB21_11 Depth=2
	ld	a0, -32(s0)
	lb	a3, -57(s0)
	slli	a1, a3, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a1, -40(s0)
	lb	a2, -58(s0)
	sub	a2, a2, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	addi	a2, s0, -48
	addi	a3, s0, -52
	addi	a4, s0, -56
	call	muladd
	j	.LBB21_13
.LBB21_13:                              #   in Loop: Header=BB21_11 Depth=2
	lbu	a0, -57(s0)
	addiw	a0, a0, 1
	sb	a0, -57(s0)
	j	.LBB21_11
.LBB21_14:                              #   in Loop: Header=BB21_9 Depth=1
	lw	a0, -48(s0)
	ld	a1, -24(s0)
	lb	a2, -58(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -52(s0)
	sw	a0, -48(s0)
	lw	a0, -56(s0)
	sw	a0, -52(s0)
	li	a0, 0
	sw	a0, -56(s0)
	j	.LBB21_15
.LBB21_15:                              #   in Loop: Header=BB21_9 Depth=1
	lbu	a0, -58(s0)
	addiw	a0, a0, 1
	sb	a0, -58(s0)
	j	.LBB21_9
.LBB21_16:
	lw	a0, -48(s0)
	ld	a2, -24(s0)
	lb	a1, -41(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	sw	a0, -4(a1)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end21:
	.size	uECC_vli_mult, .Lfunc_end21-uECC_vli_mult
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.p2align	1
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	ld	a0, -48(s0)
	lb	a3, 0(a0)
	addi	a0, s0, -112
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	call	uECC_vli_mult
	ld	a1, -120(s0)                    # 8-byte Folded Reload
	ld	a0, -48(s0)
	ld	a2, 184(a0)
	ld	a0, -24(s0)
	jalr	a2
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end22:
	.size	uECC_vli_modMult_fast, .Lfunc_end22-uECC_vli_modMult_fast
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modInv                 # -- Begin function uECC_vli_modInv
	.p2align	1
	.type	uECC_vli_modInv,@function
uECC_vli_modInv:                        # @uECC_vli_modInv
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -208
	.cfi_def_cfa_offset 208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 208
	.cfi_def_cfa s0, 0
                                        # kill: def $x14 killed $x13
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sb	a3, -41(s0)
	ld	a0, -32(s0)
	lb	a1, -41(s0)
	call	uECC_vli_isZero
	beqz	a0, .LBB23_2
	j	.LBB23_1
.LBB23_1:
	ld	a0, -24(s0)
	lb	a1, -41(s0)
	call	uECC_vli_clear
	j	.LBB23_19
.LBB23_2:
	ld	a1, -32(s0)
	lb	a2, -41(s0)
	addi	a0, s0, -76
	call	uECC_vli_set
	ld	a1, -40(s0)
	lb	a2, -41(s0)
	addi	a0, s0, -108
	call	uECC_vli_set
	lb	a1, -41(s0)
	addi	a0, s0, -140
	call	uECC_vli_clear
	li	a0, 1
	sw	a0, -140(s0)
	lb	a1, -41(s0)
	addi	a0, s0, -172
	call	uECC_vli_clear
	j	.LBB23_3
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	lb	a2, -41(s0)
	addi	a0, s0, -76
	addi	a1, s0, -108
	call	uECC_vli_cmp_unsafe
	sb	a0, -173(s0)
	beqz	a0, .LBB23_18
	j	.LBB23_4
.LBB23_4:                               #   in Loop: Header=BB23_3 Depth=1
	lbu	a0, -76(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB23_6
	j	.LBB23_5
.LBB23_5:                               #   in Loop: Header=BB23_3 Depth=1
	lb	a1, -41(s0)
	addi	a0, s0, -76
	call	uECC_vli_rshift1
	ld	a1, -40(s0)
	lb	a2, -41(s0)
	addi	a0, s0, -140
	call	vli_modInv_update
	j	.LBB23_17
.LBB23_6:                               #   in Loop: Header=BB23_3 Depth=1
	lbu	a0, -108(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB23_8
	j	.LBB23_7
.LBB23_7:                               #   in Loop: Header=BB23_3 Depth=1
	lb	a1, -41(s0)
	addi	a0, s0, -108
	call	uECC_vli_rshift1
	ld	a1, -40(s0)
	lb	a2, -41(s0)
	addi	a0, s0, -172
	call	vli_modInv_update
	j	.LBB23_16
.LBB23_8:                               #   in Loop: Header=BB23_3 Depth=1
	lb	a1, -173(s0)
	li	a0, 0
	bge	a0, a1, .LBB23_12
	j	.LBB23_9
.LBB23_9:                               #   in Loop: Header=BB23_3 Depth=1
	lb	a3, -41(s0)
	addi	a1, s0, -76
	sd	a1, -184(s0)                    # 8-byte Folded Spill
	addi	a2, s0, -108
	mv	a0, a1
	call	uECC_vli_sub
                                        # kill: def $x11 killed $x10
	ld	a0, -184(s0)                    # 8-byte Folded Reload
	lb	a1, -41(s0)
	call	uECC_vli_rshift1
	lb	a2, -41(s0)
	addi	a0, s0, -140
	addi	a1, s0, -172
	call	uECC_vli_cmp_unsafe
	bgez	a0, .LBB23_11
	j	.LBB23_10
.LBB23_10:                              #   in Loop: Header=BB23_3 Depth=1
	ld	a2, -40(s0)
	lb	a3, -41(s0)
	addi	a1, s0, -140
	mv	a0, a1
	call	uECC_vli_add
	j	.LBB23_11
.LBB23_11:                              #   in Loop: Header=BB23_3 Depth=1
	lb	a3, -41(s0)
	addi	a1, s0, -140
	sd	a1, -192(s0)                    # 8-byte Folded Spill
	addi	a2, s0, -172
	mv	a0, a1
	call	uECC_vli_sub
                                        # kill: def $x11 killed $x10
	ld	a0, -192(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	lb	a2, -41(s0)
	call	vli_modInv_update
	j	.LBB23_15
.LBB23_12:                              #   in Loop: Header=BB23_3 Depth=1
	lb	a3, -41(s0)
	addi	a1, s0, -108
	sd	a1, -200(s0)                    # 8-byte Folded Spill
	addi	a2, s0, -76
	mv	a0, a1
	call	uECC_vli_sub
                                        # kill: def $x11 killed $x10
	ld	a0, -200(s0)                    # 8-byte Folded Reload
	lb	a1, -41(s0)
	call	uECC_vli_rshift1
	lb	a2, -41(s0)
	addi	a0, s0, -172
	addi	a1, s0, -140
	call	uECC_vli_cmp_unsafe
	bgez	a0, .LBB23_14
	j	.LBB23_13
.LBB23_13:                              #   in Loop: Header=BB23_3 Depth=1
	ld	a2, -40(s0)
	lb	a3, -41(s0)
	addi	a1, s0, -172
	mv	a0, a1
	call	uECC_vli_add
	j	.LBB23_14
.LBB23_14:                              #   in Loop: Header=BB23_3 Depth=1
	lb	a3, -41(s0)
	addi	a1, s0, -172
	sd	a1, -208(s0)                    # 8-byte Folded Spill
	addi	a2, s0, -140
	mv	a0, a1
	call	uECC_vli_sub
                                        # kill: def $x11 killed $x10
	ld	a0, -208(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	lb	a2, -41(s0)
	call	vli_modInv_update
	j	.LBB23_15
.LBB23_15:                              #   in Loop: Header=BB23_3 Depth=1
	j	.LBB23_16
.LBB23_16:                              #   in Loop: Header=BB23_3 Depth=1
	j	.LBB23_17
.LBB23_17:                              #   in Loop: Header=BB23_3 Depth=1
	j	.LBB23_3
.LBB23_18:
	ld	a0, -24(s0)
	lb	a2, -41(s0)
	addi	a1, s0, -140
	call	uECC_vli_set
	j	.LBB23_19
.LBB23_19:
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end23:
	.size	uECC_vli_modInv, .Lfunc_end23-uECC_vli_modInv
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vli_modInv_update
	.type	vli_modInv_update,@function
vli_modInv_update:                      # @vli_modInv_update
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sb	a2, -33(s0)
	li	a0, 0
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	andi	a0, a0, 1
	beqz	a0, .LBB24_2
	j	.LBB24_1
.LBB24_1:
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	lb	a3, -33(s0)
	mv	a0, a1
	call	uECC_vli_add
	sw	a0, -40(s0)
	j	.LBB24_2
.LBB24_2:
	ld	a0, -24(s0)
	lb	a1, -33(s0)
	call	uECC_vli_rshift1
	lw	a0, -40(s0)
	beqz	a0, .LBB24_4
	j	.LBB24_3
.LBB24_3:
	ld	a1, -24(s0)
	lb	a0, -33(s0)
	slli	a0, a0, 2
	add	a1, a1, a0
	lw	a0, -4(a1)
	lui	a2, 524288
	or	a0, a0, a2
	sw	a0, -4(a1)
	j	.LBB24_4
.LBB24_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end24:
	.size	vli_modInv_update, .Lfunc_end24-vli_modInv_update
	.cfi_endproc
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.p2align	1
	.type	double_jacobian_default,@function
double_jacobian_default:                # @double_jacobian_default
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 144
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	sb	a0, -113(s0)
	ld	a0, -40(s0)
	lb	a1, -113(s0)
	call	uECC_vli_isZero
	beqz	a0, .LBB25_2
	j	.LBB25_1
.LBB25_1:
	j	.LBB25_6
.LBB25_2:
	ld	a1, -32(s0)
	ld	a2, -48(s0)
	addi	a0, s0, -80
	sd	a0, -128(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSquare_fast
	ld	a2, -128(s0)                    # 8-byte Folded Reload
	ld	a1, -24(s0)
	ld	a3, -48(s0)
	addi	a0, s0, -112
	call	uECC_vli_modMult_fast
	ld	a1, -128(s0)                    # 8-byte Folded Reload
	ld	a2, -48(s0)
	mv	a0, a1
	call	uECC_vli_modSquare_fast
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	ld	a3, -48(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -40(s0)
	ld	a2, -48(s0)
	mv	a0, a1
	call	uECC_vli_modSquare_fast
	ld	a1, -24(s0)
	ld	a2, -40(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	mv	a0, a1
	call	uECC_vli_modAdd
	ld	a2, -40(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	mv	a0, a2
	mv	a1, a2
	call	uECC_vli_modAdd
	ld	a2, -40(s0)
	ld	a1, -24(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	mv	a0, a2
	call	uECC_vli_modSub
	ld	a1, -24(s0)
	ld	a2, -40(s0)
	ld	a3, -48(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a0, -40(s0)
	ld	a2, -24(s0)
	ld	a1, -48(s0)
	addi	a3, a1, 4
	lb	a4, -113(s0)
	mv	a1, a2
	call	uECC_vli_modAdd
	ld	a1, -24(s0)
	ld	a2, -40(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	mv	a0, a1
	call	uECC_vli_modAdd
	ld	a0, -24(s0)
	li	a1, 0
	call	uECC_vli_testBit
	beqz	a0, .LBB25_4
	j	.LBB25_3
.LBB25_3:
	ld	a1, -24(s0)
	ld	a0, -48(s0)
	addi	a2, a0, 4
	lb	a3, -113(s0)
	mv	a0, a1
	call	uECC_vli_add
	sw	a0, -120(s0)
	ld	a0, -24(s0)
	lb	a1, -113(s0)
	call	uECC_vli_rshift1
	lw	a0, -120(s0)
	slliw	a2, a0, 31
	ld	a1, -24(s0)
	lb	a0, -113(s0)
	slli	a0, a0, 2
	add	a1, a1, a0
	lw	a0, -4(a1)
	or	a0, a0, a2
	sw	a0, -4(a1)
	j	.LBB25_5
.LBB25_4:
	ld	a0, -24(s0)
	lb	a1, -113(s0)
	call	uECC_vli_rshift1
	j	.LBB25_5
.LBB25_5:
	ld	a0, -40(s0)
	ld	a1, -24(s0)
	ld	a2, -48(s0)
	call	uECC_vli_modSquare_fast
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	addi	a2, s0, -112
	sd	a2, -144(s0)                    # 8-byte Folded Spill
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a2, -144(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -144(s0)                    # 8-byte Folded Reload
	ld	a2, -40(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a2, -144(s0)                    # 8-byte Folded Reload
	ld	a1, -24(s0)
	ld	a3, -48(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -24(s0)
	ld	a0, -48(s0)
	addi	a3, a0, 4
	lb	a4, -113(s0)
	addi	a2, s0, -80
	sd	a2, -136(s0)                    # 8-byte Folded Spill
	mv	a0, a2
	call	uECC_vli_modSub
	ld	a0, -24(s0)
	ld	a1, -40(s0)
	lb	a2, -113(s0)
	call	uECC_vli_set
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	lb	a2, -113(s0)
	call	uECC_vli_set
	ld	a1, -136(s0)                    # 8-byte Folded Reload
	ld	a0, -32(s0)
	lb	a2, -113(s0)
	call	uECC_vli_set
	j	.LBB25_6
.LBB25_6:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end25:
	.size	double_jacobian_default, .Lfunc_end25-double_jacobian_default
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function uECC_vli_modSquare_fast
	.type	uECC_vli_modSquare_fast,@function
uECC_vli_modSquare_fast:                # @uECC_vli_modSquare_fast
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	ld	a2, -32(s0)
	ld	a3, -40(s0)
	mv	a1, a2
	call	uECC_vli_modMult_fast
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end26:
	.size	uECC_vli_modSquare_fast, .Lfunc_end26-uECC_vli_modSquare_fast
	.cfi_endproc
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	1
	.type	x_side_default,@function
x_side_default:                         # @x_side_default
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	li	a0, 0
	sd	a0, -48(s0)
	sd	a0, -56(s0)
	sd	a0, -64(s0)
	li	a0, 3
	sd	a0, -72(s0)
	ld	a0, -40(s0)
	lbu	a0, 0(a0)
	sb	a0, -73(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	call	uECC_vli_modSquare_fast
	ld	a1, -24(s0)
	ld	a0, -40(s0)
	addi	a3, a0, 4
	lb	a4, -73(s0)
	addi	a2, s0, -72
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	ld	a3, -40(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -24(s0)
	ld	a0, -40(s0)
	addi	a2, a0, 132
	addi	a3, a0, 4
	lb	a4, -73(s0)
	mv	a0, a1
	call	uECC_vli_modAdd
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end27:
	.size	x_side_default, .Lfunc_end27-x_side_default
	.cfi_endproc
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.p2align	1
	.type	uECC_secp256r1,@function
uECC_secp256r1:                         # @uECC_secp256r1
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(curve_secp256r1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi2)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end28:
	.size	uECC_secp256r1, .Lfunc_end28-uECC_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.p2align	1
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	li	a2, 8
	sd	a2, -88(s0)                     # 8-byte Folded Spill
	call	uECC_vli_set
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	li	a0, 0
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	sw	a0, -56(s0)
	sw	a0, -60(s0)
	sw	a0, -64(s0)
	ld	a0, -32(s0)
	lw	a0, 44(a0)
	sw	a0, -52(s0)
	ld	a0, -32(s0)
	lw	a0, 48(a0)
	sw	a0, -48(s0)
	ld	a0, -32(s0)
	lw	a0, 52(a0)
	sw	a0, -44(s0)
	ld	a0, -32(s0)
	lw	a0, 56(a0)
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 60(a0)
	sw	a0, -36(s0)
	addi	a2, s0, -64
	sd	a2, -96(s0)                     # 8-byte Folded Spill
	mv	a0, a2
	mv	a1, a2
	call	uECC_vli_add
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	sw	a0, -68(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_add
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a4, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	lw	a1, -68(s0)
	addw	a1, a1, a4
	sw	a1, -68(s0)
	ld	a1, -32(s0)
	lw	a1, 48(a1)
	sw	a1, -52(s0)
	ld	a1, -32(s0)
	lw	a1, 52(a1)
	sw	a1, -48(s0)
	ld	a1, -32(s0)
	lw	a1, 56(a1)
	sw	a1, -44(s0)
	ld	a1, -32(s0)
	lw	a1, 60(a1)
	sw	a1, -40(s0)
	sw	a0, -36(s0)
	mv	a0, a2
	mv	a1, a2
	call	uECC_vli_add
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a1, a0
	lw	a0, -68(s0)
	addw	a0, a0, a1
	sw	a0, -68(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_add
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a4, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	lw	a1, -68(s0)
	addw	a1, a1, a4
	sw	a1, -68(s0)
	ld	a1, -32(s0)
	lw	a1, 32(a1)
	sw	a1, -64(s0)
	ld	a1, -32(s0)
	lw	a1, 36(a1)
	sw	a1, -60(s0)
	ld	a1, -32(s0)
	lw	a1, 40(a1)
	sw	a1, -56(s0)
	sw	a0, -44(s0)
	sw	a0, -48(s0)
	sw	a0, -52(s0)
	ld	a0, -32(s0)
	lw	a0, 56(a0)
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 60(a0)
	sw	a0, -36(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_add
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a1, a0
	lw	a0, -68(s0)
	addw	a0, a0, a1
	sw	a0, -68(s0)
	ld	a0, -32(s0)
	lw	a0, 36(a0)
	sw	a0, -64(s0)
	ld	a0, -32(s0)
	lw	a0, 40(a0)
	sw	a0, -60(s0)
	ld	a0, -32(s0)
	lw	a0, 44(a0)
	sw	a0, -56(s0)
	ld	a0, -32(s0)
	lw	a0, 52(a0)
	sw	a0, -52(s0)
	ld	a0, -32(s0)
	lw	a0, 56(a0)
	sw	a0, -48(s0)
	ld	a0, -32(s0)
	lw	a0, 60(a0)
	sw	a0, -44(s0)
	ld	a0, -32(s0)
	lw	a0, 52(a0)
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 32(a0)
	sw	a0, -36(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_add
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a4, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	lw	a1, -68(s0)
	addw	a1, a1, a4
	sw	a1, -68(s0)
	ld	a1, -32(s0)
	lw	a1, 44(a1)
	sw	a1, -64(s0)
	ld	a1, -32(s0)
	lw	a1, 48(a1)
	sw	a1, -60(s0)
	ld	a1, -32(s0)
	lw	a1, 52(a1)
	sw	a1, -56(s0)
	sw	a0, -44(s0)
	sw	a0, -48(s0)
	sw	a0, -52(s0)
	ld	a0, -32(s0)
	lw	a0, 32(a0)
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 40(a0)
	sw	a0, -36(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_sub
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a4, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	lw	a1, -68(s0)
	subw	a1, a1, a4
	sw	a1, -68(s0)
	ld	a1, -32(s0)
	lw	a1, 48(a1)
	sw	a1, -64(s0)
	ld	a1, -32(s0)
	lw	a1, 52(a1)
	sw	a1, -60(s0)
	ld	a1, -32(s0)
	lw	a1, 56(a1)
	sw	a1, -56(s0)
	ld	a1, -32(s0)
	lw	a1, 60(a1)
	sw	a1, -52(s0)
	sw	a0, -44(s0)
	sw	a0, -48(s0)
	ld	a0, -32(s0)
	lw	a0, 36(a0)
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 44(a0)
	sw	a0, -36(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_sub
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a4, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	lw	a1, -68(s0)
	subw	a1, a1, a4
	sw	a1, -68(s0)
	ld	a1, -32(s0)
	lw	a1, 52(a1)
	sw	a1, -64(s0)
	ld	a1, -32(s0)
	lw	a1, 56(a1)
	sw	a1, -60(s0)
	ld	a1, -32(s0)
	lw	a1, 60(a1)
	sw	a1, -56(s0)
	ld	a1, -32(s0)
	lw	a1, 32(a1)
	sw	a1, -52(s0)
	ld	a1, -32(s0)
	lw	a1, 36(a1)
	sw	a1, -48(s0)
	ld	a1, -32(s0)
	lw	a1, 40(a1)
	sw	a1, -44(s0)
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 48(a0)
	sw	a0, -36(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_sub
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	mv	a4, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	lw	a1, -68(s0)
	subw	a1, a1, a4
	sw	a1, -68(s0)
	ld	a1, -32(s0)
	lw	a1, 56(a1)
	sw	a1, -64(s0)
	ld	a1, -32(s0)
	lw	a1, 60(a1)
	sw	a1, -60(s0)
	sw	a0, -56(s0)
	ld	a1, -32(s0)
	lw	a1, 36(a1)
	sw	a1, -52(s0)
	ld	a1, -32(s0)
	lw	a1, 40(a1)
	sw	a1, -48(s0)
	ld	a1, -32(s0)
	lw	a1, 44(a1)
	sw	a1, -44(s0)
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	lw	a0, 52(a0)
	sw	a0, -36(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	uECC_vli_sub
	mv	a1, a0
	lw	a0, -68(s0)
	subw	a0, a0, a1
	sw	a0, -68(s0)
	lw	a0, -68(s0)
	bgez	a0, .LBB29_5
	j	.LBB29_1
.LBB29_1:
	j	.LBB29_2
.LBB29_2:                               # =>This Inner Loop Header: Depth=1
	ld	a1, -24(s0)
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(curve_secp256r1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi3)
	addi	a2, a0, 4
	li	a3, 8
	mv	a0, a1
	call	uECC_vli_add
	mv	a1, a0
	lw	a0, -68(s0)
	addw	a0, a0, a1
	sw	a0, -68(s0)
	j	.LBB29_3
.LBB29_3:                               #   in Loop: Header=BB29_2 Depth=1
	lw	a0, -68(s0)
	bltz	a0, .LBB29_2
	j	.LBB29_4
.LBB29_4:
	j	.LBB29_11
.LBB29_5:
	j	.LBB29_6
.LBB29_6:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -68(s0)
	li	a1, 1
	sd	a1, -104(s0)                    # 8-byte Folded Spill
	bnez	a0, .LBB29_8
	j	.LBB29_7
.LBB29_7:                               #   in Loop: Header=BB29_6 Depth=1
	ld	a1, -24(s0)
.Lpcrel_hi4:
	auipc	a0, %pcrel_hi(curve_secp256r1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi4)
	addi	a0, a0, 4
	li	a2, 8
	call	uECC_vli_cmp_unsafe
	addi	a0, a0, -1
	snez	a0, a0
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB29_8
.LBB29_8:                               #   in Loop: Header=BB29_6 Depth=1
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB29_10
	j	.LBB29_9
.LBB29_9:                               #   in Loop: Header=BB29_6 Depth=1
	ld	a1, -24(s0)
.Lpcrel_hi5:
	auipc	a0, %pcrel_hi(curve_secp256r1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi5)
	addi	a2, a0, 4
	li	a3, 8
	mv	a0, a1
	call	uECC_vli_sub
	mv	a1, a0
	lw	a0, -68(s0)
	subw	a0, a0, a1
	sw	a0, -68(s0)
	j	.LBB29_6
.LBB29_10:
	j	.LBB29_11
.LBB29_11:
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end29:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end29-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	1
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        # @EccPoint_isZero
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	slli	a1, a1, 57
	srai	a1, a1, 56
	call	uECC_vli_isZero
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end30:
	.size	EccPoint_isZero, .Lfunc_end30-EccPoint_isZero
	.cfi_endproc
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.p2align	1
	.type	apply_z,@function
apply_z:                                # @apply_z
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	ld	a1, -40(s0)
	ld	a2, -48(s0)
	addi	a0, s0, -80
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	call	uECC_vli_modSquare_fast
	ld	a2, -88(s0)                     # 8-byte Folded Reload
	ld	a1, -24(s0)
	ld	a3, -48(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -88(s0)                     # 8-byte Folded Reload
	ld	a2, -40(s0)
	ld	a3, -48(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a2, -88(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)
	ld	a3, -48(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end31:
	.size	apply_z, .Lfunc_end31-apply_z
	.cfi_endproc
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	1
	.type	XYcZ_add,@function
XYcZ_add:                               # @XYcZ_add
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	sb	a0, -89(s0)
	ld	a1, -40(s0)
	ld	a2, -24(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -89(s0)
	addi	a0, s0, -88
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSub
	ld	a1, -104(s0)                    # 8-byte Folded Reload
	ld	a2, -56(s0)
	mv	a0, a1
	call	uECC_vli_modSquare_fast
	ld	a2, -104(s0)                    # 8-byte Folded Reload
	ld	a1, -24(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a2, -104(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -48(s0)
	ld	a2, -32(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -89(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	ld	a1, -48(s0)
	ld	a2, -56(s0)
	call	uECC_vli_modSquare_fast
	ld	a1, -104(s0)                    # 8-byte Folded Reload
	ld	a2, -24(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -89(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -104(s0)                    # 8-byte Folded Reload
	ld	a2, -40(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -89(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -40(s0)
	ld	a2, -24(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -89(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a2, -104(s0)                    # 8-byte Folded Reload
	ld	a0, -40(s0)
	ld	a1, -24(s0)
	ld	a3, -56(s0)
	addi	a3, a3, 4
	lb	a4, -89(s0)
	call	uECC_vli_modSub
	ld	a1, -48(s0)
	ld	a2, -40(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -48(s0)
	ld	a2, -32(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -89(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -104(s0)                    # 8-byte Folded Reload
	ld	a0, -40(s0)
	lb	a2, -89(s0)
	call	uECC_vli_set
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end32:
	.size	XYcZ_add, .Lfunc_end32-XYcZ_add
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	1
	.type	EccPoint_mult,@function
EccPoint_mult:                          # @EccPoint_mult
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -320
	.cfi_def_cfa_offset 320
	sd	ra, 312(sp)                     # 8-byte Folded Spill
	sd	s0, 304(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 320
	.cfi_def_cfa s0, 0
                                        # kill: def $x16 killed $x14
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sh	a4, -50(s0)
	sd	a5, -64(s0)
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	sb	a0, -233(s0)
	addi	a0, s0, -96
	sd	a0, -256(s0)                    # 8-byte Folded Spill
	ld	a1, -32(s0)
	lb	a2, -233(s0)
	call	uECC_vli_set
	addi	a0, s0, -160
	sd	a0, -248(s0)                    # 8-byte Folded Spill
	ld	a1, -32(s0)
	lb	a2, -233(s0)
	slli	a3, a2, 2
	add	a1, a1, a3
	call	uECC_vli_set
	ld	a0, -256(s0)                    # 8-byte Folded Reload
	ld	a1, -248(s0)                    # 8-byte Folded Reload
	ld	a4, -48(s0)
	ld	a5, -64(s0)
	addi	a2, s0, -128
	addi	a3, s0, -192
	call	XYcZ_initial_double
	lh	a0, -50(s0)
	addiw	a0, a0, -2
	sh	a0, -226(s0)
	j	.LBB33_1
.LBB33_1:                               # =>This Inner Loop Header: Depth=1
	lh	a1, -226(s0)
	li	a0, 0
	bge	a0, a1, .LBB33_4
	j	.LBB33_2
.LBB33_2:                               #   in Loop: Header=BB33_1 Depth=1
	ld	a0, -40(s0)
	lh	a1, -226(s0)
	call	uECC_vli_testBit
	seqz	a0, a0
	sw	a0, -232(s0)
	lwu	a4, -232(s0)
	li	a0, 1
	sd	a0, -280(s0)                    # 8-byte Folded Spill
	subw	a0, a0, a4
	slli	a0, a0, 32
	srli	a1, a0, 27
	addi	a2, s0, -128
	sd	a2, -272(s0)                    # 8-byte Folded Spill
	add	a0, a2, a1
	addi	a3, s0, -192
	sd	a3, -264(s0)                    # 8-byte Folded Spill
	add	a1, a1, a3
	slli	a4, a4, 5
	add	a2, a2, a4
	add	a3, a3, a4
	ld	a4, -64(s0)
	call	XYcZ_addC
	ld	a4, -280(s0)                    # 8-byte Folded Reload
	ld	a2, -272(s0)                    # 8-byte Folded Reload
	ld	a3, -264(s0)                    # 8-byte Folded Reload
	lwu	a5, -232(s0)
	slli	a1, a5, 5
	add	a0, a2, a1
	add	a1, a1, a3
	subw	a4, a4, a5
	slli	a4, a4, 32
	srli	a4, a4, 27
	add	a2, a2, a4
	add	a3, a3, a4
	ld	a4, -64(s0)
	call	XYcZ_add
	j	.LBB33_3
.LBB33_3:                               #   in Loop: Header=BB33_1 Depth=1
	lh	a0, -226(s0)
	addiw	a0, a0, -1
	sh	a0, -226(s0)
	j	.LBB33_1
.LBB33_4:
	ld	a0, -40(s0)
	li	a1, 0
	call	uECC_vli_testBit
	seqz	a0, a0
	sw	a0, -232(s0)
	lwu	a4, -232(s0)
	li	a0, 1
	sd	a0, -312(s0)                    # 8-byte Folded Spill
	subw	a0, a0, a4
	slli	a0, a0, 32
	srli	a1, a0, 27
	addi	a2, s0, -128
	sd	a2, -296(s0)                    # 8-byte Folded Spill
	add	a0, a2, a1
	addi	a3, s0, -192
	sd	a3, -288(s0)                    # 8-byte Folded Spill
	add	a1, a1, a3
	slli	a4, a4, 5
	add	a2, a2, a4
	add	a3, a3, a4
	ld	a4, -64(s0)
	call	XYcZ_addC
	ld	a2, -296(s0)                    # 8-byte Folded Reload
	addi	a1, s0, -96
	ld	a0, -64(s0)
	addi	a3, a0, 4
	lb	a4, -233(s0)
	addi	a0, s0, -224
	sd	a0, -304(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSub
	ld	a2, -312(s0)                    # 8-byte Folded Reload
	ld	a1, -304(s0)                    # 8-byte Folded Reload
	ld	a0, -288(s0)                    # 8-byte Folded Reload
	lw	a3, -232(s0)
	subw	a2, a2, a3
	slli	a2, a2, 32
	srli	a2, a2, 27
	add	a2, a2, a0
	ld	a3, -64(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -304(s0)                    # 8-byte Folded Reload
	ld	a2, -32(s0)
	ld	a3, -64(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -304(s0)                    # 8-byte Folded Reload
	ld	a0, -64(s0)
	addi	a2, a0, 4
	lb	a3, -233(s0)
	mv	a0, a1
	call	uECC_vli_modInv
	ld	a1, -304(s0)                    # 8-byte Folded Reload
	ld	a0, -32(s0)
	lb	a2, -233(s0)
	slli	a2, a2, 2
	add	a2, a2, a0
	ld	a3, -64(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a2, -312(s0)                    # 8-byte Folded Reload
	ld	a1, -304(s0)                    # 8-byte Folded Reload
	ld	a0, -296(s0)                    # 8-byte Folded Reload
	lw	a3, -232(s0)
	subw	a2, a2, a3
	slli	a2, a2, 32
	srli	a2, a2, 27
	add	a2, a2, a0
	ld	a3, -64(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a4, -312(s0)                    # 8-byte Folded Reload
	ld	a2, -296(s0)                    # 8-byte Folded Reload
	ld	a3, -288(s0)                    # 8-byte Folded Reload
	lwu	a5, -232(s0)
	slli	a1, a5, 5
	add	a0, a2, a1
	add	a1, a1, a3
	subw	a4, a4, a5
	slli	a4, a4, 32
	srli	a4, a4, 27
	add	a2, a2, a4
	add	a3, a3, a4
	ld	a4, -64(s0)
	call	XYcZ_add
	ld	a2, -304(s0)                    # 8-byte Folded Reload
	ld	a0, -296(s0)                    # 8-byte Folded Reload
	ld	a1, -288(s0)                    # 8-byte Folded Reload
	ld	a3, -64(s0)
	call	apply_z
	ld	a1, -296(s0)                    # 8-byte Folded Reload
	ld	a0, -24(s0)
	lb	a2, -233(s0)
	call	uECC_vli_set
	ld	a1, -288(s0)                    # 8-byte Folded Reload
	ld	a0, -24(s0)
	lb	a2, -233(s0)
	slli	a3, a2, 2
	add	a0, a0, a3
	call	uECC_vli_set
	ld	ra, 312(sp)                     # 8-byte Folded Reload
	ld	s0, 304(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 320
	ret
.Lfunc_end33:
	.size	EccPoint_mult, .Lfunc_end33-EccPoint_mult
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function XYcZ_initial_double
	.type	XYcZ_initial_double,@function
XYcZ_initial_double:                    # @XYcZ_initial_double
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	sd	a5, -64(s0)
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	sb	a0, -97(s0)
	ld	a0, -56(s0)
	beqz	a0, .LBB34_2
	j	.LBB34_1
.LBB34_1:
	ld	a1, -56(s0)
	lb	a2, -97(s0)
	addi	a0, s0, -96
	call	uECC_vli_set
	j	.LBB34_3
.LBB34_2:
	lb	a1, -97(s0)
	addi	a0, s0, -96
	call	uECC_vli_clear
	li	a0, 1
	sw	a0, -96(s0)
	j	.LBB34_3
.LBB34_3:
	ld	a0, -40(s0)
	ld	a1, -24(s0)
	lb	a2, -97(s0)
	call	uECC_vli_set
	ld	a0, -48(s0)
	ld	a1, -32(s0)
	lb	a2, -97(s0)
	call	uECC_vli_set
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	ld	a3, -64(s0)
	addi	a2, s0, -96
	sd	a2, -112(s0)                    # 8-byte Folded Spill
	call	apply_z
	ld	a2, -112(s0)                    # 8-byte Folded Reload
	ld	a3, -64(s0)
	ld	a4, 168(a3)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	jalr	a4
	ld	a2, -112(s0)                    # 8-byte Folded Reload
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	ld	a3, -64(s0)
	call	apply_z
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end34:
	.size	XYcZ_initial_double, .Lfunc_end34-XYcZ_initial_double
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              # @XYcZ_addC
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	sb	a0, -153(s0)
	ld	a1, -40(s0)
	ld	a2, -24(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	addi	a0, s0, -88
	sd	a0, -184(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSub
	ld	a1, -184(s0)                    # 8-byte Folded Reload
	ld	a2, -56(s0)
	mv	a0, a1
	call	uECC_vli_modSquare_fast
	ld	a2, -184(s0)                    # 8-byte Folded Reload
	ld	a1, -24(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a2, -184(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a0, -184(s0)                    # 8-byte Folded Reload
	ld	a1, -48(s0)
	ld	a2, -32(s0)
	ld	a3, -56(s0)
	addi	a3, a3, 4
	lb	a4, -153(s0)
	call	uECC_vli_modAdd
	ld	a1, -48(s0)
	ld	a2, -32(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -40(s0)
	ld	a2, -24(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	addi	a0, s0, -120
	sd	a0, -176(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSub
	ld	a2, -176(s0)                    # 8-byte Folded Reload
	ld	a1, -32(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a0, -176(s0)                    # 8-byte Folded Reload
	ld	a1, -24(s0)
	ld	a2, -40(s0)
	ld	a3, -56(s0)
	addi	a3, a3, 4
	lb	a4, -153(s0)
	call	uECC_vli_modAdd
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	ld	a2, -56(s0)
	call	uECC_vli_modSquare_fast
	ld	a2, -176(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -24(s0)
	ld	a2, -40(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	addi	a0, s0, -152
	sd	a0, -168(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSub
	ld	a2, -168(s0)                    # 8-byte Folded Reload
	ld	a1, -48(s0)
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -48(s0)
	ld	a2, -32(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a1, -184(s0)                    # 8-byte Folded Reload
	ld	a0, -168(s0)                    # 8-byte Folded Reload
	ld	a2, -56(s0)
	call	uECC_vli_modSquare_fast
	ld	a2, -176(s0)                    # 8-byte Folded Reload
	ld	a1, -168(s0)                    # 8-byte Folded Reload
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	mv	a0, a1
	call	uECC_vli_modSub
	ld	a0, -176(s0)                    # 8-byte Folded Reload
	ld	a1, -168(s0)                    # 8-byte Folded Reload
	ld	a2, -24(s0)
	ld	a3, -56(s0)
	addi	a3, a3, 4
	lb	a4, -153(s0)
	call	uECC_vli_modSub
	ld	a2, -184(s0)                    # 8-byte Folded Reload
	ld	a1, -176(s0)                    # 8-byte Folded Reload
	ld	a3, -56(s0)
	mv	a0, a1
	call	uECC_vli_modMult_fast
	ld	a1, -176(s0)                    # 8-byte Folded Reload
	ld	a2, -32(s0)
	ld	a0, -56(s0)
	addi	a3, a0, 4
	lb	a4, -153(s0)
	mv	a0, a2
	call	uECC_vli_modSub
	ld	a1, -168(s0)                    # 8-byte Folded Reload
	ld	a0, -24(s0)
	lb	a2, -153(s0)
	call	uECC_vli_set
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end35:
	.size	XYcZ_addC, .Lfunc_end35-XYcZ_addC
	.cfi_endproc
                                        # -- End function
	.globl	regularize_k                    # -- Begin function regularize_k
	.p2align	1
	.type	regularize_k,@function
regularize_k:                           # @regularize_k
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	ld	a0, -48(s0)
	lh	a0, 2(a0)
	addiw	a0, a0, 31
	srliw	a1, a0, 27
	addw	a0, a0, a1
	srli	a0, a0, 5
	sb	a0, -49(s0)
	ld	a0, -48(s0)
	lh	a0, 2(a0)
	sh	a0, -52(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	a2, -48(s0)
	addi	a2, a2, 36
	lb	a3, -49(s0)
	call	uECC_vli_add
	li	a1, 1
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	bnez	a0, .LBB36_4
	j	.LBB36_1
.LBB36_1:
	lh	a0, -52(s0)
	lb	a1, -49(s0)
	slli	a1, a1, 5
	li	a2, 0
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB36_3
	j	.LBB36_2
.LBB36_2:
	ld	a0, -32(s0)
	lh	a1, -52(s0)
	call	uECC_vli_testBit
	snez	a0, a0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB36_3
.LBB36_3:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB36_4
.LBB36_4:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	sw	a0, -56(s0)
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	ld	a2, -48(s0)
	addi	a2, a2, 36
	lb	a3, -49(s0)
	call	uECC_vli_add
	lw	a0, -56(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end36:
	.size	regularize_k, .Lfunc_end36-regularize_k
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.p2align	1
	.type	EccPoint_compute_public_key,@function
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 144
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	addi	a1, s0, -80
	sd	a1, -128(s0)
	addi	a2, s0, -112
	sd	a2, -120(s0)
	ld	a0, -40(s0)
	ld	a3, -48(s0)
	call	regularize_k
	sw	a0, -132(s0)
	ld	a0, -32(s0)
	ld	a5, -48(s0)
	addi	a1, a5, 68
	lw	a2, -132(s0)
	seqz	a2, a2
	slli	a3, a2, 3
	addi	a2, s0, -128
	add	a2, a2, a3
	ld	a2, 0(a2)
	lh	a3, 2(a5)
	addiw	a3, a3, 1
	slli	a3, a3, 48
	srai	a4, a3, 48
	li	a3, 0
	call	EccPoint_mult
	ld	a0, -32(s0)
	ld	a1, -48(s0)
	call	EccPoint_isZero
	beqz	a0, .LBB37_2
	j	.LBB37_1
.LBB37_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB37_3
.LBB37_2:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB37_3
.LBB37_3:
	lw	a0, -20(s0)
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end37:
	.size	EccPoint_compute_public_key, .Lfunc_end37-EccPoint_compute_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	1
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
	li	a0, 0
	sb	a0, -41(s0)
	j	.LBB38_1
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	lb	a0, -41(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB38_4
	j	.LBB38_2
.LBB38_2:                               #   in Loop: Header=BB38_1 Depth=1
	lw	a1, -28(s0)
	lb	a0, -41(s0)
	not	a0, a0
	addw	a0, a0, a1
	sw	a0, -48(s0)
	ld	a0, -40(s0)
	lw	a1, -48(s0)
	srliw	a2, a1, 2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	slliw	a1, a1, 3
	srlw	a0, a0, a1
	ld	a1, -24(s0)
	lb	a2, -41(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB38_3
.LBB38_3:                               #   in Loop: Header=BB38_1 Depth=1
	lbu	a0, -41(s0)
	addiw	a0, a0, 1
	sb	a0, -41(s0)
	j	.LBB38_1
.LBB38_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end38:
	.size	uECC_vli_nativeToBytes, .Lfunc_end38-uECC_vli_nativeToBytes
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.p2align	1
	.type	uECC_vli_bytesToNative,@function
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	addiw	a1, a1, 3
	sraiw	a2, a1, 31
	srliw	a2, a2, 30
	addw	a1, a1, a2
	slli	a1, a1, 54
	srai	a1, a1, 56
	call	uECC_vli_clear
	li	a0, 0
	sb	a0, -37(s0)
	j	.LBB39_1
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	lb	a0, -37(s0)
	lw	a1, -36(s0)
	bge	a0, a1, .LBB39_4
	j	.LBB39_2
.LBB39_2:                               #   in Loop: Header=BB39_1 Depth=1
	lw	a1, -36(s0)
	lb	a0, -37(s0)
	not	a0, a0
	addw	a0, a0, a1
	sw	a0, -44(s0)
	ld	a0, -32(s0)
	lb	a1, -37(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a2, -44(s0)
	srliw	a1, a2, 2
	slli	a1, a1, 2
	slliw	a2, a2, 3
	sllw	a2, a0, a2
	ld	a0, -24(s0)
	add	a1, a1, a0
	lw	a0, 0(a1)
	or	a0, a0, a2
	sw	a0, 0(a1)
	j	.LBB39_3
.LBB39_3:                               #   in Loop: Header=BB39_1 Depth=1
	lbu	a0, -37(s0)
	addiw	a0, a0, 1
	sb	a0, -37(s0)
	j	.LBB39_1
.LBB39_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end39:
	.size	uECC_vli_bytesToNative, .Lfunc_end39-uECC_vli_bytesToNative
	.cfi_endproc
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	1
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               # @uECC_generate_random_int
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
                                        # kill: def $x13 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sb	a2, -41(s0)
	li	a0, -1
	sw	a0, -48(s0)
	ld	a0, -40(s0)
	lb	a1, -41(s0)
	call	uECC_vli_numBits
	sh	a0, -54(s0)
.Lpcrel_hi6:
	auipc	a0, %pcrel_hi(g_rng_function)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi6)
	ld	a0, 0(a0)
	bnez	a0, .LBB40_2
	j	.LBB40_1
.LBB40_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB40_12
.LBB40_2:
	li	a0, 0
	sw	a0, -52(s0)
	j	.LBB40_3
.LBB40_3:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -52(s0)
	li	a0, 63
	bltu	a0, a1, .LBB40_11
	j	.LBB40_4
.LBB40_4:                               #   in Loop: Header=BB40_3 Depth=1
.Lpcrel_hi7:
	auipc	a0, %pcrel_hi(g_rng_function)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi7)
	ld	a2, 0(a0)
	ld	a0, -32(s0)
	lb	a1, -41(s0)
	slli	a1, a1, 2
	jalr	a2
	bnez	a0, .LBB40_6
	j	.LBB40_5
.LBB40_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB40_12
.LBB40_6:                               #   in Loop: Header=BB40_3 Depth=1
	lw	a1, -48(s0)
	lb	a0, -41(s0)
	lh	a3, -54(s0)
	li	a2, 0
	subw	a2, a2, a3
	srlw	a2, a1, a2
	ld	a1, -32(s0)
	slli	a0, a0, 2
	add	a1, a1, a0
	lw	a0, -4(a1)
	and	a0, a0, a2
	sw	a0, -4(a1)
	ld	a0, -32(s0)
	lb	a1, -41(s0)
	call	uECC_vli_isZero
	bnez	a0, .LBB40_9
	j	.LBB40_7
.LBB40_7:                               #   in Loop: Header=BB40_3 Depth=1
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	lb	a2, -41(s0)
	call	uECC_vli_cmp
	li	a1, 1
	bne	a0, a1, .LBB40_9
	j	.LBB40_8
.LBB40_8:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB40_12
.LBB40_9:                               #   in Loop: Header=BB40_3 Depth=1
	j	.LBB40_10
.LBB40_10:                              #   in Loop: Header=BB40_3 Depth=1
	lw	a0, -52(s0)
	addiw	a0, a0, 1
	sw	a0, -52(s0)
	j	.LBB40_3
.LBB40_11:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB40_12
.LBB40_12:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end40:
	.size	uECC_generate_random_int, .Lfunc_end40-uECC_generate_random_int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	1
	.type	uECC_valid_point,@function
uECC_valid_point:                       # @uECC_valid_point
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 128
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -40(s0)
	lbu	a0, 0(a0)
	sb	a0, -105(s0)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	EccPoint_isZero
	beqz	a0, .LBB41_2
	j	.LBB41_1
.LBB41_1:
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB41_8
.LBB41_2:
	ld	a0, -40(s0)
	addi	a0, a0, 4
	ld	a1, -32(s0)
	lb	a2, -105(s0)
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	bne	a0, a1, .LBB41_4
	j	.LBB41_3
.LBB41_3:
	ld	a0, -40(s0)
	addi	a0, a0, 4
	ld	a1, -32(s0)
	lb	a2, -105(s0)
	slli	a3, a2, 2
	add	a1, a1, a3
	call	uECC_vli_cmp_unsafe
	li	a1, 1
	beq	a0, a1, .LBB41_5
	j	.LBB41_4
.LBB41_4:
	li	a0, -2
	sw	a0, -20(s0)
	j	.LBB41_8
.LBB41_5:
	ld	a0, -32(s0)
	lb	a1, -105(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	ld	a2, -40(s0)
	addi	a0, s0, -72
	sd	a0, -128(s0)                    # 8-byte Folded Spill
	call	uECC_vli_modSquare_fast
	ld	a2, -40(s0)
	ld	a3, 176(a2)
	ld	a1, -32(s0)
	addi	a0, s0, -104
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	jalr	a3
	ld	a0, -128(s0)                    # 8-byte Folded Reload
	ld	a1, -120(s0)                    # 8-byte Folded Reload
	lb	a2, -105(s0)
	call	uECC_vli_equal
	beqz	a0, .LBB41_7
	j	.LBB41_6
.LBB41_6:
	li	a0, -3
	sw	a0, -20(s0)
	j	.LBB41_8
.LBB41_7:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB41_8
.LBB41_8:
	lw	a0, -20(s0)
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end41:
	.size	uECC_valid_point, .Lfunc_end41-uECC_valid_point
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.p2align	1
	.type	uECC_valid_public_key,@function
uECC_valid_public_key:                  # @uECC_valid_public_key
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a1, -32(s0)
	ld	a0, -40(s0)
	lb	a2, 1(a0)
	addi	a0, s0, -104
	sd	a0, -112(s0)                    # 8-byte Folded Spill
	call	uECC_vli_bytesToNative
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	ld	a2, -40(s0)
	lb	a1, 0(a2)
	slli	a1, a1, 2
	add	a0, a0, a1
	ld	a1, -32(s0)
	lb	a2, 1(a2)
	add	a1, a1, a2
	call	uECC_vli_bytesToNative
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	ld	a1, -40(s0)
	addi	a1, a1, 68
	li	a2, 16
	call	uECC_vli_cmp_unsafe
	bnez	a0, .LBB42_2
	j	.LBB42_1
.LBB42_1:
	li	a0, -4
	sw	a0, -20(s0)
	j	.LBB42_3
.LBB42_2:
	ld	a1, -40(s0)
	addi	a0, s0, -104
	call	uECC_valid_point
	sw	a0, -20(s0)
	j	.LBB42_3
.LBB42_3:
	lw	a0, -20(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end42:
	.size	uECC_valid_public_key, .Lfunc_end42-uECC_valid_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	1
	.type	uECC_compute_public_key,@function
uECC_compute_public_key:                # @uECC_compute_public_key
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 160
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	ld	a1, -32(s0)
	ld	a0, -48(s0)
	lh	a0, 2(a0)
	addi	a0, a0, 7
	srliw	a2, a0, 29
	add	a0, a0, a2
	srai	a2, a0, 3
	addi	a0, s0, -80
	sd	a0, -152(s0)                    # 8-byte Folded Spill
	call	uECC_vli_bytesToNative
	ld	a0, -152(s0)                    # 8-byte Folded Reload
	ld	a1, -48(s0)
	lh	a1, 2(a1)
	addiw	a1, a1, 31
	srliw	a2, a1, 27
	addw	a1, a1, a2
	slli	a1, a1, 51
	srai	a1, a1, 56
	call	uECC_vli_isZero
	beqz	a0, .LBB43_2
	j	.LBB43_1
.LBB43_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB43_7
.LBB43_2:
	ld	a1, -48(s0)
	addi	a0, a1, 36
	lh	a1, 2(a1)
	addiw	a1, a1, 31
	srliw	a2, a1, 27
	addw	a1, a1, a2
	slli	a1, a1, 51
	srai	a2, a1, 56
	addi	a1, s0, -80
	call	uECC_vli_cmp
	li	a1, 1
	beq	a0, a1, .LBB43_4
	j	.LBB43_3
.LBB43_3:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB43_7
.LBB43_4:
	ld	a2, -48(s0)
	addi	a0, s0, -144
	addi	a1, s0, -80
	call	EccPoint_compute_public_key
	bnez	a0, .LBB43_6
	j	.LBB43_5
.LBB43_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB43_7
.LBB43_6:
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	lb	a1, 1(a1)
	addi	a2, s0, -144
	sd	a2, -160(s0)                    # 8-byte Folded Spill
	call	uECC_vli_nativeToBytes
	ld	a2, -160(s0)                    # 8-byte Folded Reload
	ld	a0, -40(s0)
	ld	a3, -48(s0)
	lb	a1, 1(a3)
	add	a0, a0, a1
	lb	a3, 0(a3)
	slli	a3, a3, 2
	add	a2, a2, a3
	call	uECC_vli_nativeToBytes
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB43_7
.LBB43_7:
	lw	a0, -20(s0)
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end43:
	.size	uECC_compute_public_key, .Lfunc_end43-uECC_compute_public_key
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function muladd
	.type	muladd,@function
muladd:                                 # @muladd
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
                                        # kill: def $x15 killed $x11
                                        # kill: def $x15 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	sd	a2, -32(s0)
	sd	a3, -40(s0)
	sd	a4, -48(s0)
	lwu	a0, -20(s0)
	lwu	a1, -24(s0)
	mul	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	lw	a0, 0(a0)
	slli	a0, a0, 32
	ld	a1, -32(s0)
	lwu	a1, 0(a1)
	or	a0, a0, a1
	sd	a0, -64(s0)
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	add	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sltu	a2, a0, a1
	ld	a1, -48(s0)
	lw	a0, 0(a1)
	addw	a0, a0, a2
	sw	a0, 0(a1)
	lwu	a0, -60(s0)
	ld	a1, -40(s0)
	sw	a0, 0(a1)
	ld	a0, -64(s0)
	ld	a1, -32(s0)
	sw	a0, 0(a1)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end44:
	.size	muladd, .Lfunc_end44-muladd
	.cfi_endproc
                                        # -- End function
	.type	g_rng_function,@object          # @g_rng_function
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0
g_rng_function:
	.quad	default_CSPRNG
	.size	g_rng_function, 8

	.type	.L__const.x_side_default._3,@object # @__const.x_side_default._3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.L__const.x_side_default._3:
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.x_side_default._3, 32

	.type	curve_secp256r1,@object         # @curve_secp256r1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
curve_secp256r1:
	.byte	8                               # 0x8
	.byte	32                              # 0x20
	.half	256                             # 0x100
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4234356049                      # 0xfc632551
	.word	4089039554                      # 0xf3b9cac2
	.word	2803342980                      # 0xa7179e84
	.word	3169254061                      # 0xbce6faad
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	3633889942                      # 0xd898c296
	.word	4104206661                      # 0xf4a13945
	.word	770388896                       # 0x2deb33a0
	.word	1996717441                      # 0x77037d81
	.word	1671708914                      # 0x63a440f2
	.word	4173129445                      # 0xf8bce6e5
	.word	3777774151                      # 0xe12c4247
	.word	1796723186                      # 0x6b17d1f2
	.word	935285237                       # 0x37bf51f5
	.word	3417718888                      # 0xcbb64068
	.word	1798397646                      # 0x6b315ece
	.word	734933847                       # 0x2bce3357
	.word	2081398294                      # 0x7c0f9e16
	.word	2397563722                      # 0x8ee7eb4a
	.word	4263149467                      # 0xfe1a7f9b
	.word	1340293858                      # 0x4fe342e2
	.word	668098635                       # 0x27d2604b
	.word	1003371582                      # 0x3bce3c3e
	.word	3428036854                      # 0xcc53b0f6
	.word	1696401072                      # 0x651d06b0
	.word	1989707452                      # 0x769886bc
	.word	3018571093                      # 0xb3ebbd55
	.word	2855965671                      # 0xaa3a93e7
	.word	1522939352                      # 0x5ac635d8
	.zero	4
	.quad	double_jacobian_default
	.quad	x_side_default
	.quad	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 192

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uECC_vli_clear
	.addrsig_sym uECC_vli_isZero
	.addrsig_sym uECC_vli_testBit
	.addrsig_sym uECC_vli_numBits
	.addrsig_sym vli_numDigits
	.addrsig_sym uECC_vli_set
	.addrsig_sym uECC_vli_cmp_unsafe
	.addrsig_sym uECC_vli_equal
	.addrsig_sym cond_set
	.addrsig_sym uECC_vli_sub
	.addrsig_sym uECC_vli_cmp
	.addrsig_sym uECC_vli_modAdd
	.addrsig_sym uECC_vli_add
	.addrsig_sym uECC_vli_modSub
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_rshift1
	.addrsig_sym uECC_vli_mult
	.addrsig_sym uECC_vli_modMult_fast
	.addrsig_sym uECC_vli_modInv
	.addrsig_sym vli_modInv_update
	.addrsig_sym double_jacobian_default
	.addrsig_sym uECC_vli_modSquare_fast
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym EccPoint_isZero
	.addrsig_sym apply_z
	.addrsig_sym XYcZ_add
	.addrsig_sym EccPoint_mult
	.addrsig_sym XYcZ_initial_double
	.addrsig_sym XYcZ_addC
	.addrsig_sym regularize_k
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym uECC_valid_point
	.addrsig_sym default_CSPRNG
	.addrsig_sym muladd
	.addrsig_sym g_rng_function
	.addrsig_sym curve_secp256r1
