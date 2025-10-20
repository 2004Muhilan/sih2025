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
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(g_rng_function)
	sd	a0, %pcrel_lo(.Lpcrel_hi0)(a1)
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
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(g_rng_function)
	ld	a0, %pcrel_lo(.Lpcrel_hi1)(a0)
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
	lh	a0, 2(a0)
	addi	a0, a0, 7
	srliw	a1, a0, 29
	add	a0, a0, a1
	srai	a0, a0, 3
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
	lb	a0, 1(a0)
	slli	a0, a0, 1
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
	blez	a1, .LBB4_2
# %bb.1:
	andi	a2, a1, 255
	slli	a2, a2, 2
	li	a1, 0
	tail	memset
.LBB4_2:
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
	blez	a1, .LBB5_4
# %bb.1:
	li	a2, 0
	andi	a1, a1, 255
	slli	a1, a1, 2
	add	a1, a1, a0
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	addi	a0, a0, 4
	or	a2, a2, a3
	bne	a0, a1, .LBB5_2
# %bb.3:
	seqz	a0, a2
	ret
.LBB5_4:
	li	a0, 1
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
	srai	a2, a1, 5
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	li	a2, 1
	sllw	a1, a2, a1
	and	a0, a0, a1
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
	andi	a3, a1, 255
	addi	a1, a1, -1
	slli	a1, a1, 56
	srai	a1, a1, 56
	slti	a2, a1, -1
	addi	a2, a2, -1
	or	a1, a1, a2
	addi	a1, a1, 1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	mv	a2, a3
	addi	a3, a3, -1
	slli	a3, a3, 56
	bltz	a3, .LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	srai	a3, a3, 56
	andi	a3, a3, 255
	slli	a3, a3, 2
	add	a3, a3, a0
	lw	a4, 0(a3)
	addi	a3, a2, -1
	beqz	a4, .LBB7_1
# %bb.3:
	mv	a1, a2
.LBB7_4:
	andi	a2, a1, 255
	beqz	a2, .LBB7_10
# %bb.5:
	slli	a1, a1, 56
	srai	a1, a1, 56
	addi	a1, a1, -1
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	beqz	a0, .LBB7_8
# %bb.6:
	li	a2, 0
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	srliw	a0, a0, 1
	addi	a2, a2, 1
	bnez	a0, .LBB7_7
	j	.LBB7_9
.LBB7_8:
	li	a2, 0
.LBB7_9:
	slli	a1, a1, 5
	add	a2, a2, a1
.LBB7_10:
	slli	a0, a2, 48
	srai	a0, a0, 48
	ret
.Lfunc_end7:
	.size	uECC_vli_numBits, .Lfunc_end7-uECC_vli_numBits
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.p2align	1
	.type	uECC_vli_set,@function
uECC_vli_set:                           # @uECC_vli_set
	.cfi_startproc
# %bb.0:
	blez	a2, .LBB8_3
# %bb.1:
	andi	a2, a2, 255
	slli	a2, a2, 2
	add	a2, a2, a1
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	sw	a3, 0(a0)
	addi	a1, a1, 4
	addi	a0, a0, 4
	bne	a1, a2, .LBB8_2
.LBB8_3:
	ret
.Lfunc_end8:
	.size	uECC_vli_set, .Lfunc_end8-uECC_vli_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.p2align	1
	.type	uECC_vli_cmp_unsafe,@function
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
	.cfi_startproc
# %bb.0:
	andi	a2, a2, 255
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	addi	a3, a2, -1
	slli	a3, a3, 56
	bltz	a3, .LBB9_5
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	srai	a3, a3, 56
	andi	a3, a3, 255
	slli	a4, a3, 2
	add	a3, a0, a4
	lw	a3, 0(a3)
	add	a4, a4, a1
	lw	a4, 0(a4)
	bltu	a4, a3, .LBB9_6
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	addi	a2, a2, -1
	bgeu	a3, a4, .LBB9_1
# %bb.4:
	li	a0, 255
	j	.LBB9_7
.LBB9_5:
	li	a0, 0
	j	.LBB9_7
.LBB9_6:
	li	a0, 1
.LBB9_7:
	slli	a0, a0, 56
	srai	a0, a0, 56
	ret
.Lfunc_end9:
	.size	uECC_vli_cmp_unsafe, .Lfunc_end9-uECC_vli_cmp_unsafe
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.p2align	1
	.type	uECC_vli_equal,@function
uECC_vli_equal:                         # @uECC_vli_equal
	.cfi_startproc
# %bb.0:
	addi	a2, a2, -1
	slli	a3, a2, 56
	bltz	a3, .LBB10_4
# %bb.1:
	li	a2, 0
	srai	a3, a3, 56
	andi	a3, a3, 255
	slli	a3, a3, 2
	add	a0, a0, a3
	add	a3, a3, a1
	addi	a1, a1, -4
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a0)
	lw	a5, 0(a3)
	xor	a4, a4, a5
	or	a2, a2, a4
	addi	a3, a3, -4
	addi	a0, a0, -4
	bne	a3, a1, .LBB10_2
# %bb.3:
	snez	a0, a2
	ret
.LBB10_4:
	li	a0, 0
	ret
.Lfunc_end10:
	.size	uECC_vli_equal, .Lfunc_end10-uECC_vli_equal
	.cfi_endproc
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.p2align	1
	.type	cond_set,@function
cond_set:                               # @cond_set
	.cfi_startproc
# %bb.0:
	mulw	a0, a2, a0
	snez	a2, a2
	addi	a2, a2, -1
	and	a1, a1, a2
	or	a0, a0, a1
	ret
.Lfunc_end11:
	.size	cond_set, .Lfunc_end11-cond_set
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.p2align	1
	.type	uECC_vli_sub,@function
uECC_vli_sub:                           # @uECC_vli_sub
	.cfi_startproc
# %bb.0:
	li	a4, 0
	blez	a3, .LBB12_3
# %bb.1:
	andi	a3, a3, 255
	slli	a3, a3, 2
	add	a6, a1, a3
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a2)
	lw	a3, 0(a1)
	addw	a5, a5, a4
	subw	a7, a3, a5
	sltu	a3, a3, a5
	snez	a5, a5
	addiw	a5, a5, -1
	and	a4, a4, a5
	or	a4, a4, a3
	sw	a7, 0(a0)
	addi	a1, a1, 4
	addi	a2, a2, 4
	addi	a0, a0, 4
	bne	a1, a6, .LBB12_2
.LBB12_3:
	mv	a0, a4
	ret
.Lfunc_end12:
	.size	uECC_vli_sub, .Lfunc_end12-uECC_vli_sub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.p2align	1
	.type	uECC_vli_cmp,@function
uECC_vli_cmp:                           # @uECC_vli_cmp
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	andi	a6, a2, 255
	blez	a2, .LBB13_7
# %bb.1:
	li	t1, 0
	slli	a3, a6, 2
	mv	a5, sp
	add	a7, a5, a3
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a1)
	lw	a3, 0(a0)
	addw	a4, t0, t1
	subw	t0, a3, a4
	sltu	a3, a3, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a4, a4, t1
	or	t1, a4, a3
	sw	t0, 0(a5)
	addi	a5, a5, 4
	addi	a1, a1, 4
	addi	a0, a0, 4
	bne	a5, a7, .LBB13_2
# %bb.3:
	seqz	a0, t1
	addi	a0, a0, -1
	andi	a0, a0, -2
	blez	a2, .LBB13_8
.LBB13_4:
	li	a1, 0
	slli	a3, a6, 2
	mv	a2, sp
	add	a3, a3, a2
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	addi	a2, a2, 4
	or	a1, a1, a4
	bne	a2, a3, .LBB13_5
# %bb.6:
	seqz	a1, a1
	j	.LBB13_9
.LBB13_7:
	li	a0, 0
	bgtz	a2, .LBB13_4
.LBB13_8:
	li	a1, 1
.LBB13_9:
	or	a0, a0, a1
	xori	a0, a0, 1
	addi	sp, sp, 32
	ret
.Lfunc_end13:
	.size	uECC_vli_cmp, .Lfunc_end13-uECC_vli_cmp
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.p2align	1
	.type	uECC_vli_modAdd,@function
uECC_vli_modAdd:                        # @uECC_vli_modAdd
	.cfi_startproc
# %bb.0:
	andi	a6, a4, 255
	blez	a4, .LBB14_5
# %bb.1:
	li	t0, 0
	slli	a7, a6, 2
	add	a7, a7, a0
	mv	t3, a0
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a1)
	lw	t2, 0(a2)
	add	a5, t1, t0
	addw	t4, a5, t2
	sltu	t2, t4, t1
	xor	a5, t4, t1
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, t0
	or	t0, a5, t2
	sw	t4, 0(t3)
	addi	t3, t3, 4
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	t3, a7, .LBB14_2
# %bb.3:
	beqz	t0, .LBB14_5
# %bb.4:
	bgtz	a4, .LBB14_12
	j	.LBB14_14
.LBB14_5:
	mv	a1, a6
.LBB14_6:                               # =>This Inner Loop Header: Depth=1
	addi	a2, a1, -1
	slli	a2, a2, 56
	bltz	a2, .LBB14_9
# %bb.7:                                #   in Loop: Header=BB14_6 Depth=1
	srai	a2, a2, 56
	andi	a2, a2, 255
	slli	a5, a2, 2
	add	a2, a3, a5
	lw	a2, 0(a2)
	add	a5, a5, a0
	lw	a5, 0(a5)
	bltu	a5, a2, .LBB14_10
# %bb.8:                                #   in Loop: Header=BB14_6 Depth=1
	addi	a1, a1, -1
	bgeu	a2, a5, .LBB14_6
.LBB14_9:
	li	a1, 0
	bgtz	a4, .LBB14_11
	j	.LBB14_14
.LBB14_10:
	li	a1, 1
	blez	a4, .LBB14_14
.LBB14_11:
	bnez	a1, .LBB14_14
.LBB14_12:
	li	a1, 0
	slli	a2, a6, 2
	add	a6, a3, a2
.LBB14_13:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a0)
	addw	a4, a4, a1
	subw	a2, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a1, a1, a4
	or	a1, a1, a5
	sw	a2, 0(a0)
	addi	a3, a3, 4
	addi	a0, a0, 4
	bne	a3, a6, .LBB14_13
.LBB14_14:
	ret
.Lfunc_end14:
	.size	uECC_vli_modAdd, .Lfunc_end14-uECC_vli_modAdd
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.p2align	1
	.type	uECC_vli_modSub,@function
uECC_vli_modSub:                        # @uECC_vli_modSub
	.cfi_startproc
# %bb.0:
	andi	a6, a4, 255
	blez	a4, .LBB15_4
# %bb.1:
	li	t0, 0
	slli	a7, a6, 2
	add	a7, a7, a0
	mv	t4, a0
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	lw	t1, 0(a2)
	lw	t2, 0(a1)
	addw	t1, t1, t0
	subw	t3, t2, t1
	sltu	t2, t2, t1
	snez	a5, t1
	addiw	a5, a5, -1
	and	a5, a5, t0
	or	t0, a5, t2
	sw	t3, 0(t4)
	addi	t4, t4, 4
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	t4, a7, .LBB15_2
# %bb.3:
	seqz	a1, t0
	bgtz	a4, .LBB15_5
	j	.LBB15_8
.LBB15_4:
	li	a1, 1
	blez	a4, .LBB15_8
.LBB15_5:
	bnez	a1, .LBB15_8
# %bb.6:
	li	a5, 0
	slli	a2, a6, 2
	add	a6, a3, a2
.LBB15_7:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a0)
	lw	a2, 0(a3)
	add	a1, a4, a5
	addw	a1, a1, a2
	sltu	a2, a1, a4
	xor	a4, a4, a1
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, a5
	or	a5, a4, a2
	sw	a1, 0(a0)
	addi	a3, a3, 4
	addi	a0, a0, 4
	bne	a3, a6, .LBB15_7
.LBB15_8:
	ret
.Lfunc_end15:
	.size	uECC_vli_modSub, .Lfunc_end15-uECC_vli_modSub
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_mmod                   # -- Begin function uECC_vli_mmod
	.p2align	1
	.type	uECC_vli_mmod,@function
uECC_vli_mmod:                          # @uECC_vli_mmod
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -224
	.cfi_def_cfa_offset 224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	sd	s1, 200(sp)                     # 8-byte Folded Spill
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	s4, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 168(sp)                     # 8-byte Folded Spill
	sd	s6, 160(sp)                     # 8-byte Folded Spill
	sd	s7, 152(sp)                     # 8-byte Folded Spill
	sd	s8, 144(sp)                     # 8-byte Folded Spill
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
	mv	s2, a3
	mv	s6, a2
	mv	s4, a0
	addi	a0, sp, 16
	sd	a0, 0(sp)
	sd	a1, 8(sp)
	slli	s8, a3, 1
	andi	s3, a3, 255
	addi	a0, a3, -1
	slli	a0, a0, 56
	srai	a0, a0, 56
	slti	a1, a0, -1
	addi	a1, a1, -1
	or	a0, a0, a1
	addi	a0, a0, 1
	mv	a2, s3
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	mv	a1, a2
	addi	a2, a2, -1
	slli	a2, a2, 56
	bltz	a2, .LBB16_4
# %bb.2:                                #   in Loop: Header=BB16_1 Depth=1
	srai	a2, a2, 56
	andi	a2, a2, 255
	slli	a2, a2, 2
	add	a2, a2, s6
	lw	a3, 0(a2)
	addi	a2, a1, -1
	beqz	a3, .LBB16_1
# %bb.3:
	mv	a0, a1
.LBB16_4:
	andi	a1, a0, 255
	beqz	a1, .LBB16_8
# %bb.5:
	slli	a0, a0, 56
	srai	a0, a0, 56
	addi	a0, a0, -1
	slli	a1, a0, 2
	add	a1, a1, s6
	lw	a1, 0(a1)
	beqz	a1, .LBB16_9
# %bb.6:
	li	a2, 0
.LBB16_7:                               # =>This Inner Loop Header: Depth=1
	srliw	a1, a1, 1
	addi	a2, a2, 1
	bnez	a1, .LBB16_7
	j	.LBB16_10
.LBB16_8:
	li	a2, 0
	j	.LBB16_11
.LBB16_9:
	li	a2, 0
.LBB16_10:
	slli	a0, a0, 5
	add	a2, a2, a0
.LBB16_11:
	slli	a0, s2, 6
	sub	a0, a0, a2
	slli	a0, a0, 48
	srai	s5, a0, 48
	srliw	a0, s5, 27
	add	a0, a0, s5
	srai	a2, a0, 5
	slli	a2, a2, 56
	srai	s1, a2, 56
	andi	a0, a0, -32
	sub	s7, s5, a0
	blez	s1, .LBB16_13
# %bb.12:
	srli	a2, a2, 54
	addi	a0, sp, 80
	li	a1, 0
	call	memset
.LBB16_13:
	blez	s7, .LBB16_17
# %bb.14:
	beqz	s2, .LBB16_19
# %bb.15:
	li	a2, 0
	li	a0, 32
	sub	a0, a0, s7
	slli	a1, s2, 32
	srli	a1, a1, 30
	add	a1, a1, s6
	addi	a3, sp, 80
.LBB16_16:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(s6)
	sllw	a5, a4, s7
	or	a2, a2, a5
	slli	a5, s1, 32
	srli	a5, a5, 30
	add	a5, a5, a3
	sw	a2, 0(a5)
	srlw	a2, a4, a0
	addi	s6, s6, 4
	addi	s1, s1, 1
	bne	s6, a1, .LBB16_16
	j	.LBB16_19
.LBB16_17:
	blez	s2, .LBB16_19
# %bb.18:
	slli	a0, s1, 2
	addi	a1, sp, 80
	add	a0, a0, a1
	slli	a2, s3, 2
	mv	a1, s6
	call	memcpy
.LBB16_19:
	bltz	s5, .LBB16_36
# %bb.20:
	slli	a6, s3, 2
	addi	t4, sp, 80
	add	a7, t4, a6
	slli	t3, s2, 2
	add	t3, t3, t4
	addi	t1, t3, -4
	add	a6, a6, t3
	li	t2, 1
	mv	t0, sp
	j	.LBB16_23
.LBB16_21:                              #   in Loop: Header=BB16_23 Depth=1
	lw	a0, 0(t3)
	lw	a1, 0(t1)
	slli	a0, a0, 31
	or	a0, a0, a1
	sw	a0, 0(t1)
.LBB16_22:                              #   in Loop: Header=BB16_23 Depth=1
	xor	a1, t2, a4
	slli	a0, s5, 48
	addi	s5, s5, -1
	srai	a0, a0, 48
	seqz	t2, a1
	blez	a0, .LBB16_35
.LBB16_23:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_26 Depth 2
                                        #     Child Loop BB16_31 Depth 2
                                        #     Child Loop BB16_34 Depth 2
	blez	s2, .LBB16_28
# %bb.24:                               #   in Loop: Header=BB16_23 Depth=1
	slli	a1, t2, 3
	add	a1, a1, t0
	ld	a0, 0(a1)
	xori	a2, t2, 1
	slli	a2, a2, 3
	add	a2, a2, t0
	ld	a5, 0(a2)
	li	a3, 0
	li	a4, 0
	j	.LBB16_26
.LBB16_25:                              #   in Loop: Header=BB16_26 Depth=2
	subw	s0, s0, a2
	add	s1, s1, a5
	addi	a3, a3, 1
	slli	a1, a3, 56
	srai	a1, a1, 56
	sw	s0, 0(s1)
	bge	a1, s8, .LBB16_29
.LBB16_26:                              #   Parent Loop BB16_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a2, a3, 56
	srai	a2, a2, 56
	slli	s1, a2, 2
	add	a2, t4, s1
	lw	a2, 0(a2)
	add	a1, a0, s1
	lw	s0, 0(a1)
	addw	a2, a2, a4
	beqz	a2, .LBB16_25
# %bb.27:                               #   in Loop: Header=BB16_26 Depth=2
	sltu	a4, s0, a2
	j	.LBB16_25
.LBB16_28:                              #   in Loop: Header=BB16_23 Depth=1
	li	a4, 0
.LBB16_29:                              #   in Loop: Header=BB16_23 Depth=1
	blez	s2, .LBB16_21
# %bb.30:                               #   in Loop: Header=BB16_23 Depth=1
	li	a1, 0
	mv	a3, a7
.LBB16_31:                              #   Parent Loop BB16_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -4(a3)
	addi	a2, a3, -4
	srliw	a5, a0, 1
	or	a1, a1, a5
	sw	a1, -4(a3)
	slli	a1, a0, 31
	mv	a3, a2
	bltu	t4, a2, .LBB16_31
# %bb.32:                               #   in Loop: Header=BB16_23 Depth=1
	lw	a0, 0(t3)
	lw	a1, 0(t1)
	slli	a0, a0, 31
	or	a0, a0, a1
	sw	a0, 0(t1)
	blez	s2, .LBB16_22
# %bb.33:                               #   in Loop: Header=BB16_23 Depth=1
	li	a1, 0
	mv	a3, a6
.LBB16_34:                              #   Parent Loop BB16_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -4(a3)
	addi	a2, a3, -4
	srliw	a5, a0, 1
	or	a1, a1, a5
	sw	a1, -4(a3)
	slli	a1, a0, 31
	mv	a3, a2
	bltu	t3, a2, .LBB16_34
	j	.LBB16_22
.LBB16_35:
	seqz	a0, a1
	bgtz	s2, .LBB16_37
	j	.LBB16_39
.LBB16_36:
	li	a0, 1
	blez	s2, .LBB16_39
.LBB16_37:
	slli	a0, a0, 3
	mv	a1, sp
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, s3, 2
	add	a1, a1, s4
.LBB16_38:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a0)
	sw	a2, 0(s4)
	addi	s4, s4, 4
	addi	a0, a0, 4
	bne	s4, a1, .LBB16_38
.LBB16_39:
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	ld	s7, 152(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end16:
	.size	uECC_vli_mmod, .Lfunc_end16-uECC_vli_mmod
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.p2align	1
	.type	uECC_vli_modMult,@function
uECC_vli_modMult:                       # @uECC_vli_modMult
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	mv	s0, a4
	mv	s2, a3
	mv	s1, a0
	mv	a0, sp
	mv	a3, a4
	call	uECC_vli_mult
	mv	a1, sp
	mv	a0, s1
	mv	a2, s2
	mv	a3, s0
	call	uECC_vli_mmod
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end17:
	.size	uECC_vli_modMult, .Lfunc_end17-uECC_vli_modMult
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
uECC_vli_mult:                          # @uECC_vli_mult
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	s0, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	andi	a6, a3, 255
	blez	a3, .LBB18_5
# %bb.1:
	li	a7, 0
	li	s2, 0
	li	t4, 0
	addi	t0, a2, -4
	mv	t1, a2
.LBB18_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	mv	t3, t4
	mv	t4, s2
	mv	a5, a1
	mv	s0, t1
	li	s2, 0
.LBB18_3:                               #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	t2, 0(a5)
	lwu	s1, 0(s0)
	mul	s1, s1, t2
	slli	t4, t4, 32
	slli	a4, t3, 32
	srli	a4, a4, 32
	or	a4, t4, a4
	add	t3, a4, s1
	sltu	a4, t3, a4
	add	s2, s2, a4
	srli	t4, t3, 32
	addi	s0, s0, -4
	addi	a5, a5, 4
	bne	s0, t0, .LBB18_3
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	slli	a4, a7, 2
	add	a4, a4, a0
	sw	t3, 0(a4)
	addi	a7, a7, 1
	addi	t1, t1, 4
	bne	a7, a6, .LBB18_2
	j	.LBB18_6
.LBB18_5:
	li	t4, 0
	li	s2, 0
.LBB18_6:
	slli	a7, a3, 1
	addi	a7, a7, -1
	bge	a3, a7, .LBB18_12
# %bb.7:
	li	t0, 1
	mv	t1, a3
	j	.LBB18_9
.LBB18_8:                               #   in Loop: Header=BB18_9 Depth=1
	mv	a4, s2
	add	t2, t2, a0
	sw	t4, 0(t2)
	slli	a5, t1, 56
	srai	a5, a5, 56
	addi	t0, t0, 1
	mv	s2, t3
	mv	t4, a4
	bge	a5, a7, .LBB18_13
.LBB18_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
	slli	a4, t1, 56
	srai	a4, a4, 56
	addi	t1, t1, 1
	subw	a5, t1, a3
	slli	a5, a5, 56
	srai	a5, a5, 56
	slli	t2, a4, 2
	li	t3, 0
	bge	a5, a3, .LBB18_8
# %bb.10:                               #   in Loop: Header=BB18_9 Depth=1
	slli	a4, t0, 56
	srai	a4, a4, 56
	slli	t6, a4, 2
	sub	t5, t2, t6
	add	t5, t5, a2
	add	t6, t6, a1
	addi	a4, a4, 1
.LBB18_11:                              #   Parent Loop BB18_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	a5, 0(t6)
	lwu	s0, 0(t5)
	mul	a5, s0, a5
	slli	s2, s2, 32
	slli	t4, t4, 32
	srli	s1, t4, 32
	or	s0, s2, s1
	add	t4, s0, a5
	sltu	a5, t4, s0
	add	t3, t3, a5
	srli	s2, t4, 32
	andi	a5, a4, 255
	addi	t5, t5, -4
	addi	t6, t6, 4
	addi	a4, a4, 1
	bne	a5, a6, .LBB18_11
	j	.LBB18_8
.LBB18_12:
	mv	a4, t4
.LBB18_13:
	slli	a7, a7, 2
	add	a0, a0, a7
	sw	a4, 0(a0)
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end18:
	.size	uECC_vli_mult, .Lfunc_end18-uECC_vli_mult
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.p2align	1
	.type	uECC_vli_modMult_fast,@function
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	mv	s0, a3
	lb	a3, 0(a3)
	mv	s1, a0
	addi	a0, sp, 8
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 8
	mv	a0, s1
	jalr	a2
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end19:
	.size	uECC_vli_modMult_fast, .Lfunc_end19-uECC_vli_modMult_fast
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
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	blez	a3, .LBB20_106
# %bb.1:
	mv	s3, a2
	li	a2, 0
	andi	s4, a3, 255
	slli	s2, s4, 2
	add	a4, a1, s2
	mv	a5, a1
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	lw	s1, 0(a5)
	addi	a5, a5, 4
	or	a2, a2, s1
	bne	a5, a4, .LBB20_2
# %bb.3:
	beqz	a2, .LBB20_6
# %bb.4:
	blez	a3, .LBB20_8
# %bb.5:
	andi	s1, a3, 255
	slli	s1, s1, 2
	mv	s5, a0
	addi	a0, sp, 104
	mv	a2, s1
	mv	s0, a3
	call	memcpy
	addi	a0, sp, 72
	mv	a1, s3
	mv	a2, s1
	call	memcpy
	addi	a0, sp, 40
	li	a1, 0
	mv	a2, s1
	call	memset
	li	a0, 1
	sw	a0, 40(sp)
	addi	a0, sp, 8
	li	a1, 0
	mv	a2, s1
	call	memset
	mv	a3, s0
	mv	a0, s5
	j	.LBB20_9
.LBB20_6:
	blez	a3, .LBB20_106
# %bb.7:
	andi	a2, a3, 255
	slli	a2, a2, 2
	li	a1, 0
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
	tail	memset
.LBB20_8:
	li	a1, 1
	sw	a1, 40(sp)
.LBB20_9:
	addi	t5, sp, 72
	add	t2, t5, s2
	addi	t6, sp, 8
	add	a7, t6, s2
	addi	a6, a7, -4
	addi	s5, sp, 104
	add	t4, s5, s2
	addi	s6, sp, 40
	add	t0, s6, s2
	addi	t1, t0, -4
	add	s7, s3, s2
	lui	t3, 524288
	j	.LBB20_11
.LBB20_10:                              #   in Loop: Header=BB20_11 Depth=1
	lw	a1, 0(a4)
	or	a1, a1, t3
	sw	a1, 0(a4)
.LBB20_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_12 Depth 2
                                        #       Child Loop BB20_58 Depth 3
                                        #       Child Loop BB20_61 Depth 3
                                        #       Child Loop BB20_63 Depth 3
                                        #       Child Loop BB20_68 Depth 3
                                        #       Child Loop BB20_71 Depth 3
                                        #       Child Loop BB20_84 Depth 3
                                        #       Child Loop BB20_94 Depth 3
                                        #       Child Loop BB20_36 Depth 3
                                        #       Child Loop BB20_39 Depth 3
                                        #       Child Loop BB20_41 Depth 3
                                        #       Child Loop BB20_46 Depth 3
                                        #       Child Loop BB20_49 Depth 3
                                        #       Child Loop BB20_80 Depth 3
                                        #       Child Loop BB20_91 Depth 3
                                        #       Child Loop BB20_26 Depth 3
                                        #       Child Loop BB20_54 Depth 3
                                        #       Child Loop BB20_88 Depth 3
                                        #       Child Loop BB20_20 Depth 3
                                        #       Child Loop BB20_31 Depth 3
                                        #       Child Loop BB20_76 Depth 3
                                        #     Child Loop BB20_101 Depth 2
                                        #     Child Loop BB20_103 Depth 2
                                        #     Child Loop BB20_99 Depth 2
                                        #     Child Loop BB20_97 Depth 2
	mv	s0, s4
.LBB20_12:                              #   Parent Loop BB20_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_58 Depth 3
                                        #       Child Loop BB20_61 Depth 3
                                        #       Child Loop BB20_63 Depth 3
                                        #       Child Loop BB20_68 Depth 3
                                        #       Child Loop BB20_71 Depth 3
                                        #       Child Loop BB20_84 Depth 3
                                        #       Child Loop BB20_94 Depth 3
                                        #       Child Loop BB20_36 Depth 3
                                        #       Child Loop BB20_39 Depth 3
                                        #       Child Loop BB20_41 Depth 3
                                        #       Child Loop BB20_46 Depth 3
                                        #       Child Loop BB20_49 Depth 3
                                        #       Child Loop BB20_80 Depth 3
                                        #       Child Loop BB20_91 Depth 3
                                        #       Child Loop BB20_26 Depth 3
                                        #       Child Loop BB20_54 Depth 3
                                        #       Child Loop BB20_88 Depth 3
                                        #       Child Loop BB20_20 Depth 3
                                        #       Child Loop BB20_31 Depth 3
                                        #       Child Loop BB20_76 Depth 3
	addi	a1, s0, -1
	slli	a4, a1, 56
	srai	a1, a4, 56
	bltz	a4, .LBB20_15
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=2
	andi	a4, a1, 255
	slli	a4, a4, 2
	add	a5, s5, a4
	lw	s1, 0(a5)
	add	a4, a4, t5
	lw	a5, 0(a4)
	li	a4, 1
	bltu	a5, s1, .LBB20_16
# %bb.14:                               #   in Loop: Header=BB20_12 Depth=2
	addi	s0, s0, -1
	bgeu	s1, a5, .LBB20_12
.LBB20_15:                              #   in Loop: Header=BB20_12 Depth=2
	li	a4, 0
.LBB20_16:                              #   in Loop: Header=BB20_12 Depth=2
	bltz	a1, .LBB20_104
# %bb.17:                               #   in Loop: Header=BB20_12 Depth=2
	lbu	a1, 104(sp)
	andi	a1, a1, 1
	bnez	a1, .LBB20_23
# %bb.18:                               #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_21
# %bb.19:                               #   in Loop: Header=BB20_12 Depth=2
	li	a1, 0
	mv	a4, t4
.LBB20_20:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, -4(a4)
	addi	s0, a4, -4
	srliw	s1, a5, 1
	or	a1, a1, s1
	sw	a1, -4(a4)
	slli	a1, a5, 31
	mv	a4, s0
	bltu	s5, s0, .LBB20_20
.LBB20_21:                              #   in Loop: Header=BB20_12 Depth=2
	lbu	a1, 40(sp)
	andi	a1, a1, 1
	bnez	a1, .LBB20_29
# %bb.22:                               #   in Loop: Header=BB20_12 Depth=2
	mv	s0, s4
	bgtz	a3, .LBB20_96
	j	.LBB20_12
.LBB20_23:                              #   in Loop: Header=BB20_12 Depth=2
	lbu	a1, 72(sp)
	andi	a1, a1, 1
	bnez	a1, .LBB20_33
# %bb.24:                               #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_27
# %bb.25:                               #   in Loop: Header=BB20_12 Depth=2
	li	a1, 0
	mv	a4, t2
.LBB20_26:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a2, 1
	or	a1, a1, s0
	sw	a1, -4(a4)
	slli	a1, a2, 31
	mv	a4, a5
	bltu	t5, a5, .LBB20_26
.LBB20_27:                              #   in Loop: Header=BB20_12 Depth=2
	lbu	a1, 8(sp)
	andi	a1, a1, 1
	bnez	a1, .LBB20_52
# %bb.28:                               #   in Loop: Header=BB20_12 Depth=2
	mv	s0, s4
	bgtz	a3, .LBB20_98
	j	.LBB20_12
.LBB20_29:                              #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_74
# %bb.30:                               #   in Loop: Header=BB20_12 Depth=2
	li	a2, 0
	addi	s0, sp, 40
	mv	a4, s3
.LBB20_31:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(s0)
	lw	s1, 0(a4)
	add	a1, a5, a2
	addw	a1, a1, s1
	sltu	s1, a1, a5
	xor	a5, a5, a1
	snez	a5, a5
	addiw	a5, a5, -1
	and	a2, a2, a5
	or	a2, a2, s1
	sw	a1, 0(s0)
	addi	a4, a4, 4
	addi	s0, s0, 4
	bne	a4, s7, .LBB20_31
# %bb.32:                               #   in Loop: Header=BB20_12 Depth=2
	seqz	a1, a2
	bgtz	a3, .LBB20_75
	j	.LBB20_77
.LBB20_33:                              #   in Loop: Header=BB20_12 Depth=2
	beqz	a4, .LBB20_56
# %bb.34:                               #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_40
# %bb.35:                               #   in Loop: Header=BB20_12 Depth=2
	li	s0, 0
	addi	a1, sp, 72
	addi	a4, sp, 104
.LBB20_36:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(a1)
	lw	a5, 0(a4)
	addw	a2, a2, s0
	subw	s1, a5, a2
	sltu	a5, a5, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, s0
	or	s0, a2, a5
	sw	s1, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, t2, .LBB20_36
# %bb.37:                               #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_40
# %bb.38:                               #   in Loop: Header=BB20_12 Depth=2
	li	a1, 0
	mv	a4, t4
.LBB20_39:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a2, 1
	or	a1, a1, s0
	sw	a1, -4(a4)
	slli	a1, a2, 31
	mv	a4, a5
	bltu	s5, a5, .LBB20_39
.LBB20_40:                              #   in Loop: Header=BB20_12 Depth=2
	mv	a1, s4
.LBB20_41:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi	a4, a1, -1
	slli	a4, a4, 56
	bltz	a4, .LBB20_47
# %bb.42:                               #   in Loop: Header=BB20_41 Depth=3
	srai	a4, a4, 56
	andi	a2, a4, 255
	slli	a2, a2, 2
	add	a4, s6, a2
	lw	a4, 0(a4)
	add	a2, a2, t6
	lw	a5, 0(a2)
	bltu	a5, a4, .LBB20_47
# %bb.43:                               #   in Loop: Header=BB20_41 Depth=3
	addi	a1, a1, -1
	bgeu	a4, a5, .LBB20_41
# %bb.44:                               #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_50
# %bb.45:                               #   in Loop: Header=BB20_12 Depth=2
	li	s0, 0
	addi	a1, sp, 40
	mv	a4, s3
.LBB20_46:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(a1)
	lw	a5, 0(a4)
	add	s1, a2, s0
	addw	a5, a5, s1
	sltu	s1, a5, a2
	xor	a2, a2, a5
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, s0
	or	s0, a2, s1
	sw	a5, 0(a1)
	addi	a4, a4, 4
	addi	a1, a1, 4
	bne	a4, s7, .LBB20_46
.LBB20_47:                              #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_50
# %bb.48:                               #   in Loop: Header=BB20_12 Depth=2
	li	s0, 0
	addi	a1, sp, 8
	addi	a4, sp, 40
.LBB20_49:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(a1)
	lw	a5, 0(a4)
	addw	a2, a2, s0
	subw	s1, a5, a2
	sltu	a5, a5, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, s0
	or	s0, a2, a5
	sw	s1, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, a7, .LBB20_49
.LBB20_50:                              #   in Loop: Header=BB20_12 Depth=2
	lbu	a1, 40(sp)
	andi	a1, a1, 1
	bnez	a1, .LBB20_78
# %bb.51:                               #   in Loop: Header=BB20_12 Depth=2
	mv	s0, s4
	bgtz	a3, .LBB20_102
	j	.LBB20_12
.LBB20_52:                              #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_86
# %bb.53:                               #   in Loop: Header=BB20_12 Depth=2
	li	a1, 0
	addi	s0, sp, 8
	mv	a4, s3
.LBB20_54:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(s0)
	lw	a5, 0(a4)
	add	s1, a2, a1
	addw	a5, a5, s1
	sltu	s1, a5, a2
	xor	a2, a2, a5
	snez	a2, a2
	addiw	a2, a2, -1
	and	a1, a1, a2
	or	a1, a1, s1
	sw	a5, 0(s0)
	addi	a4, a4, 4
	addi	s0, s0, 4
	bne	a4, s7, .LBB20_54
# %bb.55:                               #   in Loop: Header=BB20_12 Depth=2
	seqz	a1, a1
	bgtz	a3, .LBB20_87
	j	.LBB20_95
.LBB20_56:                              #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_62
# %bb.57:                               #   in Loop: Header=BB20_12 Depth=2
	li	s0, 0
	addi	a1, sp, 104
	addi	a4, sp, 72
.LBB20_58:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(a1)
	lw	a5, 0(a4)
	addw	a2, a2, s0
	subw	s1, a5, a2
	sltu	a5, a5, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, s0
	or	s0, a2, a5
	sw	s1, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, t4, .LBB20_58
# %bb.59:                               #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_62
# %bb.60:                               #   in Loop: Header=BB20_12 Depth=2
	li	a1, 0
	mv	a4, t2
.LBB20_61:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a2, 1
	or	a1, a1, s0
	sw	a1, -4(a4)
	slli	a1, a2, 31
	mv	a4, a5
	bltu	t5, a5, .LBB20_61
.LBB20_62:                              #   in Loop: Header=BB20_12 Depth=2
	mv	a1, s4
.LBB20_63:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi	a4, a1, -1
	slli	a4, a4, 56
	bltz	a4, .LBB20_69
# %bb.64:                               #   in Loop: Header=BB20_63 Depth=3
	srai	a4, a4, 56
	andi	a2, a4, 255
	slli	a2, a2, 2
	add	a4, t6, a2
	lw	a4, 0(a4)
	add	a2, a2, s6
	lw	a5, 0(a2)
	bltu	a5, a4, .LBB20_69
# %bb.65:                               #   in Loop: Header=BB20_63 Depth=3
	addi	a1, a1, -1
	bgeu	a4, a5, .LBB20_63
# %bb.66:                               #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_72
# %bb.67:                               #   in Loop: Header=BB20_12 Depth=2
	li	s0, 0
	addi	a1, sp, 8
	mv	a4, s3
.LBB20_68:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(a1)
	lw	a5, 0(a4)
	add	s1, a2, s0
	addw	a5, a5, s1
	sltu	s1, a5, a2
	xor	a2, a2, a5
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, s0
	or	s0, a2, s1
	sw	a5, 0(a1)
	addi	a4, a4, 4
	addi	a1, a1, 4
	bne	a4, s7, .LBB20_68
.LBB20_69:                              #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_72
# %bb.70:                               #   in Loop: Header=BB20_12 Depth=2
	li	s0, 0
	addi	a1, sp, 40
	addi	a4, sp, 8
.LBB20_71:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(a1)
	lw	a5, 0(a4)
	addw	a2, a2, s0
	subw	s1, a5, a2
	sltu	a5, a5, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, s0
	or	s0, a2, a5
	sw	s1, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, t0, .LBB20_71
.LBB20_72:                              #   in Loop: Header=BB20_12 Depth=2
	lbu	a1, 8(sp)
	andi	a1, a1, 1
	bnez	a1, .LBB20_82
# %bb.73:                               #   in Loop: Header=BB20_12 Depth=2
	mv	s0, s4
	bgtz	a3, .LBB20_100
	j	.LBB20_12
.LBB20_74:                              #   in Loop: Header=BB20_12 Depth=2
	li	a1, 1
	blez	a3, .LBB20_77
.LBB20_75:                              #   in Loop: Header=BB20_12 Depth=2
	li	a4, 0
	mv	s0, t0
.LBB20_76:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, -4(s0)
	addi	a5, s0, -4
	srliw	s1, a2, 1
	or	a4, a4, s1
	sw	a4, -4(s0)
	slli	a4, a2, 31
	mv	s0, a5
	bltu	s6, a5, .LBB20_76
.LBB20_77:                              #   in Loop: Header=BB20_12 Depth=2
	mv	s0, s4
	mv	a4, t1
	bnez	a1, .LBB20_12
	j	.LBB20_10
.LBB20_78:                              #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_89
# %bb.79:                               #   in Loop: Header=BB20_12 Depth=2
	li	a1, 0
	addi	s0, sp, 40
	mv	a4, s3
.LBB20_80:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(s0)
	lw	a5, 0(a4)
	add	s1, a2, a1
	addw	a5, a5, s1
	sltu	s1, a5, a2
	xor	a2, a2, a5
	snez	a2, a2
	addiw	a2, a2, -1
	and	a1, a1, a2
	or	a1, a1, s1
	sw	a5, 0(s0)
	addi	a4, a4, 4
	addi	s0, s0, 4
	bne	a4, s7, .LBB20_80
# %bb.81:                               #   in Loop: Header=BB20_12 Depth=2
	seqz	a1, a1
	bgtz	a3, .LBB20_90
	j	.LBB20_77
.LBB20_82:                              #   in Loop: Header=BB20_12 Depth=2
	blez	a3, .LBB20_92
# %bb.83:                               #   in Loop: Header=BB20_12 Depth=2
	li	a1, 0
	addi	s0, sp, 8
	mv	a4, s3
.LBB20_84:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, 0(s0)
	lw	a5, 0(a4)
	add	s1, a2, a1
	addw	a5, a5, s1
	sltu	s1, a5, a2
	xor	a2, a2, a5
	snez	a2, a2
	addiw	a2, a2, -1
	and	a1, a1, a2
	or	a1, a1, s1
	sw	a5, 0(s0)
	addi	a4, a4, 4
	addi	s0, s0, 4
	bne	a4, s7, .LBB20_84
# %bb.85:                               #   in Loop: Header=BB20_12 Depth=2
	seqz	a1, a1
	bgtz	a3, .LBB20_93
	j	.LBB20_95
.LBB20_86:                              #   in Loop: Header=BB20_12 Depth=2
	li	a1, 1
	blez	a3, .LBB20_95
.LBB20_87:                              #   in Loop: Header=BB20_12 Depth=2
	li	a4, 0
	mv	s0, a7
.LBB20_88:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, -4(s0)
	addi	a5, s0, -4
	srliw	s1, a2, 1
	or	a4, a4, s1
	sw	a4, -4(s0)
	slli	a4, a2, 31
	mv	s0, a5
	bltu	t6, a5, .LBB20_88
	j	.LBB20_95
.LBB20_89:                              #   in Loop: Header=BB20_12 Depth=2
	li	a1, 1
	blez	a3, .LBB20_77
.LBB20_90:                              #   in Loop: Header=BB20_12 Depth=2
	li	a4, 0
	mv	s0, t0
.LBB20_91:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, -4(s0)
	addi	a5, s0, -4
	srliw	s1, a2, 1
	or	a4, a4, s1
	sw	a4, -4(s0)
	slli	a4, a2, 31
	mv	s0, a5
	bltu	s6, a5, .LBB20_91
	j	.LBB20_77
.LBB20_92:                              #   in Loop: Header=BB20_12 Depth=2
	li	a1, 1
	blez	a3, .LBB20_95
.LBB20_93:                              #   in Loop: Header=BB20_12 Depth=2
	li	a4, 0
	mv	s0, a7
.LBB20_94:                              #   Parent Loop BB20_11 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a2, -4(s0)
	addi	a5, s0, -4
	srliw	s1, a2, 1
	or	a4, a4, s1
	sw	a4, -4(s0)
	slli	a4, a2, 31
	mv	s0, a5
	bltu	t6, a5, .LBB20_94
.LBB20_95:                              #   in Loop: Header=BB20_12 Depth=2
	mv	s0, s4
	mv	a4, a6
	bnez	a1, .LBB20_12
	j	.LBB20_10
.LBB20_96:                              #   in Loop: Header=BB20_11 Depth=1
	li	a1, 0
	mv	a4, t0
.LBB20_97:                              #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a2, 1
	or	a1, a1, s0
	sw	a1, -4(a4)
	slli	a1, a2, 31
	mv	a4, a5
	bltu	s6, a5, .LBB20_97
	j	.LBB20_11
.LBB20_98:                              #   in Loop: Header=BB20_11 Depth=1
	li	a1, 0
	mv	a4, a7
.LBB20_99:                              #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a2, 1
	or	a1, a1, s0
	sw	a1, -4(a4)
	slli	a1, a2, 31
	mv	a4, a5
	bltu	t6, a5, .LBB20_99
	j	.LBB20_11
.LBB20_100:                             #   in Loop: Header=BB20_11 Depth=1
	li	a1, 0
	mv	a4, a7
.LBB20_101:                             #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a2, 1
	or	a1, a1, s0
	sw	a1, -4(a4)
	slli	a1, a2, 31
	mv	a4, a5
	bltu	t6, a5, .LBB20_101
	j	.LBB20_11
.LBB20_102:                             #   in Loop: Header=BB20_11 Depth=1
	li	a1, 0
	mv	a4, t0
.LBB20_103:                             #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a2, 1
	or	a1, a1, s0
	sw	a1, -4(a4)
	slli	a1, a2, 31
	mv	a4, a5
	bltu	s6, a5, .LBB20_103
	j	.LBB20_11
.LBB20_104:
	blez	a3, .LBB20_106
# %bb.105:
	addi	a1, sp, 40
	mv	a2, s2
	call	memcpy
.LBB20_106:
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end20:
	.size	uECC_vli_modInv, .Lfunc_end20-uECC_vli_modInv
	.cfi_endproc
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.p2align	1
	.type	double_jacobian_default,@function
double_jacobian_default:                # @double_jacobian_default
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -208
	.cfi_def_cfa_offset 208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	mv	s4, a3
	lbu	s5, 0(a3)
	slli	a3, s5, 56
	srai	s3, a3, 56
	mv	s6, a2
	mv	s2, a1
	mv	s1, a0
	blez	s3, .LBB21_4
# %bb.1:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s6
	mv	a2, s6
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	addi	a2, a2, 4
	or	a0, a0, a3
	bne	a2, a1, .LBB21_2
# %bb.3:
	seqz	a0, a0
	bnez	a0, .LBB21_116
	j	.LBB21_5
.LBB21_4:
	li	a0, 1
	bnez	a0, .LBB21_116
.LBB21_5:
	addi	a0, sp, 72
	mv	a1, s2
	mv	a2, s2
	mv	a3, s3
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 40
	addi	a1, sp, 72
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 72
	addi	a2, sp, 40
	mv	a1, s1
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 8
	addi	a1, sp, 72
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 72
	addi	a1, sp, 40
	addi	a2, sp, 40
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 40
	addi	a1, sp, 72
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 72
	mv	a1, s2
	mv	a2, s6
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 72
	mv	a0, s2
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 72
	mv	a1, s6
	mv	a2, s6
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 72
	mv	a0, s6
	jalr	a2
	addi	s7, s4, 4
	blez	s3, .LBB21_9
# %bb.6:
	li	s0, 0
	slli	a1, s5, 2
	add	a1, a1, s6
	mv	a2, s1
	mv	a3, s6
.LBB21_7:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addiw	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_7
# %bb.8:
	bnez	s0, .LBB21_16
.LBB21_9:
	mv	a0, s5
.LBB21_10:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB21_13
# %bb.11:                               #   in Loop: Header=BB21_10 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s7, a2
	lw	a1, 0(a1)
	add	a2, a2, s1
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB21_14
# %bb.12:                               #   in Loop: Header=BB21_10 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB21_10
.LBB21_13:
	li	a0, 0
	bgtz	s3, .LBB21_15
	j	.LBB21_18
.LBB21_14:
	li	a0, 1
	blez	s3, .LBB21_18
.LBB21_15:
	bnez	a0, .LBB21_18
.LBB21_16:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s1
	mv	a3, s7
.LBB21_17:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_17
.LBB21_18:
	blez	s3, .LBB21_22
# %bb.19:
	li	a1, 0
	slli	a0, s5, 2
	add	a0, a0, s6
	mv	a2, s6
.LBB21_20:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	slli	a4, a3, 1
	addw	a4, a4, a1
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addiw	a3, a3, -1
	and	a1, a1, a3
	sw	a4, 0(a2)
	addi	a2, a2, 4
	or	a1, a1, a5
	bne	a2, a0, .LBB21_20
# %bb.21:
	bnez	a1, .LBB21_29
.LBB21_22:
	mv	a0, s5
.LBB21_23:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB21_26
# %bb.24:                               #   in Loop: Header=BB21_23 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s7, a2
	lw	a1, 0(a1)
	add	a2, a2, s6
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB21_27
# %bb.25:                               #   in Loop: Header=BB21_23 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB21_23
.LBB21_26:
	li	a0, 0
	bgtz	s3, .LBB21_28
	j	.LBB21_31
.LBB21_27:
	li	a0, 1
	blez	s3, .LBB21_31
.LBB21_28:
	bnez	a0, .LBB21_31
.LBB21_29:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s6
	mv	a3, s7
.LBB21_30:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_30
.LBB21_31:
	blez	s3, .LBB21_35
# %bb.32:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s6
	mv	a2, s1
	mv	a3, s6
.LBB21_33:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a3)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_33
# %bb.34:
	seqz	a0, a0
	bgtz	s3, .LBB21_36
	j	.LBB21_39
.LBB21_35:
	li	a0, 1
	blez	s3, .LBB21_39
.LBB21_36:
	bnez	a0, .LBB21_39
# %bb.37:
	li	s0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s6
	mv	a3, s7
.LBB21_38:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_38
.LBB21_39:
	lb	a3, 0(s4)
	addi	a0, sp, 72
	mv	a1, s1
	mv	a2, s6
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 72
	mv	a0, s1
	jalr	a2
	blez	s3, .LBB21_43
# %bb.40:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s6
	mv	a2, s1
	mv	a3, s6
.LBB21_41:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	slli	a5, a4, 1
	addw	a5, a5, a0
	sltu	s0, a5, a4
	xor	a4, a4, a5
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, s0
	sw	a5, 0(a3)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_41
# %bb.42:
	bnez	a0, .LBB21_50
.LBB21_43:
	mv	a0, s5
.LBB21_44:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB21_47
# %bb.45:                               #   in Loop: Header=BB21_44 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s7, a2
	lw	a1, 0(a1)
	add	a2, a2, s6
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB21_48
# %bb.46:                               #   in Loop: Header=BB21_44 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB21_44
.LBB21_47:
	li	a0, 0
	bgtz	s3, .LBB21_49
	j	.LBB21_52
.LBB21_48:
	li	a0, 1
	blez	s3, .LBB21_52
.LBB21_49:
	bnez	a0, .LBB21_52
.LBB21_50:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s6
	mv	a3, s7
.LBB21_51:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_51
.LBB21_52:
	blez	s3, .LBB21_56
# %bb.53:
	li	s0, 0
	slli	a1, s5, 2
	add	a1, a1, s6
	mv	a2, s1
	mv	a3, s6
.LBB21_54:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addiw	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_54
# %bb.55:
	bnez	s0, .LBB21_63
.LBB21_56:
	mv	a0, s5
.LBB21_57:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB21_60
# %bb.58:                               #   in Loop: Header=BB21_57 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s7, a2
	lw	a1, 0(a1)
	add	a2, a2, s1
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB21_61
# %bb.59:                               #   in Loop: Header=BB21_57 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB21_57
.LBB21_60:
	li	a0, 0
	bgtz	s3, .LBB21_62
	j	.LBB21_65
.LBB21_61:
	li	a0, 1
	blez	s3, .LBB21_65
.LBB21_62:
	bnez	a0, .LBB21_65
.LBB21_63:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s1
	mv	a3, s7
.LBB21_64:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_64
.LBB21_65:
	lbu	a0, 0(s1)
	andi	a0, a0, 1
	bnez	a0, .LBB21_69
# %bb.66:
	blez	s3, .LBB21_76
# %bb.67:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s1
.LBB21_68:                              # =>This Inner Loop Header: Depth=1
	lw	a2, -4(a1)
	addi	a3, a1, -4
	srliw	a4, a2, 1
	or	a0, a0, a4
	sw	a0, -4(a1)
	slli	a0, a2, 31
	mv	a1, a3
	bltu	s1, a3, .LBB21_68
	j	.LBB21_76
.LBB21_69:
	li	s0, 0
	blez	s3, .LBB21_72
# %bb.70:
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s1
	mv	a3, s7
.LBB21_71:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_71
.LBB21_72:
	blez	s3, .LBB21_75
# %bb.73:
	li	a1, 0
	slli	a2, s5, 2
	add	a2, a2, s1
.LBB21_74:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -4(a2)
	addi	a3, a2, -4
	srliw	a4, a0, 1
	or	a1, a1, a4
	sw	a1, -4(a2)
	slli	a1, a0, 31
	mv	a2, a3
	bltu	s1, a3, .LBB21_74
.LBB21_75:
	slli	a0, s3, 2
	add	a0, a0, s1
	lw	a1, -4(a0)
	slli	s0, s0, 31
	or	a1, a1, s0
	sw	a1, -4(a0)
.LBB21_76:
	lb	a3, 0(s4)
	addi	a0, sp, 72
	mv	a1, s1
	mv	a2, s1
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 72
	mv	a0, s6
	jalr	a2
	blez	s3, .LBB21_80
# %bb.77:
	li	a0, 0
	slli	a2, s5, 2
	addi	a1, sp, 8
	add	a2, a2, a1
	mv	a3, s6
.LBB21_78:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB21_78
# %bb.79:
	seqz	a0, a0
	bgtz	s3, .LBB21_81
	j	.LBB21_84
.LBB21_80:
	li	a0, 1
	blez	s3, .LBB21_84
.LBB21_81:
	bnez	a0, .LBB21_84
# %bb.82:
	li	s0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s6
	mv	a3, s7
.LBB21_83:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_83
.LBB21_84:
	blez	s3, .LBB21_88
# %bb.85:
	li	a0, 0
	slli	a2, s5, 2
	addi	a1, sp, 8
	add	a2, a2, a1
	mv	a3, s6
.LBB21_86:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB21_86
# %bb.87:
	seqz	a0, a0
	bgtz	s3, .LBB21_89
	j	.LBB21_92
.LBB21_88:
	li	a0, 1
	blez	s3, .LBB21_92
.LBB21_89:
	bnez	a0, .LBB21_92
# %bb.90:
	li	s0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s6
	mv	a3, s7
.LBB21_91:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_91
.LBB21_92:
	blez	s3, .LBB21_96
# %bb.93:
	li	a0, 0
	slli	a1, s5, 2
	add	a1, a1, s6
	addi	a2, sp, 8
	mv	a3, s6
.LBB21_94:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_94
# %bb.95:
	seqz	a0, a0
	bgtz	s3, .LBB21_97
	j	.LBB21_100
.LBB21_96:
	li	a0, 1
	blez	s3, .LBB21_100
.LBB21_97:
	bnez	a0, .LBB21_100
# %bb.98:
	li	s0, 0
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB21_99:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB21_99
.LBB21_100:
	lb	a3, 0(s4)
	addi	a0, sp, 72
	addi	a2, sp, 8
	mv	a1, s1
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 72
	mv	a0, s1
	jalr	a2
	blez	s3, .LBB21_104
# %bb.101:
	li	a0, 0
	slli	a2, s5, 2
	addi	a1, sp, 40
	add	a2, a2, a1
	mv	a3, s1
.LBB21_102:                             # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a1)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB21_102
# %bb.103:
	seqz	a0, a0
	bgtz	s3, .LBB21_105
	j	.LBB21_108
.LBB21_104:
	li	a0, 1
	blez	s3, .LBB21_108
.LBB21_105:
	bnez	a0, .LBB21_108
# %bb.106:
	slli	a1, s5, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 40
.LBB21_107:                             # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(s7)
	add	a5, a3, a0
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a5
	sw	a4, 0(a2)
	addi	s7, s7, 4
	addi	a2, a2, 4
	bne	s7, a1, .LBB21_107
.LBB21_108:
	blez	s3, .LBB21_116
# %bb.109:
	slli	a2, s5, 2
	add	a0, s1, a2
	mv	a1, s6
.LBB21_110:                             # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	sw	a3, 0(s1)
	addi	s1, s1, 4
	addi	a1, a1, 4
	bne	s1, a0, .LBB21_110
# %bb.111:
	blez	s3, .LBB21_116
# %bb.112:
	add	a0, s6, a2
	mv	a1, s2
.LBB21_113:                             # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	sw	a3, 0(s6)
	addi	s6, s6, 4
	addi	a1, a1, 4
	bne	s6, a0, .LBB21_113
# %bb.114:
	blez	s3, .LBB21_116
# %bb.115:
	addi	a1, sp, 40
	mv	a0, s2
	call	memcpy
.LBB21_116:
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end21:
	.size	double_jacobian_default, .Lfunc_end21-double_jacobian_default
	.cfi_endproc
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	1
	.type	x_side_default,@function
x_side_default:                         # @x_side_default
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	mv	s5, a2
	lbu	s4, 0(a2)
	mv	s3, a1
	mv	s6, a0
	slli	a0, s4, 56
	srai	s2, a0, 56
	mv	a0, sp
	mv	a2, a1
	mv	a3, s2
	call	uECC_vli_mult
	ld	a2, 184(s5)
	mv	a1, sp
	mv	a0, s6
	jalr	a2
	blez	s2, .LBB22_4
# %bb.1:
	li	a0, 0
	slli	a2, s4, 2
.Lpcrel_hi2:
	auipc	a1, %pcrel_hi(.L__const.x_side_default._3)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi2)
	add	a2, a2, a1
	mv	a3, s6
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB22_2
# %bb.3:
	seqz	a0, a0
	addi	s1, s5, 4
	bgtz	s2, .LBB22_5
	j	.LBB22_8
.LBB22_4:
	li	a0, 1
	addi	s1, s5, 4
	blez	s2, .LBB22_8
.LBB22_5:
	bnez	a0, .LBB22_8
# %bb.6:
	li	s0, 0
	slli	a1, s4, 2
	add	a1, a1, s5
	addi	a1, a1, 4
	mv	a2, s6
	mv	a3, s1
.LBB22_7:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB22_7
.LBB22_8:
	lb	a3, 0(s5)
	mv	a0, sp
	mv	a1, s6
	mv	a2, s3
	call	uECC_vli_mult
	ld	a2, 184(s5)
	mv	a1, sp
	mv	a0, s6
	jalr	a2
	blez	s2, .LBB22_12
# %bb.9:
	li	s0, 0
	addi	a1, s5, 132
	slli	a2, s4, 2
	add	a2, a2, s5
	addi	a2, a2, 132
	mv	a3, s6
.LBB22_10:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a1)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addiw	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB22_10
# %bb.11:
	bnez	s0, .LBB22_19
.LBB22_12:
	mv	a0, s4
.LBB22_13:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB22_16
# %bb.14:                               #   in Loop: Header=BB22_13 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s1, a2
	lw	a1, 0(a1)
	add	a2, a2, s6
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB22_17
# %bb.15:                               #   in Loop: Header=BB22_13 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB22_13
.LBB22_16:
	li	a0, 0
	bgtz	s2, .LBB22_18
	j	.LBB22_21
.LBB22_17:
	li	a0, 1
	blez	s2, .LBB22_21
.LBB22_18:
	bnez	a0, .LBB22_21
.LBB22_19:
	li	a0, 0
	slli	s4, s4, 2
	add	a1, s4, s5
	addi	a1, a1, 4
.LBB22_20:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s1)
	lw	a3, 0(s6)
	addw	a2, a2, a0
	subw	a4, a3, a2
	sltu	a3, a3, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a0, a0, a2
	or	a0, a0, a3
	sw	a4, 0(s6)
	addi	s1, s1, 4
	addi	s6, s6, 4
	bne	s1, a1, .LBB22_20
.LBB22_21:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end22:
	.size	x_side_default, .Lfunc_end22-x_side_default
	.cfi_endproc
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.p2align	1
	.type	uECC_secp256r1,@function
uECC_secp256r1:                         # @uECC_secp256r1
	.cfi_startproc
# %bb.0:
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(curve_secp256r1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi3)
	ret
.Lfunc_end23:
	.size	uECC_secp256r1, .Lfunc_end23-uECC_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.p2align	1
	.type	vli_mmod_fast_secp256r1,@function
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	addi	a2, a0, 32
	mv	a3, a1
	mv	a4, a0
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	sw	a5, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a2, .LBB24_1
# %bb.2:
	lw	a2, 44(a1)
	li	a6, 0
	lw	a3, 48(a1)
	lw	a4, 52(a1)
	sw	a2, 20(sp)
	sw	zero, 16(sp)
	sw	a3, 24(sp)
	sw	a4, 28(sp)
	lw	a2, 56(a1)
	lw	a3, 60(a1)
	sw	zero, 12(sp)
	sw	zero, 8(sp)
	sw	a2, 32(sp)
	sw	a3, 36(sp)
	addi	a2, sp, 8
	addi	a7, sp, 40
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	slli	a4, a3, 1
	addw	a4, a4, a6
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a3, a3, a6
	sw	a4, 0(a2)
	addi	a2, a2, 4
	or	a6, a3, a5
	bne	a2, a7, .LBB24_3
# %bb.4:
	li	t0, 0
	addi	a2, sp, 8
	mv	a3, a0
.LBB24_5:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	lw	t1, 0(a2)
	add	a4, a5, t0
	addw	a4, a4, t1
	sltu	t1, a4, a5
	xor	a5, a5, a4
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, t0
	or	t0, a5, t1
	sw	a4, 0(a3)
	addi	a2, a2, 4
	addi	a3, a3, 4
	bne	a2, a7, .LBB24_5
# %bb.6:
	li	t1, 0
	lw	a2, 48(a1)
	lw	a3, 52(a1)
	lw	a4, 56(a1)
	lw	a5, 60(a1)
	sw	a2, 20(sp)
	sw	a3, 24(sp)
	sw	a4, 28(sp)
	sw	a5, 32(sp)
	sw	zero, 36(sp)
	addi	a2, sp, 8
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	slli	a4, a3, 1
	addw	a4, a4, t1
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a3, a3, t1
	sw	a4, 0(a2)
	addi	a2, a2, 4
	or	t1, a3, a5
	bne	a2, a7, .LBB24_7
# %bb.8:
	li	t2, 0
	addi	a2, sp, 8
	mv	a3, a0
.LBB24_9:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	lw	t3, 0(a2)
	add	a4, a5, t2
	addw	a4, a4, t3
	sltu	t3, a4, a5
	xor	a5, a5, a4
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, t2
	or	t2, a5, t3
	sw	a4, 0(a3)
	addi	a2, a2, 4
	addi	a3, a3, 4
	bne	a2, a7, .LBB24_9
# %bb.10:
	lw	a2, 32(a1)
	lw	a3, 36(a1)
	lw	a4, 40(a1)
	li	t3, 0
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	sw	a4, 16(sp)
	sw	zero, 28(sp)
	lw	a2, 56(a1)
	lw	a3, 60(a1)
	sw	zero, 24(sp)
	sw	zero, 20(sp)
	sw	a2, 32(sp)
	sw	a3, 36(sp)
	addi	a2, sp, 8
	mv	a3, a0
.LBB24_11:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	lw	t4, 0(a2)
	add	a4, a5, t3
	addw	a4, a4, t4
	sltu	t4, a4, a5
	xor	a5, a5, a4
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, t3
	or	t3, a5, t4
	sw	a4, 0(a3)
	addi	a2, a2, 4
	addi	a3, a3, 4
	bne	a2, a7, .LBB24_11
# %bb.12:
	lw	a2, 36(a1)
	lw	a3, 40(a1)
	li	t4, 0
	lw	a4, 44(a1)
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	lw	a2, 56(a1)
	sw	a4, 16(sp)
	lw	a3, 60(a1)
	lw	a4, 52(a1)
	sw	a2, 24(sp)
	lw	a2, 32(a1)
	sw	a3, 28(sp)
	sw	a4, 20(sp)
	sw	a4, 32(sp)
	sw	a2, 36(sp)
	addi	a2, sp, 8
	mv	a3, a0
.LBB24_13:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	lw	t5, 0(a2)
	add	a4, a5, t4
	addw	a4, a4, t5
	sltu	t5, a4, a5
	xor	a5, a5, a4
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, t4
	or	t4, a5, t5
	sw	a4, 0(a3)
	addi	a2, a2, 4
	addi	a3, a3, 4
	bne	a2, a7, .LBB24_13
# %bb.14:
	lw	a2, 44(a1)
	lw	a3, 48(a1)
	lw	a4, 52(a1)
	li	t5, 0
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	sw	a4, 16(sp)
	sw	zero, 28(sp)
	lw	a2, 32(a1)
	lw	a3, 40(a1)
	sw	zero, 24(sp)
	sw	zero, 20(sp)
	sw	a2, 32(sp)
	sw	a3, 36(sp)
	addi	a2, sp, 8
	mv	a3, a0
.LBB24_15:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	addw	a4, a4, t5
	subw	t6, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, t5
	or	t5, a4, a5
	sw	t6, 0(a3)
	addi	a2, a2, 4
	addi	a3, a3, 4
	bne	a2, a7, .LBB24_15
# %bb.16:
	li	s2, 0
	lw	a3, 48(a1)
	lw	a4, 52(a1)
	lw	a5, 56(a1)
	lw	t6, 60(a1)
	sw	a3, 8(sp)
	sw	a4, 12(sp)
	sw	a5, 16(sp)
	sw	t6, 20(sp)
	lw	a3, 36(a1)
	lw	a4, 44(a1)
	sw	zero, 28(sp)
	sw	zero, 24(sp)
	sw	a3, 32(sp)
	sw	a4, 36(sp)
	addi	a3, sp, 8
	mv	a4, a0
.LBB24_17:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	lw	a2, 0(a4)
	addw	a5, a5, s2
	subw	s0, a2, a5
	sltu	a2, a2, a5
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, s2
	or	s2, a5, a2
	sw	s0, 0(a4)
	addi	a3, a3, 4
	addi	a4, a4, 4
	bne	a3, a7, .LBB24_17
# %bb.18:
	lw	a2, 52(a1)
	lw	a4, 56(a1)
	li	a3, 0
	lw	a5, 60(a1)
	sw	a2, 8(sp)
	sw	a4, 12(sp)
	lw	a2, 32(a1)
	sw	a5, 16(sp)
	lw	a4, 36(a1)
	lw	a5, 40(a1)
	sw	a2, 20(sp)
	lw	a2, 48(a1)
	sw	a4, 24(sp)
	sw	a5, 28(sp)
	sw	zero, 32(sp)
	sw	a2, 36(sp)
	addi	a4, sp, 8
	mv	a5, a0
.LBB24_19:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a4)
	lw	s0, 0(a5)
	addw	a2, a2, a3
	subw	s1, s0, a2
	sltu	s0, s0, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, a3
	or	a3, a2, s0
	sw	s1, 0(a5)
	addi	a4, a4, 4
	addi	a5, a5, 4
	bne	a4, a7, .LBB24_19
# %bb.20:
	lw	a2, 56(a1)
	li	a4, 0
	lw	a5, 60(a1)
	lw	s1, 36(a1)
	sw	a2, 8(sp)
	lw	a2, 40(a1)
	sw	a5, 12(sp)
	sw	s1, 20(sp)
	lw	a5, 44(a1)
	sw	a2, 24(sp)
	lw	a1, 52(a1)
	sw	zero, 16(sp)
	sw	a5, 28(sp)
	sw	zero, 32(sp)
	sw	a1, 36(sp)
	addi	a1, sp, 8
	mv	a5, a0
.LBB24_21:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	lw	s1, 0(a5)
	addw	a2, a2, a4
	subw	s0, s1, a2
	sltu	s1, s1, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a2, a2, a4
	or	a4, a2, s1
	sw	s0, 0(a5)
	addi	a1, a1, 4
	addi	a5, a5, 4
	bne	a1, a7, .LBB24_21
# %bb.22:
	add	a6, a6, t0
	add	a6, a6, t1
	add	a6, a6, t2
	add	a6, a6, t3
	add	a6, a6, t4
	add	t5, t5, s2
	add	a3, a3, t5
	add	a3, a3, a4
	subw	t0, a6, a3
	bltz	t0, .LBB24_31
# %bb.23:
.Lpcrel_hi4:
	auipc	a2, %pcrel_hi(curve_secp256r1)
	addi	a7, a2, %pcrel_lo(.Lpcrel_hi4)
	addi	a6, a7, 4
	addi	a4, a7, 36
	beqz	t0, .LBB24_27
.LBB24_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_25 Depth 2
	li	a5, 0
	mv	a3, a0
	mv	a2, a6
.LBB24_25:                              #   Parent Loop BB24_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, 0(a2)
	lw	s1, 0(a3)
	addw	a1, a1, a5
	subw	s0, s1, a1
	sltu	s1, s1, a1
	snez	a1, a1
	addi	a1, a1, -1
	and	a1, a1, a5
	or	a5, a1, s1
	sw	s0, 0(a3)
	addi	a2, a2, 4
	addi	a3, a3, 4
	bne	a2, a4, .LBB24_25
# %bb.26:                               #   in Loop: Header=BB24_24 Depth=1
	subw	t0, t0, a5
	bnez	t0, .LBB24_24
.LBB24_27:
	li	a3, 8
.LBB24_28:                              # =>This Inner Loop Header: Depth=1
	addi	a2, a3, -1
	slli	a2, a2, 56
	bltz	a2, .LBB24_24
# %bb.29:                               #   in Loop: Header=BB24_28 Depth=1
	srai	a2, a2, 56
	andi	a1, a2, 255
	slli	a1, a1, 2
	add	a2, a7, a1
	lw	a2, 4(a2)
	add	a1, a1, a0
	lw	a5, 0(a1)
	bltu	a5, a2, .LBB24_35
# %bb.30:                               #   in Loop: Header=BB24_28 Depth=1
	addi	a3, a3, -1
	bgeu	a2, a5, .LBB24_28
	j	.LBB24_24
.LBB24_31:
.Lpcrel_hi5:
	auipc	a2, %pcrel_hi(curve_secp256r1)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi5)
	addi	a6, a2, 4
	addi	a3, a2, 36
.LBB24_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_33 Depth 2
	li	a1, 0
	mv	a5, a0
	mv	a2, a6
.LBB24_33:                              #   Parent Loop BB24_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s1, 0(a5)
	lw	s0, 0(a2)
	add	a4, s1, a1
	addw	a4, a4, s0
	sltu	s0, a4, s1
	xor	s1, s1, a4
	snez	s1, s1
	addi	s1, s1, -1
	and	a1, a1, s1
	or	a1, a1, s0
	sw	a4, 0(a5)
	addi	a2, a2, 4
	addi	a5, a5, 4
	bne	a2, a3, .LBB24_33
# %bb.34:                               #   in Loop: Header=BB24_32 Depth=1
	addw	t0, a1, t0
	bltz	t0, .LBB24_32
.LBB24_35:
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end24:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end24-vli_mmod_fast_secp256r1
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	1
	.type	EccPoint_isZero,@function
EccPoint_isZero:                        # @EccPoint_isZero
	.cfi_startproc
# %bb.0:
	lbu	a1, 0(a1)
	slli	a1, a1, 57
	srai	a2, a1, 56
	blez	a2, .LBB25_4
# %bb.1:
	li	a1, 0
	andi	a2, a2, 255
	slli	a2, a2, 2
	add	a2, a2, a0
.LBB25_2:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	addi	a0, a0, 4
	or	a1, a1, a3
	bne	a0, a2, .LBB25_2
# %bb.3:
	seqz	a0, a1
	ret
.LBB25_4:
	li	a0, 1
	ret
.Lfunc_end25:
	.size	EccPoint_isZero, .Lfunc_end25-EccPoint_isZero
	.cfi_endproc
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.p2align	1
	.type	apply_z,@function
apply_z:                                # @apply_z
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	mv	s0, a3
	lb	a3, 0(a3)
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	addi	a0, sp, 40
	mv	a1, a2
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a0, sp, 8
	addi	a1, sp, 40
	jalr	a2
	lb	a3, 0(s0)
	addi	a0, sp, 40
	addi	a2, sp, 8
	mv	a1, s3
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 40
	mv	a0, s3
	jalr	a2
	lb	a3, 0(s0)
	addi	a0, sp, 40
	addi	a1, sp, 8
	mv	a2, s1
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a0, sp, 8
	addi	a1, sp, 40
	jalr	a2
	lb	a3, 0(s0)
	addi	a0, sp, 40
	addi	a2, sp, 8
	mv	a1, s2
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 40
	mv	a0, s2
	jalr	a2
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end26:
	.size	apply_z, .Lfunc_end26-apply_z
	.cfi_endproc
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	1
	.type	XYcZ_add,@function
XYcZ_add:                               # @XYcZ_add
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -192
	.cfi_def_cfa_offset 192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
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
	mv	s4, a4
	lbu	s6, 0(a4)
	slli	a4, s6, 56
	srai	s3, a4, 56
	mv	s5, a3
	mv	s2, a2
	mv	s8, a1
	mv	s9, a0
	blez	s3, .LBB27_4
# %bb.1:
	li	a0, 0
	slli	a2, s6, 2
	addi	a1, sp, 8
	add	a2, a2, a1
	mv	a3, s2
	mv	a4, s9
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	lw	s1, 0(a3)
	addw	a5, a5, a0
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addiw	a5, a5, -1
	and	a0, a0, a5
	or	a0, a0, s1
	sw	s0, 0(a1)
	addi	a1, a1, 4
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB27_2
# %bb.3:
	seqz	a0, a0
	addi	s7, s4, 4
	bgtz	s3, .LBB27_5
	j	.LBB27_8
.LBB27_4:
	li	a0, 1
	addi	s7, s4, 4
	blez	s3, .LBB27_8
.LBB27_5:
	bnez	a0, .LBB27_8
# %bb.6:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB27_7:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_7
.LBB27_8:
	addi	a0, sp, 40
	addi	a1, sp, 8
	addi	a2, sp, 8
	mv	a3, s3
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 8
	addi	a1, sp, 40
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 40
	addi	a2, sp, 8
	mv	a1, s9
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 40
	mv	a0, s9
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 40
	addi	a2, sp, 8
	mv	a1, s2
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 40
	mv	a0, s2
	jalr	a2
	blez	s3, .LBB27_12
# %bb.9:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s8
	mv	a2, s5
	mv	a3, s8
.LBB27_10:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_10
# %bb.11:
	seqz	a0, a0
	bgtz	s3, .LBB27_13
	j	.LBB27_16
.LBB27_12:
	li	a0, 1
	blez	s3, .LBB27_16
.LBB27_13:
	bnez	a0, .LBB27_16
# %bb.14:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s5
	mv	a3, s7
.LBB27_15:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_15
.LBB27_16:
	lb	a3, 0(s4)
	addi	a0, sp, 40
	mv	a1, s5
	mv	a2, s5
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 8
	addi	a1, sp, 40
	addi	s1, sp, 8
	jalr	a2
	blez	s3, .LBB27_20
# %bb.17:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s9
	mv	a2, s9
.LBB27_18:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(s1)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(s1)
	addi	a2, a2, 4
	addi	s1, s1, 4
	bne	a2, a1, .LBB27_18
# %bb.19:
	seqz	a0, a0
	bgtz	s3, .LBB27_21
	j	.LBB27_24
.LBB27_20:
	li	a0, 1
	blez	s3, .LBB27_24
.LBB27_21:
	bnez	a0, .LBB27_24
# %bb.22:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB27_23:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_23
.LBB27_24:
	blez	s3, .LBB27_28
# %bb.25:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s2
	addi	a2, sp, 8
	mv	a3, s2
.LBB27_26:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_26
# %bb.27:
	seqz	a0, a0
	bgtz	s3, .LBB27_29
	j	.LBB27_32
.LBB27_28:
	li	a0, 1
	blez	s3, .LBB27_32
.LBB27_29:
	bnez	a0, .LBB27_32
# %bb.30:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB27_31:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_31
.LBB27_32:
	blez	s3, .LBB27_36
# %bb.33:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s9
	mv	a2, s2
	mv	a3, s9
.LBB27_34:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_34
# %bb.35:
	seqz	a0, a0
	bgtz	s3, .LBB27_37
	j	.LBB27_40
.LBB27_36:
	li	a0, 1
	blez	s3, .LBB27_40
.LBB27_37:
	bnez	a0, .LBB27_40
# %bb.38:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s2
	mv	a3, s7
.LBB27_39:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_39
.LBB27_40:
	lb	a3, 0(s4)
	addi	a0, sp, 40
	mv	a1, s8
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 40
	mv	a0, s8
	jalr	a2
	blez	s3, .LBB27_44
# %bb.41:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s2
	addi	a2, sp, 8
	mv	a3, s2
.LBB27_42:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(s9)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a3)
	addi	a3, a3, 4
	addi	a2, a2, 4
	addi	s9, s9, 4
	bne	a3, a1, .LBB27_42
# %bb.43:
	seqz	a0, a0
	bgtz	s3, .LBB27_45
	j	.LBB27_48
.LBB27_44:
	li	a0, 1
	blez	s3, .LBB27_48
.LBB27_45:
	bnez	a0, .LBB27_48
# %bb.46:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s2
	mv	a3, s7
.LBB27_47:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB27_47
.LBB27_48:
	lb	a3, 0(s4)
	addi	a0, sp, 40
	mv	a1, s5
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 40
	mv	a0, s5
	jalr	a2
	blez	s3, .LBB27_52
# %bb.49:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s8
	mv	a2, s5
.LBB27_50:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(s8)
	lw	a4, 0(a2)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(a2)
	addi	s8, s8, 4
	addi	a2, a2, 4
	bne	s8, a1, .LBB27_50
# %bb.51:
	seqz	a0, a0
	bgtz	s3, .LBB27_53
	j	.LBB27_56
.LBB27_52:
	li	a0, 1
	blez	s3, .LBB27_56
.LBB27_53:
	bnez	a0, .LBB27_56
# %bb.54:
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
.LBB27_55:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s5)
	lw	a3, 0(s7)
	add	a4, a2, a0
	addw	a3, a3, a4
	sltu	a4, a3, a2
	xor	a2, a2, a3
	snez	a2, a2
	addi	a2, a2, -1
	and	a0, a0, a2
	or	a0, a0, a4
	sw	a3, 0(s5)
	addi	s7, s7, 4
	addi	s5, s5, 4
	bne	s7, a1, .LBB27_55
.LBB27_56:
	blez	s3, .LBB27_58
# %bb.57:
	slli	a2, s6, 2
	addi	a1, sp, 8
	mv	a0, s2
	call	memcpy
.LBB27_58:
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end27:
	.size	XYcZ_add, .Lfunc_end27-XYcZ_add
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	1
	.type	EccPoint_mult,@function
EccPoint_mult:                          # @EccPoint_mult
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -400
	.cfi_def_cfa_offset 400
	sd	ra, 392(sp)                     # 8-byte Folded Spill
	sd	s0, 384(sp)                     # 8-byte Folded Spill
	sd	s1, 376(sp)                     # 8-byte Folded Spill
	sd	s2, 368(sp)                     # 8-byte Folded Spill
	sd	s3, 360(sp)                     # 8-byte Folded Spill
	sd	s4, 352(sp)                     # 8-byte Folded Spill
	sd	s5, 344(sp)                     # 8-byte Folded Spill
	sd	s6, 336(sp)                     # 8-byte Folded Spill
	sd	s7, 328(sp)                     # 8-byte Folded Spill
	sd	s8, 320(sp)                     # 8-byte Folded Spill
	sd	s9, 312(sp)                     # 8-byte Folded Spill
	sd	s10, 304(sp)                    # 8-byte Folded Spill
	sd	s11, 296(sp)                    # 8-byte Folded Spill
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
	.cfi_offset s11, -104
	mv	s10, a5
	lbu	s0, 0(a5)
	mv	s7, a4
	mv	s9, a3
	mv	s3, a2
	mv	s1, a1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	slli	a0, s0, 56
	srai	s5, a0, 56
	addi	s11, sp, 136
	blez	s5, .LBB28_2
# %bb.1:
	slli	a2, s0, 2
	mv	a0, s11
	mv	a1, s1
	call	memcpy
.LBB28_2:
	addi	s8, sp, 72
	slli	a0, s5, 2
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	add	s1, s1, a0
	blez	s5, .LBB28_4
# %bb.3:
	slli	a2, s0, 2
	mv	a0, s8
	mv	a1, s1
	call	memcpy
.LBB28_4:
	beqz	s9, .LBB28_15
# %bb.5:
	blez	s5, .LBB28_8
# %bb.6:
	slli	a2, s0, 2
	addi	a0, sp, 168
	mv	a1, s9
	call	memcpy
	blez	s5, .LBB28_8
.LBB28_7:
	slli	s9, s0, 2
	addi	a0, sp, 104
	mv	a1, s11
	mv	a2, s9
	call	memmove
	addi	a0, sp, 40
	mv	a1, s8
	mv	a2, s9
	call	memmove
.LBB28_8:
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 232
	addi	a1, sp, 168
	addi	a2, sp, 168
	mv	a3, s5
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a2, sp, 200
	mv	a1, s11
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a1, sp, 232
	mv	a0, s11
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 200
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a2, sp, 200
	mv	a1, s8
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a1, sp, 232
	mv	a0, s8
	jalr	a2
	ld	a4, 168(s10)
	addi	a2, sp, 168
	mv	a0, s11
	mv	a1, s8
	mv	a3, s10
	jalr	a4
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 168
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 104
	addi	a2, sp, 200
	addi	s6, sp, 104
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 104
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 200
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 40
	addi	a2, sp, 200
	addi	s9, sp, 40
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 40
	addi	a1, sp, 232
	jalr	a2
	addi	s7, s7, -2
	slli	a0, s7, 48
	srai	a0, a0, 48
	blez	a0, .LBB28_11
# %bb.9:
	slli	a0, a0, 48
	srli	a0, a0, 48
	li	s4, 1
.LBB28_10:                              # =>This Inner Loop Header: Depth=1
	mv	s2, a0
	srliw	a0, a0, 5
	slli	a0, a0, 2
	add	a0, a0, s3
	lw	a0, 0(a0)
	sllw	a1, s4, s2
	and	a0, a0, a1
	seqz	a1, a0
	snez	a0, a0
	slli	a0, a0, 5
	add	s8, s6, a0
	add	s7, s9, a0
	slli	a1, a1, 5
	add	s0, s6, a1
	add	s1, s9, a1
	mv	a0, s8
	mv	a1, s7
	mv	a2, s0
	mv	a3, s1
	mv	a4, s10
	call	XYcZ_addC
	mv	a0, s0
	mv	a1, s1
	mv	a2, s8
	mv	a3, s7
	mv	a4, s10
	call	XYcZ_add
	addiw	a0, s2, -1
	blt	s4, s2, .LBB28_10
.LBB28_11:
	lwu	a0, 0(s3)
	andi	a0, a0, 1
	slli	s7, a0, 5
	add	s2, s6, s7
	add	s7, s7, s9
	xori	a0, a0, 1
	slli	a0, a0, 5
	add	s8, s6, a0
	add	s9, s9, a0
	mv	a0, s2
	mv	a1, s7
	mv	a2, s8
	mv	a3, s9
	mv	a4, s10
	call	XYcZ_addC
	blez	s5, .LBB28_18
# %bb.12:
	li	a0, 0
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	slli	a2, s3, 2
	addi	a1, sp, 168
	add	a2, a2, a1
.LBB28_13:                              # =>This Inner Loop Header: Depth=1
	lw	a3, -32(s11)
	lw	a4, 0(s11)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(a1)
	addi	a1, a1, 4
	addi	s11, s11, 4
	bne	a1, a2, .LBB28_13
# %bb.14:
	seqz	a0, a0
	addi	s0, s10, 4
	bgtz	s5, .LBB28_19
	j	.LBB28_22
.LBB28_15:
	blez	s5, .LBB28_17
# %bb.16:
	slli	a2, s0, 2
	addi	a0, sp, 168
	li	a1, 0
	call	memset
.LBB28_17:
	li	a0, 1
	sw	a0, 168(sp)
	bgtz	s5, .LBB28_7
	j	.LBB28_8
.LBB28_18:
	li	a0, 1
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	addi	s0, s10, 4
	blez	s5, .LBB28_22
.LBB28_19:
	bnez	a0, .LBB28_22
# %bb.20:
	li	s1, 0
	slli	a1, s3, 2
	add	a1, a1, s10
	addi	a1, a1, 4
	addi	a2, sp, 168
	mv	a3, s0
.LBB28_21:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB28_21
.LBB28_22:
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 168
	mv	a2, s7
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 168
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	addi	a0, sp, 168
	addi	a1, sp, 168
	mv	a2, s0
	mv	a3, s5
	call	uECC_vli_modInv
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 168
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 168
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	mv	a0, s8
	mv	a1, s9
	mv	a2, s2
	mv	a3, s7
	mv	a4, s10
	call	XYcZ_add
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 168
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 104
	addi	a2, sp, 200
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 104
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 200
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s10)
	addi	a0, sp, 232
	addi	a1, sp, 40
	addi	a2, sp, 200
	call	uECC_vli_mult
	ld	a2, 184(s10)
	addi	a0, sp, 40
	addi	a1, sp, 232
	jalr	a2
	blez	s5, .LBB28_24
# %bb.23:
	slli	s0, s3, 2
	addi	a1, sp, 104
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	mv	a0, s1
	mv	a2, s0
	call	memcpy
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	add	a0, a0, s1
	addi	a1, sp, 40
	mv	a2, s0
	call	memcpy
.LBB28_24:
	ld	ra, 392(sp)                     # 8-byte Folded Reload
	ld	s0, 384(sp)                     # 8-byte Folded Reload
	ld	s1, 376(sp)                     # 8-byte Folded Reload
	ld	s2, 368(sp)                     # 8-byte Folded Reload
	ld	s3, 360(sp)                     # 8-byte Folded Reload
	ld	s4, 352(sp)                     # 8-byte Folded Reload
	ld	s5, 344(sp)                     # 8-byte Folded Reload
	ld	s6, 336(sp)                     # 8-byte Folded Reload
	ld	s7, 328(sp)                     # 8-byte Folded Reload
	ld	s8, 320(sp)                     # 8-byte Folded Reload
	ld	s9, 312(sp)                     # 8-byte Folded Reload
	ld	s10, 304(sp)                    # 8-byte Folded Reload
	ld	s11, 296(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 400
	ret
.Lfunc_end28:
	.size	EccPoint_mult, .Lfunc_end28-EccPoint_mult
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              # @XYcZ_addC
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -256
	.cfi_def_cfa_offset 256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	sd	s1, 232(sp)                     # 8-byte Folded Spill
	sd	s2, 224(sp)                     # 8-byte Folded Spill
	sd	s3, 216(sp)                     # 8-byte Folded Spill
	sd	s4, 208(sp)                     # 8-byte Folded Spill
	sd	s5, 200(sp)                     # 8-byte Folded Spill
	sd	s6, 192(sp)                     # 8-byte Folded Spill
	sd	s7, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	sd	s9, 168(sp)                     # 8-byte Folded Spill
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
	mv	s4, a4
	lbu	s6, 0(a4)
	slli	a4, s6, 56
	srai	s3, a4, 56
	mv	s8, a3
	mv	s9, a2
	mv	s5, a1
	mv	s2, a0
	blez	s3, .LBB29_4
# %bb.1:
	li	a0, 0
	slli	a2, s6, 2
	addi	a1, sp, 72
	add	a2, a2, a1
	mv	a3, s9
	mv	a4, s2
.LBB29_2:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	lw	s1, 0(a3)
	addw	a5, a5, a0
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addiw	a5, a5, -1
	and	a0, a0, a5
	or	a0, a0, s1
	sw	s0, 0(a1)
	addi	a1, a1, 4
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB29_2
# %bb.3:
	seqz	a0, a0
	addi	s7, s4, 4
	bgtz	s3, .LBB29_5
	j	.LBB29_8
.LBB29_4:
	li	a0, 1
	addi	s7, s4, 4
	blez	s3, .LBB29_8
.LBB29_5:
	bnez	a0, .LBB29_8
# %bb.6:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 72
	mv	a3, s7
.LBB29_7:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_7
.LBB29_8:
	addi	a0, sp, 104
	addi	a1, sp, 72
	addi	a2, sp, 72
	addi	s1, sp, 72
	mv	a3, s3
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 72
	addi	a1, sp, 104
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 104
	addi	a2, sp, 72
	mv	a1, s2
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 104
	mv	a0, s2
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 104
	addi	a2, sp, 72
	mv	a1, s9
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 104
	mv	a0, s9
	jalr	a2
	blez	s3, .LBB29_12
# %bb.9:
	li	s0, 0
	slli	a1, s6, 2
	add	a1, a1, s1
	mv	a2, s8
	mv	a3, s5
.LBB29_10:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addiw	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(s1)
	addi	s1, s1, 4
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	s1, a1, .LBB29_10
# %bb.11:
	bnez	s0, .LBB29_19
.LBB29_12:
	addi	a0, sp, 72
	mv	a1, s6
.LBB29_13:                              # =>This Inner Loop Header: Depth=1
	addi	a2, a1, -1
	slli	a2, a2, 56
	bltz	a2, .LBB29_16
# %bb.14:                               #   in Loop: Header=BB29_13 Depth=1
	srai	a2, a2, 56
	andi	a2, a2, 255
	slli	a3, a2, 2
	add	a2, s7, a3
	lw	a2, 0(a2)
	add	a3, a3, a0
	lw	a3, 0(a3)
	bltu	a3, a2, .LBB29_17
# %bb.15:                               #   in Loop: Header=BB29_13 Depth=1
	addi	a1, a1, -1
	bgeu	a2, a3, .LBB29_13
.LBB29_16:
	li	a0, 0
	bgtz	s3, .LBB29_18
	j	.LBB29_21
.LBB29_17:
	li	a0, 1
	blez	s3, .LBB29_21
.LBB29_18:
	bnez	a0, .LBB29_21
.LBB29_19:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 72
	mv	a3, s7
.LBB29_20:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_20
.LBB29_21:
	blez	s3, .LBB29_25
# %bb.22:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s5
	mv	a2, s8
	mv	a3, s5
.LBB29_23:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_23
# %bb.24:
	seqz	a0, a0
	bgtz	s3, .LBB29_26
	j	.LBB29_29
.LBB29_25:
	li	a0, 1
	blez	s3, .LBB29_29
.LBB29_26:
	bnez	a0, .LBB29_29
# %bb.27:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s8
	mv	a3, s7
.LBB29_28:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_28
.LBB29_29:
	blez	s3, .LBB29_33
# %bb.30:
	li	a0, 0
	slli	a2, s6, 2
	addi	a1, sp, 40
	add	a2, a2, a1
	mv	a3, s9
	mv	a4, s2
.LBB29_31:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	lw	s1, 0(a3)
	addw	a5, a5, a0
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addiw	a5, a5, -1
	and	a0, a0, a5
	or	a0, a0, s1
	sw	s0, 0(a1)
	addi	a1, a1, 4
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB29_31
# %bb.32:
	seqz	a0, a0
	bgtz	s3, .LBB29_34
	j	.LBB29_37
.LBB29_33:
	li	a0, 1
	blez	s3, .LBB29_37
.LBB29_34:
	bnez	a0, .LBB29_37
# %bb.35:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 40
	mv	a3, s7
.LBB29_36:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_36
.LBB29_37:
	lb	a3, 0(s4)
	addi	a0, sp, 104
	addi	a2, sp, 40
	addi	s1, sp, 40
	mv	a1, s5
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 104
	mv	a0, s5
	jalr	a2
	blez	s3, .LBB29_41
# %bb.38:
	li	s0, 0
	slli	a1, s6, 2
	add	a1, a1, s1
	mv	a2, s2
	mv	a3, s9
.LBB29_39:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s0
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addiw	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a0, 0(s1)
	addi	s1, s1, 4
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	s1, a1, .LBB29_39
# %bb.40:
	bnez	s0, .LBB29_48
.LBB29_41:
	addi	a0, sp, 40
	mv	a1, s6
.LBB29_42:                              # =>This Inner Loop Header: Depth=1
	addi	a2, a1, -1
	slli	a2, a2, 56
	bltz	a2, .LBB29_45
# %bb.43:                               #   in Loop: Header=BB29_42 Depth=1
	srai	a2, a2, 56
	andi	a2, a2, 255
	slli	a3, a2, 2
	add	a2, s7, a3
	lw	a2, 0(a2)
	add	a3, a3, a0
	lw	a3, 0(a3)
	bltu	a3, a2, .LBB29_46
# %bb.44:                               #   in Loop: Header=BB29_42 Depth=1
	addi	a1, a1, -1
	bgeu	a2, a3, .LBB29_42
.LBB29_45:
	li	a0, 0
	bgtz	s3, .LBB29_47
	j	.LBB29_50
.LBB29_46:
	li	a0, 1
	blez	s3, .LBB29_50
.LBB29_47:
	bnez	a0, .LBB29_50
.LBB29_48:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 40
	mv	a3, s7
.LBB29_49:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_49
.LBB29_50:
	lb	a3, 0(s4)
	addi	a0, sp, 104
	mv	a1, s8
	mv	a2, s8
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 104
	mv	a0, s9
	jalr	a2
	blez	s3, .LBB29_54
# %bb.51:
	li	a0, 0
	slli	a2, s6, 2
	addi	a1, sp, 40
	add	a2, a2, a1
	mv	a3, s9
.LBB29_52:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB29_52
# %bb.53:
	seqz	a0, a0
	bgtz	s3, .LBB29_55
	j	.LBB29_58
.LBB29_54:
	li	a0, 1
	blez	s3, .LBB29_58
.LBB29_55:
	bnez	a0, .LBB29_58
# %bb.56:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s9
	mv	a3, s7
.LBB29_57:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_57
.LBB29_58:
	blez	s3, .LBB29_62
# %bb.59:
	li	a0, 0
	slli	a2, s6, 2
	addi	a1, sp, 8
	add	a2, a2, a1
	mv	a3, s2
.LBB29_60:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(s9)
	lw	a5, 0(a3)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a1)
	addi	a1, a1, 4
	addi	s9, s9, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB29_60
# %bb.61:
	seqz	a0, a0
	bgtz	s3, .LBB29_63
	j	.LBB29_66
.LBB29_62:
	li	a0, 1
	blez	s3, .LBB29_66
.LBB29_63:
	bnez	a0, .LBB29_66
# %bb.64:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB29_65:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_65
.LBB29_66:
	lb	a3, 0(s4)
	addi	a0, sp, 104
	addi	a2, sp, 8
	mv	a1, s8
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 104
	mv	a0, s8
	jalr	a2
	blez	s3, .LBB29_70
# %bb.67:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s5
	mv	a2, s8
	mv	a3, s5
.LBB29_68:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_68
# %bb.69:
	seqz	a0, a0
	bgtz	s3, .LBB29_71
	j	.LBB29_74
.LBB29_70:
	li	a0, 1
	blez	s3, .LBB29_74
.LBB29_71:
	bnez	a0, .LBB29_74
# %bb.72:
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	mv	a2, s7
.LBB29_73:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(s8)
	lw	a4, 0(a2)
	add	a5, a3, a0
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a5
	sw	a4, 0(s8)
	addi	a2, a2, 4
	addi	s8, s8, 4
	bne	a2, a1, .LBB29_73
.LBB29_74:
	lb	a3, 0(s4)
	addi	a0, sp, 104
	addi	a1, sp, 72
	addi	a2, sp, 72
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 8
	addi	a1, sp, 104
	addi	s0, sp, 8
	jalr	a2
	blez	s3, .LBB29_78
# %bb.75:
	li	a0, 0
	slli	a2, s6, 2
	addi	a1, sp, 40
	add	a2, a2, a1
.LBB29_76:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	lw	a4, 0(s0)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(s0)
	addi	a1, a1, 4
	addi	s0, s0, 4
	bne	a1, a2, .LBB29_76
# %bb.77:
	seqz	a0, a0
	bgtz	s3, .LBB29_79
	j	.LBB29_82
.LBB29_78:
	li	a0, 1
	blez	s3, .LBB29_82
.LBB29_79:
	bnez	a0, .LBB29_82
# %bb.80:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB29_81:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_81
.LBB29_82:
	blez	s3, .LBB29_86
# %bb.83:
	li	a0, 0
	slli	a2, s6, 2
	addi	a1, sp, 40
	add	a2, a2, a1
	addi	a3, sp, 8
	mv	a4, s2
.LBB29_84:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	lw	s1, 0(a3)
	addw	a5, a5, a0
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addiw	a5, a5, -1
	and	a0, a0, a5
	or	a0, a0, s1
	sw	s0, 0(a1)
	addi	a1, a1, 4
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB29_84
# %bb.85:
	seqz	a0, a0
	bgtz	s3, .LBB29_87
	j	.LBB29_90
.LBB29_86:
	li	a0, 1
	blez	s3, .LBB29_90
.LBB29_87:
	bnez	a0, .LBB29_90
# %bb.88:
	li	s1, 0
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
	addi	a2, sp, 40
	mv	a3, s7
.LBB29_89:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a0, a4, s1
	addw	a0, a0, a5
	sltu	a5, a0, a4
	xor	a4, a4, a0
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a0, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB29_89
.LBB29_90:
	lb	a3, 0(s4)
	addi	a0, sp, 104
	addi	a1, sp, 40
	addi	a2, sp, 72
	addi	s0, sp, 40
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 40
	addi	a1, sp, 104
	jalr	a2
	blez	s3, .LBB29_94
# %bb.91:
	li	a0, 0
	slli	a1, s6, 2
	add	a1, a1, s5
	mv	a2, s5
.LBB29_92:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(s0)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(a2)
	addi	a2, a2, 4
	addi	s0, s0, 4
	bne	a2, a1, .LBB29_92
# %bb.93:
	seqz	a0, a0
	bgtz	s3, .LBB29_95
	j	.LBB29_98
.LBB29_94:
	li	a0, 1
	blez	s3, .LBB29_98
.LBB29_95:
	bnez	a0, .LBB29_98
# %bb.96:
	slli	a1, s6, 2
	add	a1, a1, s4
	addi	a1, a1, 4
.LBB29_97:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s5)
	lw	a3, 0(s7)
	add	a4, a2, a0
	addw	a3, a3, a4
	sltu	a4, a3, a2
	xor	a2, a2, a3
	snez	a2, a2
	addi	a2, a2, -1
	and	a0, a0, a2
	or	a0, a0, a4
	sw	a3, 0(s5)
	addi	s7, s7, 4
	addi	s5, s5, 4
	bne	s7, a1, .LBB29_97
.LBB29_98:
	blez	s3, .LBB29_100
# %bb.99:
	slli	a2, s6, 2
	addi	a1, sp, 8
	mv	a0, s2
	call	memcpy
.LBB29_100:
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	ld	s2, 224(sp)                     # 8-byte Folded Reload
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s4, 208(sp)                     # 8-byte Folded Reload
	ld	s5, 200(sp)                     # 8-byte Folded Reload
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	s7, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	ld	s9, 168(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.Lfunc_end29:
	.size	XYcZ_addC, .Lfunc_end29-XYcZ_addC
	.cfi_endproc
                                        # -- End function
	.globl	regularize_k                    # -- Begin function regularize_k
	.p2align	1
	.type	regularize_k,@function
regularize_k:                           # @regularize_k
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	lh	t1, 2(a3)
	addi	a4, t1, 31
	srliw	a5, a4, 27
	add	a4, a4, a5
	srai	a4, a4, 5
	slli	t0, a4, 56
	srai	a7, t0, 56
	addi	t3, a3, 36
	andi	a6, a4, 255
	blez	a7, .LBB30_4
# %bb.1:
	li	t4, 0
	slli	t2, a6, 2
	add	t2, t2, a1
	mv	a3, t3
	mv	a4, a1
.LBB30_2:                               # =>This Inner Loop Header: Depth=1
	lw	t6, 0(a0)
	lw	t5, 0(a3)
	add	a5, t6, t4
	addw	s0, a5, t5
	sltu	t5, s0, t6
	xor	a5, s0, t6
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, t4
	or	t4, a5, t5
	sw	s0, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	addi	a0, a0, 4
	bne	a4, t2, .LBB30_2
# %bb.3:
	li	a0, 1
	bnez	t4, .LBB30_6
.LBB30_4:
	srai	a0, t0, 51
	bge	t1, a0, .LBB30_7
# %bb.5:
	srai	a0, t1, 5
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	srlw	a0, a0, t1
	andi	a0, a0, 1
.LBB30_6:
	bgtz	a7, .LBB30_8
	j	.LBB30_10
.LBB30_7:
	li	a0, 0
	blez	a7, .LBB30_10
.LBB30_8:
	li	s0, 0
	slli	a5, a6, 2
	add	a6, a2, a5
.LBB30_9:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	a5, 0(t3)
	add	a3, a4, s0
	addw	a3, a3, a5
	sltu	a5, a3, a4
	xor	a4, a4, a3
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, a5
	sw	a3, 0(a2)
	addi	a2, a2, 4
	addi	t3, t3, 4
	addi	a1, a1, 4
	bne	a2, a6, .LBB30_9
.LBB30_10:
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end30:
	.size	regularize_k, .Lfunc_end30-regularize_k
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.p2align	1
	.type	EccPoint_compute_public_key,@function
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	mv	s1, a2
	mv	a3, a1
	mv	s0, a0
	addi	a0, sp, 56
	sd	a0, 8(sp)
	addi	a0, sp, 24
	sd	a0, 16(sp)
	addi	a1, sp, 56
	addi	a2, sp, 24
	mv	a0, a3
	mv	a3, s1
	call	regularize_k
	xori	a0, a0, 1
	slli	a0, a0, 3
	addi	a1, sp, 8
	add	a0, a0, a1
	lh	a3, 2(s1)
	ld	a2, 0(a0)
	addi	a1, s1, 68
	addi	a3, a3, 1
	slli	a3, a3, 48
	srai	a4, a3, 48
	mv	a0, s0
	li	a3, 0
	mv	a5, s1
	call	EccPoint_mult
	lbu	a0, 0(s1)
	slli	a0, a0, 57
	srai	a1, a0, 56
	blez	a1, .LBB31_4
# %bb.1:
	li	a0, 0
	andi	a1, a1, 255
	slli	a1, a1, 2
	add	a1, a1, s0
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s0)
	addi	s0, s0, 4
	or	a0, a0, a2
	bne	s0, a1, .LBB31_2
# %bb.3:
	snez	a0, a0
	j	.LBB31_5
.LBB31_4:
	li	a0, 0
.LBB31_5:
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end31:
	.size	EccPoint_compute_public_key, .Lfunc_end31-EccPoint_compute_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	1
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.cfi_startproc
# %bb.0:
	blez	a1, .LBB32_3
# %bb.1:
	li	a4, 0
	li	a3, 0
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	not	a4, a4
	add	a4, a4, a1
	srliw	a5, a4, 2
	slli	a5, a5, 2
	add	a5, a5, a2
	lw	a5, 0(a5)
	slli	a4, a4, 3
	srlw	a6, a5, a4
	slli	a4, a3, 56
	srai	a4, a4, 56
	add	a5, a0, a4
	addi	a3, a3, 1
	slli	a4, a3, 56
	srai	a4, a4, 56
	sb	a6, 0(a5)
	blt	a4, a1, .LBB32_2
.LBB32_3:
	ret
.Lfunc_end32:
	.size	uECC_vli_nativeToBytes, .Lfunc_end32-uECC_vli_nativeToBytes
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.p2align	1
	.type	uECC_vli_bytesToNative,@function
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	mv	s0, a2
	addi	a2, a2, 3
	sraiw	a3, a2, 31
	srliw	a3, a3, 30
	add	a2, a2, a3
	sraiw	a2, a2, 2
	slli	a2, a2, 56
	srai	a3, a2, 56
	mv	s2, a1
	mv	s1, a0
	blez	a3, .LBB33_2
# %bb.1:
	srli	a2, a2, 54
	mv	a0, s1
	li	a1, 0
	call	memset
.LBB33_2:
	blez	s0, .LBB33_5
# %bb.3:
	li	a1, 0
	li	a0, 0
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	not	a1, a1
	add	a1, a1, s0
	slli	a2, a0, 56
	srai	a2, a2, 56
	add	a2, a2, s2
	lbu	a2, 0(a2)
	srliw	a3, a1, 2
	slli	a3, a3, 2
	add	a3, a3, s1
	lw	a4, 0(a3)
	slli	a1, a1, 3
	sllw	a1, a2, a1
	or	a4, a4, a1
	addi	a0, a0, 1
	slli	a1, a0, 56
	srai	a1, a1, 56
	sw	a4, 0(a3)
	blt	a1, s0, .LBB33_4
.LBB33_5:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end33:
	.size	uECC_vli_bytesToNative, .Lfunc_end33-uECC_vli_bytesToNative
	.cfi_endproc
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	1
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               # @uECC_generate_random_int
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
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
	.cfi_offset s11, -104
	mv	s5, a2
	mv	s7, a1
	mv	s2, a0
	andi	a0, a2, 255
	addi	a1, a2, -1
	slli	a1, a1, 56
	srai	a1, a1, 56
	slti	a2, a1, -1
	addi	a2, a2, -1
	or	a1, a1, a2
	addi	a1, a1, 1
	mv	a3, a0
.LBB34_1:                               # =>This Inner Loop Header: Depth=1
	mv	a2, a3
	addi	a3, a3, -1
	slli	a3, a3, 56
	bltz	a3, .LBB34_4
# %bb.2:                                #   in Loop: Header=BB34_1 Depth=1
	srai	a3, a3, 56
	andi	a3, a3, 255
	slli	a3, a3, 2
	add	a3, a3, s7
	lw	a4, 0(a3)
	addi	a3, a2, -1
	beqz	a4, .LBB34_1
# %bb.3:
	mv	a1, a2
.LBB34_4:
	andi	a2, a1, 255
	beqz	a2, .LBB34_8
# %bb.5:
	slli	a1, a1, 56
	srai	a1, a1, 56
	addi	a1, a1, -1
	slli	a2, a1, 2
	add	a2, a2, s7
	lw	a2, 0(a2)
	beqz	a2, .LBB34_9
# %bb.6:
	li	a3, 0
.LBB34_7:                               # =>This Inner Loop Header: Depth=1
	srliw	a2, a2, 1
	addi	a3, a3, 1
	bnez	a2, .LBB34_7
	j	.LBB34_10
.LBB34_8:
	li	a1, 0
	j	.LBB34_11
.LBB34_9:
	li	a3, 0
.LBB34_10:
	slli	a1, a1, 5
	add	a1, a1, a3
.LBB34_11:
.Lpcrel_hi6:
	auipc	s4, %pcrel_hi(g_rng_function)
	ld	a2, %pcrel_lo(.Lpcrel_hi6)(s4)
	beqz	a2, .LBB34_30
# %bb.12:
	li	s9, 0
	slli	s3, s5, 2
	add	s8, s2, s3
	negw	a1, a1
	li	a2, -1
	srlw	s6, a2, a1
	addi	s8, s8, -4
	slli	a0, a0, 2
	add	s1, s2, a0
	addi	s0, sp, 8
	add	s11, s0, a0
	li	s10, 64
	j	.LBB34_15
.LBB34_13:                              #   in Loop: Header=BB34_15 Depth=1
	or	a1, a1, a2
	beqz	a1, .LBB34_31
.LBB34_14:                              #   in Loop: Header=BB34_15 Depth=1
	addiw	s9, s9, 1
	beq	s9, s10, .LBB34_30
.LBB34_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_18 Depth 2
                                        #     Child Loop BB34_23 Depth 2
                                        #     Child Loop BB34_28 Depth 2
	ld	a2, %pcrel_lo(.Lpcrel_hi6)(s4)
	mv	a0, s2
	mv	a1, s3
	jalr	a2
	beqz	a0, .LBB34_31
# %bb.16:                               #   in Loop: Header=BB34_15 Depth=1
	lw	a0, 0(s8)
	and	a0, a0, s6
	sw	a0, 0(s8)
	blez	s5, .LBB34_20
# %bb.17:                               #   in Loop: Header=BB34_15 Depth=1
	li	a0, 0
	mv	a1, s2
.LBB34_18:                              #   Parent Loop BB34_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 0(a1)
	addi	a1, a1, 4
	or	a0, a0, a2
	bne	a1, s1, .LBB34_18
# %bb.19:                               #   in Loop: Header=BB34_15 Depth=1
	seqz	a0, a0
	bnez	a0, .LBB34_14
	j	.LBB34_21
.LBB34_20:                              #   in Loop: Header=BB34_15 Depth=1
	li	a0, 1
	bnez	a0, .LBB34_14
.LBB34_21:                              #   in Loop: Header=BB34_15 Depth=1
	blez	s5, .LBB34_25
# %bb.22:                               #   in Loop: Header=BB34_15 Depth=1
	li	a0, 0
	addi	a1, sp, 8
	mv	a2, s7
	mv	a3, s2
.LBB34_23:                              #   Parent Loop BB34_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a0
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	s0, 0(a1)
	addi	a1, a1, 4
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a1, s11, .LBB34_23
# %bb.24:                               #   in Loop: Header=BB34_15 Depth=1
	seqz	a0, a0
	addi	a0, a0, -1
	andi	a1, a0, -2
	j	.LBB34_26
.LBB34_25:                              #   in Loop: Header=BB34_15 Depth=1
	li	a1, 0
.LBB34_26:                              #   in Loop: Header=BB34_15 Depth=1
	li	a0, 1
	li	a2, 1
	blez	s5, .LBB34_13
# %bb.27:                               #   in Loop: Header=BB34_15 Depth=1
	li	a2, 0
	addi	a3, sp, 8
.LBB34_28:                              #   Parent Loop BB34_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, 0(a3)
	addi	a3, a3, 4
	or	a2, a2, a4
	bne	a3, s11, .LBB34_28
# %bb.29:                               #   in Loop: Header=BB34_15 Depth=1
	seqz	a2, a2
	j	.LBB34_13
.LBB34_30:
	li	a0, 0
.LBB34_31:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end34:
	.size	uECC_generate_random_int, .Lfunc_end34-uECC_generate_random_int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	1
	.type	uECC_valid_point,@function
uECC_valid_point:                       # @uECC_valid_point
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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	lbu	a2, 0(a1)
	mv	s2, a0
	slli	a5, a2, 57
	srai	a5, a5, 56
	li	a0, -1
	blez	a5, .LBB35_16
# %bb.1:
	li	a3, 0
	slli	a4, a2, 56
	srai	s5, a4, 56
	andi	a4, a5, 255
	slli	a4, a4, 2
	add	a5, s2, a4
	mv	s1, s2
.LBB35_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(s1)
	addi	s1, s1, 4
	or	a3, a3, a4
	bne	s1, a5, .LBB35_2
# %bb.3:
	beqz	a3, .LBB35_16
# %bb.4:
	addi	a5, a1, 4
	mv	a3, a2
	li	a0, -2
.LBB35_5:                               # =>This Inner Loop Header: Depth=1
	addi	s1, a3, -1
	slli	s1, s1, 56
	bltz	s1, .LBB35_16
# %bb.6:                                #   in Loop: Header=BB35_5 Depth=1
	srai	s1, s1, 56
	andi	a4, s1, 255
	slli	s0, a4, 2
	add	a4, a5, s0
	lw	s1, 0(a4)
	add	s0, s0, s2
	lw	s0, 0(s0)
	bltu	s0, s1, .LBB35_8
# %bb.7:                                #   in Loop: Header=BB35_5 Depth=1
	addi	a3, a3, -1
	bgeu	s1, s0, .LBB35_5
	j	.LBB35_16
.LBB35_8:
	slli	a3, s5, 2
	add	a3, a3, s2
.LBB35_9:                               # =>This Inner Loop Header: Depth=1
	addi	s1, a2, -1
	slli	s1, s1, 56
	bltz	s1, .LBB35_16
# %bb.10:                               #   in Loop: Header=BB35_9 Depth=1
	srai	s1, s1, 56
	andi	a4, s1, 255
	slli	s0, a4, 2
	add	a4, a5, s0
	lw	s1, 0(a4)
	add	s0, s0, a3
	lw	s0, 0(s0)
	bltu	s0, s1, .LBB35_12
# %bb.11:                               #   in Loop: Header=BB35_9 Depth=1
	addi	a2, a2, -1
	bgeu	s1, s0, .LBB35_9
	j	.LBB35_16
.LBB35_12:
	addi	a0, sp, 40
	mv	s1, a1
	mv	a1, a3
	mv	a2, a3
	mv	a3, s5
	call	uECC_vli_mult
	ld	a2, 184(s1)
	addi	a0, sp, 8
	addi	a1, sp, 40
	addi	s3, sp, 8
	jalr	a2
	ld	a3, 176(s1)
	addi	a0, sp, 40
	addi	s4, sp, 40
	mv	a1, s2
	mv	a2, s1
	jalr	a3
	addi	a1, s5, -1
	li	a0, 0
	slli	a1, a1, 56
	bltz	a1, .LBB35_16
# %bb.13:
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a1, a1, 2
	add	s4, s4, a1
	add	s3, s3, a1
	addi	a1, sp, 36
.LBB35_14:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s3)
	lw	a3, 0(s4)
	xor	a2, a2, a3
	or	a0, a0, a2
	addi	s4, s4, -4
	addi	s3, s3, -4
	bne	s4, a1, .LBB35_14
# %bb.15:
	seqz	a0, a0
	addi	a0, a0, -1
	andi	a0, a0, -3
.LBB35_16:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end35:
	.size	uECC_valid_point, .Lfunc_end35-uECC_valid_point
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.p2align	1
	.type	uECC_valid_public_key,@function
uECC_valid_public_key:                  # @uECC_valid_public_key
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
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
	mv	s2, a1
	lbu	s3, 1(a1)
	mv	s4, a0
	slli	s1, s3, 56
	srai	s8, s1, 56
	addi	a0, s8, 3
	srliw	a1, a0, 30
	add	a0, a0, a1
	srai	s7, a0, 2
	slli	s6, s7, 56
	blez	s7, .LBB36_2
# %bb.1:
	srli	a2, s6, 54
	mv	a0, sp
	li	a1, 0
	call	memset
.LBB36_2:
	slli	s5, s8, 3
	blez	s8, .LBB36_5
# %bb.3:
	addi	a0, s8, -1
	addi	a3, s5, -8
	add	a2, s4, s3
	mv	a6, sp
	mv	a4, s4
.LBB36_4:                               # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a4)
	srliw	s0, a0, 2
	slli	s0, s0, 2
	add	s0, s0, a6
	lw	s1, 0(s0)
	andi	a1, a3, 24
	sllw	a1, a5, a1
	or	a1, a1, s1
	sw	a1, 0(s0)
	addi	a4, a4, 1
	addi	a0, a0, -1
	addi	a3, a3, -8
	bne	a4, a2, .LBB36_4
.LBB36_5:
	lb	a0, 0(s2)
	slli	a0, a0, 2
	mv	s0, sp
	add	s0, s0, a0
	blez	s7, .LBB36_7
# %bb.6:
	srli	a2, s6, 54
	mv	a0, s0
	li	a1, 0
	call	memset
.LBB36_7:
	blez	s8, .LBB36_10
# %bb.8:
	addi	a0, s8, -1
	add	a1, s4, s8
	addi	s5, s5, -8
	add	s3, s3, s8
	add	s4, s4, s3
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	lbu	a2, 0(a1)
	srliw	a3, a0, 2
	slli	a3, a3, 2
	add	a3, a3, s0
	lw	a4, 0(a3)
	andi	a5, s5, 24
	sllw	a2, a2, a5
	or	a2, a2, a4
	sw	a2, 0(a3)
	addi	a1, a1, 1
	addi	a0, a0, -1
	addi	s5, s5, -8
	bne	a1, s4, .LBB36_9
.LBB36_10:
	addi	a1, s2, 68
	li	a2, 16
	mv	s1, sp
	li	a0, -4
.LBB36_11:                              # =>This Inner Loop Header: Depth=1
	addi	a4, a2, -1
	slli	a4, a4, 56
	bltz	a4, .LBB36_15
# %bb.12:                               #   in Loop: Header=BB36_11 Depth=1
	srai	a4, a4, 56
	andi	a5, a4, 255
	slli	a5, a5, 2
	add	a3, s1, a5
	lw	a3, 0(a3)
	add	a5, a5, a1
	lw	a5, 0(a5)
	addi	a2, a2, -1
	beq	a3, a5, .LBB36_11
# %bb.13:
	bltz	a4, .LBB36_15
# %bb.14:
	mv	a0, sp
	mv	a1, s2
	call	uECC_valid_point
.LBB36_15:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end36:
	.size	uECC_valid_public_key, .Lfunc_end36-uECC_valid_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	1
	.type	uECC_compute_public_key,@function
uECC_compute_public_key:                # @uECC_compute_public_key
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -224
	.cfi_def_cfa_offset 224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	sd	s1, 200(sp)                     # 8-byte Folded Spill
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	s4, 176(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	mv	s3, a2
	lh	s4, 2(a2)
	addi	a2, s4, 7
	srliw	a3, a2, 29
	add	a2, a2, a3
	srai	s0, a2, 3
	addi	a2, s0, 3
	slli	a3, a2, 1
	srli	a3, a3, 62
	add	a2, a2, a3
	srai	a2, a2, 2
	slli	a2, a2, 56
	srai	a3, a2, 56
	mv	s2, a1
	mv	s1, a0
	blez	a3, .LBB37_2
# %bb.1:
	srli	a2, a2, 54
	addi	a0, sp, 64
	li	a1, 0
	call	memset
.LBB37_2:
	blez	s4, .LBB37_5
# %bb.3:
	li	a2, 0
	li	a0, 0
	addi	a1, sp, 64
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	not	a2, a2
	add	a2, a2, s0
	slli	a3, a0, 56
	srai	a3, a3, 56
	add	a3, a3, s1
	lbu	a3, 0(a3)
	srliw	a4, a2, 2
	slli	a4, a4, 2
	add	a4, a4, a1
	lw	a5, 0(a4)
	slli	a2, a2, 3
	sllw	a2, a3, a2
	or	a5, a5, a2
	addi	a0, a0, 1
	slli	a2, a0, 56
	srai	a2, a2, 56
	sw	a5, 0(a4)
	blt	a2, s0, .LBB37_4
.LBB37_5:
	addi	a0, s4, 31
	srliw	a1, a0, 27
	add	a0, a0, a1
	srai	a1, a0, 5
	slli	a0, a1, 56
	srai	a7, a0, 56
	blez	a7, .LBB37_28
# %bb.6:
	li	a2, 0
	andi	a1, a1, 255
	slli	a6, a1, 2
	addi	a3, sp, 64
	add	a4, a3, a6
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	addi	a3, a3, 4
	or	a2, a2, a5
	bne	a3, a4, .LBB37_7
# %bb.8:
	beqz	a2, .LBB37_28
# %bb.9:
	li	a2, 0
	blez	a7, .LBB37_13
# %bb.10:
	addi	a3, s3, 36
	mv	a4, sp
	add	a5, a4, a6
	addi	s1, sp, 64
.LBB37_11:                              # =>This Inner Loop Header: Depth=1
	lw	s0, 0(s1)
	lw	a1, 0(a3)
	addw	s0, s0, a2
	subw	a0, a1, s0
	sltu	a1, a1, s0
	snez	s0, s0
	addiw	s0, s0, -1
	and	a2, a2, s0
	or	a2, a2, a1
	sw	a0, 0(a4)
	addi	a4, a4, 4
	addi	s1, s1, 4
	addi	a3, a3, 4
	bne	a4, a5, .LBB37_11
# %bb.12:
	seqz	a0, a2
	addi	a0, a0, -1
	andi	a2, a0, -2
.LBB37_13:
	blez	a7, .LBB37_17
# %bb.14:
	li	a0, 0
	mv	a3, sp
	add	a1, a3, a6
.LBB37_15:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	addi	a3, a3, 4
	or	a0, a0, a4
	bne	a3, a1, .LBB37_15
# %bb.16:
	seqz	a0, a0
	or	a0, a0, a2
	bnez	a0, .LBB37_28
	j	.LBB37_18
.LBB37_17:
	li	a0, 1
	or	a0, a0, a2
	bnez	a0, .LBB37_28
.LBB37_18:
	addi	a0, sp, 144
	sd	a0, 96(sp)
	addi	a0, sp, 112
	sd	a0, 104(sp)
	addi	a0, sp, 64
	addi	a1, sp, 144
	addi	a2, sp, 112
	mv	a3, s3
	call	regularize_k
	xori	a0, a0, 1
	slli	a0, a0, 3
	addi	a1, sp, 96
	add	a0, a0, a1
	ld	a2, 0(a0)
	addi	a1, s3, 68
	addi	s4, s4, 1
	slli	a4, s4, 48
	srai	a4, a4, 48
	mv	a0, sp
	mv	s0, sp
	li	a3, 0
	mv	a5, s3
	call	EccPoint_mult
	lbu	a0, 0(s3)
	slli	a0, a0, 57
	srai	a1, a0, 56
	blez	a1, .LBB37_28
# %bb.19:
	li	a0, 0
	andi	a1, a1, 255
	slli	a1, a1, 2
	add	a1, a1, s0
.LBB37_20:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s0)
	addi	s0, s0, 4
	or	a0, a0, a2
	bne	s0, a1, .LBB37_20
# %bb.21:
	beqz	a0, .LBB37_29
# %bb.22:
	lb	a1, 1(s3)
	blez	a1, .LBB37_25
# %bb.23:
	andi	a2, a1, 255
	slli	a0, a1, 3
	addi	s1, a0, -8
	addi	a1, a1, -1
	add	a2, a2, s2
	mv	a3, sp
	mv	a4, s2
.LBB37_24:                              # =>This Inner Loop Header: Depth=1
	srliw	a5, a1, 2
	slli	a5, a5, 2
	add	a5, a5, a3
	lw	a5, 0(a5)
	andi	a0, s1, 24
	srlw	a0, a5, a0
	sb	a0, 0(a4)
	addi	a4, a4, 1
	addi	s1, s1, -8
	addi	a1, a1, -1
	bne	a4, a2, .LBB37_24
.LBB37_25:
	lb	a5, 1(s3)
	li	a0, 1
	blez	a5, .LBB37_29
# %bb.26:
	lb	a2, 0(s3)
	andi	s1, a5, 255
	add	a1, s2, a5
	slli	a2, a2, 2
	mv	a3, sp
	add	a2, a2, a3
	slli	a3, a5, 3
	addi	s0, a3, -8
	addi	a4, a5, -1
	add	a5, a5, s2
	add	a5, a5, s1
.LBB37_27:                              # =>This Inner Loop Header: Depth=1
	srliw	s1, a4, 2
	slli	s1, s1, 2
	add	s1, s1, a2
	lw	s1, 0(s1)
	andi	a3, s0, 24
	srlw	a3, s1, a3
	sb	a3, 0(a1)
	addi	a1, a1, 1
	addi	s0, s0, -8
	addi	a4, a4, -1
	bne	a1, a5, .LBB37_27
	j	.LBB37_29
.LBB37_28:
	li	a0, 0
.LBB37_29:
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end37:
	.size	uECC_compute_public_key, .Lfunc_end37-uECC_compute_public_key
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
	.addrsig_sym double_jacobian_default
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym default_CSPRNG
	.addrsig_sym curve_secp256r1
