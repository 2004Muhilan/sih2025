	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"tinycrypt_aes_encrypt.c"
	.globl	tc_aes128_set_encrypt_key       # -- Begin function tc_aes128_set_encrypt_key
	.p2align	1
	.type	tc_aes128_set_encrypt_key,@function
tc_aes128_set_encrypt_key:              # @tc_aes128_set_encrypt_key
	.cfi_startproc
# %bb.0:
	li	a2, 0
	beqz	a0, .LBB0_9
# %bb.1:
	beqz	a1, .LBB0_9
# %bb.2:
	addi	a2, a1, 3
	addi	t1, a0, 16
	mv	a3, a0
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, -3(a2)
	lbu	a7, -2(a2)
	slli	a6, a4, 24
	lbu	t0, -1(a2)
	lbu	a5, 0(a2)
	slli	a7, a7, 16
	or	a4, a7, a6
	slli	t0, t0, 8
	or	a5, t0, a5
	or	a4, a4, a5
	sw	a4, 0(a3)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, t1, .LBB0_3
# %bb.4:
	lw	a1, 12(a0)
	li	a4, 4
.Lpcrel_hi0:
	auipc	a2, %pcrel_hi(sbox)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi0)
.Lpcrel_hi1:
	auipc	a3, %pcrel_hi(.L__const.tc_aes128_set_encrypt_key.rconst)
	addi	a6, a3, %pcrel_lo(.Lpcrel_hi1)
	li	a7, 44
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	andi	a0, a4, 3
	bnez	a0, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	slli	a0, a1, 40
	srli	a0, a0, 56
	add	a0, a0, a2
	lbu	a0, 0(a0)
	slli	a5, a1, 48
	srli	a5, a5, 56
	add	a5, a5, a2
	lbu	a5, 0(a5)
	slli	a0, a0, 24
	slli	a5, a5, 16
	or	a0, a0, a5
	andi	a5, a1, 255
	add	a5, a5, a2
	lbu	a5, 0(a5)
	srliw	a1, a1, 24
	add	a1, a1, a2
	lbu	a1, 0(a1)
	srliw	a3, a4, 2
	slli	a3, a3, 2
	add	a3, a3, a6
	lw	a3, 0(a3)
	slli	a5, a5, 8
	or	a1, a1, a5
	or	a0, a0, a1
	xor	a1, a0, a3
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -16(t1)
	xor	a1, a1, a0
	sw	a1, 0(t1)
	addi	a4, a4, 1
	addi	t1, t1, 4
	bne	a4, a7, .LBB0_5
# %bb.8:
	li	a2, 1
.LBB0_9:
	mv	a0, a2
	ret
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        # -- End function
	.globl	tc_aes_encrypt                  # -- Begin function tc_aes_encrypt
	.p2align	1
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         # @tc_aes_encrypt
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
	mv	s2, a0
	li	a0, 0
	beqz	s2, .LBB1_10
# %bb.1:
	mv	s3, a2
	mv	a2, a1
	beqz	a1, .LBB1_10
# %bb.2:
	beqz	s3, .LBB1_10
# %bb.3:
	addi	a0, sp, 8
	li	a1, 16
	li	a3, 16
	call	_copy
	lw	a0, 0(s3)
	lbu	a1, 8(sp)
	li	s4, 0
	srli	a2, a0, 24
	lbu	a3, 9(sp)
	xor	a1, a1, a2
	sb	a1, 8(sp)
	srli	a1, a0, 16
	xor	a1, a1, a3
	lbu	a2, 10(sp)
	sb	a1, 9(sp)
	srli	a1, a0, 8
	lbu	a3, 11(sp)
	xor	a1, a1, a2
	sb	a1, 10(sp)
	lw	a1, 4(s3)
	xor	a0, a0, a3
	lbu	a2, 12(sp)
	sb	a0, 11(sp)
	srli	a0, a1, 24
	lbu	a3, 13(sp)
	xor	a0, a0, a2
	sb	a0, 12(sp)
	srli	a0, a1, 16
	xor	a0, a0, a3
	lbu	a2, 14(sp)
	sb	a0, 13(sp)
	srli	a0, a1, 8
	lbu	a3, 15(sp)
	xor	a0, a0, a2
	sb	a0, 14(sp)
	lw	a0, 8(s3)
	xor	a1, a1, a3
	lbu	a2, 16(sp)
	sb	a1, 15(sp)
	srli	a1, a0, 24
	lbu	a3, 17(sp)
	xor	a1, a1, a2
	sb	a1, 16(sp)
	srli	a1, a0, 16
	xor	a1, a1, a3
	lbu	a2, 18(sp)
	sb	a1, 17(sp)
	srli	a1, a0, 8
	lbu	a3, 19(sp)
	xor	a1, a1, a2
	sb	a1, 18(sp)
	lw	a1, 12(s3)
	xor	a0, a0, a3
	lbu	a2, 20(sp)
	sb	a0, 19(sp)
	srli	a0, a1, 24
	lbu	a3, 21(sp)
	xor	a0, a0, a2
	sb	a0, 20(sp)
	srli	a0, a1, 16
	xor	a0, a0, a3
	lbu	a2, 22(sp)
	sb	a0, 21(sp)
	lbu	a0, 23(sp)
	srli	a3, a1, 8
	xor	a2, a2, a3
	sb	a2, 22(sp)
	xor	a0, a0, a1
	sb	a0, 23(sp)
	addi	s5, sp, 24
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(sbox)
	addi	s9, a0, %pcrel_lo(.Lpcrel_hi2)
	li	s6, 9
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	addi	a0, sp, 8
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, 0(a0)
	add	a1, a1, s9
	lbu	a1, 0(a1)
	sb	a1, 0(a0)
	addi	a0, a0, 1
	bne	a0, s5, .LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	lbu	a0, 8(sp)
	lbu	a1, 13(sp)
	lbu	a2, 18(sp)
	lbu	a3, 23(sp)
	sb	a0, 24(sp)
	sb	a1, 25(sp)
	sb	a2, 26(sp)
	sb	a3, 27(sp)
	lbu	a0, 12(sp)
	lbu	a1, 17(sp)
	lbu	a2, 22(sp)
	lbu	a3, 11(sp)
	sb	a0, 28(sp)
	sb	a1, 29(sp)
	sb	a2, 30(sp)
	sb	a3, 31(sp)
	lbu	a0, 16(sp)
	lbu	a1, 21(sp)
	lbu	a2, 10(sp)
	lbu	a3, 15(sp)
	sb	a0, 32(sp)
	sb	a1, 33(sp)
	sb	a2, 34(sp)
	sb	a3, 35(sp)
	lbu	a0, 20(sp)
	lbu	a1, 9(sp)
	lbu	a2, 14(sp)
	lbu	a3, 19(sp)
	sb	a0, 36(sp)
	sb	a1, 37(sp)
	sb	a2, 38(sp)
	sb	a3, 39(sp)
	addi	a0, sp, 8
	li	a1, 16
	addi	a2, sp, 24
	li	a3, 16
	call	_copy
	lbu	a0, 8(sp)
	call	_double_byte
	lbu	a1, 9(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 10(sp)
	lbu	a3, 11(sp)
	lbu	a1, 9(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s7, 8(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 24(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 10(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 11(sp)
	lbu	a1, 10(sp)
	xor	a3, s0, s7
	xor	a0, a0, a2
	lbu	s7, 8(sp)
	lbu	s8, 9(sp)
	xor	a0, a0, a3
	xor	a0, a0, a1
	sb	a0, 25(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 11(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 11(sp)
	xor	a1, s8, s7
	xor	s0, s0, a1
	lbu	a1, 8(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 26(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 8(sp)
	lbu	a3, 9(sp)
	lbu	s7, 10(sp)
	lbu	a1, 11(sp)
	xor	a2, a2, a3
	xor	s0, a2, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 12(sp)
	xor	a0, s7, a0
	xor	a0, a0, s0
	sb	a0, 27(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 13(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 14(sp)
	lbu	a3, 15(sp)
	lbu	a1, 13(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s7, 12(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 28(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 14(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 15(sp)
	lbu	a1, 14(sp)
	xor	a3, s0, s7
	xor	a0, a0, a2
	lbu	s7, 12(sp)
	lbu	s8, 13(sp)
	xor	a0, a0, a3
	xor	a0, a0, a1
	sb	a0, 29(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 15(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 15(sp)
	xor	a1, s8, s7
	xor	s0, s0, a1
	lbu	a1, 12(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 30(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 12(sp)
	lbu	a3, 13(sp)
	lbu	s7, 14(sp)
	lbu	a1, 15(sp)
	xor	a2, a2, a3
	xor	s0, a2, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 16(sp)
	xor	a0, s7, a0
	xor	a0, a0, s0
	sb	a0, 31(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 17(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 18(sp)
	lbu	a3, 19(sp)
	lbu	a1, 17(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s7, 16(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 32(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 18(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 19(sp)
	lbu	a1, 18(sp)
	xor	a3, s0, s7
	xor	a0, a0, a2
	lbu	s7, 16(sp)
	lbu	s8, 17(sp)
	xor	a0, a0, a3
	xor	a0, a0, a1
	sb	a0, 33(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 19(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 19(sp)
	xor	a1, s8, s7
	xor	s0, s0, a1
	lbu	a1, 16(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 34(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 16(sp)
	lbu	a3, 17(sp)
	lbu	s7, 18(sp)
	lbu	a1, 19(sp)
	xor	a2, a2, a3
	xor	s0, a2, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 20(sp)
	xor	a0, s7, a0
	xor	a0, a0, s0
	sb	a0, 35(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 21(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 22(sp)
	lbu	a3, 23(sp)
	lbu	a1, 21(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s7, 20(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 36(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 22(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 23(sp)
	lbu	a1, 22(sp)
	xor	a3, s0, s7
	xor	a0, a0, a2
	lbu	s7, 20(sp)
	lbu	s8, 21(sp)
	xor	a0, a0, a3
	xor	a0, a0, a1
	sb	a0, 37(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 23(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 23(sp)
	xor	a1, s8, s7
	xor	s0, s0, a1
	lbu	a1, 20(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 38(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 20(sp)
	lbu	a3, 21(sp)
	lbu	s0, 22(sp)
	lbu	a1, 23(sp)
	xor	a2, a2, a3
	xor	s1, a2, a0
	mv	a0, a1
	call	_double_byte
	xor	a0, a0, s0
	xor	a0, a0, s1
	sb	a0, 39(sp)
	addi	a0, sp, 8
	li	a1, 16
	addi	a2, sp, 24
	li	a3, 16
	call	_copy
	addi	s4, s4, 1
	slli	a0, s4, 4
	add	a0, a0, s3
	lw	a1, 0(a0)
	lbu	a2, 8(sp)
	srli	a3, a1, 24
	lbu	a4, 9(sp)
	xor	a2, a2, a3
	sb	a2, 8(sp)
	srli	a2, a1, 16
	xor	a2, a2, a4
	lbu	a3, 10(sp)
	sb	a2, 9(sp)
	srli	a2, a1, 8
	lbu	a4, 11(sp)
	xor	a2, a2, a3
	sb	a2, 10(sp)
	lw	a2, 4(a0)
	xor	a1, a1, a4
	lbu	a3, 12(sp)
	sb	a1, 11(sp)
	srli	a1, a2, 24
	lbu	a4, 13(sp)
	xor	a1, a1, a3
	sb	a1, 12(sp)
	srli	a1, a2, 16
	xor	a1, a1, a4
	lbu	a3, 14(sp)
	sb	a1, 13(sp)
	srli	a1, a2, 8
	lbu	a4, 15(sp)
	xor	a1, a1, a3
	sb	a1, 14(sp)
	lw	a1, 8(a0)
	xor	a2, a2, a4
	lbu	a3, 16(sp)
	sb	a2, 15(sp)
	srli	a2, a1, 24
	lbu	a4, 17(sp)
	xor	a2, a2, a3
	sb	a2, 16(sp)
	srli	a2, a1, 16
	xor	a2, a2, a4
	lbu	a3, 18(sp)
	sb	a2, 17(sp)
	srli	a2, a1, 8
	lbu	a4, 19(sp)
	xor	a2, a2, a3
	sb	a2, 18(sp)
	lw	a0, 12(a0)
	xor	a1, a1, a4
	lbu	a2, 20(sp)
	sb	a1, 19(sp)
	srli	a1, a0, 24
	lbu	a3, 21(sp)
	xor	a1, a1, a2
	sb	a1, 20(sp)
	srli	a1, a0, 16
	xor	a1, a1, a3
	lbu	a2, 22(sp)
	sb	a1, 21(sp)
	lbu	a1, 23(sp)
	srli	a3, a0, 8
	xor	a2, a2, a3
	sb	a2, 22(sp)
	xor	a0, a0, a1
	sb	a0, 23(sp)
	bne	s4, s6, .LBB1_4
# %bb.7:
	addi	a0, sp, 8
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	lbu	a1, 0(a0)
	add	a1, a1, s9
	lbu	a1, 0(a1)
	sb	a1, 0(a0)
	addi	a0, a0, 1
	bne	a0, s5, .LBB1_8
# %bb.9:
	lbu	a0, 8(sp)
	lbu	a1, 13(sp)
	lbu	a2, 18(sp)
	lbu	a3, 23(sp)
	sb	a0, 24(sp)
	sb	a1, 25(sp)
	sb	a2, 26(sp)
	sb	a3, 27(sp)
	lbu	a0, 12(sp)
	lbu	a1, 17(sp)
	lbu	a2, 22(sp)
	lbu	a3, 11(sp)
	sb	a0, 28(sp)
	sb	a1, 29(sp)
	sb	a2, 30(sp)
	sb	a3, 31(sp)
	lbu	a0, 16(sp)
	lbu	a1, 21(sp)
	lbu	a2, 10(sp)
	lbu	a3, 15(sp)
	sb	a0, 32(sp)
	sb	a1, 33(sp)
	sb	a2, 34(sp)
	sb	a3, 35(sp)
	lbu	a0, 20(sp)
	lbu	a1, 9(sp)
	lbu	a2, 14(sp)
	lbu	a3, 19(sp)
	sb	a0, 36(sp)
	sb	a1, 37(sp)
	sb	a2, 38(sp)
	sb	a3, 39(sp)
	addi	a0, sp, 8
	li	a1, 16
	addi	a2, sp, 24
	li	a3, 16
	call	_copy
	lw	a0, 160(s3)
	lbu	a1, 8(sp)
	srli	a2, a0, 24
	lbu	a3, 9(sp)
	xor	a1, a1, a2
	sb	a1, 8(sp)
	srli	a1, a0, 16
	xor	a1, a1, a3
	lbu	a2, 10(sp)
	sb	a1, 9(sp)
	srli	a1, a0, 8
	lbu	a3, 11(sp)
	xor	a1, a1, a2
	sb	a1, 10(sp)
	lw	a1, 164(s3)
	xor	a0, a0, a3
	lbu	a2, 12(sp)
	sb	a0, 11(sp)
	srli	a0, a1, 24
	lbu	a3, 13(sp)
	xor	a0, a0, a2
	sb	a0, 12(sp)
	srli	a0, a1, 16
	xor	a0, a0, a3
	lbu	a2, 14(sp)
	sb	a0, 13(sp)
	srli	a0, a1, 8
	lbu	a3, 15(sp)
	xor	a0, a0, a2
	sb	a0, 14(sp)
	lw	a0, 168(s3)
	xor	a1, a1, a3
	lbu	a2, 16(sp)
	sb	a1, 15(sp)
	srli	a1, a0, 24
	lbu	a3, 17(sp)
	xor	a1, a1, a2
	sb	a1, 16(sp)
	srli	a1, a0, 16
	xor	a1, a1, a3
	lbu	a2, 18(sp)
	sb	a1, 17(sp)
	srli	a1, a0, 8
	lbu	a3, 19(sp)
	xor	a1, a1, a2
	sb	a1, 18(sp)
	lw	a1, 172(s3)
	xor	a0, a0, a3
	lbu	a2, 20(sp)
	sb	a0, 19(sp)
	srli	a0, a1, 24
	lbu	a3, 21(sp)
	xor	a0, a0, a2
	sb	a0, 20(sp)
	srli	a0, a1, 16
	xor	a0, a0, a3
	lbu	a2, 22(sp)
	sb	a0, 21(sp)
	lbu	a0, 23(sp)
	srli	a3, a1, 8
	xor	a2, a2, a3
	sb	a2, 22(sp)
	xor	a0, a0, a1
	sb	a0, 23(sp)
	li	a1, 16
	addi	a2, sp, 8
	li	a3, 16
	mv	a0, s2
	call	_copy
	addi	a0, sp, 8
	li	a2, 16
	li	a1, 0
	call	_set
	li	a0, 1
.LBB1_10:
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
	addi	sp, sp, 128
	ret
.Lfunc_end1:
	.size	tc_aes_encrypt, .Lfunc_end1-tc_aes_encrypt
	.cfi_endproc
                                        # -- End function
	.type	.L__const.tc_aes128_set_encrypt_key.rconst,@object # @__const.tc_aes128_set_encrypt_key.rconst
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.tc_aes128_set_encrypt_key.rconst:
	.word	0                               # 0x0
	.word	16777216                        # 0x1000000
	.word	33554432                        # 0x2000000
	.word	67108864                        # 0x4000000
	.word	134217728                       # 0x8000000
	.word	268435456                       # 0x10000000
	.word	536870912                       # 0x20000000
	.word	1073741824                      # 0x40000000
	.word	2147483648                      # 0x80000000
	.word	452984832                       # 0x1b000000
	.word	905969664                       # 0x36000000
	.size	.L__const.tc_aes128_set_encrypt_key.rconst, 44

	.type	sbox,@object                    # @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
