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
	j	.LBB7_5
.LBB7_4:
	andi	a2, a1, 255
	beqz	a2, .LBB7_10
.LBB7_5:
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
	add	a2, a2, a0
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	sw	a3, 0(a0)
	addi	a0, a0, 4
	addi	a1, a1, 4
	bne	a0, a2, .LBB8_2
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
	slli	a0, a0, 56
	srai	a0, a0, 56
	ret
.LBB9_5:
	slli	a0, zero, 56
	srai	a0, a0, 56
	ret
.LBB9_6:
	li	a0, 1
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
	add	a6, a0, a3
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
	addi	a0, a0, 4
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a0, a6, .LBB12_2
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
	blez	a2, .LBB13_6
# %bb.1:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	li	a3, 0
	andi	a2, a2, 255
	slli	a6, a2, 2
	mv	a4, sp
	add	a7, a4, a6
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	lw	a5, 0(a0)
	addw	a2, a2, a3
	subw	t0, a5, a2
	sltu	a5, a5, a2
	snez	a2, a2
	addiw	a2, a2, -1
	and	a2, a2, a3
	or	a3, a2, a5
	sw	t0, 0(a4)
	addi	a4, a4, 4
	addi	a1, a1, 4
	addi	a0, a0, 4
	bne	a4, a7, .LBB13_2
# %bb.3:
	li	a0, 0
	mv	a1, sp
	add	a2, a1, a6
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	addi	a1, a1, 4
	or	a0, a0, a4
	bne	a1, a2, .LBB13_4
# %bb.5:
	seqz	a1, a3
	seqz	a0, a0
	addi	a1, a1, -1
	andi	a1, a1, -2
	or	a0, a0, a1
	xori	a0, a0, 1
	addi	sp, sp, 32
	ret
.LBB13_6:
	li	a0, 0
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
	blez	a4, .LBB14_6
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
	bnez	t0, .LBB14_7
	j	.LBB14_6
.LBB14_4:                               #   in Loop: Header=BB14_6 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, a3, a2
	lw	a1, 0(a1)
	add	a2, a2, a0
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB14_10
# %bb.5:                                #   in Loop: Header=BB14_6 Depth=1
	addi	a6, a6, -1
	bltu	a1, a2, .LBB14_7
.LBB14_6:                               # =>This Inner Loop Header: Depth=1
	addi	a1, a6, -1
	slli	a1, a1, 56
	bgez	a1, .LBB14_4
.LBB14_7:
	blez	a4, .LBB14_10
# %bb.8:
	li	a1, 0
	andi	a2, a4, 255
	slli	a2, a2, 2
	add	a6, a3, a2
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
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
	bne	a3, a6, .LBB14_9
.LBB14_10:
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
	blez	a4, .LBB15_6
# %bb.1:
	li	t1, 0
	andi	a6, a4, 255
	slli	a6, a6, 2
	add	a7, a0, a6
	mv	a4, a0
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a2)
	lw	t2, 0(a1)
	addw	a5, t0, t1
	subw	t0, t2, a5
	sltu	t2, t2, a5
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, t1
	or	t1, a5, t2
	sw	t0, 0(a4)
	addi	a4, a4, 4
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a4, a7, .LBB15_2
# %bb.3:
	beqz	t1, .LBB15_6
# %bb.4:
	li	a1, 0
	add	a6, a6, a3
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a0)
	lw	a4, 0(a3)
	add	a5, a2, a1
	addw	a4, a4, a5
	sltu	a5, a4, a2
	xor	a2, a2, a4
	snez	a2, a2
	addi	a2, a2, -1
	and	a1, a1, a2
	or	a1, a1, a5
	sw	a4, 0(a0)
	addi	a3, a3, 4
	addi	a0, a0, 4
	bne	a3, a6, .LBB15_5
.LBB15_6:
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
	mv	s1, a2
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
	add	a2, a2, s1
	lw	a3, 0(a2)
	addi	a2, a1, -1
	beqz	a3, .LBB16_1
# %bb.3:
	mv	a0, a1
	j	.LBB16_5
.LBB16_4:
	andi	a1, a0, 255
	beqz	a1, .LBB16_38
.LBB16_5:
	slli	a0, a0, 56
	srai	a0, a0, 56
	addi	a0, a0, -1
	slli	a1, a0, 2
	add	a1, a1, s1
	lw	a1, 0(a1)
	beqz	a1, .LBB16_8
# %bb.6:
	li	a2, 0
.LBB16_7:                               # =>This Inner Loop Header: Depth=1
	srliw	a1, a1, 1
	addi	a2, a2, 1
	bnez	a1, .LBB16_7
	j	.LBB16_9
.LBB16_8:
	li	a2, 0
.LBB16_9:
	slli	a0, a0, 5
	add	a2, a2, a0
.LBB16_10:
	slli	a0, s2, 6
	sub	a0, a0, a2
	slli	s5, a0, 48
	srai	a1, s5, 48
	slli	a1, a1, 33
	srli	a1, a1, 59
	add	a1, a1, a0
	slli	a2, a1, 48
	srai	a2, a2, 53
	slli	s7, a2, 48
	slli	a2, a2, 56
	srai	a3, a2, 56
	andi	a1, a1, -32
	subw	a0, a0, a1
	slli	a0, a0, 48
	srai	s6, a0, 48
	blez	a3, .LBB16_12
# %bb.11:
	srli	a2, a2, 54
	addi	a0, sp, 80
	li	a1, 0
	call	memset
.LBB16_12:
	srai	s5, s5, 48
	srli	a0, s7, 48
	blez	s6, .LBB16_16
# %bb.13:
	beqz	s2, .LBB16_18
# %bb.14:
	li	a2, 0
	slli	a0, a0, 56
	srai	a4, a0, 56
	li	a1, 32
	sub	a1, a1, s6
	slli	a3, s2, 32
	srli	a3, a3, 30
	add	a3, a3, s1
	addi	a6, sp, 80
.LBB16_15:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(s1)
	sllw	s0, a5, s6
	or	a2, a2, s0
	slli	a0, a4, 32
	srli	a0, a0, 30
	add	a0, a0, a6
	sw	a2, 0(a0)
	srlw	a2, a5, a1
	addi	s1, s1, 4
	addi	a4, a4, 1
	bne	s1, a3, .LBB16_15
	j	.LBB16_18
.LBB16_16:
	blez	s2, .LBB16_18
# %bb.17:
	slli	a0, a0, 56
	srai	a0, a0, 56
	slli	a0, a0, 2
	addi	a1, sp, 80
	add	a0, a0, a1
	slli	a2, s3, 2
	mv	a1, s1
	call	memcpy
.LBB16_18:
	bltz	s5, .LBB16_33
# %bb.19:
	slli	a7, s3, 2
	addi	t4, sp, 80
	add	a6, t4, a7
	slli	t3, s2, 2
	add	t3, t3, t4
	addi	t1, t3, -4
	add	a7, a7, t3
	li	t2, 1
	mv	t0, sp
	j	.LBB16_23
.LBB16_20:                              #   in Loop: Header=BB16_23 Depth=1
	seqz	t2, t2
.LBB16_21:                              #   in Loop: Header=BB16_23 Depth=1
	lw	a0, 0(t3)
	lw	a1, 0(t1)
	slli	a0, a0, 31
	or	a0, a0, a1
	sw	a0, 0(t1)
.LBB16_22:                              #   in Loop: Header=BB16_23 Depth=1
	slli	a0, s5, 48
	addi	s5, s5, -1
	srai	a0, a0, 48
	blez	a0, .LBB16_34
.LBB16_23:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_26 Depth 2
                                        #     Child Loop BB16_30 Depth 2
                                        #     Child Loop BB16_32 Depth 2
	blez	s2, .LBB16_20
# %bb.24:                               #   in Loop: Header=BB16_23 Depth=1
	slli	a0, t2, 3
	add	a0, a0, t0
	ld	a2, 0(a0)
	xori	a0, t2, 1
	slli	a0, a0, 3
	add	a0, a0, t0
	ld	a5, 0(a0)
	li	s1, 0
	li	a4, 0
	j	.LBB16_26
.LBB16_25:                              #   in Loop: Header=BB16_26 Depth=2
	subw	s0, s0, a3
	add	a1, a1, a5
	addi	s1, s1, 1
	slli	a0, s1, 56
	srai	a0, a0, 56
	sw	s0, 0(a1)
	bge	a0, s8, .LBB16_28
.LBB16_26:                              #   Parent Loop BB16_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a0, s1, 56
	srai	a0, a0, 56
	slli	a1, a0, 2
	add	a3, t4, a1
	lw	a3, 0(a3)
	add	a0, a2, a1
	lw	s0, 0(a0)
	addw	a3, a3, a4
	beqz	a3, .LBB16_25
# %bb.27:                               #   in Loop: Header=BB16_26 Depth=2
	sltu	a4, s0, a3
	j	.LBB16_25
.LBB16_28:                              #   in Loop: Header=BB16_23 Depth=1
	xor	a0, t2, a4
	seqz	t2, a0
	blez	s2, .LBB16_21
# %bb.29:                               #   in Loop: Header=BB16_23 Depth=1
	li	a0, 0
	mv	a2, a6
.LBB16_30:                              #   Parent Loop BB16_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -4(a2)
	addi	a3, a2, -4
	srliw	a4, a1, 1
	or	a0, a0, a4
	sw	a0, -4(a2)
	slli	a0, a1, 31
	mv	a2, a3
	bltu	t4, a3, .LBB16_30
# %bb.31:                               #   in Loop: Header=BB16_23 Depth=1
	lw	a1, 0(t3)
	lw	a2, 0(t1)
	li	a0, 0
	slli	a1, a1, 31
	or	a1, a1, a2
	sw	a1, 0(t1)
	mv	a2, a7
.LBB16_32:                              #   Parent Loop BB16_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -4(a2)
	addi	a3, a2, -4
	srliw	a4, a1, 1
	or	a0, a0, a4
	sw	a0, -4(a2)
	slli	a0, a1, 31
	mv	a2, a3
	bltu	t3, a3, .LBB16_32
	j	.LBB16_22
.LBB16_33:
	li	t2, 1
.LBB16_34:
	blez	s2, .LBB16_37
# %bb.35:
	slli	t2, t2, 3
	mv	a0, sp
	add	a0, a0, t2
	ld	a0, 0(a0)
	slli	a1, s3, 2
	add	a1, a1, s4
.LBB16_36:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a0)
	sw	a2, 0(s4)
	addi	s4, s4, 4
	addi	a0, a0, 4
	bne	s4, a1, .LBB16_36
.LBB16_37:
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
.LBB16_38:
	li	a2, 0
	j	.LBB16_10
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
	blez	a3, .LBB18_11
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
# %bb.5:
	slli	a7, a3, 1
	addi	a7, a7, -1
	bge	a3, a7, .LBB18_12
.LBB18_6:
	li	t0, 1
	mv	t1, a3
	j	.LBB18_8
.LBB18_7:                               #   in Loop: Header=BB18_8 Depth=1
	mv	a4, s2
	add	t2, t2, a0
	sw	t4, 0(t2)
	slli	a5, t1, 56
	srai	a5, a5, 56
	addi	t0, t0, 1
	mv	s2, t3
	mv	t4, a4
	bge	a5, a7, .LBB18_13
.LBB18_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_10 Depth 2
	slli	a4, t1, 56
	srai	a4, a4, 56
	addi	t1, t1, 1
	subw	a5, t1, a3
	slli	a5, a5, 56
	srai	a5, a5, 56
	slli	t2, a4, 2
	li	t3, 0
	bge	a5, a3, .LBB18_7
# %bb.9:                                #   in Loop: Header=BB18_8 Depth=1
	slli	a4, t0, 56
	srai	a4, a4, 56
	slli	t6, a4, 2
	sub	t5, t2, t6
	add	t5, t5, a2
	add	t6, t6, a1
	addi	a4, a4, 1
.LBB18_10:                              #   Parent Loop BB18_8 Depth=1
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
	bne	a5, a6, .LBB18_10
	j	.LBB18_7
.LBB18_11:
	li	t4, 0
	li	s2, 0
	slli	a7, a3, 1
	addi	a7, a7, -1
	blt	a3, a7, .LBB18_6
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
	sd	s9, 136(sp)                     # 8-byte Folded Spill
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
	blez	a3, .LBB20_72
# %bb.1:
	mv	s2, a2
	li	a2, 0
	andi	s4, a3, 255
	slli	s3, s4, 2
	add	a3, a1, s3
	mv	a4, a1
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	addi	a4, a4, 4
	or	a2, a2, a5
	bne	a4, a3, .LBB20_2
# %bb.3:
	beqz	a2, .LBB20_73
# %bb.4:
	mv	s7, a0
	addi	a0, sp, 104
	addi	s8, sp, 104
	mv	a2, s3
	call	memcpy
	addi	a0, sp, 72
	addi	s5, sp, 72
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	addi	a0, sp, 40
	addi	s9, sp, 40
	li	a1, 0
	mv	a2, s3
	call	memset
	li	a0, 1
	sw	a0, 40(sp)
	addi	a0, sp, 8
	addi	s6, sp, 8
	li	a1, 0
	mv	a2, s3
	call	memset
	mv	a0, s7
	add	t1, s5, s3
	add	t2, s6, s3
	addi	a6, t2, -4
	add	t3, s8, s3
	add	t4, s9, s3
	addi	a7, t4, -4
	add	a3, s2, s3
	lui	t0, 524288
	j	.LBB20_62
.LBB20_5:                               #   Parent Loop BB20_62 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_44 Depth 3
                                        #       Child Loop BB20_46 Depth 3
                                        #       Child Loop BB20_48 Depth 3
                                        #       Child Loop BB20_52 Depth 3
                                        #       Child Loop BB20_54 Depth 3
                                        #       Child Loop BB20_57 Depth 3
                                        #       Child Loop BB20_59 Depth 3
                                        #       Child Loop BB20_26 Depth 3
                                        #       Child Loop BB20_28 Depth 3
                                        #       Child Loop BB20_30 Depth 3
                                        #       Child Loop BB20_34 Depth 3
                                        #       Child Loop BB20_36 Depth 3
                                        #       Child Loop BB20_39 Depth 3
                                        #       Child Loop BB20_41 Depth 3
                                        #       Child Loop BB20_18 Depth 3
                                        #       Child Loop BB20_21 Depth 3
                                        #       Child Loop BB20_23 Depth 3
                                        #       Child Loop BB20_9 Depth 3
                                        #       Child Loop BB20_12 Depth 3
                                        #       Child Loop BB20_14 Depth 3
	addi	a1, a2, -1
	slli	a1, a1, 56
	bltz	a1, .LBB20_71
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=2
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a4, a1, 2
	add	a1, s8, a4
	lw	a1, 0(a1)
	add	a4, a4, s5
	lw	a4, 0(a4)
	addi	a2, a2, -1
	beq	a1, a4, .LBB20_5
# %bb.7:                                #   in Loop: Header=BB20_5 Depth=2
	lbu	a2, 104(sp)
	andi	a2, a2, 1
	bnez	a2, .LBB20_16
# %bb.8:                                #   in Loop: Header=BB20_5 Depth=2
	li	a1, 0
	mv	a2, t3
.LBB20_9:                               #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s0, a4, 1
	or	a1, a1, s0
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s8, a5, .LBB20_9
# %bb.10:                               #   in Loop: Header=BB20_5 Depth=2
	lbu	a1, 40(sp)
	andi	a1, a1, 1
	beqz	a1, .LBB20_63
# %bb.11:                               #   in Loop: Header=BB20_5 Depth=2
	li	s1, 0
	addi	a2, sp, 40
	mv	a4, s2
.LBB20_12:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a2)
	lw	s0, 0(a4)
	add	a1, a5, s1
	addw	a1, a1, s0
	sltu	s0, a1, a5
	xor	a5, a5, a1
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, s1
	or	s1, a5, s0
	sw	a1, 0(a2)
	addi	a4, a4, 4
	addi	a2, a2, 4
	bne	a4, a3, .LBB20_12
# %bb.13:                               #   in Loop: Header=BB20_5 Depth=2
	li	a2, 0
	mv	a4, t4
.LBB20_14:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -4(a4)
	addi	a5, a4, -4
	srliw	s0, a1, 1
	or	a2, a2, s0
	sw	a2, -4(a4)
	slli	a2, a1, 31
	mv	a4, a5
	bltu	s9, a5, .LBB20_14
# %bb.15:                               #   in Loop: Header=BB20_5 Depth=2
	mv	a2, s4
	mv	a4, a7
	bnez	s1, .LBB20_61
	j	.LBB20_5
.LBB20_16:                              #   in Loop: Header=BB20_5 Depth=2
	lbu	a2, 72(sp)
	andi	a2, a2, 1
	bnez	a2, .LBB20_24
# %bb.17:                               #   in Loop: Header=BB20_5 Depth=2
	li	a1, 0
	mv	a2, t1
.LBB20_18:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s1, a4, 1
	or	a1, a1, s1
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s5, a5, .LBB20_18
# %bb.19:                               #   in Loop: Header=BB20_5 Depth=2
	lbu	a1, 8(sp)
	andi	a1, a1, 1
	beqz	a1, .LBB20_65
# %bb.20:                               #   in Loop: Header=BB20_5 Depth=2
	li	s0, 0
	addi	a2, sp, 8
	mv	a4, s2
.LBB20_21:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a2)
	lw	s1, 0(a4)
	add	a1, a5, s0
	addw	a1, a1, s1
	sltu	s1, a1, a5
	xor	a5, a5, a1
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a1, 0(a2)
	addi	a4, a4, 4
	addi	a2, a2, 4
	bne	a4, a3, .LBB20_21
# %bb.22:                               #   in Loop: Header=BB20_5 Depth=2
	li	a2, 0
	mv	a4, t2
.LBB20_23:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -4(a4)
	addi	a5, a4, -4
	srliw	s1, a1, 1
	or	a2, a2, s1
	sw	a2, -4(a4)
	slli	a2, a1, 31
	mv	a4, a5
	bltu	s6, a5, .LBB20_23
	j	.LBB20_60
.LBB20_24:                              #   in Loop: Header=BB20_5 Depth=2
	li	a2, 0
	bgeu	a4, a1, .LBB20_43
# %bb.25:                               #   in Loop: Header=BB20_5 Depth=2
	addi	a1, sp, 72
	addi	a4, sp, 104
.LBB20_26:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a1)
	lw	s1, 0(a4)
	addw	a5, a5, a2
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addi	a5, a5, -1
	and	a2, a2, a5
	or	a2, a2, s1
	sw	s0, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, t1, .LBB20_26
# %bb.27:                               #   in Loop: Header=BB20_5 Depth=2
	li	a1, 0
	mv	a2, t3
.LBB20_28:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s1, a4, 1
	or	a1, a1, s1
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s8, a5, .LBB20_28
# %bb.29:                               #   in Loop: Header=BB20_5 Depth=2
	mv	a1, s4
.LBB20_30:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi	a2, a1, -1
	slli	a2, a2, 56
	bltz	a2, .LBB20_35
# %bb.31:                               #   in Loop: Header=BB20_30 Depth=3
	srai	a2, a2, 56
	andi	a2, a2, 255
	slli	a4, a2, 2
	add	a2, s9, a4
	lw	a2, 0(a2)
	add	a4, a4, s6
	lw	a4, 0(a4)
	bltu	a4, a2, .LBB20_35
# %bb.32:                               #   in Loop: Header=BB20_30 Depth=3
	addi	a1, a1, -1
	bgeu	a2, a4, .LBB20_30
# %bb.33:                               #   in Loop: Header=BB20_5 Depth=2
	li	s0, 0
	addi	a1, sp, 40
	mv	a4, s2
.LBB20_34:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a1)
	lw	s1, 0(a4)
	add	a2, a5, s0
	addw	a2, a2, s1
	sltu	s1, a2, a5
	xor	a5, a5, a2
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a2, 0(a1)
	addi	a4, a4, 4
	addi	a1, a1, 4
	bne	a4, a3, .LBB20_34
.LBB20_35:                              #   in Loop: Header=BB20_5 Depth=2
	li	a2, 0
	addi	a1, sp, 8
	addi	a4, sp, 40
.LBB20_36:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a1)
	lw	s1, 0(a4)
	addw	a5, a5, a2
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addi	a5, a5, -1
	and	a2, a2, a5
	or	a2, a2, s1
	sw	s0, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, t2, .LBB20_36
# %bb.37:                               #   in Loop: Header=BB20_5 Depth=2
	lbu	a1, 40(sp)
	andi	a1, a1, 1
	beqz	a1, .LBB20_67
# %bb.38:                               #   in Loop: Header=BB20_5 Depth=2
	li	s0, 0
	addi	a2, sp, 40
	mv	a4, s2
.LBB20_39:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a2)
	lw	s1, 0(a4)
	add	a1, a5, s0
	addw	a1, a1, s1
	sltu	s1, a1, a5
	xor	a5, a5, a1
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a1, 0(a2)
	addi	a4, a4, 4
	addi	a2, a2, 4
	bne	a4, a3, .LBB20_39
# %bb.40:                               #   in Loop: Header=BB20_5 Depth=2
	li	a2, 0
	mv	a4, t4
.LBB20_41:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -4(a4)
	addi	a5, a4, -4
	srliw	s1, a1, 1
	or	a2, a2, s1
	sw	a2, -4(a4)
	slli	a2, a1, 31
	mv	a4, a5
	bltu	s9, a5, .LBB20_41
# %bb.42:                               #   in Loop: Header=BB20_5 Depth=2
	mv	a2, s4
	mv	a4, a7
	bnez	s0, .LBB20_61
	j	.LBB20_5
.LBB20_43:                              #   in Loop: Header=BB20_5 Depth=2
	addi	a1, sp, 104
	addi	a4, sp, 72
.LBB20_44:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a1)
	lw	s1, 0(a4)
	addw	a5, a5, a2
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addi	a5, a5, -1
	and	a2, a2, a5
	or	a2, a2, s1
	sw	s0, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, t3, .LBB20_44
# %bb.45:                               #   in Loop: Header=BB20_5 Depth=2
	li	a1, 0
	mv	a2, t1
.LBB20_46:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s1, a4, 1
	or	a1, a1, s1
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s5, a5, .LBB20_46
# %bb.47:                               #   in Loop: Header=BB20_5 Depth=2
	mv	a1, s4
.LBB20_48:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi	a2, a1, -1
	slli	a2, a2, 56
	bltz	a2, .LBB20_53
# %bb.49:                               #   in Loop: Header=BB20_48 Depth=3
	srai	a2, a2, 56
	andi	a2, a2, 255
	slli	a4, a2, 2
	add	a2, s6, a4
	lw	a2, 0(a2)
	add	a4, a4, s9
	lw	a4, 0(a4)
	bltu	a4, a2, .LBB20_53
# %bb.50:                               #   in Loop: Header=BB20_48 Depth=3
	addi	a1, a1, -1
	bgeu	a2, a4, .LBB20_48
# %bb.51:                               #   in Loop: Header=BB20_5 Depth=2
	li	s0, 0
	addi	a1, sp, 8
	mv	a4, s2
.LBB20_52:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a1)
	lw	s1, 0(a4)
	add	a2, a5, s0
	addw	a2, a2, s1
	sltu	s1, a2, a5
	xor	a5, a5, a2
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a2, 0(a1)
	addi	a4, a4, 4
	addi	a1, a1, 4
	bne	a4, a3, .LBB20_52
.LBB20_53:                              #   in Loop: Header=BB20_5 Depth=2
	li	a2, 0
	addi	a1, sp, 40
	addi	a4, sp, 8
.LBB20_54:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a1)
	lw	s1, 0(a4)
	addw	a5, a5, a2
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addi	a5, a5, -1
	and	a2, a2, a5
	or	a2, a2, s1
	sw	s0, 0(a4)
	addi	a1, a1, 4
	addi	a4, a4, 4
	bne	a1, t4, .LBB20_54
# %bb.55:                               #   in Loop: Header=BB20_5 Depth=2
	lbu	a1, 8(sp)
	andi	a1, a1, 1
	beqz	a1, .LBB20_69
# %bb.56:                               #   in Loop: Header=BB20_5 Depth=2
	li	s0, 0
	addi	a2, sp, 8
	mv	a4, s2
.LBB20_57:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a5, 0(a2)
	lw	s1, 0(a4)
	add	a1, a5, s0
	addw	a1, a1, s1
	sltu	s1, a1, a5
	xor	a5, a5, a1
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a1, 0(a2)
	addi	a4, a4, 4
	addi	a2, a2, 4
	bne	a4, a3, .LBB20_57
# %bb.58:                               #   in Loop: Header=BB20_5 Depth=2
	li	a2, 0
	mv	a4, t2
.LBB20_59:                              #   Parent Loop BB20_62 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, -4(a4)
	addi	a5, a4, -4
	srliw	s1, a1, 1
	or	a2, a2, s1
	sw	a2, -4(a4)
	slli	a2, a1, 31
	mv	a4, a5
	bltu	s6, a5, .LBB20_59
.LBB20_60:                              #   in Loop: Header=BB20_5 Depth=2
	mv	a2, s4
	mv	a4, a6
	beqz	s0, .LBB20_5
.LBB20_61:                              #   in Loop: Header=BB20_62 Depth=1
	lw	a1, 0(a4)
	or	a1, a1, t0
	sw	a1, 0(a4)
.LBB20_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
                                        #       Child Loop BB20_44 Depth 3
                                        #       Child Loop BB20_46 Depth 3
                                        #       Child Loop BB20_48 Depth 3
                                        #       Child Loop BB20_52 Depth 3
                                        #       Child Loop BB20_54 Depth 3
                                        #       Child Loop BB20_57 Depth 3
                                        #       Child Loop BB20_59 Depth 3
                                        #       Child Loop BB20_26 Depth 3
                                        #       Child Loop BB20_28 Depth 3
                                        #       Child Loop BB20_30 Depth 3
                                        #       Child Loop BB20_34 Depth 3
                                        #       Child Loop BB20_36 Depth 3
                                        #       Child Loop BB20_39 Depth 3
                                        #       Child Loop BB20_41 Depth 3
                                        #       Child Loop BB20_18 Depth 3
                                        #       Child Loop BB20_21 Depth 3
                                        #       Child Loop BB20_23 Depth 3
                                        #       Child Loop BB20_9 Depth 3
                                        #       Child Loop BB20_12 Depth 3
                                        #       Child Loop BB20_14 Depth 3
                                        #     Child Loop BB20_70 Depth 2
                                        #     Child Loop BB20_68 Depth 2
                                        #     Child Loop BB20_66 Depth 2
                                        #     Child Loop BB20_64 Depth 2
	mv	a2, s4
	j	.LBB20_5
.LBB20_63:                              #   in Loop: Header=BB20_62 Depth=1
	mv	a2, t4
.LBB20_64:                              #   Parent Loop BB20_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s1, a4, 1
	or	a1, a1, s1
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s9, a5, .LBB20_64
	j	.LBB20_62
.LBB20_65:                              #   in Loop: Header=BB20_62 Depth=1
	mv	a2, t2
.LBB20_66:                              #   Parent Loop BB20_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s1, a4, 1
	or	a1, a1, s1
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s6, a5, .LBB20_66
	j	.LBB20_62
.LBB20_67:                              #   in Loop: Header=BB20_62 Depth=1
	mv	a2, t4
.LBB20_68:                              #   Parent Loop BB20_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s1, a4, 1
	or	a1, a1, s1
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s9, a5, .LBB20_68
	j	.LBB20_62
.LBB20_69:                              #   in Loop: Header=BB20_62 Depth=1
	mv	a2, t2
.LBB20_70:                              #   Parent Loop BB20_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, -4(a2)
	addi	a5, a2, -4
	srliw	s1, a4, 1
	or	a1, a1, s1
	sw	a1, -4(a2)
	slli	a1, a4, 31
	mv	a2, a5
	bltu	s6, a5, .LBB20_70
	j	.LBB20_62
.LBB20_71:
	addi	a1, sp, 40
	mv	a2, s3
	call	memcpy
.LBB20_72:
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
	ld	s9, 136(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.LBB20_73:
	li	a1, 0
	mv	a2, s3
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
	ld	s9, 136(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	tail	memset
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
	sd	s8, 128(sp)                     # 8-byte Folded Spill
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
	mv	s4, a3
	lbu	s7, 0(a3)
	slli	a3, s7, 56
	srai	a3, a3, 56
	blez	a3, .LBB21_65
# %bb.1:
	mv	s8, a2
	mv	s2, a1
	mv	s0, a0
	li	a0, 0
	slli	s3, s7, 2
	add	s5, a2, s3
	mv	a1, a2
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	addi	a1, a1, 4
	or	a0, a0, a2
	bne	a1, s5, .LBB21_2
# %bb.3:
	beqz	a0, .LBB21_65
# %bb.4:
	addi	a0, sp, 64
	mv	a1, s2
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 32
	addi	a1, sp, 64
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 64
	addi	a2, sp, 32
	mv	a1, s0
	call	uECC_vli_mult
	ld	a2, 184(s4)
	mv	a0, sp
	addi	a1, sp, 64
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 64
	addi	a1, sp, 32
	addi	a2, sp, 32
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a0, sp, 32
	addi	a1, sp, 64
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 64
	mv	a1, s2
	mv	a2, s8
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 64
	mv	a0, s2
	jalr	a2
	lb	a3, 0(s4)
	addi	a0, sp, 64
	mv	a1, s8
	mv	a2, s8
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 64
	mv	a0, s8
	jalr	a2
	li	a0, 0
	mv	a1, s0
	mv	a2, s8
.LBB21_5:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	lw	a4, 0(a2)
	add	a5, a3, a0
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a5
	sw	a4, 0(a1)
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a2, s5, .LBB21_5
# %bb.6:
	addi	s6, s4, 4
	beqz	a0, .LBB21_66
.LBB21_7:
	li	a0, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s0
	mv	a3, s6
.LBB21_8:                               # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_8
.LBB21_9:
	li	a1, 0
	mv	a0, s8
.LBB21_10:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a0)
	slli	a3, a2, 1
	addw	a3, a3, a1
	sltu	a4, a3, a2
	xor	a2, a2, a3
	snez	a2, a2
	addiw	a2, a2, -1
	and	a1, a1, a2
	sw	a3, 0(a0)
	addi	a0, a0, 4
	or	a1, a1, a4
	bne	a0, s5, .LBB21_10
# %bb.11:
	beqz	a1, .LBB21_70
.LBB21_12:
	li	a0, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s8
	mv	a3, s6
.LBB21_13:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_13
.LBB21_14:
	li	a0, 0
	mv	a1, s0
	mv	a2, s8
.LBB21_15:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(a1)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(a2)
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a2, s5, .LBB21_15
# %bb.16:
	beqz	a0, .LBB21_19
# %bb.17:
	li	s1, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s8
	mv	a3, s6
.LBB21_18:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_18
.LBB21_19:
	lb	a3, 0(s4)
	addi	a0, sp, 64
	mv	a1, s0
	mv	a2, s8
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 64
	mv	a0, s0
	jalr	a2
	li	a0, 0
	mv	a1, s0
	mv	a2, s8
.LBB21_20:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	slli	a4, a3, 1
	addw	a4, a4, a0
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a5
	sw	a4, 0(a2)
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a2, s5, .LBB21_20
# %bb.21:
	beqz	a0, .LBB21_74
.LBB21_22:
	li	a0, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s8
	mv	a3, s6
.LBB21_23:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_23
.LBB21_24:
	li	a0, 0
	mv	a1, s0
	mv	a2, s8
.LBB21_25:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	lw	a4, 0(a2)
	add	a5, a3, a0
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a5
	sw	a4, 0(a1)
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a2, s5, .LBB21_25
# %bb.26:
	beqz	a0, .LBB21_34
.LBB21_27:
	li	a0, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s0
	mv	a3, s6
.LBB21_28:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_28
.LBB21_29:
	lbu	a0, 0(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB21_35
# %bb.30:
	add	a1, s0, s3
.LBB21_31:                              # =>This Inner Loop Header: Depth=1
	lw	a2, -4(a1)
	addi	a3, a1, -4
	srliw	a4, a2, 1
	or	a0, a0, a4
	sw	a0, -4(a1)
	slli	a0, a2, 31
	mv	a1, a3
	bltu	s0, a3, .LBB21_31
	j	.LBB21_40
.LBB21_32:                              #   in Loop: Header=BB21_34 Depth=1
	srai	a0, a0, 56
	andi	a0, a0, 255
	slli	a1, a0, 2
	add	a0, s6, a1
	lw	a0, 0(a0)
	add	a1, a1, s0
	lw	a1, 0(a1)
	bltu	a1, a0, .LBB21_29
# %bb.33:                               #   in Loop: Header=BB21_34 Depth=1
	addi	s7, s7, -1
	bltu	a0, a1, .LBB21_27
.LBB21_34:                              # =>This Inner Loop Header: Depth=1
	addi	a0, s7, -1
	slli	a0, a0, 56
	bgez	a0, .LBB21_32
	j	.LBB21_27
.LBB21_35:
	li	s1, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s0
	mv	a3, s6
.LBB21_36:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_36
# %bb.37:
	add	a1, s0, s3
	li	a2, 0
	mv	a3, a1
.LBB21_38:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -4(a3)
	addi	a4, a3, -4
	srliw	a5, a0, 1
	or	a2, a2, a5
	sw	a2, -4(a3)
	slli	a2, a0, 31
	mv	a3, a4
	bltu	s0, a4, .LBB21_38
# %bb.39:
	lw	a0, -4(a1)
	slli	s1, s1, 31
	or	a0, a0, s1
	sw	a0, -4(a1)
.LBB21_40:
	lb	a3, 0(s4)
	addi	a0, sp, 64
	mv	a1, s0
	mv	a2, s0
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 64
	mv	a0, s8
	jalr	a2
	li	a0, 0
	mv	a1, sp
	add	a2, a1, s3
	mv	a3, s8
.LBB21_41:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB21_41
# %bb.42:
	beqz	a0, .LBB21_45
# %bb.43:
	li	s1, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s8
	mv	a3, s6
.LBB21_44:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_44
.LBB21_45:
	li	a0, 0
	mv	a1, sp
	add	a2, a1, s3
	mv	a3, s8
.LBB21_46:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB21_46
# %bb.47:
	beqz	a0, .LBB21_50
# %bb.48:
	li	s1, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, s8
	mv	a3, s6
.LBB21_49:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_49
.LBB21_50:
	li	a0, 0
	mv	a1, sp
	mv	a2, s8
.LBB21_51:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(a1)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(a1)
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a2, s5, .LBB21_51
# %bb.52:
	beqz	a0, .LBB21_55
# %bb.53:
	li	s1, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	mv	a2, sp
	mv	a3, s6
.LBB21_54:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB21_54
.LBB21_55:
	lb	a3, 0(s4)
	addi	a0, sp, 64
	mv	a2, sp
	mv	a1, s0
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 64
	mv	a0, s0
	jalr	a2
	li	a0, 0
	addi	a1, sp, 32
	add	a2, a1, s3
	mv	a3, s0
.LBB21_56:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
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
	addi	a3, a3, 4
	bne	a1, a2, .LBB21_56
# %bb.57:
	beqz	a0, .LBB21_60
# %bb.58:
	li	a0, 0
	add	a1, s3, s4
	addi	a1, a1, 4
	addi	a2, sp, 32
.LBB21_59:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(s6)
	add	a5, a3, a0
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a5
	sw	a4, 0(a2)
	addi	s6, s6, 4
	addi	a2, a2, 4
	bne	s6, a1, .LBB21_59
.LBB21_60:
	add	a0, s0, s3
	mv	a1, s8
.LBB21_61:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	sw	a2, 0(s0)
	addi	s0, s0, 4
	addi	a1, a1, 4
	bne	s0, a0, .LBB21_61
# %bb.62:
	mv	a0, s2
.LBB21_63:                              # =>This Inner Loop Header: Depth=1
	lw	a1, 0(a0)
	sw	a1, 0(s8)
	addi	s8, s8, 4
	addi	a0, a0, 4
	bne	s8, s5, .LBB21_63
# %bb.64:
	addi	a1, sp, 32
	mv	a0, s2
	mv	a2, s3
	call	memcpy
.LBB21_65:
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.LBB21_66:
	mv	a0, s7
.LBB21_67:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB21_7
# %bb.68:                               #   in Loop: Header=BB21_67 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s6, a2
	lw	a1, 0(a1)
	add	a2, a2, s0
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB21_9
# %bb.69:                               #   in Loop: Header=BB21_67 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB21_67
	j	.LBB21_7
.LBB21_70:
	mv	a0, s7
.LBB21_71:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB21_12
# %bb.72:                               #   in Loop: Header=BB21_71 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s6, a2
	lw	a1, 0(a1)
	add	a2, a2, s8
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB21_14
# %bb.73:                               #   in Loop: Header=BB21_71 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB21_71
	j	.LBB21_12
.LBB21_74:
	mv	a0, s7
.LBB21_75:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB21_22
# %bb.76:                               #   in Loop: Header=BB21_75 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s6, a2
	lw	a1, 0(a1)
	add	a2, a2, s8
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB21_24
# %bb.77:                               #   in Loop: Header=BB21_75 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB21_75
	j	.LBB21_22
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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	mv	s4, a2
	lbu	s5, 0(a2)
	mv	s3, a1
	mv	s7, a0
	slli	a0, s5, 56
	srai	s2, a0, 56
	addi	a0, sp, 8
	mv	a2, a1
	mv	a3, s2
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 8
	mv	a0, s7
	jalr	a2
	addi	s1, s4, 4
	slli	s6, s5, 2
	blez	s2, .LBB22_6
# %bb.1:
	li	a0, 0
.Lpcrel_hi2:
	auipc	a1, %pcrel_hi(.L__const.x_side_default._3)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi2)
	add	a6, a1, s6
	mv	a3, s7
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a0
	subw	a2, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a0, a0, a4
	or	a0, a0, a5
	sw	a2, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, a6, .LBB22_2
# %bb.3:
	beqz	a0, .LBB22_6
# %bb.4:
	li	s0, 0
	add	a1, s6, s4
	addi	a1, a1, 4
	mv	a2, s7
	mv	a3, s1
.LBB22_5:                               # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB22_5
.LBB22_6:
	lb	a3, 0(s4)
	addi	a0, sp, 8
	mv	a1, s7
	mv	a2, s3
	call	uECC_vli_mult
	ld	a2, 184(s4)
	addi	a1, sp, 8
	mv	a0, s7
	jalr	a2
	blez	s2, .LBB22_12
# %bb.7:
	li	s0, 0
	addi	a1, s4, 132
	add	a2, s6, s4
	addi	a2, a2, 132
	mv	a3, s7
.LBB22_8:                               # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB22_8
# %bb.9:
	bnez	s0, .LBB22_13
	j	.LBB22_12
.LBB22_10:                              #   in Loop: Header=BB22_12 Depth=1
	srai	a0, a0, 56
	andi	a0, a0, 255
	slli	a1, a0, 2
	add	a0, s1, a1
	lw	a0, 0(a0)
	add	a1, a1, s7
	lw	a1, 0(a1)
	bltu	a1, a0, .LBB22_16
# %bb.11:                               #   in Loop: Header=BB22_12 Depth=1
	addi	s5, s5, -1
	bltu	a0, a1, .LBB22_13
.LBB22_12:                              # =>This Inner Loop Header: Depth=1
	addi	a0, s5, -1
	slli	a0, a0, 56
	bgez	a0, .LBB22_10
.LBB22_13:
	blez	s2, .LBB22_16
# %bb.14:
	li	a0, 0
	add	a1, s6, s4
	addi	a1, a1, 4
.LBB22_15:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s1)
	lw	a3, 0(s7)
	addw	a2, a2, a0
	subw	a4, a3, a2
	sltu	a3, a3, a2
	snez	a2, a2
	addi	a2, a2, -1
	and	a0, a0, a2
	or	a0, a0, a3
	sw	a4, 0(s7)
	addi	s1, s1, 4
	addi	s7, s7, 4
	bne	s1, a1, .LBB22_15
.LBB22_16:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 144
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
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
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
	lw	t5, 0(a1)
	sw	t5, 0(a0)
	lw	t3, 4(a1)
	sw	t3, 4(a0)
	lw	t1, 8(a1)
	sw	t1, 8(a0)
	lw	a7, 12(a1)
	sw	a7, 12(a0)
	lw	s2, 16(a1)
	sw	s2, 16(a0)
	lw	t6, 20(a1)
	sw	t6, 20(a0)
	lw	t2, 24(a1)
	sw	t2, 24(a0)
	lw	t0, 28(a1)
	sw	t0, 28(a0)
	lw	a3, 44(a1)
	lw	s1, 48(a1)
	lw	a2, 52(a1)
	lw	a5, 56(a1)
	lw	a6, 60(a1)
	slli	t4, a3, 1
	srliw	a3, a3, 31
	slliw	a4, s1, 1
	or	a4, a4, a3
	sltu	s0, a4, s1
	xor	s1, s1, a4
	seqz	s1, s1
	and	a3, a3, s1
	or	a3, a3, s0
	slliw	s0, a2, 1
	or	s0, s0, a3
	sltu	s1, s0, a2
	xor	a2, a2, s0
	seqz	a2, a2
	and	a2, a2, a3
	or	a2, a2, s1
	slliw	a3, a5, 1
	or	a3, a3, a2
	sltu	s1, a3, a5
	xor	a5, a5, a3
	seqz	a5, a5
	and	a2, a2, a5
	or	a2, a2, s1
	slliw	a5, a6, 1
	or	s3, a5, a2
	xor	s1, s3, a6
	seqz	s1, s1
	and	a2, a2, s1
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	sw	t5, 0(a0)
	sw	t3, 4(a0)
	sw	t1, 8(a0)
	addw	t4, a7, t4
	sltu	a2, t4, a7
	sw	t4, 12(a0)
	add	a4, a4, s2
	addw	s1, a4, a2
	sltu	a4, s1, s2
	xor	a5, s1, s2
	seqz	a5, a5
	and	a2, a2, a5
	or	a2, a2, a4
	sw	s1, 16(a0)
	add	s0, s0, t6
	addw	s2, s0, a2
	sltu	a4, s2, t6
	xor	a5, s2, t6
	seqz	a5, a5
	and	a2, a2, a5
	or	a4, a4, a2
	sw	s2, 20(a0)
	add	a2, t2, a3
	addw	t6, a2, a4
	sltu	a3, t6, t2
	xor	a5, t6, t2
	seqz	a5, a5
	and	a4, a4, a5
	or	a3, a3, a4
	sw	t6, 24(a0)
	add	a4, t0, a3
	addw	t2, a4, s3
	xor	a4, t2, t0
	seqz	a4, a4
	and	a7, a4, a3
	sw	t2, 28(a0)
	sltu	a2, s3, a6
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	lw	a4, 48(a1)
	lw	a5, 52(a1)
	lw	a3, 56(a1)
	lw	a2, 60(a1)
	slli	a6, a4, 1
	srliw	a4, a4, 31
	slliw	s0, a5, 1
	or	s0, s0, a4
	sltu	s3, s0, a5
	xor	a5, a5, s0
	seqz	a5, a5
	and	a4, a4, a5
	or	a4, a4, s3
	slliw	a5, a3, 1
	or	a5, a5, a4
	sltu	s3, a5, a3
	xor	a3, a3, a5
	seqz	a3, a3
	and	a3, a3, a4
	or	a3, a3, s3
	slliw	a4, a2, 1
	or	a4, a4, a3
	sltu	s3, a4, a2
	xor	a2, a2, a4
	seqz	a2, a2
	and	a2, a2, a3
	or	s3, a2, s3
	sltu	a2, t2, t0
	or	a2, a7, a2
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	sw	t3, 4(a0)
	sw	t1, 8(a0)
	addw	a6, t4, a6
	sltu	a2, a6, t4
	sw	a6, 12(a0)
	add	a3, s1, a2
	addw	s7, a3, s0
	sltu	s0, s7, s1
	xor	s1, s7, s1
	seqz	s1, s1
	and	a2, a2, s1
	or	a2, a2, s0
	sw	s7, 16(a0)
	add	a5, a5, s2
	addw	a5, a5, a2
	sltu	s1, a5, s2
	xor	s0, a5, s2
	seqz	s0, s0
	and	a2, a2, s0
	or	s1, s1, a2
	sw	a5, 20(a0)
	add	a4, a4, t6
	addw	a2, a4, s1
	sltu	a4, a2, t6
	xor	s0, a2, t6
	seqz	s0, s0
	and	s0, s0, s1
	or	s0, s0, a4
	sw	a2, 24(a0)
	add	a4, t2, s0
	addw	t6, a4, s3
	xor	a4, t6, t2
	seqz	a4, a4
	and	t4, a4, s0
	sw	t6, 28(a0)
	lw	a3, 32(a1)
	lw	a4, 36(a1)
	lw	s5, 40(a1)
	lw	s4, 56(a1)
	lw	s2, 60(a1)
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	addw	s3, t5, a3
	sltu	s1, s3, t5
	sw	s3, 0(a0)
	add	a4, a4, t3
	addw	s11, a4, s1
	sltu	s6, s11, t3
	xor	s0, s11, t3
	seqz	s0, s0
	and	s0, s0, s1
	or	s1, s0, s6
	sw	s11, 4(a0)
	add	s5, s5, t1
	addw	s0, s5, s1
	sltu	t3, s0, t1
	xor	a3, s0, t1
	seqz	a3, a3
	and	a3, a3, s1
	or	a3, a3, t3
	sw	s0, 8(a0)
	addw	a3, a6, a3
	sltu	s1, a3, a6
	sw	a3, 12(a0)
	addw	s6, s7, s1
	sltu	s1, s6, s7
	sw	s6, 16(a0)
	addw	s5, a5, s1
	sltu	a5, s5, a5
	sw	s5, 20(a0)
	add	s1, a2, s4
	addw	s1, s1, a5
	sltu	a6, s1, a2
	xor	a2, a2, s1
	seqz	a2, a2
	and	a2, a2, a5
	or	a2, a2, a6
	sw	s1, 24(a0)
	add	s2, s2, t6
	addw	s2, s2, a2
	xor	a5, s2, t6
	seqz	a5, a5
	and	t3, a5, a2
	sw	s2, 28(a0)
	sltu	a2, t6, t2
	or	a2, t4, a2
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	lw	a4, 36(a1)
	lw	a2, 40(a1)
	lw	s10, 44(a1)
	lw	s4, 52(a1)
	lw	s7, 56(a1)
	lw	s8, 60(a1)
	lw	s9, 32(a1)
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	addw	t2, s3, a4
	sltu	a5, t2, s3
	sw	t2, 0(a0)
	add	a4, s11, a5
	addw	a6, a4, a2
	sltu	a2, a6, s11
	xor	a4, a6, s11
	seqz	a4, a4
	and	a4, a4, a5
	or	a2, a2, a4
	sw	a6, 4(a0)
	add	a5, s0, s10
	addw	s10, a5, a2
	sltu	a4, s10, s0
	xor	s0, s10, s0
	seqz	s0, s0
	and	a2, a2, s0
	or	a4, a4, a2
	sw	s10, 8(a0)
	add	a2, a3, s4
	addw	s11, a2, a4
	sltu	s0, s11, a3
	xor	a3, s11, a3
	seqz	a3, a3
	and	a3, a3, a4
	or	s0, s0, a3
	sw	s11, 12(a0)
	add	a3, s6, s7
	addw	a3, a3, s0
	sltu	a4, a3, s6
	xor	a5, a3, s6
	seqz	a5, a5
	and	a5, a5, s0
	or	a4, a4, a5
	sw	a3, 16(a0)
	add	s8, s8, s5
	addw	a5, s8, a4
	sltu	s0, a5, s5
	xor	a2, a5, s5
	seqz	a2, a2
	and	a2, a2, a4
	or	a2, a2, s0
	sw	a5, 20(a0)
	add	s4, s4, s1
	addw	a4, s4, a2
	sltu	s0, a4, s1
	xor	s1, s1, a4
	seqz	s1, s1
	and	a2, a2, s1
	or	a2, a2, s0
	sw	a4, 24(a0)
	add	s9, s9, s2
	addw	ra, s9, a2
	xor	s0, ra, s2
	seqz	s0, s0
	and	s5, s0, a2
	sw	ra, 28(a0)
	sltu	s1, s2, t6
	or	a2, t3, s1
	sd	a2, 0(sp)                       # 8-byte Folded Spill
	lw	t6, 44(a1)
	lw	s0, 48(a1)
	lw	s7, 52(a1)
	lw	s4, 32(a1)
	lw	s6, 40(a1)
	subw	s3, t2, t6
	sltu	a2, t2, t6
	sw	s3, 0(a0)
	addw	s0, s0, a2
	subw	s8, a6, s0
	sltu	s1, a6, s0
	seqz	s0, s0
	and	a2, a2, s0
	or	a2, a2, s1
	sw	s8, 4(a0)
	addw	s1, s7, a2
	subw	a6, s10, s1
	sltu	s0, s10, s1
	seqz	s1, s1
	and	a2, a2, s1
	or	a2, a2, s0
	sw	a6, 8(a0)
	subw	s0, s11, a2
	sltu	a2, s11, a2
	sw	s0, 12(a0)
	subw	s10, a3, a2
	sltu	a2, a3, a2
	sw	s10, 16(a0)
	subw	s9, a5, a2
	sltu	a2, a5, a2
	sw	s9, 20(a0)
	addw	a3, s4, a2
	subw	s4, a4, a3
	sltu	a4, a4, a3
	seqz	a3, a3
	and	a2, a2, a3
	or	a2, a2, a4
	sw	s4, 24(a0)
	addw	t2, s6, a2
	subw	s7, ra, t2
	seqz	a3, t2
	and	s6, a3, a2
	sw	s7, 28(a0)
	sltu	a2, ra, s2
	lw	s2, 48(a1)
	lw	a3, 52(a1)
	or	t4, s5, a2
	lw	a4, 56(a1)
	sltu	a5, s3, s2
	addw	a3, a3, a5
	subw	a2, s8, a3
	sltu	s1, s8, a3
	seqz	a3, a3
	and	a3, a3, a5
	lw	s8, 60(a1)
	or	s1, s1, a3
	addw	a4, a4, s1
	subw	a3, a6, a4
	sltu	a5, a6, a4
	seqz	a4, a4
	and	a4, a4, s1
	lw	s11, 36(a1)
	or	a4, a4, a5
	addw	s1, s8, a4
	subw	a5, s0, s1
	sltu	s0, s0, s1
	seqz	s1, s1
	and	a4, a4, s1
	lw	s1, 44(a1)
	subw	s8, s3, s2
	sw	s8, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	or	a4, a4, s0
	sw	a5, 12(a0)
	subw	a6, s10, a4
	sltu	a4, s10, a4
	sw	a6, 16(a0)
	subw	s0, s9, a4
	sltu	s3, s9, a4
	sw	s0, 20(a0)
	addw	a4, s11, s3
	subw	s10, s4, a4
	sltu	s4, s4, a4
	seqz	a4, a4
	and	a4, a4, s3
	or	a4, a4, s4
	sw	s10, 24(a0)
	addw	s11, s1, a4
	subw	s9, s7, s11
	seqz	s1, s11
	and	s3, s1, a4
	sw	s9, 28(a0)
	lw	s4, 52(a1)
	lw	a4, 56(a1)
	sltu	s1, ra, t2
	or	s6, s6, s1
	sltu	t2, s8, s4
	addw	s1, a4, t2
	subw	a4, a2, s1
	sltu	a2, a2, s1
	lw	ra, 60(a1)
	seqz	s1, s1
	and	s1, s1, t2
	or	t2, s1, a2
	addw	a2, ra, t2
	subw	s1, a3, a2
	sltu	a3, a3, a2
	lw	ra, 32(a1)
	seqz	a2, a2
	and	a2, a2, t2
	or	t2, a2, a3
	addw	a2, ra, t2
	subw	a3, a5, a2
	sltu	a5, a5, a2
	lw	ra, 36(a1)
	seqz	a2, a2
	and	a2, a2, t2
	or	t2, a2, a5
	addw	a2, ra, t2
	subw	a5, a6, a2
	sltu	a6, a6, a2
	lw	ra, 40(a1)
	seqz	a2, a2
	and	a2, a2, t2
	or	t2, a2, a6
	addw	a2, ra, t2
	subw	a6, s0, a2
	sltu	s0, s0, a2
	seqz	a2, a2
	and	a2, a2, t2
	lw	ra, 48(a1)
	or	a2, a2, s0
	subw	t2, s10, a2
	sltu	a2, s10, a2
	addw	ra, ra, a2
	seqz	s0, ra
	and	s10, s0, a2
	subw	a2, s8, s4
	sw	a2, 0(a0)
	sw	a4, 4(a0)
	sw	s1, 8(a0)
	sw	a3, 12(a0)
	sw	a5, 16(a0)
	sw	a6, 20(a0)
	sw	t2, 24(a0)
	sltu	s0, s7, s11
	subw	a7, s9, ra
	sw	a7, 28(a0)
	or	s11, s3, s0
	lw	s8, 56(a1)
	lw	s0, 60(a1)
	lw	s3, 36(a1)
	lw	t0, 40(a1)
	lw	t1, 44(a1)
	lw	t3, 52(a1)
	subw	a1, a2, s8
	sw	a1, 0(a0)
	sltu	a1, a2, s8
	addw	s0, s0, a1
	subw	s7, a4, s0
	sltu	a2, a4, s0
	seqz	a4, s0
	and	a1, a1, a4
	or	a1, a1, a2
	subw	s5, s1, a1
	sltu	a1, s1, a1
	addw	a2, s3, a1
	subw	s3, a3, a2
	sltu	a3, a3, a2
	seqz	a2, a2
	and	a1, a1, a2
	or	a1, a1, a3
	addw	a2, t0, a1
	subw	t0, a5, a2
	sltu	a3, a5, a2
	seqz	a2, a2
	and	a1, a1, a2
	or	a1, a1, a3
	addw	a2, t1, a1
	subw	t1, a6, a2
	sltu	a3, a6, a2
	seqz	a2, a2
	and	a1, a1, a2
	or	a1, a1, a3
	subw	a3, t2, a1
	sltu	a1, t2, a1
	addw	a2, t3, a1
	subw	a5, a7, a2
	sltu	a6, a7, a2
	seqz	a2, a2
	and	a1, a1, a2
	or	a6, a1, a6
	sltu	a2, s9, ra
	or	a2, s10, a2
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	or	a1, a1, a4
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	add	a1, a1, a4
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	add	a1, a1, a4
	ld	a4, 0(sp)                       # 8-byte Folded Reload
	add	a1, a1, a4
	add	a1, a1, t4
	add	s6, s6, s11
	add	a2, a2, s6
	add	a2, a2, a6
	subw	a2, a1, a2
	sw	s7, 4(a0)
	sw	s5, 8(a0)
	sw	s3, 12(a0)
	sw	t0, 16(a0)
	sw	t1, 20(a0)
	sw	a3, 24(a0)
	sw	a5, 28(a0)
	bltz	a2, .LBB24_13
# %bb.1:
	ld	t4, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	t4, t4, a1
	subw	a1, t5, t6
	add	a1, a1, t4
	add	s2, s2, s4
	add	s2, s2, s8
	subw	a1, a1, s2
	addiw	a1, a1, 1
	li	a6, -1
	li	a7, 1
	j	.LBB24_3
.LBB24_2:                               #   in Loop: Header=BB24_3 Depth=1
	snez	a4, a1
	seqz	s1, a1
	sw	a1, 0(a0)
	neg	s0, s1
	sltu	s0, s7, s0
	addw	s7, s7, s1
	or	s0, s0, a4
	sw	s7, 4(a0)
	addi	a4, s0, -1
	sltu	s1, s5, a4
	subw	s5, s5, a4
	or	s0, s0, s1
	sw	s5, 8(a0)
	sltu	a4, s3, s0
	subw	s3, s3, s0
	sw	s3, 12(a0)
	sltu	s1, t0, a4
	subw	t0, t0, a4
	sw	t0, 16(a0)
	sltu	a4, t1, s1
	subw	t1, t1, s1
	sw	t1, 20(a0)
	addi	a4, a4, 1
	sltu	s0, a3, a4
	subw	a3, a3, a4
	xori	a4, s0, 1
	sw	a3, 24(a0)
	addi	s1, s0, -1
	sltu	s1, a5, s1
	addw	a5, a5, a4
	or	s0, s0, s1
	sw	a5, 28(a0)
	subw	a2, a2, s0
	addiw	a1, a1, 1
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	bnez	a2, .LBB24_2
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	bne	a5, a6, .LBB24_16
# %bb.5:                                #   in Loop: Header=BB24_3 Depth=1
	beqz	a3, .LBB24_16
# %bb.6:                                #   in Loop: Header=BB24_3 Depth=1
	bne	a3, a7, .LBB24_2
# %bb.7:                                #   in Loop: Header=BB24_3 Depth=1
	bnez	t1, .LBB24_2
# %bb.8:                                #   in Loop: Header=BB24_3 Depth=1
	bnez	t0, .LBB24_2
# %bb.9:                                #   in Loop: Header=BB24_3 Depth=1
	bnez	s3, .LBB24_2
# %bb.10:                               #   in Loop: Header=BB24_3 Depth=1
	bne	s5, a6, .LBB24_16
# %bb.11:                               #   in Loop: Header=BB24_3 Depth=1
	bne	s7, a6, .LBB24_16
# %bb.12:                               #   in Loop: Header=BB24_3 Depth=1
	beqz	a1, .LBB24_2
	j	.LBB24_16
.LBB24_13:
	add	t6, t6, s2
	add	s4, s4, s8
	add	t6, t6, s4
	ld	t4, 24(sp)                      # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	t4, t4, a1
	add	t4, t4, t5
	subw	a1, t6, t4
.LBB24_14:                              # =>This Inner Loop Header: Depth=1
	mv	s0, s7
	mv	a4, s5
	mv	a6, s3
	mv	a7, t0
	mv	t2, t1
	mv	s1, a3
	mv	t3, a5
	snez	a3, a1
	add	s7, s7, a3
	addiw	s7, s7, -1
	sltu	a5, s7, s0
	xor	s0, s7, s0
	seqz	s0, s0
	and	a3, a3, s0
	or	a3, a3, a5
	add	s5, s5, a3
	addiw	s5, s5, -1
	sltu	a5, s5, a4
	xor	a4, s5, a4
	seqz	a4, a4
	and	a3, a3, a4
	or	a3, a3, a5
	addw	s3, s3, a3
	sltu	a3, s3, a6
	addw	t0, t0, a3
	sltu	a3, t0, a7
	addw	t1, t1, a3
	sltu	a4, t1, t2
	add	a3, s1, a4
	addiw	a3, a3, 1
	sltu	a5, a3, s1
	xor	s1, s1, a3
	seqz	s1, s1
	and	a4, a4, s1
	or	a4, a4, a5
	add	a5, t3, a4
	addiw	a5, a5, -1
	sltu	s1, a5, t3
	xor	s0, a5, t3
	seqz	s0, s0
	and	a4, a4, s0
	or	a4, a4, s1
	addw	a2, a2, a4
	addiw	a1, a1, 1
	bltz	a2, .LBB24_14
# %bb.15:
	negw	a1, a1
	sw	a1, 0(a0)
	sw	s7, 4(a0)
	sw	s5, 8(a0)
	sw	s3, 12(a0)
	sw	t0, 16(a0)
	sw	t1, 20(a0)
	sw	a3, 24(a0)
	sw	a5, 28(a0)
.LBB24_16:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
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
	sd	s10, 96(sp)                     # 8-byte Folded Spill
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
	mv	s3, a4
	lbu	s7, 0(a4)
	mv	s4, a3
	mv	s2, a2
	mv	s9, a1
	mv	s10, a0
	slli	a0, s7, 56
	srai	s5, a0, 56
	addi	s6, a4, 4
	blez	s5, .LBB27_6
# %bb.1:
	li	a1, 0
	slli	a6, s7, 2
	mv	a2, sp
	add	a3, a2, a6
	mv	a4, s2
	mv	a5, s10
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	lw	s1, 0(a5)
	lw	a0, 0(a4)
	addw	s1, s1, a1
	subw	s0, a0, s1
	sltu	a0, a0, s1
	snez	s1, s1
	addiw	s1, s1, -1
	and	a1, a1, s1
	or	a1, a1, a0
	sw	s0, 0(a2)
	addi	a2, a2, 4
	addi	a5, a5, 4
	addi	a4, a4, 4
	bne	a2, a3, .LBB27_2
# %bb.3:
	beqz	a1, .LBB27_6
# %bb.4:
	li	s1, 0
	add	a0, a6, s3
	addi	a0, a0, 4
	mv	a2, sp
	mv	a3, s6
.LBB27_5:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a1, a4, s1
	addw	a1, a1, a5
	sltu	a5, a1, a4
	xor	a4, a4, a1
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a0, .LBB27_5
.LBB27_6:
	addi	a0, sp, 32
	mv	a1, sp
	mv	a2, sp
	mv	a3, s5
	call	uECC_vli_mult
	ld	a2, 184(s3)
	mv	a0, sp
	addi	a1, sp, 32
	jalr	a2
	lb	a3, 0(s3)
	addi	a0, sp, 32
	mv	a2, sp
	mv	a1, s10
	call	uECC_vli_mult
	ld	a2, 184(s3)
	addi	a1, sp, 32
	mv	a0, s10
	jalr	a2
	lb	a3, 0(s3)
	addi	a0, sp, 32
	mv	a2, sp
	mv	a1, s2
	call	uECC_vli_mult
	ld	a2, 184(s3)
	addi	a1, sp, 32
	mv	a0, s2
	jalr	a2
	blez	s5, .LBB27_27
# %bb.7:
	li	a0, 0
	slli	s8, s7, 2
	add	a1, s9, s8
	mv	a2, s4
	mv	a3, s9
.LBB27_8:                               # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB27_8
# %bb.9:
	beqz	a0, .LBB27_12
# %bb.10:
	li	s1, 0
	add	a1, s8, s3
	addi	a1, a1, 4
	mv	a2, s4
	mv	a3, s6
.LBB27_11:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB27_11
.LBB27_12:
	lb	a3, 0(s3)
	addi	a0, sp, 32
	mv	a1, s4
	mv	a2, s4
	call	uECC_vli_mult
	ld	a2, 184(s3)
	mv	a0, sp
	addi	a1, sp, 32
	mv	s1, sp
	jalr	a2
	li	a1, 0
	add	a0, s10, s8
	mv	a2, s10
.LBB27_13:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a2)
	lw	a4, 0(s1)
	addw	a3, a3, a1
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a1, a1, a3
	or	a1, a1, a4
	sw	a5, 0(s1)
	addi	a2, a2, 4
	addi	s1, s1, 4
	bne	a2, a0, .LBB27_13
# %bb.14:
	beqz	a1, .LBB27_17
# %bb.15:
	li	s0, 0
	add	a2, s8, s3
	addi	a2, a2, 4
	mv	a3, sp
	mv	a4, s6
.LBB27_16:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	lw	s1, 0(a4)
	add	a1, a5, s0
	addw	a1, a1, s1
	sltu	s1, a1, a5
	xor	a5, a5, a1
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a1, 0(a3)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a2, .LBB27_16
.LBB27_17:
	li	a1, 0
	add	a2, s2, s8
	mv	a3, sp
	mv	a4, s2
.LBB27_18:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	lw	s1, 0(a3)
	addw	a5, a5, a1
	subw	s0, s1, a5
	sltu	s1, s1, a5
	snez	a5, a5
	addiw	a5, a5, -1
	and	a1, a1, a5
	or	a1, a1, s1
	sw	s0, 0(a3)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a2, .LBB27_18
# %bb.19:
	beqz	a1, .LBB27_22
# %bb.20:
	li	s0, 0
	add	a2, s8, s3
	addi	a2, a2, 4
	mv	a3, sp
	mv	a4, s6
.LBB27_21:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	lw	s1, 0(a4)
	add	a1, a5, s0
	addw	a1, a1, s1
	sltu	s1, a1, a5
	xor	a5, a5, a1
	snez	a5, a5
	addi	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a1, 0(a3)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a2, .LBB27_21
.LBB27_22:
	li	a1, 0
	mv	a2, s2
	mv	a3, s10
.LBB27_23:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	lw	a5, 0(a2)
	addw	a4, a4, a1
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a1, a1, a4
	or	a1, a1, a5
	sw	s1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a0, .LBB27_23
# %bb.24:
	beqz	a1, .LBB27_28
# %bb.25:
	li	s1, 0
	add	a1, s8, s3
	addi	a1, a1, 4
	mv	a2, s2
	mv	a3, s6
.LBB27_26:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB27_26
	j	.LBB27_28
.LBB27_27:
	lb	a3, 0(s3)
	addi	a0, sp, 32
	mv	a1, s4
	mv	a2, s4
	call	uECC_vli_mult
	ld	a2, 184(s3)
	mv	a0, sp
	addi	a1, sp, 32
	jalr	a2
.LBB27_28:
	lb	a3, 0(s3)
	addi	a0, sp, 32
	mv	a1, s9
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s3)
	addi	a1, sp, 32
	mv	a0, s9
	jalr	a2
	blez	s5, .LBB27_40
# %bb.29:
	li	a0, 0
	slli	s5, s7, 2
	add	a1, s2, s5
	mv	a2, sp
	mv	a3, s2
.LBB27_30:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(s10)
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
	addi	s10, s10, 4
	bne	a3, a1, .LBB27_30
# %bb.31:
	beqz	a0, .LBB27_34
# %bb.32:
	li	s1, 0
	add	a1, s5, s3
	addi	a1, a1, 4
	mv	a2, s2
	mv	a3, s6
.LBB27_33:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB27_33
.LBB27_34:
	lb	a3, 0(s3)
	addi	a0, sp, 32
	mv	a1, s4
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s3)
	addi	a1, sp, 32
	mv	a0, s4
	jalr	a2
	li	a0, 0
	add	a1, s9, s5
	mv	a2, s4
.LBB27_35:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(s9)
	lw	a4, 0(a2)
	addw	a3, a3, a0
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addiw	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a4
	sw	a5, 0(a2)
	addi	s9, s9, 4
	addi	a2, a2, 4
	bne	s9, a1, .LBB27_35
# %bb.36:
	beqz	a0, .LBB27_39
# %bb.37:
	li	a0, 0
	add	a1, s5, s3
	addi	a1, a1, 4
.LBB27_38:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s4)
	lw	a3, 0(s6)
	add	a4, a2, a0
	addw	a3, a3, a4
	sltu	a4, a3, a2
	xor	a2, a2, a3
	snez	a2, a2
	addi	a2, a2, -1
	and	a0, a0, a2
	or	a0, a0, a4
	sw	a3, 0(s4)
	addi	s6, s6, 4
	addi	s4, s4, 4
	bne	s6, a1, .LBB27_38
.LBB27_39:
	mv	a1, sp
	mv	a0, s2
	mv	a2, s5
	call	memcpy
	j	.LBB27_41
.LBB27_40:
	lb	a3, 0(s3)
	addi	a0, sp, 32
	mv	a1, s4
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s3)
	addi	a1, sp, 32
	mv	a0, s4
	jalr	a2
.LBB27_41:
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
	ld	s10, 96(sp)                     # 8-byte Folded Reload
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
	mv	s11, a5
	lbu	s0, 0(a5)
	mv	s7, a4
	mv	s10, a3
	mv	s6, a2
	mv	s1, a1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	slli	a0, s0, 56
	srai	s5, a0, 56
	addi	s2, sp, 136
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	blez	s5, .LBB28_3
# %bb.1:
	slli	s9, s0, 2
	mv	a0, s2
	mv	a1, s1
	mv	a2, s9
	call	memcpy
	addi	s8, sp, 72
	add	a1, s1, s9
	mv	a0, s8
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	mv	a2, s9
	call	memcpy
	addi	a0, sp, 168
	beqz	s10, .LBB28_5
# %bb.2:
	mv	a1, s10
	mv	a2, s9
	call	memcpy
	j	.LBB28_6
.LBB28_3:
	addi	s8, sp, 72
	slli	a0, s5, 2
	add	a0, a0, s1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	beqz	s10, .LBB28_19
# %bb.4:
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	j	.LBB28_7
.LBB28_5:
	li	a1, 0
	mv	a2, s9
	call	memset
	li	a0, 1
	sw	a0, 168(sp)
.LBB28_6:
	addi	a0, sp, 104
	mv	a1, s2
	mv	a2, s9
	call	memmove
	addi	a1, sp, 72
	addi	a0, sp, 40
	mv	a2, s9
	call	memmove
	sd	s0, 0(sp)                       # 8-byte Folded Spill
.LBB28_7:
	addi	a0, sp, 232
	addi	a1, sp, 168
	addi	a2, sp, 168
	mv	a3, s5
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a2, sp, 200
	mv	a1, s2
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a1, sp, 232
	mv	a0, s2
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 200
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a2, sp, 200
	mv	a1, s8
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a1, sp, 232
	mv	a0, s8
	jalr	a2
	ld	a4, 168(s11)
	addi	a2, sp, 168
	mv	a0, s2
	mv	a1, s8
	mv	a3, s11
	jalr	a4
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 168
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 104
	addi	a2, sp, 200
	addi	s9, sp, 104
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 104
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 200
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 40
	addi	a2, sp, 200
	addi	s10, sp, 40
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 40
	addi	a1, sp, 232
	jalr	a2
	addi	s7, s7, -2
	slli	a0, s7, 48
	srai	a0, a0, 48
	blez	a0, .LBB28_10
# %bb.8:
	slli	a0, a0, 48
	srli	a0, a0, 48
	li	s3, 1
.LBB28_9:                               # =>This Inner Loop Header: Depth=1
	mv	s4, a0
	srliw	a0, a0, 5
	slli	a0, a0, 2
	add	a0, a0, s6
	lw	a0, 0(a0)
	sllw	a1, s3, s4
	and	a0, a0, a1
	seqz	a1, a0
	snez	a0, a0
	slli	a0, a0, 5
	add	s8, s9, a0
	add	s7, s10, a0
	slli	a1, a1, 5
	add	s0, s9, a1
	add	s1, s10, a1
	mv	a0, s8
	mv	a1, s7
	mv	a2, s0
	mv	a3, s1
	mv	a4, s11
	call	XYcZ_addC
	mv	a0, s0
	mv	a1, s1
	mv	a2, s8
	mv	a3, s7
	mv	a4, s11
	call	XYcZ_add
	addiw	a0, s4, -1
	bltu	s3, s4, .LBB28_9
.LBB28_10:
	lwu	a0, 0(s6)
	andi	a0, a0, 1
	slli	s7, a0, 5
	add	s6, s9, s7
	add	s7, s7, s10
	xori	a0, a0, 1
	slli	a0, a0, 5
	add	s8, s9, a0
	add	s9, s10, a0
	mv	a0, s6
	mv	a1, s7
	mv	a2, s8
	mv	a3, s9
	mv	a4, s11
	call	XYcZ_addC
	addi	s10, s11, 4
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	blez	s5, .LBB28_16
# %bb.11:
	li	a1, 0
	slli	a0, s0, 2
	addi	a2, sp, 168
	add	a3, a2, a0
.LBB28_12:                              # =>This Inner Loop Header: Depth=1
	lw	a4, -32(s2)
	lw	a5, 0(s2)
	addw	a4, a4, a1
	subw	s1, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addiw	a4, a4, -1
	and	a1, a1, a4
	or	a1, a1, a5
	sw	s1, 0(a2)
	addi	a2, a2, 4
	addi	s2, s2, 4
	bne	a2, a3, .LBB28_12
# %bb.13:
	beqz	a1, .LBB28_16
# %bb.14:
	li	s1, 0
	add	a0, a0, s11
	addi	a0, a0, 4
	addi	a2, sp, 168
	mv	a3, s10
.LBB28_15:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	lw	a5, 0(a3)
	add	a1, a4, s1
	addw	a1, a1, a5
	sltu	a5, a1, a4
	xor	a4, a4, a1
	snez	a4, a4
	addi	a4, a4, -1
	and	a4, a4, s1
	or	s1, a4, a5
	sw	a1, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a0, .LBB28_15
.LBB28_16:
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 168
	mv	a2, s7
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 168
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	addi	a0, sp, 168
	addi	a1, sp, 168
	mv	a2, s10
	mv	a3, s5
	call	uECC_vli_modInv
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 168
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 168
	mv	a2, s6
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 168
	addi	a1, sp, 232
	jalr	a2
	mv	a0, s8
	mv	a1, s9
	mv	a2, s6
	mv	a3, s7
	mv	a4, s11
	call	XYcZ_add
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 168
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 104
	addi	a2, sp, 200
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 104
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 200
	addi	a2, sp, 168
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 200
	addi	a1, sp, 232
	jalr	a2
	lb	a3, 0(s11)
	addi	a0, sp, 232
	addi	a1, sp, 40
	addi	a2, sp, 200
	call	uECC_vli_mult
	ld	a2, 184(s11)
	addi	a0, sp, 40
	addi	a1, sp, 232
	jalr	a2
	blez	s5, .LBB28_18
# %bb.17:
	slli	s0, s0, 2
	addi	a1, sp, 104
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	mv	a0, s1
	mv	a2, s0
	call	memcpy
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	slli	a0, a0, 2
	add	a0, a0, s1
	addi	a1, sp, 40
	mv	a2, s0
	call	memcpy
.LBB28_18:
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
.LBB28_19:
	li	a0, 1
	sw	a0, 168(sp)
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	j	.LBB28_7
.Lfunc_end28:
	.size	EccPoint_mult, .Lfunc_end28-EccPoint_mult
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              # @XYcZ_addC
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -272
	.cfi_def_cfa_offset 272
	sd	ra, 264(sp)                     # 8-byte Folded Spill
	sd	s0, 256(sp)                     # 8-byte Folded Spill
	sd	s1, 248(sp)                     # 8-byte Folded Spill
	sd	s2, 240(sp)                     # 8-byte Folded Spill
	sd	s3, 232(sp)                     # 8-byte Folded Spill
	sd	s4, 224(sp)                     # 8-byte Folded Spill
	sd	s5, 216(sp)                     # 8-byte Folded Spill
	sd	s6, 208(sp)                     # 8-byte Folded Spill
	sd	s7, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	sd	s10, 176(sp)                    # 8-byte Folded Spill
	sd	s11, 168(sp)                    # 8-byte Folded Spill
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
	mv	s5, a4
	lbu	s8, 0(a4)
	mv	s10, a3
	mv	s11, a2
	mv	s6, a1
	mv	s2, a0
	slli	a0, s8, 56
	srai	s4, a0, 56
	addi	s7, a4, 4
	slli	s3, s8, 2
	blez	s4, .LBB29_6
# %bb.1:
	li	a0, 0
	addi	a1, sp, 72
	add	a2, a1, s3
	mv	a3, s11
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
	beqz	a0, .LBB29_6
# %bb.4:
	li	s1, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	addi	a2, sp, 72
	mv	a3, s7
.LBB29_5:                               # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_5
.LBB29_6:
	addi	a0, sp, 104
	addi	a1, sp, 72
	addi	a2, sp, 72
	addi	s9, sp, 72
	mv	a3, s4
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a0, sp, 72
	addi	a1, sp, 104
	jalr	a2
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a2, sp, 72
	mv	a1, s2
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 104
	mv	a0, s2
	jalr	a2
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a2, sp, 72
	mv	a1, s11
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 104
	mv	a0, s11
	jalr	a2
	blez	s4, .LBB29_10
# %bb.7:
	li	s0, 0
	add	a1, s9, s3
	mv	a2, s10
	mv	a3, s6
	addi	a4, sp, 72
.LBB29_8:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a2)
	lw	s1, 0(a3)
	add	a0, a5, s0
	addw	a0, a0, s1
	sltu	s1, a0, a5
	xor	a5, a5, a0
	snez	a5, a5
	addiw	a5, a5, -1
	and	a5, a5, s0
	or	s0, a5, s1
	sw	a0, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a4, a1, .LBB29_8
# %bb.9:
	bnez	s0, .LBB29_14
.LBB29_10:
	mv	a0, s8
.LBB29_11:                              # =>This Inner Loop Header: Depth=1
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB29_14
# %bb.12:                               #   in Loop: Header=BB29_11 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s7, a2
	lw	a1, 0(a1)
	add	a2, a2, s9
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB29_17
# %bb.13:                               #   in Loop: Header=BB29_11 Depth=1
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB29_11
.LBB29_14:
	blez	s4, .LBB29_32
# %bb.15:
	li	a0, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	addi	a2, sp, 72
	mv	a3, s7
.LBB29_16:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_16
.LBB29_17:
	blez	s4, .LBB29_28
# %bb.18:
	li	a0, 0
	add	a1, s6, s3
	mv	a2, s10
	mv	a3, s6
.LBB29_19:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_19
# %bb.20:
	beqz	a0, .LBB29_23
# %bb.21:
	li	s1, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	mv	a2, s10
	mv	a3, s7
.LBB29_22:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_22
.LBB29_23:
	li	a0, 0
	addi	a1, sp, 40
	add	a2, a1, s3
	mv	a3, s11
	mv	a4, s2
.LBB29_24:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB29_24
# %bb.25:
	beqz	a0, .LBB29_28
# %bb.26:
	li	s1, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	addi	a2, sp, 40
	mv	a3, s7
.LBB29_27:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_27
.LBB29_28:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a2, sp, 40
	addi	s1, sp, 40
	mv	a1, s6
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 104
	mv	a0, s6
	jalr	a2
	blez	s4, .LBB29_33
# %bb.29:
	li	s0, 0
	add	a1, s1, s3
	mv	a2, s2
	mv	a3, s11
.LBB29_30:                              # =>This Inner Loop Header: Depth=1
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
	bne	s1, a1, .LBB29_30
# %bb.31:
	bnez	s0, .LBB29_37
	j	.LBB29_33
.LBB29_32:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a2, sp, 40
	mv	a1, s6
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 104
	mv	a0, s6
	jalr	a2
.LBB29_33:
	addi	a0, sp, 40
.LBB29_34:                              # =>This Inner Loop Header: Depth=1
	addi	a1, s8, -1
	slli	a1, a1, 56
	bltz	a1, .LBB29_37
# %bb.35:                               #   in Loop: Header=BB29_34 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s7, a2
	lw	a1, 0(a1)
	add	a2, a2, a0
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB29_40
# %bb.36:                               #   in Loop: Header=BB29_34 Depth=1
	addi	s8, s8, -1
	bgeu	a1, a2, .LBB29_34
.LBB29_37:
	blez	s4, .LBB29_40
# %bb.38:
	li	a0, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	addi	a2, sp, 40
	mv	a3, s7
.LBB29_39:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_39
.LBB29_40:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	mv	a1, s10
	mv	a2, s10
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 104
	mv	a0, s11
	jalr	a2
	blez	s4, .LBB29_56
# %bb.41:
	li	a0, 0
	addi	a1, sp, 40
	add	a2, a1, s3
	mv	a3, s11
.LBB29_42:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB29_42
# %bb.43:
	beqz	a0, .LBB29_46
# %bb.44:
	li	s1, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	mv	a2, s11
	mv	a3, s7
.LBB29_45:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_45
.LBB29_46:
	li	a0, 0
	addi	a1, sp, 8
	add	a2, a1, s3
	mv	a3, s2
.LBB29_47:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(s11)
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
	addi	s11, s11, 4
	addi	a3, a3, 4
	bne	a1, a2, .LBB29_47
# %bb.48:
	beqz	a0, .LBB29_51
# %bb.49:
	li	s1, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB29_50:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_50
.LBB29_51:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a2, sp, 8
	mv	a1, s10
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 104
	mv	a0, s10
	jalr	a2
	li	a0, 0
	add	a1, s6, s3
	mv	a2, s10
	mv	a3, s6
.LBB29_52:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_52
# %bb.53:
	beqz	a0, .LBB29_57
# %bb.54:
	li	a0, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	mv	a2, s7
.LBB29_55:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(s10)
	lw	a4, 0(a2)
	add	a5, a3, a0
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a0, a0, a3
	or	a0, a0, a5
	sw	a4, 0(s10)
	addi	a2, a2, 4
	addi	s10, s10, 4
	bne	a2, a1, .LBB29_55
	j	.LBB29_57
.LBB29_56:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a2, sp, 8
	mv	a1, s10
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 104
	mv	a0, s10
	jalr	a2
.LBB29_57:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a1, sp, 72
	addi	a2, sp, 72
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a0, sp, 8
	addi	a1, sp, 104
	addi	s0, sp, 8
	jalr	a2
	blez	s4, .LBB29_74
# %bb.58:
	li	a0, 0
	addi	a1, sp, 40
	add	a2, a1, s3
.LBB29_59:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB29_59
# %bb.60:
	beqz	a0, .LBB29_63
# %bb.61:
	li	s1, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	addi	a2, sp, 8
	mv	a3, s7
.LBB29_62:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_62
.LBB29_63:
	li	a0, 0
	addi	a1, sp, 40
	add	a2, a1, s3
	addi	a3, sp, 8
	mv	a4, s2
.LBB29_64:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB29_64
# %bb.65:
	beqz	a0, .LBB29_68
# %bb.66:
	li	s1, 0
	add	a1, s3, s5
	addi	a1, a1, 4
	addi	a2, sp, 40
	mv	a3, s7
.LBB29_67:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB29_67
.LBB29_68:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a1, sp, 40
	addi	a2, sp, 72
	addi	s0, sp, 40
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a0, sp, 40
	addi	a1, sp, 104
	jalr	a2
	li	a0, 0
	add	a1, s6, s3
	mv	a2, s6
.LBB29_69:                              # =>This Inner Loop Header: Depth=1
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
	bne	a2, a1, .LBB29_69
# %bb.70:
	beqz	a0, .LBB29_73
# %bb.71:
	li	a0, 0
	add	a1, s3, s5
	addi	a1, a1, 4
.LBB29_72:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s6)
	lw	a3, 0(s7)
	add	a4, a2, a0
	addw	a3, a3, a4
	sltu	a4, a3, a2
	xor	a2, a2, a3
	snez	a2, a2
	addi	a2, a2, -1
	and	a0, a0, a2
	or	a0, a0, a4
	sw	a3, 0(s6)
	addi	s7, s7, 4
	addi	s6, s6, 4
	bne	s7, a1, .LBB29_72
.LBB29_73:
	addi	a1, sp, 8
	mv	a0, s2
	mv	a2, s3
	call	memcpy
	j	.LBB29_75
.LBB29_74:
	lb	a3, 0(s5)
	addi	a0, sp, 104
	addi	a1, sp, 40
	addi	a2, sp, 72
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a0, sp, 40
	addi	a1, sp, 104
	jalr	a2
.LBB29_75:
	ld	ra, 264(sp)                     # 8-byte Folded Reload
	ld	s0, 256(sp)                     # 8-byte Folded Reload
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	ld	s2, 240(sp)                     # 8-byte Folded Reload
	ld	s3, 232(sp)                     # 8-byte Folded Reload
	ld	s4, 224(sp)                     # 8-byte Folded Reload
	ld	s5, 216(sp)                     # 8-byte Folded Reload
	ld	s6, 208(sp)                     # 8-byte Folded Reload
	ld	s7, 200(sp)                     # 8-byte Folded Reload
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	ld	s10, 176(sp)                    # 8-byte Folded Reload
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 272
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
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	mv	s2, a2
	mv	s3, a0
	addi	a0, sp, 56
	lhu	a6, 2(a2)
	sd	a0, 8(sp)
	addi	a2, sp, 24
	sd	a2, 16(sp)
	slli	a4, a6, 48
	srai	t2, a4, 48
	addi	a2, t2, 31
	srliw	a3, a2, 27
	add	a2, a2, a3
	srai	a2, a2, 5
	slli	t1, a2, 56
	srai	t0, t1, 56
	addi	a5, s2, 36
	andi	a7, a2, 255
	blez	t0, .LBB31_5
# %bb.1:
	li	s0, 0
	slli	s1, a7, 2
	add	t3, a0, s1
	mv	a2, a5
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	lw	s1, 0(a2)
	add	a3, a4, s0
	addw	a3, a3, s1
	sltu	s1, a3, a4
	xor	a4, a4, a3
	snez	a4, a4
	addiw	a4, a4, -1
	and	a4, a4, s0
	or	s0, a4, s1
	sw	a3, 0(a0)
	addi	a0, a0, 4
	addi	a2, a2, 4
	addi	a1, a1, 4
	bne	a0, t3, .LBB31_2
# %bb.3:
	beqz	s0, .LBB31_5
# %bb.4:
	li	t1, 0
	j	.LBB31_7
.LBB31_5:
	srai	a1, t1, 51
	li	t1, 1
	bge	t2, a1, .LBB31_7
# %bb.6:
	srai	a0, t2, 5
	slli	a0, a0, 2
	addi	a1, sp, 56
	add	a0, a0, a1
	lw	a0, 0(a0)
	srlw	a0, a0, t2
	not	a0, a0
	andi	t1, a0, 1
.LBB31_7:
	blez	t0, .LBB31_10
# %bb.8:
	li	a0, 0
	slli	a4, a7, 2
	addi	a3, sp, 24
	add	a4, a4, a3
	addi	a2, sp, 56
.LBB31_9:                               # =>This Inner Loop Header: Depth=1
	lw	s1, 0(a2)
	lw	s0, 0(a5)
	add	a1, s1, a0
	addw	a1, a1, s0
	sltu	s0, a1, s1
	xor	s1, s1, a1
	snez	s1, s1
	addi	s1, s1, -1
	and	a0, a0, s1
	or	a0, a0, s0
	sw	a1, 0(a3)
	addi	a3, a3, 4
	addi	a5, a5, 4
	addi	a2, a2, 4
	bne	a3, a4, .LBB31_9
.LBB31_10:
	slli	t1, t1, 3
	addi	a0, sp, 8
	add	a0, a0, t1
	ld	a2, 0(a0)
	addi	a1, s2, 68
	addi	a6, a6, 1
	slli	a4, a6, 48
	srai	a4, a4, 48
	mv	a0, s3
	li	a3, 0
	mv	a5, s2
	call	EccPoint_mult
	lbu	a0, 0(s2)
	slli	a0, a0, 57
	srai	a1, a0, 56
	blez	a1, .LBB31_14
# %bb.11:
	li	a0, 0
	andi	a1, a1, 255
	slli	a1, a1, 2
	add	a1, a1, s3
.LBB31_12:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s3)
	addi	s3, s3, 4
	or	a0, a0, a2
	bne	s3, a1, .LBB31_12
# %bb.13:
	snez	a0, a0
	j	.LBB31_15
.LBB31_14:
	li	a0, 0
.LBB31_15:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 128
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
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
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
	mv	s6, a1
	mv	s5, a0
	andi	a0, a2, 255
	addi	a1, a2, -1
	slli	a1, a1, 56
	srai	a1, a1, 56
	slti	a3, a1, -1
	addi	a3, a3, -1
	or	a1, a1, a3
	addi	a1, a1, 1
	mv	a4, a0
.LBB34_1:                               # =>This Inner Loop Header: Depth=1
	mv	a3, a4
	addi	a4, a4, -1
	slli	a4, a4, 56
	bltz	a4, .LBB34_4
# %bb.2:                                #   in Loop: Header=BB34_1 Depth=1
	srai	a4, a4, 56
	andi	a4, a4, 255
	slli	a4, a4, 2
	add	a4, a4, s6
	lw	a5, 0(a4)
	addi	a4, a3, -1
	beqz	a5, .LBB34_1
# %bb.3:
	mv	a1, a3
	j	.LBB34_5
.LBB34_4:
	andi	a3, a1, 255
	beqz	a3, .LBB34_29
.LBB34_5:
	slli	a1, a1, 56
	srai	a1, a1, 56
	addi	a1, a1, -1
	slli	a3, a1, 2
	add	a3, a3, s6
	lw	a3, 0(a3)
	beqz	a3, .LBB34_8
# %bb.6:
	li	a4, 0
.LBB34_7:                               # =>This Inner Loop Header: Depth=1
	srliw	a3, a3, 1
	addi	a4, a4, 1
	bnez	a3, .LBB34_7
	j	.LBB34_9
.LBB34_8:
	li	a4, 0
.LBB34_9:
	slli	a1, a1, 5
	add	a4, a4, a1
.LBB34_10:
.Lpcrel_hi4:
	auipc	s3, %pcrel_hi(g_rng_function)
	ld	a1, %pcrel_lo(.Lpcrel_hi4)(s3)
	beqz	a1, .LBB34_27
# %bb.11:
	slli	s2, a2, 2
	add	s7, s5, s2
	negw	a1, a4
	li	a3, -1
	srlw	s4, a3, a1
	addi	s7, s7, -4
	blez	a2, .LBB34_24
# %bb.12:
	li	s8, 0
	slli	a0, a0, 2
	add	s10, s5, a0
	mv	s1, sp
	add	s1, s1, a0
	li	s9, 64
	j	.LBB34_14
.LBB34_13:                              #   in Loop: Header=BB34_14 Depth=1
	addiw	s8, s8, 1
	beq	s8, s9, .LBB34_27
.LBB34_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_16 Depth 2
                                        #     Child Loop BB34_19 Depth 2
                                        #     Child Loop BB34_21 Depth 2
	ld	a2, %pcrel_lo(.Lpcrel_hi4)(s3)
	mv	a0, s5
	mv	a1, s2
	jalr	a2
	beqz	a0, .LBB34_28
# %bb.15:                               #   in Loop: Header=BB34_14 Depth=1
	lw	a1, 0(s7)
	li	a0, 0
	and	a1, a1, s4
	sw	a1, 0(s7)
	mv	a1, s5
.LBB34_16:                              #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 0(a1)
	addi	a1, a1, 4
	or	a0, a0, a2
	bne	a1, s10, .LBB34_16
# %bb.17:                               #   in Loop: Header=BB34_14 Depth=1
	beqz	a0, .LBB34_13
# %bb.18:                               #   in Loop: Header=BB34_14 Depth=1
	li	a0, 0
	mv	a1, sp
	mv	a2, s6
	mv	a3, s5
.LBB34_19:                              #   Parent Loop BB34_14 Depth=1
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
	bne	a1, s1, .LBB34_19
# %bb.20:                               #   in Loop: Header=BB34_14 Depth=1
	li	a1, 0
	mv	a2, sp
.LBB34_21:                              #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 0(a2)
	addi	a2, a2, 4
	or	a1, a1, a3
	bne	a2, s1, .LBB34_21
# %bb.22:                               #   in Loop: Header=BB34_14 Depth=1
	seqz	a0, a0
	seqz	a1, a1
	addi	a0, a0, -1
	andi	a0, a0, -2
	or	a0, a0, a1
	bnez	a0, .LBB34_13
# %bb.23:
	li	a0, 1
	j	.LBB34_28
.LBB34_24:
	li	s0, 64
.LBB34_25:                              # =>This Inner Loop Header: Depth=1
	ld	a2, %pcrel_lo(.Lpcrel_hi4)(s3)
	mv	a0, s5
	mv	a1, s2
	jalr	a2
	beqz	a0, .LBB34_28
# %bb.26:                               #   in Loop: Header=BB34_25 Depth=1
	lw	a0, 0(s7)
	and	a0, a0, s4
	addiw	s0, s0, -1
	sw	a0, 0(s7)
	bnez	s0, .LBB34_25
.LBB34_27:
	li	a0, 0
.LBB34_28:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.LBB34_29:
	li	a4, 0
	j	.LBB34_10
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
	blez	a5, .LBB35_17
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
	beqz	a3, .LBB35_17
# %bb.4:
	addi	a5, a1, 4
	mv	a3, a2
	li	a0, -2
.LBB35_5:                               # =>This Inner Loop Header: Depth=1
	addi	s1, a3, -1
	slli	s1, s1, 56
	bltz	s1, .LBB35_17
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
	j	.LBB35_17
.LBB35_8:
	slli	a3, s5, 2
	add	a3, a3, s2
.LBB35_9:                               # =>This Inner Loop Header: Depth=1
	addi	s1, a2, -1
	slli	s1, s1, 56
	bltz	s1, .LBB35_17
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
	j	.LBB35_17
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
	addi	a0, s5, -1
	slli	a0, a0, 56
	bltz	a0, .LBB35_16
# %bb.13:
	li	a1, 0
	srai	a0, a0, 56
	andi	a0, a0, 255
	slli	a0, a0, 2
	add	s4, s4, a0
	add	s3, s3, a0
	addi	a0, sp, 36
.LBB35_14:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s3)
	lw	a3, 0(s4)
	xor	a2, a2, a3
	or	a1, a1, a2
	addi	s4, s4, -4
	addi	s3, s3, -4
	bne	s4, a0, .LBB35_14
# %bb.15:
	li	a0, -3
	bnez	a1, .LBB35_17
.LBB35_16:
	li	a0, 0
.LBB35_17:
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
	slli	a1, a0, 48
	srli	a1, a1, 62
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
	lw	a0, 60(sp)
	lw	a1, 128(s2)
	bne	a0, a1, .LBB36_26
# %bb.11:
	lw	a0, 56(sp)
	lw	a1, 124(s2)
	bne	a0, a1, .LBB36_26
# %bb.12:
	lw	a0, 52(sp)
	lw	a1, 120(s2)
	bne	a0, a1, .LBB36_26
# %bb.13:
	lw	a0, 48(sp)
	lw	a1, 116(s2)
	bne	a0, a1, .LBB36_26
# %bb.14:
	lw	a0, 44(sp)
	lw	a1, 112(s2)
	bne	a0, a1, .LBB36_26
# %bb.15:
	lw	a0, 40(sp)
	lw	a1, 108(s2)
	bne	a0, a1, .LBB36_26
# %bb.16:
	lw	a0, 36(sp)
	lw	a1, 104(s2)
	bne	a0, a1, .LBB36_26
# %bb.17:
	lw	a0, 32(sp)
	lw	a1, 100(s2)
	bne	a0, a1, .LBB36_26
# %bb.18:
	lw	a0, 28(sp)
	lw	a1, 96(s2)
	bne	a0, a1, .LBB36_26
# %bb.19:
	lw	a0, 24(sp)
	lw	a1, 92(s2)
	bne	a0, a1, .LBB36_26
# %bb.20:
	lw	a0, 20(sp)
	lw	a1, 88(s2)
	bne	a0, a1, .LBB36_26
# %bb.21:
	lw	a0, 16(sp)
	lw	a1, 84(s2)
	bne	a0, a1, .LBB36_26
# %bb.22:
	lw	a0, 12(sp)
	lw	a1, 80(s2)
	bne	a0, a1, .LBB36_26
# %bb.23:
	lw	a0, 8(sp)
	lw	a1, 76(s2)
	bne	a0, a1, .LBB36_26
# %bb.24:
	lw	a0, 4(sp)
	lw	a1, 72(s2)
	bne	a0, a1, .LBB36_26
# %bb.25:
	lw	a1, 0(sp)
	lw	a2, 68(s2)
	li	a0, -4
	beq	a1, a2, .LBB36_27
.LBB36_26:
	mv	a0, sp
	mv	a1, s2
	call	uECC_valid_point
.LBB36_27:
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
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
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
	slli	a3, a2, 33
	srli	a3, a3, 62
	add	a2, a2, a3
	slli	a2, a2, 48
	srai	a2, a2, 50
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
	addi	s4, s4, 31
	srliw	a0, s4, 27
	add	a0, a0, s4
	srai	a0, a0, 5
	slli	a1, a0, 56
	srai	a1, a1, 56
	blez	a1, .LBB37_14
# %bb.6:
	li	a1, 0
	andi	a0, a0, 255
	slli	a6, a0, 2
	addi	a2, sp, 64
	add	a3, a2, a6
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	addi	a2, a2, 4
	or	a1, a1, a4
	bne	a2, a3, .LBB37_7
# %bb.8:
	beqz	a1, .LBB37_14
# %bb.9:
	li	a1, 0
	addi	a2, s3, 36
	mv	a3, sp
	add	a4, a3, a6
	addi	a5, sp, 64
.LBB37_10:                              # =>This Inner Loop Header: Depth=1
	lw	s1, 0(a5)
	lw	s0, 0(a2)
	addw	s1, s1, a1
	subw	a0, s0, s1
	sltu	s0, s0, s1
	snez	s1, s1
	addiw	s1, s1, -1
	and	a1, a1, s1
	or	a1, a1, s0
	sw	a0, 0(a3)
	addi	a3, a3, 4
	addi	a5, a5, 4
	addi	a2, a2, 4
	bne	a3, a4, .LBB37_10
# %bb.11:
	li	a2, 0
	mv	a3, sp
	add	a0, a3, a6
.LBB37_12:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	addi	a3, a3, 4
	or	a2, a2, a4
	bne	a3, a0, .LBB37_12
# %bb.13:
	seqz	a0, a1
	seqz	a1, a2
	addi	a0, a0, -1
	andi	a0, a0, -2
	or	a0, a0, a1
	beqz	a0, .LBB37_16
.LBB37_14:
	li	a0, 0
.LBB37_15:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB37_16:
	mv	a0, sp
	addi	a1, sp, 64
	mv	a2, s3
	call	EccPoint_compute_public_key
	beqz	a0, .LBB37_15
# %bb.17:
	lb	a2, 1(s3)
	li	a0, 1
	blez	a2, .LBB37_15
# %bb.18:
	andi	a3, a2, 255
	slli	a1, a2, 3
	addi	s0, a1, -8
	addi	a2, a2, -1
	add	a3, a3, s2
	mv	a4, sp
	mv	a5, s2
.LBB37_19:                              # =>This Inner Loop Header: Depth=1
	srliw	s1, a2, 2
	slli	s1, s1, 2
	add	s1, s1, a4
	lw	s1, 0(s1)
	andi	a1, s0, 24
	srlw	a1, s1, a1
	sb	a1, 0(a5)
	addi	a5, a5, 1
	addi	s0, s0, -8
	addi	a2, a2, -1
	bne	a5, a3, .LBB37_19
# %bb.20:
	lb	a5, 1(s3)
	blez	a5, .LBB37_15
# %bb.21:
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
.LBB37_22:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a5, .LBB37_22
	j	.LBB37_15
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
