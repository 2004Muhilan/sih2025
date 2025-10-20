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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	mv	s2, a3
	mv	s1, a2
	mv	s6, a0
	addi	a0, sp, 16
	sd	a0, 0(sp)
	sd	a1, 8(sp)
	mv	a0, a2
	mv	a1, a3
	call	uECC_vli_numBits
	slli	a1, s2, 6
	sub	a1, a1, a0
	slli	s3, a1, 48
	srai	a0, s3, 48
	slli	a0, a0, 33
	srli	a0, a0, 59
	add	a0, a0, a1
	slli	a2, a0, 48
	srai	a2, a2, 53
	slli	s5, a2, 48
	slli	a2, a2, 56
	srai	a3, a2, 56
	andi	a0, a0, -32
	subw	a1, a1, a0
	slli	a1, a1, 48
	srai	s4, a1, 48
	blez	a3, .LBB16_2
# %bb.1:
	srli	a2, a2, 54
	addi	a0, sp, 80
	li	a1, 0
	call	memset
.LBB16_2:
	srai	s3, s3, 48
	srli	a0, s5, 48
	blez	s4, .LBB16_6
# %bb.3:
	beqz	s2, .LBB16_8
# %bb.4:
	li	a2, 0
	slli	a0, a0, 56
	srai	a4, a0, 56
	li	a1, 32
	sub	a1, a1, s4
	slli	a3, s2, 32
	srli	a3, a3, 30
	add	a3, a3, s1
	addi	a6, sp, 80
.LBB16_5:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(s1)
	sllw	s0, a5, s4
	or	a2, a2, s0
	slli	a0, a4, 32
	srli	a0, a0, 30
	add	a0, a0, a6
	sw	a2, 0(a0)
	srlw	a2, a5, a1
	addi	s1, s1, 4
	addi	a4, a4, 1
	bne	s1, a3, .LBB16_5
	j	.LBB16_8
.LBB16_6:
	blez	s2, .LBB16_8
# %bb.7:
	slli	a0, a0, 56
	srai	a0, a0, 56
	slli	a0, a0, 2
	addi	a1, sp, 80
	add	a0, a0, a1
	andi	a2, s2, 255
	slli	a2, a2, 2
	mv	a1, s1
	call	memcpy
.LBB16_8:
	bltz	s3, .LBB16_24
# %bb.9:
	slli	a1, s2, 1
	andi	a0, s2, 255
	slli	a0, a0, 2
	addi	t4, sp, 80
	add	a6, t4, a0
	slli	t3, s2, 2
	add	t3, t3, t4
	addi	t1, t3, -4
	add	a7, t3, a0
	li	t2, 1
	mv	t0, sp
.LBB16_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_12 Depth 2
                                        #     Child Loop BB16_17 Depth 2
                                        #     Child Loop BB16_19 Depth 2
	blez	s2, .LBB16_20
# %bb.11:                               #   in Loop: Header=BB16_10 Depth=1
	slli	a0, t2, 3
	add	a0, a0, t0
	ld	s1, 0(a0)
	xori	a0, t2, 1
	slli	a0, a0, 3
	add	a0, a0, t0
	ld	a3, 0(a0)
	li	a5, 0
	li	a0, 0
.LBB16_12:                              #   Parent Loop BB16_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a2, a5, 56
	srai	a2, a2, 56
	slli	s0, a2, 2
	add	a2, t4, s0
	lw	a2, 0(a2)
	add	a4, s1, s0
	lw	a4, 0(a4)
	addw	a2, a2, a0
	beqz	a2, .LBB16_14
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=2
	sltu	a0, a4, a2
.LBB16_14:                              #   in Loop: Header=BB16_12 Depth=2
	subw	a4, a4, a2
	add	s0, s0, a3
	addi	a5, a5, 1
	slli	a2, a5, 56
	srai	a2, a2, 56
	sw	a4, 0(s0)
	blt	a2, a1, .LBB16_12
# %bb.15:                               #   in Loop: Header=BB16_10 Depth=1
	xor	a0, t2, a0
	seqz	t2, a0
	blez	s2, .LBB16_21
# %bb.16:                               #   in Loop: Header=BB16_10 Depth=1
	li	a0, 0
	mv	a3, a6
.LBB16_17:                              #   Parent Loop BB16_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a3)
	addi	a4, a3, -4
	srliw	a5, a2, 1
	or	a0, a0, a5
	sw	a0, -4(a3)
	slli	a0, a2, 31
	mv	a3, a4
	bltu	t4, a4, .LBB16_17
# %bb.18:                               #   in Loop: Header=BB16_10 Depth=1
	lw	a2, 0(t3)
	lw	a3, 0(t1)
	li	a0, 0
	slli	a2, a2, 31
	or	a2, a2, a3
	sw	a2, 0(t1)
	mv	a3, a7
.LBB16_19:                              #   Parent Loop BB16_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a3)
	addi	a4, a3, -4
	srliw	a5, a2, 1
	or	a0, a0, a5
	sw	a0, -4(a3)
	slli	a0, a2, 31
	mv	a3, a4
	bltu	t3, a4, .LBB16_19
	j	.LBB16_22
.LBB16_20:                              #   in Loop: Header=BB16_10 Depth=1
	seqz	t2, t2
.LBB16_21:                              #   in Loop: Header=BB16_10 Depth=1
	lw	a0, 0(t3)
	lw	a2, 0(t1)
	slli	a0, a0, 31
	or	a0, a0, a2
	sw	a0, 0(t1)
.LBB16_22:                              #   in Loop: Header=BB16_10 Depth=1
	slli	a0, s3, 48
	addi	s3, s3, -1
	srai	a0, a0, 48
	bgtz	a0, .LBB16_10
# %bb.23:
	bgtz	s2, .LBB16_25
	j	.LBB16_27
.LBB16_24:
	li	t2, 1
	blez	s2, .LBB16_27
.LBB16_25:
	slli	t2, t2, 3
	mv	a0, sp
	add	a0, a0, t2
	ld	a0, 0(a0)
	andi	a1, s2, 255
	slli	a1, a1, 2
	add	a1, a1, s6
.LBB16_26:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a0)
	sw	a2, 0(s6)
	addi	s6, s6, 4
	addi	a0, a0, 4
	bne	s6, a1, .LBB16_26
.LBB16_27:
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
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
	bge	a5, a3, .LBB18_11
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
.LBB18_11:                              #   in Loop: Header=BB18_8 Depth=1
	mv	a4, s2
	add	t2, t2, a0
	sw	t4, 0(t2)
	slli	a5, t1, 56
	srai	a5, a5, 56
	addi	t0, t0, 1
	mv	s2, t3
	mv	t4, a4
	blt	a5, a7, .LBB18_8
	j	.LBB18_13
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
	blez	a3, .LBB20_43
# %bb.1:
	mv	s5, a2
	li	a5, 0
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	andi	s6, a3, 255
	slli	s0, s6, 2
	add	a2, a1, s0
	mv	a3, a1
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a3)
	addi	a3, a3, 4
	or	a5, a5, a4
	bne	a3, a2, .LBB20_2
# %bb.3:
	beqz	a5, .LBB20_44
# %bb.4:
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 136
	addi	s1, sp, 136
	mv	a2, s0
	call	memcpy
	addi	a0, sp, 104
	addi	s9, sp, 104
	mv	a1, s5
	mv	a2, s0
	call	memcpy
	addi	a0, sp, 72
	addi	s7, sp, 72
	li	a1, 0
	mv	a2, s0
	call	memset
	li	a0, 1
	sw	a0, 72(sp)
	addi	a0, sp, 40
	addi	s8, sp, 40
	li	a1, 0
	mv	a2, s0
	call	memset
	add	s4, s9, s0
	add	s10, s1, s0
	add	s11, s5, s0
	add	s3, s7, s0
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	add	s2, s8, s0
	mv	a0, s6
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	ld	s0, 32(sp)                      # 8-byte Folded Reload
.LBB20_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_29 Depth 2
                                        #     Child Loop BB20_31 Depth 2
                                        #     Child Loop BB20_33 Depth 2
                                        #     Child Loop BB20_37 Depth 2
                                        #     Child Loop BB20_39 Depth 2
                                        #     Child Loop BB20_17 Depth 2
                                        #     Child Loop BB20_19 Depth 2
                                        #     Child Loop BB20_21 Depth 2
                                        #     Child Loop BB20_25 Depth 2
                                        #     Child Loop BB20_27 Depth 2
                                        #     Child Loop BB20_13 Depth 2
                                        #     Child Loop BB20_9 Depth 2
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB20_42
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=1
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s1, a2
	lw	a1, 0(a1)
	add	a2, a2, s9
	lw	a2, 0(a2)
	addi	a0, a0, -1
	beq	a1, a2, .LBB20_5
# %bb.7:                                #   in Loop: Header=BB20_5 Depth=1
	lbu	a0, 136(sp)
	andi	a0, a0, 1
	bnez	a0, .LBB20_11
# %bb.8:                                #   in Loop: Header=BB20_5 Depth=1
	mv	a1, s10
.LBB20_9:                               #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a1)
	addi	a3, a1, -4
	srliw	a4, a2, 1
	or	a0, a0, a4
	sw	a0, -4(a1)
	slli	a0, a2, 31
	mv	a1, a3
	bltu	s1, a3, .LBB20_9
# %bb.10:                               #   in Loop: Header=BB20_5 Depth=1
	addi	a0, sp, 72
	j	.LBB20_41
.LBB20_11:                              #   in Loop: Header=BB20_5 Depth=1
	lbu	a0, 104(sp)
	andi	a0, a0, 1
	bnez	a0, .LBB20_15
# %bb.12:                               #   in Loop: Header=BB20_5 Depth=1
	mv	a1, s4
.LBB20_13:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a1)
	addi	a3, a1, -4
	srliw	a4, a2, 1
	or	a0, a0, a4
	sw	a0, -4(a1)
	slli	a0, a2, 31
	mv	a1, a3
	bltu	s9, a3, .LBB20_13
# %bb.14:                               #   in Loop: Header=BB20_5 Depth=1
	addi	a0, sp, 40
	j	.LBB20_41
.LBB20_15:                              #   in Loop: Header=BB20_5 Depth=1
	bgeu	a2, a1, .LBB20_28
# %bb.16:                               #   in Loop: Header=BB20_5 Depth=1
	li	a1, 0
	addi	a0, sp, 104
	addi	a2, sp, 136
.LBB20_17:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 0(a0)
	lw	a4, 0(a2)
	addw	a3, a3, a1
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addi	a3, a3, -1
	and	a1, a1, a3
	or	a1, a1, a4
	sw	a5, 0(a2)
	addi	a0, a0, 4
	addi	a2, a2, 4
	bne	a0, s4, .LBB20_17
# %bb.18:                               #   in Loop: Header=BB20_5 Depth=1
	li	a0, 0
	mv	a1, s10
.LBB20_19:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a1)
	addi	a3, a1, -4
	srliw	a4, a2, 1
	or	a0, a0, a4
	sw	a0, -4(a1)
	slli	a0, a2, 31
	mv	a1, a3
	bltu	s1, a3, .LBB20_19
# %bb.20:                               #   in Loop: Header=BB20_5 Depth=1
	mv	a0, s6
.LBB20_21:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB20_26
# %bb.22:                               #   in Loop: Header=BB20_21 Depth=2
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s7, a2
	lw	a1, 0(a1)
	add	a2, a2, s8
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB20_26
# %bb.23:                               #   in Loop: Header=BB20_21 Depth=2
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB20_21
# %bb.24:                               #   in Loop: Header=BB20_5 Depth=1
	li	a1, 0
	addi	a0, sp, 72
.LBB20_25:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 0(a0)
	lw	a4, 0(s5)
	add	a5, a3, a1
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a1, a1, a3
	or	a1, a1, a5
	sw	a4, 0(a0)
	addi	s5, s5, 4
	addi	a0, a0, 4
	bne	s5, s11, .LBB20_25
.LBB20_26:                              #   in Loop: Header=BB20_5 Depth=1
	li	a2, 0
	addi	a1, sp, 40
	addi	a0, sp, 72
	addi	a3, sp, 72
.LBB20_27:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a2
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a2, a2, a4
	or	a2, a2, a5
	sw	s0, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, s2, .LBB20_27
	j	.LBB20_40
.LBB20_28:                              #   in Loop: Header=BB20_5 Depth=1
	li	a1, 0
	addi	a0, sp, 136
	addi	a2, sp, 104
.LBB20_29:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 0(a0)
	lw	a4, 0(a2)
	addw	a3, a3, a1
	subw	a5, a4, a3
	sltu	a4, a4, a3
	snez	a3, a3
	addi	a3, a3, -1
	and	a1, a1, a3
	or	a1, a1, a4
	sw	a5, 0(a2)
	addi	a0, a0, 4
	addi	a2, a2, 4
	bne	a0, s10, .LBB20_29
# %bb.30:                               #   in Loop: Header=BB20_5 Depth=1
	li	a0, 0
	mv	a1, s4
.LBB20_31:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -4(a1)
	addi	a3, a1, -4
	srliw	a4, a2, 1
	or	a0, a0, a4
	sw	a0, -4(a1)
	slli	a0, a2, 31
	mv	a1, a3
	bltu	s9, a3, .LBB20_31
# %bb.32:                               #   in Loop: Header=BB20_5 Depth=1
	mv	a0, s6
.LBB20_33:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	a1, a0, -1
	slli	a1, a1, 56
	bltz	a1, .LBB20_38
# %bb.34:                               #   in Loop: Header=BB20_33 Depth=2
	srai	a1, a1, 56
	andi	a1, a1, 255
	slli	a2, a1, 2
	add	a1, s8, a2
	lw	a1, 0(a1)
	add	a2, a2, s7
	lw	a2, 0(a2)
	bltu	a2, a1, .LBB20_38
# %bb.35:                               #   in Loop: Header=BB20_33 Depth=2
	addi	a0, a0, -1
	bgeu	a1, a2, .LBB20_33
# %bb.36:                               #   in Loop: Header=BB20_5 Depth=1
	li	a1, 0
	addi	a0, sp, 40
.LBB20_37:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 0(a0)
	lw	a4, 0(s5)
	add	a5, a3, a1
	addw	a4, a4, a5
	sltu	a5, a4, a3
	xor	a3, a3, a4
	snez	a3, a3
	addi	a3, a3, -1
	and	a1, a1, a3
	or	a1, a1, a5
	sw	a4, 0(a0)
	addi	s5, s5, 4
	addi	a0, a0, 4
	bne	s5, s11, .LBB20_37
.LBB20_38:                              #   in Loop: Header=BB20_5 Depth=1
	li	a2, 0
	addi	a1, sp, 72
	addi	a0, sp, 40
	addi	a3, sp, 40
.LBB20_39:                              #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, 0(a1)
	lw	a5, 0(a3)
	addw	a4, a4, a2
	subw	s0, a5, a4
	sltu	a5, a5, a4
	snez	a4, a4
	addi	a4, a4, -1
	and	a2, a2, a4
	or	a2, a2, a5
	sw	s0, 0(a3)
	addi	a1, a1, 4
	addi	a3, a3, 4
	bne	a1, s3, .LBB20_39
.LBB20_40:                              #   in Loop: Header=BB20_5 Depth=1
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
.LBB20_41:                              #   in Loop: Header=BB20_5 Depth=1
	mv	a1, s5
	mv	a2, s0
	call	vli_modInv_update
	mv	a0, s6
	j	.LBB20_5
.LBB20_42:
	addi	a1, sp, 72
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	call	memcpy
.LBB20_43:
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
.LBB20_44:
	li	a1, 0
	mv	a2, s0
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
	tail	memset
.Lfunc_end20:
	.size	uECC_vli_modInv, .Lfunc_end20-uECC_vli_modInv
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function vli_modInv_update
	.type	vli_modInv_update,@function
vli_modInv_update:                      # @vli_modInv_update
	.cfi_startproc
# %bb.0:
	lbu	a3, 0(a0)
	andi	a3, a3, 1
	bnez	a3, .LBB21_5
# %bb.1:
	blez	a2, .LBB21_4
# %bb.2:
	li	a1, 0
	andi	a2, a2, 255
	slli	a2, a2, 2
	add	a2, a2, a0
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	lw	a3, -4(a2)
	addi	a4, a2, -4
	srliw	a5, a3, 1
	or	a1, a1, a5
	sw	a1, -4(a2)
	slli	a1, a3, 31
	mv	a2, a4
	bltu	a0, a4, .LBB21_3
.LBB21_4:
	ret
.LBB21_5:
	blez	a2, .LBB21_4
# %bb.6:
	li	t0, 0
	andi	a2, a2, 255
	slli	a6, a2, 2
	add	a7, a1, a6
	mv	a5, a0
.LBB21_7:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a5)
	lw	a4, 0(a1)
	add	a2, a3, t0
	addw	a2, a2, a4
	sltu	a4, a2, a3
	xor	a3, a3, a2
	snez	a3, a3
	addiw	a3, a3, -1
	and	a3, a3, t0
	or	t0, a3, a4
	sw	a2, 0(a5)
	addi	a1, a1, 4
	addi	a5, a5, 4
	bne	a1, a7, .LBB21_7
# %bb.8:
	add	a6, a6, a0
	li	a2, 0
	mv	a4, a6
.LBB21_9:                               # =>This Inner Loop Header: Depth=1
	lw	a3, -4(a4)
	addi	a5, a4, -4
	srliw	a1, a3, 1
	or	a1, a1, a2
	sw	a1, -4(a4)
	slli	a2, a3, 31
	mv	a4, a5
	bltu	a0, a5, .LBB21_9
# %bb.10:
	beqz	t0, .LBB21_4
# %bb.11:
	lw	a0, -4(a6)
	lui	a1, 524288
	or	a0, a0, a1
	sw	a0, -4(a6)
	ret
.Lfunc_end21:
	.size	vli_modInv_update, .Lfunc_end21-vli_modInv_update
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
	mv	s5, a3
	lbu	s2, 0(a3)
	slli	a3, s2, 56
	srai	s4, a3, 56
	blez	s4, .LBB22_17
# %bb.1:
	mv	s8, a2
	mv	s3, a1
	mv	s0, a0
	li	a0, 0
	slli	s2, s2, 2
	add	s7, a2, s2
	mv	a1, a2
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	addi	a1, a1, 4
	or	a0, a0, a2
	bne	a1, s7, .LBB22_2
# %bb.3:
	beqz	a0, .LBB22_17
# %bb.4:
	addi	a0, sp, 64
	mv	a1, s3
	mv	a2, s3
	mv	a3, s4
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a0, sp, 32
	addi	a1, sp, 64
	jalr	a2
	lb	a3, 0(s5)
	addi	a0, sp, 64
	addi	a2, sp, 32
	mv	a1, s0
	call	uECC_vli_mult
	ld	a2, 184(s5)
	mv	a0, sp
	addi	a1, sp, 64
	jalr	a2
	lb	a3, 0(s5)
	addi	a0, sp, 64
	addi	a1, sp, 32
	addi	a2, sp, 32
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a0, sp, 32
	addi	a1, sp, 64
	jalr	a2
	lb	a3, 0(s5)
	addi	a0, sp, 64
	mv	a1, s3
	mv	a2, s8
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 64
	mv	a0, s3
	jalr	a2
	lb	a3, 0(s5)
	addi	a0, sp, 64
	mv	a1, s8
	mv	a2, s8
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 64
	mv	a0, s8
	jalr	a2
	addi	s6, s5, 4
	mv	a0, s0
	mv	a1, s0
	mv	a2, s8
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modAdd
	mv	a0, s8
	mv	a1, s8
	mv	a2, s8
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modAdd
	mv	a0, s8
	mv	a1, s0
	mv	a2, s8
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modSub
	lb	a3, 0(s5)
	addi	a0, sp, 64
	mv	a1, s0
	mv	a2, s8
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 64
	mv	a0, s0
	jalr	a2
	mv	a0, s8
	mv	a1, s0
	mv	a2, s0
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modAdd
	mv	a0, s0
	mv	a1, s0
	mv	a2, s8
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modAdd
	lbu	a0, 0(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB22_7
# %bb.5:
	add	a1, s0, s2
.LBB22_6:                               # =>This Inner Loop Header: Depth=1
	lw	a2, -4(a1)
	addi	a3, a1, -4
	srliw	a4, a2, 1
	or	a0, a0, a4
	sw	a0, -4(a1)
	slli	a0, a2, 31
	mv	a1, a3
	bltu	s0, a3, .LBB22_6
	j	.LBB22_12
.LBB22_7:
	li	s1, 0
	add	a1, s2, s5
	addi	a1, a1, 4
	mv	a2, s0
	mv	a3, s6
.LBB22_8:                               # =>This Inner Loop Header: Depth=1
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
	bne	a3, a1, .LBB22_8
# %bb.9:
	add	a1, s0, s2
	li	a2, 0
	mv	a3, a1
.LBB22_10:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -4(a3)
	addi	a4, a3, -4
	srliw	a5, a0, 1
	or	a2, a2, a5
	sw	a2, -4(a3)
	slli	a2, a0, 31
	mv	a3, a4
	bltu	s0, a4, .LBB22_10
# %bb.11:
	lw	a0, -4(a1)
	slli	s1, s1, 31
	or	a0, a0, s1
	sw	a0, -4(a1)
.LBB22_12:
	lb	a3, 0(s5)
	addi	a0, sp, 64
	mv	a1, s0
	mv	a2, s0
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 64
	mv	a0, s8
	jalr	a2
	mv	a2, sp
	mv	a0, s8
	mv	a1, s8
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modSub
	mv	a2, sp
	mv	a0, s8
	mv	a1, s8
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modSub
	mv	a0, sp
	mv	a1, sp
	mv	a2, s8
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modSub
	lb	a3, 0(s5)
	addi	a0, sp, 64
	mv	a2, sp
	mv	a1, s0
	call	uECC_vli_mult
	ld	a2, 184(s5)
	addi	a1, sp, 64
	mv	a0, s0
	jalr	a2
	addi	a0, sp, 32
	addi	a2, sp, 32
	mv	a1, s0
	mv	a3, s6
	mv	a4, s4
	call	uECC_vli_modSub
	add	a0, s0, s2
	mv	a1, s8
.LBB22_13:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(a1)
	sw	a2, 0(s0)
	addi	s0, s0, 4
	addi	a1, a1, 4
	bne	s0, a0, .LBB22_13
# %bb.14:
	mv	a0, s3
.LBB22_15:                              # =>This Inner Loop Header: Depth=1
	lw	a1, 0(a0)
	sw	a1, 0(s8)
	addi	s8, s8, 4
	addi	a0, a0, 4
	bne	s8, s7, .LBB22_15
# %bb.16:
	addi	a1, sp, 32
	mv	a0, s3
	mv	a2, s2
	call	memcpy
.LBB22_17:
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
.Lfunc_end22:
	.size	double_jacobian_default, .Lfunc_end22-double_jacobian_default
	.cfi_endproc
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	1
	.type	x_side_default,@function
x_side_default:                         # @x_side_default
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	mv	s0, a2
	lb	s2, 0(a2)
	mv	s3, a1
	mv	s1, a0
	mv	a0, sp
	mv	a2, a1
	mv	a3, s2
	call	uECC_vli_mult
	ld	a2, 184(s0)
	mv	a1, sp
	mv	a0, s1
	jalr	a2
	addi	s4, s0, 4
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(.L__const.x_side_default._3)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi2)
	mv	a0, s1
	mv	a1, s1
	mv	a3, s4
	mv	a4, s2
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	mv	a0, sp
	mv	a1, s1
	mv	a2, s3
	call	uECC_vli_mult
	ld	a2, 184(s0)
	mv	a1, sp
	mv	a0, s1
	jalr	a2
	addi	a2, s0, 132
	mv	a0, s1
	mv	a1, s1
	mv	a3, s4
	mv	a4, s2
	call	uECC_vli_modAdd
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end23:
	.size	x_side_default, .Lfunc_end23-x_side_default
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
.Lfunc_end24:
	.size	uECC_secp256r1, .Lfunc_end24-uECC_secp256r1
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
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	sw	a5, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a2, .LBB25_1
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
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
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
	bne	a2, a7, .LBB25_3
# %bb.4:
	li	t0, 0
	addi	a2, sp, 8
	mv	a3, a0
.LBB25_5:                               # =>This Inner Loop Header: Depth=1
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
	bne	a2, a7, .LBB25_5
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
.LBB25_7:                               # =>This Inner Loop Header: Depth=1
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
	bne	a2, a7, .LBB25_7
# %bb.8:
	li	t2, 0
	addi	a2, sp, 8
	mv	a3, a0
.LBB25_9:                               # =>This Inner Loop Header: Depth=1
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
	bne	a2, a7, .LBB25_9
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
.LBB25_11:                              # =>This Inner Loop Header: Depth=1
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
	bne	a2, a7, .LBB25_11
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
.LBB25_13:                              # =>This Inner Loop Header: Depth=1
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
	bne	a2, a7, .LBB25_13
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
.LBB25_15:                              # =>This Inner Loop Header: Depth=1
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
	bne	a2, a7, .LBB25_15
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
.LBB25_17:                              # =>This Inner Loop Header: Depth=1
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
	bne	a3, a7, .LBB25_17
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
.LBB25_19:                              # =>This Inner Loop Header: Depth=1
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
	bne	a4, a7, .LBB25_19
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
.LBB25_21:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a7, .LBB25_21
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
	bltz	t0, .LBB25_31
# %bb.23:
.Lpcrel_hi4:
	auipc	a2, %pcrel_hi(curve_secp256r1)
	addi	a7, a2, %pcrel_lo(.Lpcrel_hi4)
	addi	a6, a7, 4
	addi	a4, a7, 36
	beqz	t0, .LBB25_27
.LBB25_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_25 Depth 2
	li	a5, 0
	mv	a3, a0
	mv	a2, a6
.LBB25_25:                              #   Parent Loop BB25_24 Depth=1
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
	bne	a2, a4, .LBB25_25
# %bb.26:                               #   in Loop: Header=BB25_24 Depth=1
	subw	t0, t0, a5
	bnez	t0, .LBB25_24
.LBB25_27:
	li	a3, 8
.LBB25_28:                              # =>This Inner Loop Header: Depth=1
	addi	a2, a3, -1
	slli	a2, a2, 56
	bltz	a2, .LBB25_24
# %bb.29:                               #   in Loop: Header=BB25_28 Depth=1
	srai	a2, a2, 56
	andi	a1, a2, 255
	slli	a1, a1, 2
	add	a2, a7, a1
	lw	a2, 4(a2)
	add	a1, a1, a0
	lw	a5, 0(a1)
	bltu	a5, a2, .LBB25_35
# %bb.30:                               #   in Loop: Header=BB25_28 Depth=1
	addi	a3, a3, -1
	bgeu	a2, a5, .LBB25_28
	j	.LBB25_24
.LBB25_31:
.Lpcrel_hi5:
	auipc	a2, %pcrel_hi(curve_secp256r1)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi5)
	addi	a6, a2, 4
	addi	a3, a2, 36
.LBB25_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_33 Depth 2
	li	a1, 0
	mv	a5, a0
	mv	a2, a6
.LBB25_33:                              #   Parent Loop BB25_32 Depth=1
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
	bne	a2, a3, .LBB25_33
# %bb.34:                               #   in Loop: Header=BB25_32 Depth=1
	addw	t0, a1, t0
	bltz	t0, .LBB25_32
.LBB25_35:
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end25:
	.size	vli_mmod_fast_secp256r1, .Lfunc_end25-vli_mmod_fast_secp256r1
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
	blez	a2, .LBB26_4
# %bb.1:
	li	a1, 0
	andi	a2, a2, 255
	slli	a2, a2, 2
	add	a2, a2, a0
.LBB26_2:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	addi	a0, a0, 4
	or	a1, a1, a3
	bne	a0, a2, .LBB26_2
# %bb.3:
	seqz	a0, a1
	ret
.LBB26_4:
	li	a0, 1
	ret
.Lfunc_end26:
	.size	EccPoint_isZero, .Lfunc_end26-EccPoint_isZero
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
.Lfunc_end27:
	.size	apply_z, .Lfunc_end27-apply_z
	.cfi_endproc
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	1
	.type	XYcZ_add,@function
XYcZ_add:                               # @XYcZ_add
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
	lb	s1, 0(a4)
	mv	s2, a3
	mv	s5, a2
	mv	s3, a1
	mv	s6, a0
	addi	s4, a4, 4
	mv	a0, sp
	mv	a1, a2
	mv	a2, s6
	mv	a3, s4
	mv	a4, s1
	call	uECC_vli_modSub
	addi	a0, sp, 32
	mv	a1, sp
	mv	a2, sp
	mv	a3, s1
	call	uECC_vli_mult
	ld	a2, 184(s0)
	mv	a0, sp
	addi	a1, sp, 32
	jalr	a2
	lb	a3, 0(s0)
	addi	a0, sp, 32
	mv	a2, sp
	mv	a1, s6
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 32
	mv	a0, s6
	jalr	a2
	lb	a3, 0(s0)
	addi	a0, sp, 32
	mv	a2, sp
	mv	a1, s5
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 32
	mv	a0, s5
	jalr	a2
	mv	a0, s2
	mv	a1, s2
	mv	a2, s3
	mv	a3, s4
	mv	a4, s1
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	addi	a0, sp, 32
	mv	a1, s2
	mv	a2, s2
	call	uECC_vli_mult
	ld	a2, 184(s0)
	mv	a0, sp
	addi	a1, sp, 32
	jalr	a2
	mv	a0, sp
	mv	a1, sp
	mv	a2, s6
	mv	a3, s4
	mv	a4, s1
	call	uECC_vli_modSub
	mv	a0, sp
	mv	a1, sp
	mv	a2, s5
	mv	a3, s4
	mv	a4, s1
	call	uECC_vli_modSub
	mv	a0, s5
	mv	a1, s5
	mv	a2, s6
	mv	a3, s4
	mv	a4, s1
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	addi	a0, sp, 32
	mv	a1, s3
	mv	a2, s5
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 32
	mv	a0, s3
	jalr	a2
	mv	a2, sp
	mv	a0, s5
	mv	a1, s6
	mv	a3, s4
	mv	a4, s1
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	addi	a0, sp, 32
	mv	a1, s2
	mv	a2, s5
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 32
	mv	a0, s2
	jalr	a2
	mv	a0, s2
	mv	a1, s2
	mv	a2, s3
	mv	a3, s4
	mv	a4, s1
	call	uECC_vli_modSub
	blez	s1, .LBB28_2
# %bb.1:
	andi	a2, s1, 255
	slli	a2, a2, 2
	mv	a1, sp
	mv	a0, s5
	call	memcpy
.LBB28_2:
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
.Lfunc_end28:
	.size	XYcZ_add, .Lfunc_end28-XYcZ_add
	.cfi_endproc
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	1
	.type	EccPoint_mult,@function
EccPoint_mult:                          # @EccPoint_mult
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -368
	.cfi_def_cfa_offset 368
	sd	ra, 360(sp)                     # 8-byte Folded Spill
	sd	s0, 352(sp)                     # 8-byte Folded Spill
	sd	s1, 344(sp)                     # 8-byte Folded Spill
	sd	s2, 336(sp)                     # 8-byte Folded Spill
	sd	s3, 328(sp)                     # 8-byte Folded Spill
	sd	s4, 320(sp)                     # 8-byte Folded Spill
	sd	s5, 312(sp)                     # 8-byte Folded Spill
	sd	s6, 304(sp)                     # 8-byte Folded Spill
	sd	s7, 296(sp)                     # 8-byte Folded Spill
	sd	s8, 288(sp)                     # 8-byte Folded Spill
	sd	s9, 280(sp)                     # 8-byte Folded Spill
	sd	s10, 272(sp)                    # 8-byte Folded Spill
	sd	s11, 264(sp)                    # 8-byte Folded Spill
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
	mv	s2, a5
	lbu	s0, 0(a5)
	mv	s7, a4
	mv	s10, a3
	mv	s11, a2
	mv	s4, a1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	slli	a0, s0, 56
	srai	s6, a0, 56
	addi	s1, sp, 168
	blez	s6, .LBB29_3
# %bb.1:
	slli	s9, s0, 2
	mv	a0, s1
	mv	a1, s4
	mv	a2, s9
	call	memcpy
	addi	s8, sp, 104
	add	a1, s4, s9
	mv	a0, s8
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	mv	a2, s9
	call	memcpy
	addi	a0, sp, 200
	beqz	s10, .LBB29_6
# %bb.2:
	mv	a1, s10
	mv	a2, s9
	call	memcpy
	j	.LBB29_7
.LBB29_3:
	addi	s8, sp, 104
	slli	a0, s6, 2
	add	a0, a0, s4
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	bnez	s10, .LBB29_5
# %bb.4:
	li	a0, 1
	sw	a0, 200(sp)
.LBB29_5:
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	j	.LBB29_8
.LBB29_6:
	li	a1, 0
	mv	a2, s9
	call	memset
	li	a0, 1
	sw	a0, 200(sp)
.LBB29_7:
	addi	a0, sp, 136
	mv	a1, s1
	mv	a2, s9
	call	memmove
	addi	a1, sp, 104
	addi	a0, sp, 72
	mv	a2, s9
	call	memmove
	sd	s0, 8(sp)                       # 8-byte Folded Spill
.LBB29_8:
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	a2, sp, 200
	mv	a0, s1
	mv	a1, s8
	mv	a3, s2
	call	apply_z
	ld	a4, 168(s2)
	addi	a2, sp, 200
	mv	a0, s1
	mv	a1, s8
	mv	a3, s2
	jalr	a4
	addi	s10, sp, 136
	addi	a0, sp, 136
	addi	a1, sp, 72
	addi	a2, sp, 200
	addi	s9, sp, 72
	mv	a3, s2
	call	apply_z
	addi	s7, s7, -2
	slli	a0, s7, 48
	srai	a0, a0, 48
	blez	a0, .LBB29_11
# %bb.9:
	slli	a0, a0, 48
	srli	a0, a0, 48
	li	s5, 1
.LBB29_10:                              # =>This Inner Loop Header: Depth=1
	mv	s3, a0
	srliw	a0, a0, 5
	slli	a0, a0, 2
	add	a0, a0, s11
	lw	a0, 0(a0)
	sllw	a1, s5, s3
	and	a0, a0, a1
	seqz	a1, a0
	snez	a0, a0
	slli	a0, a0, 5
	add	s7, s10, a0
	add	s8, s9, a0
	slli	a1, a1, 5
	add	s0, s10, a1
	add	s1, s9, a1
	mv	a0, s7
	mv	a1, s8
	mv	a2, s0
	mv	a3, s1
	mv	a4, s2
	call	XYcZ_addC
	mv	a0, s0
	mv	a1, s1
	mv	a2, s7
	mv	a3, s8
	mv	a4, s2
	call	XYcZ_add
	addiw	a0, s3, -1
	bltu	s5, s3, .LBB29_10
.LBB29_11:
	lwu	a0, 0(s11)
	andi	a0, a0, 1
	slli	s7, a0, 5
	add	s0, s10, s7
	add	s7, s7, s9
	xori	a0, a0, 1
	slli	a0, a0, 5
	add	s8, s10, a0
	add	s9, s9, a0
	mv	a0, s0
	mv	a1, s7
	mv	a2, s8
	mv	a3, s9
	mv	a4, s2
	call	XYcZ_addC
	addi	s1, s2, 4
	addi	a0, sp, 40
	addi	a2, sp, 136
	addi	a1, sp, 168
	mv	a3, s1
	mv	a4, s6
	call	uECC_vli_modSub
	lb	a3, 0(s2)
	addi	a0, sp, 200
	addi	a1, sp, 40
	mv	a2, s7
	call	uECC_vli_mult
	ld	a2, 184(s2)
	addi	a0, sp, 40
	addi	a1, sp, 200
	jalr	a2
	lb	a3, 0(s2)
	addi	a0, sp, 200
	addi	a1, sp, 40
	mv	a2, s4
	call	uECC_vli_mult
	ld	a2, 184(s2)
	addi	a0, sp, 40
	addi	a1, sp, 200
	jalr	a2
	addi	a0, sp, 40
	addi	a1, sp, 40
	mv	a2, s1
	mv	a3, s6
	call	uECC_vli_modInv
	lb	a3, 0(s2)
	addi	a0, sp, 200
	addi	a1, sp, 40
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	call	uECC_vli_mult
	ld	a2, 184(s2)
	addi	a0, sp, 40
	addi	a1, sp, 200
	jalr	a2
	lb	a3, 0(s2)
	addi	a0, sp, 200
	addi	a1, sp, 40
	mv	a2, s0
	call	uECC_vli_mult
	ld	a2, 184(s2)
	addi	a0, sp, 40
	addi	a1, sp, 200
	jalr	a2
	mv	a0, s8
	mv	a1, s9
	mv	a2, s0
	mv	a3, s7
	mv	a4, s2
	call	XYcZ_add
	addi	a0, sp, 136
	addi	a1, sp, 72
	addi	a2, sp, 40
	mv	a3, s2
	call	apply_z
	blez	s6, .LBB29_13
# %bb.12:
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	slli	s0, s0, 2
	addi	a1, sp, 136
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	mv	a0, s1
	mv	a2, s0
	call	memcpy
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	slli	a0, a0, 2
	add	a0, a0, s1
	addi	a1, sp, 72
	mv	a2, s0
	call	memcpy
.LBB29_13:
	ld	ra, 360(sp)                     # 8-byte Folded Reload
	ld	s0, 352(sp)                     # 8-byte Folded Reload
	ld	s1, 344(sp)                     # 8-byte Folded Reload
	ld	s2, 336(sp)                     # 8-byte Folded Reload
	ld	s3, 328(sp)                     # 8-byte Folded Reload
	ld	s4, 320(sp)                     # 8-byte Folded Reload
	ld	s5, 312(sp)                     # 8-byte Folded Reload
	ld	s6, 304(sp)                     # 8-byte Folded Reload
	ld	s7, 296(sp)                     # 8-byte Folded Reload
	ld	s8, 288(sp)                     # 8-byte Folded Reload
	ld	s9, 280(sp)                     # 8-byte Folded Reload
	ld	s10, 272(sp)                    # 8-byte Folded Reload
	ld	s11, 264(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 368
	ret
.Lfunc_end29:
	.size	EccPoint_mult, .Lfunc_end29-EccPoint_mult
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
XYcZ_addC:                              # @XYcZ_addC
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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	mv	s0, a4
	lb	s6, 0(a4)
	mv	s5, a3
	mv	s1, a2
	mv	s2, a1
	mv	s3, a0
	addi	s4, a4, 4
	addi	a0, sp, 64
	mv	a1, a2
	mv	a2, s3
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	addi	a0, sp, 96
	addi	a1, sp, 64
	addi	a2, sp, 64
	mv	a3, s6
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a0, sp, 64
	addi	a1, sp, 96
	jalr	a2
	lb	a3, 0(s0)
	addi	a0, sp, 96
	addi	a2, sp, 64
	mv	a1, s3
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 96
	mv	a0, s3
	jalr	a2
	lb	a3, 0(s0)
	addi	a0, sp, 96
	addi	a2, sp, 64
	mv	a1, s1
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 96
	mv	a0, s1
	jalr	a2
	addi	a0, sp, 64
	mv	a1, s5
	mv	a2, s2
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modAdd
	mv	a0, s5
	mv	a1, s5
	mv	a2, s2
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	addi	a0, sp, 32
	mv	a1, s1
	mv	a2, s3
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	addi	a0, sp, 96
	addi	a2, sp, 32
	mv	a1, s2
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 96
	mv	a0, s2
	jalr	a2
	addi	a0, sp, 32
	mv	a1, s3
	mv	a2, s1
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modAdd
	lb	a3, 0(s0)
	addi	a0, sp, 96
	mv	a1, s5
	mv	a2, s5
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 96
	mv	a0, s1
	jalr	a2
	addi	a2, sp, 32
	mv	a0, s1
	mv	a1, s1
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	mv	a0, sp
	mv	a1, s3
	mv	a2, s1
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	addi	a0, sp, 96
	mv	a2, sp
	mv	a1, s5
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a1, sp, 96
	mv	a0, s5
	jalr	a2
	mv	a0, s5
	mv	a1, s5
	mv	a2, s2
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	addi	a0, sp, 96
	addi	a1, sp, 64
	addi	a2, sp, 64
	call	uECC_vli_mult
	ld	a2, 184(s0)
	mv	a0, sp
	addi	a1, sp, 96
	jalr	a2
	mv	a0, sp
	mv	a1, sp
	addi	a2, sp, 32
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	addi	a0, sp, 32
	mv	a1, sp
	mv	a2, s3
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	lb	a3, 0(s0)
	addi	a0, sp, 96
	addi	a1, sp, 32
	addi	a2, sp, 64
	call	uECC_vli_mult
	ld	a2, 184(s0)
	addi	a0, sp, 32
	addi	a1, sp, 96
	jalr	a2
	addi	a1, sp, 32
	mv	a0, s2
	mv	a2, s2
	mv	a3, s4
	mv	a4, s6
	call	uECC_vli_modSub
	blez	s6, .LBB30_2
# %bb.1:
	andi	a2, s6, 255
	slli	a2, a2, 2
	mv	a1, sp
	mv	a0, s3
	call	memcpy
.LBB30_2:
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end30:
	.size	XYcZ_addC, .Lfunc_end30-XYcZ_addC
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
	blez	a7, .LBB31_4
# %bb.1:
	li	t4, 0
	slli	t2, a6, 2
	add	t2, t2, a1
	mv	a3, t3
	mv	a4, a1
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
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
	bne	a4, t2, .LBB31_2
# %bb.3:
	li	a0, 1
	bnez	t4, .LBB31_6
.LBB31_4:
	srai	a0, t0, 51
	bge	t1, a0, .LBB31_7
# %bb.5:
	srai	a0, t1, 5
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	srlw	a0, a0, t1
	andi	a0, a0, 1
.LBB31_6:
	bgtz	a7, .LBB31_8
	j	.LBB31_10
.LBB31_7:
	li	a0, 0
	blez	a7, .LBB31_10
.LBB31_8:
	li	s0, 0
	slli	a5, a6, 2
	add	a6, a2, a5
.LBB31_9:                               # =>This Inner Loop Header: Depth=1
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
	bne	a2, a6, .LBB31_9
.LBB31_10:
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end31:
	.size	regularize_k, .Lfunc_end31-regularize_k
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
	blez	a1, .LBB32_4
# %bb.1:
	li	a0, 0
	andi	a1, a1, 255
	slli	a1, a1, 2
	add	a1, a1, s0
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s0)
	addi	s0, s0, 4
	or	a0, a0, a2
	bne	s0, a1, .LBB32_2
# %bb.3:
	snez	a0, a0
	j	.LBB32_5
.LBB32_4:
	li	a0, 0
.LBB32_5:
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end32:
	.size	EccPoint_compute_public_key, .Lfunc_end32-EccPoint_compute_public_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	1
	.type	uECC_vli_nativeToBytes,@function
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.cfi_startproc
# %bb.0:
	blez	a1, .LBB33_3
# %bb.1:
	li	a4, 0
	li	a3, 0
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
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
	blt	a4, a1, .LBB33_2
.LBB33_3:
	ret
.Lfunc_end33:
	.size	uECC_vli_nativeToBytes, .Lfunc_end33-uECC_vli_nativeToBytes
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
	blez	a3, .LBB34_2
# %bb.1:
	srli	a2, a2, 54
	mv	a0, s1
	li	a1, 0
	call	memset
.LBB34_2:
	blez	s0, .LBB34_5
# %bb.3:
	li	a1, 0
	li	a0, 0
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
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
	blt	a1, s0, .LBB34_4
.LBB34_5:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end34:
	.size	uECC_vli_bytesToNative, .Lfunc_end34-uECC_vli_bytesToNative
	.cfi_endproc
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	1
	.type	uECC_generate_random_int,@function
uECC_generate_random_int:               # @uECC_generate_random_int
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
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
	mv	s5, a2
	mv	s2, a1
	mv	s7, a0
	mv	a0, a1
	mv	a1, a2
	call	uECC_vli_numBits
.Lpcrel_hi6:
	auipc	s4, %pcrel_hi(g_rng_function)
	ld	a1, %pcrel_lo(.Lpcrel_hi6)(s4)
	beqz	a1, .LBB35_10
# %bb.1:
	li	s0, 0
	slli	s3, s5, 2
	add	s8, s7, s3
	negw	a0, a0
	li	a1, -1
	srlw	s6, a1, a0
	addi	s8, s8, -4
	andi	a0, s5, 255
	slli	a0, a0, 2
	add	s1, s7, a0
	li	s9, 64
.LBB35_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_5 Depth 2
	ld	a2, %pcrel_lo(.Lpcrel_hi6)(s4)
	mv	a0, s7
	mv	a1, s3
	jalr	a2
	beqz	a0, .LBB35_9
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	lw	a0, 0(s8)
	and	a0, a0, s6
	sw	a0, 0(s8)
	blez	s5, .LBB35_8
# %bb.4:                                #   in Loop: Header=BB35_2 Depth=1
	li	a0, 0
	mv	a1, s7
.LBB35_5:                               #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 0(a1)
	addi	a1, a1, 4
	or	a0, a0, a2
	bne	a1, s1, .LBB35_5
# %bb.6:                                #   in Loop: Header=BB35_2 Depth=1
	beqz	a0, .LBB35_8
# %bb.7:                                #   in Loop: Header=BB35_2 Depth=1
	mv	a0, s2
	mv	a1, s7
	mv	a2, s5
	call	uECC_vli_cmp
	li	a1, 1
	beq	a0, a1, .LBB35_10
.LBB35_8:                               #   in Loop: Header=BB35_2 Depth=1
	addiw	s0, s0, 1
	bne	s0, s9, .LBB35_2
.LBB35_9:
	li	a1, 0
.LBB35_10:
	mv	a0, a1
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end35:
	.size	uECC_generate_random_int, .Lfunc_end35-uECC_generate_random_int
	.cfi_endproc
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	1
	.type	uECC_valid_point,@function
uECC_valid_point:                       # @uECC_valid_point
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
	lbu	a2, 0(a1)
	mv	s1, a0
	slli	a3, a2, 57
	srai	a3, a3, 56
	li	a0, -1
	blez	a3, .LBB36_17
# %bb.1:
	mv	s0, a1
	li	a1, 0
	slli	a4, a2, 56
	srai	s2, a4, 56
	andi	a3, a3, 255
	slli	a3, a3, 2
	add	a3, a3, s1
	mv	a4, s1
.LBB36_2:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a4)
	addi	a4, a4, 4
	or	a1, a1, a5
	bne	a4, a3, .LBB36_2
# %bb.3:
	beqz	a1, .LBB36_17
# %bb.4:
	addi	a3, s0, 4
	mv	a1, a2
	li	a0, -2
.LBB36_5:                               # =>This Inner Loop Header: Depth=1
	addi	a4, a1, -1
	slli	a4, a4, 56
	bltz	a4, .LBB36_17
# %bb.6:                                #   in Loop: Header=BB36_5 Depth=1
	srai	a4, a4, 56
	andi	a4, a4, 255
	slli	a5, a4, 2
	add	a4, a3, a5
	lw	a4, 0(a4)
	add	a5, a5, s1
	lw	a5, 0(a5)
	bltu	a5, a4, .LBB36_8
# %bb.7:                                #   in Loop: Header=BB36_5 Depth=1
	addi	a1, a1, -1
	bgeu	a4, a5, .LBB36_5
	j	.LBB36_17
.LBB36_8:
	slli	a1, s2, 2
	add	a1, a1, s1
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	addi	a4, a2, -1
	slli	a4, a4, 56
	bltz	a4, .LBB36_17
# %bb.10:                               #   in Loop: Header=BB36_9 Depth=1
	srai	a4, a4, 56
	andi	a4, a4, 255
	slli	a5, a4, 2
	add	a4, a3, a5
	lw	a4, 0(a4)
	add	a5, a5, a1
	lw	a5, 0(a5)
	bltu	a5, a4, .LBB36_12
# %bb.11:                               #   in Loop: Header=BB36_9 Depth=1
	addi	a2, a2, -1
	bgeu	a4, a5, .LBB36_9
	j	.LBB36_17
.LBB36_12:
	addi	a0, sp, 32
	mv	a2, a1
	mv	a3, s2
	call	uECC_vli_mult
	ld	a2, 184(s0)
	mv	a0, sp
	addi	a1, sp, 32
	mv	s3, sp
	jalr	a2
	ld	a3, 176(s0)
	addi	a0, sp, 32
	addi	s4, sp, 32
	mv	a1, s1
	mv	a2, s0
	jalr	a3
	addi	a0, s2, -1
	slli	a0, a0, 56
	bltz	a0, .LBB36_16
# %bb.13:
	li	a1, 0
	srai	a0, a0, 56
	andi	a0, a0, 255
	slli	a0, a0, 2
	add	s4, s4, a0
	add	s3, s3, a0
	addi	a0, sp, 28
.LBB36_14:                              # =>This Inner Loop Header: Depth=1
	lw	a2, 0(s3)
	lw	a3, 0(s4)
	xor	a2, a2, a3
	or	a1, a1, a2
	addi	s4, s4, -4
	addi	s3, s3, -4
	bne	s4, a0, .LBB36_14
# %bb.15:
	li	a0, -3
	bnez	a1, .LBB36_17
.LBB36_16:
	li	a0, 0
.LBB36_17:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end36:
	.size	uECC_valid_point, .Lfunc_end36-uECC_valid_point
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
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	mv	s2, a1
	lb	s1, 1(a1)
	mv	s3, a0
	addi	a0, sp, 8
	addi	s0, sp, 8
	mv	a1, s3
	mv	a2, s1
	call	uECC_vli_bytesToNative
	lb	a0, 0(s2)
	slli	a0, a0, 2
	add	a0, a0, s0
	add	a1, s3, s1
	mv	a2, s1
	call	uECC_vli_bytesToNative
	addi	a0, s2, 68
	li	a1, 16
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	addi	a2, a1, -1
	slli	a2, a2, 56
	bltz	a2, .LBB37_4
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
	srai	a2, a2, 56
	andi	a2, a2, 255
	slli	a2, a2, 2
	add	a3, s0, a2
	lw	a3, 0(a3)
	add	a2, a2, a0
	lw	a2, 0(a2)
	addi	a1, a1, -1
	beq	a3, a2, .LBB37_1
# %bb.3:
	addi	a0, sp, 8
	mv	a1, s2
	call	uECC_valid_point
	j	.LBB37_5
.LBB37_4:
	li	a0, -4
.LBB37_5:
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end37:
	.size	uECC_valid_public_key, .Lfunc_end37-uECC_valid_public_key
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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	mv	s3, a2
	lh	s1, 2(a2)
	mv	s2, a1
	mv	a1, a0
	addi	a0, s1, 7
	srliw	a2, a0, 29
	add	a0, a0, a2
	srai	a2, a0, 3
	addi	a0, sp, 72
	addi	s0, sp, 72
	call	uECC_vli_bytesToNative
	addi	s1, s1, 31
	srliw	a0, s1, 27
	add	a0, a0, s1
	srai	a1, a0, 5
	slli	a2, a1, 56
	srai	a2, a2, 56
	blez	a2, .LBB38_12
# %bb.1:
	li	a0, 0
	andi	a1, a1, 255
	slli	a1, a1, 2
	add	a1, a1, s0
.LBB38_2:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(s0)
	addi	s0, s0, 4
	or	a0, a0, a3
	bne	s0, a1, .LBB38_2
# %bb.3:
	beqz	a0, .LBB38_13
# %bb.4:
	addi	a0, s3, 36
	addi	a1, sp, 72
	call	uECC_vli_cmp
	li	a1, 1
	bne	a0, a1, .LBB38_12
# %bb.5:
	addi	a0, sp, 8
	addi	a1, sp, 72
	mv	a2, s3
	call	EccPoint_compute_public_key
	beqz	a0, .LBB38_13
# %bb.6:
	lb	a2, 1(s3)
	li	a0, 1
	blez	a2, .LBB38_13
# %bb.7:
	andi	a3, a2, 255
	slli	a1, a2, 3
	addi	s0, a1, -8
	addi	a2, a2, -1
	add	a3, a3, s2
	addi	a4, sp, 8
	mv	a5, s2
.LBB38_8:                               # =>This Inner Loop Header: Depth=1
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
	bne	a5, a3, .LBB38_8
# %bb.9:
	lb	a5, 1(s3)
	blez	a5, .LBB38_13
# %bb.10:
	lb	a2, 0(s3)
	andi	s1, a5, 255
	add	a1, s2, a5
	slli	a2, a2, 2
	addi	a3, sp, 8
	add	a2, a2, a3
	slli	a3, a5, 3
	addi	s0, a3, -8
	addi	a4, a5, -1
	add	a5, a5, s2
	add	a5, a5, s1
.LBB38_11:                              # =>This Inner Loop Header: Depth=1
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
	bne	a1, a5, .LBB38_11
	j	.LBB38_13
.LBB38_12:
	li	a0, 0
.LBB38_13:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end38:
	.size	uECC_compute_public_key, .Lfunc_end38-uECC_compute_public_key
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
