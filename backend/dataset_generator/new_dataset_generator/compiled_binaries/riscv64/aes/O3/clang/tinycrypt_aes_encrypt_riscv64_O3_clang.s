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
	beqz	a0, .LBB0_7
# %bb.1:
	beqz	a1, .LBB0_7
# %bb.2:
	lbu	a2, 0(a1)
	lbu	a3, 1(a1)
	slli	a2, a2, 24
	lbu	a4, 2(a1)
	lbu	a5, 3(a1)
	slli	a3, a3, 16
	or	a2, a2, a3
	slli	a4, a4, 8
	or	a4, a4, a5
	or	a2, a2, a4
	sw	a2, 0(a0)
	lbu	a2, 4(a1)
	lbu	a3, 5(a1)
	slli	a2, a2, 24
	lbu	a4, 6(a1)
	lbu	a5, 7(a1)
	slli	a3, a3, 16
	or	a2, a2, a3
	slli	a4, a4, 8
	or	a4, a4, a5
	or	a2, a2, a4
	sw	a2, 4(a0)
	lbu	a2, 8(a1)
	lbu	a3, 9(a1)
	slli	a2, a2, 24
	lbu	a4, 10(a1)
	lbu	a5, 11(a1)
	slli	a3, a3, 16
	or	a2, a2, a3
	slli	a4, a4, 8
	or	a4, a4, a5
	or	a2, a2, a4
	sw	a2, 8(a0)
	lbu	a2, 12(a1)
	lbu	a3, 13(a1)
	slli	a2, a2, 24
	lbu	a4, 14(a1)
	lbu	a1, 15(a1)
	slli	a3, a3, 16
	or	a2, a2, a3
	slli	a4, a4, 8
	or	a1, a1, a4
	or	a4, a2, a1
	sw	a4, 12(a0)
	addi	a7, a0, 16
	li	a0, 4
.Lpcrel_hi0:
	auipc	a2, %pcrel_hi(sbox)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi0)
.Lpcrel_hi1:
	auipc	a3, %pcrel_hi(.L__const.tc_aes128_set_encrypt_key.rconst)
	addi	a6, a3, %pcrel_lo(.Lpcrel_hi1)
	li	t0, 44
	j	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a1, -16(a7)
	xor	a4, a4, a1
	sw	a4, 0(a7)
	addi	a0, a0, 1
	addi	a7, a7, 4
	beq	a0, t0, .LBB0_6
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	andi	a1, a0, 3
	bnez	a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	slli	a1, a4, 40
	srli	a1, a1, 56
	add	a1, a1, a2
	lbu	a1, 0(a1)
	slli	a5, a4, 48
	srli	a5, a5, 56
	add	a5, a5, a2
	lbu	a5, 0(a5)
	slli	a1, a1, 24
	slli	a5, a5, 16
	or	a1, a1, a5
	andi	a5, a4, 255
	add	a5, a5, a2
	lbu	a5, 0(a5)
	srliw	a4, a4, 24
	add	a4, a4, a2
	lbu	a4, 0(a4)
	srliw	a3, a0, 2
	slli	a3, a3, 2
	add	a3, a3, a6
	lw	a3, 0(a3)
	slli	a5, a5, 8
	or	a4, a4, a5
	or	a1, a1, a4
	xor	a4, a1, a3
	j	.LBB0_3
.LBB0_6:
	li	a2, 1
.LBB0_7:
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
	mv	s0, a0
	li	a0, 0
	beqz	s0, .LBB1_6
# %bb.1:
	mv	s3, a2
	mv	a2, a1
	beqz	a1, .LBB1_6
# %bb.2:
	beqz	s3, .LBB1_6
# %bb.3:
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 24
	li	a1, 16
	li	a3, 16
	call	_copy
	lw	a2, 0(s3)
	lbu	a0, 24(sp)
	srliw	a1, a2, 24
	xor	s5, a0, a1
	lbu	a1, 25(sp)
	sb	s5, 24(sp)
	srliw	a3, a2, 16
	lbu	a4, 26(sp)
	xor	s6, a1, a3
	sb	s6, 25(sp)
	srliw	a3, a2, 8
	xor	s4, a4, a3
	lbu	a3, 27(sp)
	sb	s4, 26(sp)
	lw	a5, 4(s3)
	lbu	s1, 28(sp)
	xor	a1, a3, a2
	sb	a1, 27(sp)
	srliw	a2, a5, 24
	xor	a4, s1, a2
	lbu	a2, 29(sp)
	sb	a4, 28(sp)
	srliw	a3, a5, 16
	lbu	s1, 30(sp)
	xor	a6, a2, a3
	srliw	a2, a5, 8
	lbu	a3, 31(sp)
	xor	t0, s1, a2
	lw	s1, 8(s3)
	lbu	a2, 32(sp)
	xor	t2, a3, a5
	lbu	a3, 33(sp)
	srliw	a5, s1, 24
	xor	t1, a2, a5
	srliw	a2, s1, 16
	xor	a7, a3, a2
	srliw	a2, s1, 8
	lbu	a3, 34(sp)
	lbu	a5, 35(sp)
	lw	a0, 12(s3)
	lbu	s0, 36(sp)
	xor	s7, a3, a2
	xor	t6, a5, s1
	srliw	a3, a0, 24
	xor	t3, s0, a3
	lbu	a3, 37(sp)
	srliw	a5, a0, 16
	lbu	s1, 38(sp)
	lbu	s0, 39(sp)
	xor	s8, a3, a5
	srliw	a5, a0, 8
	xor	t5, s1, a5
	xor	t4, s0, a0
	andi	a0, s5, 255
	andi	s0, s6, 255
	andi	s1, s4, 255
	andi	a5, a1, 255
	andi	s2, a4, 255
	addi	s4, s3, 28
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	addi	s5, s3, 172
.Lpcrel_hi2:
	auipc	a1, %pcrel_hi(sbox)
	addi	s6, a1, %pcrel_lo(.Lpcrel_hi2)
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	andi	a0, a0, 255
	add	a0, a0, s6
	lbu	s11, 0(a0)
	andi	a0, s0, 255
	add	a0, a0, s6
	lbu	s9, 0(a0)
	andi	s0, s1, 255
	add	s0, s0, s6
	lbu	s10, 0(s0)
	andi	a5, a5, 255
	add	a5, a5, s6
	lbu	ra, 0(a5)
	sb	s11, 24(sp)
	sb	s9, 25(sp)
	sb	s10, 26(sp)
	sb	ra, 27(sp)
	andi	a4, s2, 255
	add	a4, a4, s6
	lbu	s2, 0(a4)
	andi	a4, a6, 255
	add	a4, a4, s6
	lbu	s3, 0(a4)
	andi	a4, t0, 255
	add	a4, a4, s6
	lbu	a6, 0(a4)
	andi	a3, t2, 255
	add	a3, a3, s6
	lbu	t0, 0(a3)
	sb	s2, 28(sp)
	sb	s3, 29(sp)
	sb	a6, 30(sp)
	sb	t0, 31(sp)
	andi	a0, t1, 255
	add	a0, a0, s6
	lbu	a0, 0(a0)
	andi	s1, a7, 255
	add	s1, s1, s6
	lbu	s1, 0(s1)
	andi	a1, s7, 255
	add	a1, a1, s6
	lbu	a1, 0(a1)
	andi	a5, t6, 255
	add	a5, a5, s6
	lbu	a5, 0(a5)
	sb	a0, 32(sp)
	sb	s1, 33(sp)
	sb	a1, 34(sp)
	sb	a5, 35(sp)
	andi	a4, t3, 255
	add	a4, a4, s6
	lbu	a4, 0(a4)
	andi	s0, s8, 255
	add	s0, s0, s6
	lbu	s0, 0(s0)
	andi	a3, t5, 255
	add	a3, a3, s6
	lbu	a3, 0(a3)
	andi	a2, t4, 255
	add	a2, a2, s6
	lbu	a2, 0(a2)
	sb	a4, 36(sp)
	sb	s0, 37(sp)
	sb	a3, 38(sp)
	sb	a2, 39(sp)
	sb	s11, 40(sp)
	sb	s3, 41(sp)
	sb	a1, 42(sp)
	sb	a2, 43(sp)
	sb	s2, 44(sp)
	sb	s1, 45(sp)
	sb	a3, 46(sp)
	sb	ra, 47(sp)
	sb	a0, 48(sp)
	sb	s0, 49(sp)
	sb	s10, 50(sp)
	sb	t0, 51(sp)
	sb	a4, 52(sp)
	sb	s9, 53(sp)
	sb	a6, 54(sp)
	sb	a5, 55(sp)
	addi	a0, sp, 24
	li	a1, 16
	addi	a2, sp, 40
	li	a3, 16
	call	_copy
	lbu	a0, 24(sp)
	call	_double_byte
	lbu	a1, 25(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 26(sp)
	lbu	a3, 27(sp)
	lbu	a1, 25(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s1, 24(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 40(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 26(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 27(sp)
	lbu	a1, 26(sp)
	xor	s0, s0, s1
	xor	a0, a0, a2
	lbu	s2, 24(sp)
	lbu	s1, 25(sp)
	xor	a0, a0, s0
	xor	a0, a0, a1
	sb	a0, 41(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 27(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 27(sp)
	xor	a1, s1, s2
	xor	s0, s0, a1
	lbu	a1, 24(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 42(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 24(sp)
	lbu	a3, 25(sp)
	lbu	s0, 26(sp)
	lbu	a1, 27(sp)
	xor	a2, a2, a3
	xor	s1, a2, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 28(sp)
	xor	a0, a0, s0
	xor	a0, a0, s1
	sb	a0, 43(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 29(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 30(sp)
	lbu	a3, 31(sp)
	lbu	a1, 29(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s1, 28(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 44(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 30(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 31(sp)
	lbu	a1, 30(sp)
	xor	s0, s0, s1
	xor	a0, a0, a2
	lbu	s2, 28(sp)
	lbu	s1, 29(sp)
	xor	a0, a0, s0
	xor	a0, a0, a1
	sb	a0, 45(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 31(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 31(sp)
	xor	a1, s1, s2
	xor	s0, s0, a1
	lbu	a1, 28(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 46(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 28(sp)
	lbu	a3, 29(sp)
	lbu	s0, 30(sp)
	lbu	a1, 31(sp)
	xor	a2, a2, a3
	xor	s1, a2, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 32(sp)
	xor	a0, a0, s0
	xor	a0, a0, s1
	sb	a0, 47(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 33(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 34(sp)
	lbu	a3, 35(sp)
	lbu	a1, 33(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s1, 32(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 48(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 34(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 35(sp)
	lbu	a1, 34(sp)
	xor	s0, s0, s1
	xor	a0, a0, a2
	lbu	s2, 32(sp)
	lbu	s1, 33(sp)
	xor	a0, a0, s0
	xor	a0, a0, a1
	sb	a0, 49(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 35(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 35(sp)
	xor	a1, s1, s2
	xor	s0, s0, a1
	lbu	a1, 32(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 50(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 32(sp)
	lbu	a3, 33(sp)
	lbu	s0, 34(sp)
	lbu	a1, 35(sp)
	xor	a2, a2, a3
	xor	s1, a2, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 36(sp)
	xor	a0, a0, s0
	xor	a0, a0, s1
	sb	a0, 51(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 37(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 38(sp)
	lbu	a3, 39(sp)
	lbu	a1, 37(sp)
	xor	a0, a0, s0
	xor	a2, a2, a3
	lbu	s1, 36(sp)
	xor	a2, a2, a1
	xor	a0, a0, a2
	sb	a0, 52(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 38(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 39(sp)
	lbu	a1, 38(sp)
	xor	s0, s0, s1
	xor	a0, a0, a2
	lbu	s2, 36(sp)
	lbu	s1, 37(sp)
	xor	a0, a0, s0
	xor	a0, a0, a1
	sb	a0, 53(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a1, 39(sp)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a2, 39(sp)
	xor	a1, s1, s2
	xor	s0, s0, a1
	lbu	a1, 36(sp)
	xor	a0, a0, a2
	xor	a0, a0, s0
	sb	a0, 54(sp)
	mv	a0, a1
	call	_double_byte
	lbu	a2, 36(sp)
	lbu	a3, 37(sp)
	lbu	s0, 38(sp)
	lbu	a1, 39(sp)
	xor	a2, a2, a3
	xor	s1, a2, a0
	mv	a0, a1
	call	_double_byte
	xor	a0, a0, s0
	xor	a0, a0, s1
	sb	a0, 55(sp)
	addi	a0, sp, 24
	li	a1, 16
	addi	a2, sp, 40
	li	a3, 16
	call	_copy
	lw	a1, -12(s4)
	lbu	a0, 24(sp)
	srliw	a2, a1, 24
	lbu	a3, 25(sp)
	xor	a0, a0, a2
	sb	a0, 24(sp)
	srliw	s0, a1, 16
	xor	s0, s0, a3
	lbu	a2, 26(sp)
	sb	s0, 25(sp)
	srliw	s1, a1, 8
	lbu	a5, 27(sp)
	xor	s1, s1, a2
	sb	s1, 26(sp)
	lw	a2, -8(s4)
	xor	a5, a5, a1
	lbu	a1, 28(sp)
	sb	a5, 27(sp)
	srliw	a4, a2, 24
	lbu	a3, 29(sp)
	xor	s2, a1, a4
	sb	s2, 28(sp)
	srliw	a1, a2, 16
	xor	a6, a3, a1
	lbu	a1, 30(sp)
	sb	a6, 29(sp)
	srliw	a3, a2, 8
	lbu	a4, 31(sp)
	xor	t0, a1, a3
	sb	t0, 30(sp)
	lw	a1, -4(s4)
	xor	t2, a4, a2
	lbu	a2, 32(sp)
	sb	t2, 31(sp)
	srliw	a3, a1, 24
	lbu	a4, 33(sp)
	xor	t1, a2, a3
	sb	t1, 32(sp)
	srliw	a2, a1, 16
	xor	a7, a4, a2
	lbu	a2, 34(sp)
	sb	a7, 33(sp)
	srliw	a3, a1, 8
	lbu	a4, 35(sp)
	xor	s7, a2, a3
	sb	s7, 34(sp)
	lw	a2, 0(s4)
	xor	t6, a4, a1
	lbu	a1, 36(sp)
	sb	t6, 35(sp)
	srliw	a3, a2, 24
	lbu	a4, 37(sp)
	xor	t3, a1, a3
	lbu	a1, 38(sp)
	srliw	a3, a2, 16
	xor	s8, a4, a3
	srliw	a3, a2, 8
	xor	t5, a1, a3
	lbu	a1, 39(sp)
	sb	t3, 36(sp)
	sb	s8, 37(sp)
	sb	t5, 38(sp)
	xor	t4, a1, a2
	addi	s4, s4, 16
	sb	t4, 39(sp)
	bne	s4, s5, .LBB1_4
# %bb.5:
	andi	a0, a0, 255
	add	a0, a0, s6
	lbu	s5, 0(a0)
	andi	a0, s0, 255
	add	a0, a0, s6
	lbu	s3, 0(a0)
	andi	a2, s1, 255
	add	a2, a2, s6
	lbu	s4, 0(a2)
	andi	a2, a5, 255
	add	a2, a2, s6
	lbu	s9, 0(a2)
	sb	s5, 24(sp)
	sb	s3, 25(sp)
	sb	s4, 26(sp)
	sb	s9, 27(sp)
	andi	a2, s2, 255
	add	a2, a2, s6
	lbu	s2, 0(a2)
	andi	a2, a6, 255
	add	a2, a2, s6
	lbu	s10, 0(a2)
	andi	a3, t0, 255
	add	a3, a3, s6
	lbu	a6, 0(a3)
	andi	a3, t2, 255
	add	a3, a3, s6
	lbu	t0, 0(a3)
	sb	s2, 28(sp)
	sb	s10, 29(sp)
	sb	a6, 30(sp)
	sb	t0, 31(sp)
	andi	a0, t1, 255
	add	a0, a0, s6
	lbu	a0, 0(a0)
	andi	s1, a7, 255
	add	s1, s1, s6
	lbu	s1, 0(s1)
	andi	a1, s7, 255
	add	a1, a1, s6
	lbu	a1, 0(a1)
	andi	a5, t6, 255
	add	a5, a5, s6
	lbu	a5, 0(a5)
	sb	a0, 32(sp)
	sb	s1, 33(sp)
	sb	a1, 34(sp)
	sb	a5, 35(sp)
	andi	a4, t3, 255
	add	a4, a4, s6
	lbu	a4, 0(a4)
	andi	s0, s8, 255
	add	s0, s0, s6
	lbu	s0, 0(s0)
	andi	a3, t5, 255
	add	a3, a3, s6
	lbu	a3, 0(a3)
	andi	a2, t4, 255
	add	a2, a2, s6
	lbu	a2, 0(a2)
	sb	a4, 36(sp)
	sb	s0, 37(sp)
	sb	a3, 38(sp)
	sb	a2, 39(sp)
	sb	s5, 40(sp)
	sb	s10, 41(sp)
	sb	a1, 42(sp)
	sb	a2, 43(sp)
	sb	s2, 44(sp)
	sb	s1, 45(sp)
	sb	a3, 46(sp)
	sb	s9, 47(sp)
	sb	a0, 48(sp)
	sb	s0, 49(sp)
	sb	s4, 50(sp)
	sb	t0, 51(sp)
	sb	a4, 52(sp)
	sb	s3, 53(sp)
	sb	a6, 54(sp)
	sb	a5, 55(sp)
	addi	a0, sp, 24
	li	a1, 16
	addi	a2, sp, 40
	li	a3, 16
	call	_copy
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	lw	a0, 160(a4)
	lbu	a1, 24(sp)
	srli	a2, a0, 24
	lbu	a3, 25(sp)
	xor	a1, a1, a2
	sb	a1, 24(sp)
	srli	a1, a0, 16
	xor	a1, a1, a3
	lbu	a2, 26(sp)
	sb	a1, 25(sp)
	srli	a1, a0, 8
	lbu	a3, 27(sp)
	xor	a1, a1, a2
	sb	a1, 26(sp)
	lw	a1, 164(a4)
	xor	a0, a0, a3
	lbu	a2, 28(sp)
	sb	a0, 27(sp)
	srli	a0, a1, 24
	lbu	a3, 29(sp)
	xor	a0, a0, a2
	sb	a0, 28(sp)
	srli	a0, a1, 16
	xor	a0, a0, a3
	lbu	a2, 30(sp)
	sb	a0, 29(sp)
	srli	a0, a1, 8
	lbu	a3, 31(sp)
	xor	a0, a0, a2
	sb	a0, 30(sp)
	lw	a0, 168(a4)
	xor	a1, a1, a3
	lbu	a2, 32(sp)
	sb	a1, 31(sp)
	srli	a1, a0, 24
	lbu	a3, 33(sp)
	xor	a1, a1, a2
	sb	a1, 32(sp)
	srli	a1, a0, 16
	xor	a1, a1, a3
	lbu	a2, 34(sp)
	sb	a1, 33(sp)
	srli	a1, a0, 8
	lbu	a3, 35(sp)
	xor	a1, a1, a2
	sb	a1, 34(sp)
	lw	a1, 172(a4)
	xor	a0, a0, a3
	lbu	a2, 36(sp)
	sb	a0, 35(sp)
	srli	a0, a1, 24
	lbu	a3, 37(sp)
	xor	a0, a0, a2
	sb	a0, 36(sp)
	srli	a0, a1, 16
	xor	a0, a0, a3
	lbu	a2, 38(sp)
	sb	a0, 37(sp)
	lbu	a0, 39(sp)
	srli	a3, a1, 8
	xor	a2, a2, a3
	sb	a2, 38(sp)
	xor	a0, a0, a1
	sb	a0, 39(sp)
	li	a1, 16
	addi	a2, sp, 24
	li	a3, 16
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	call	_copy
	addi	a0, sp, 24
	li	a2, 16
	li	a1, 0
	call	_set
	li	a0, 1
.LBB1_6:
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
