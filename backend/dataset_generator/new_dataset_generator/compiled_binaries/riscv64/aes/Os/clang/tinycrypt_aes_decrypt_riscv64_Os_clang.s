	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"tinycrypt_aes_decrypt.c"
	.globl	tc_aes128_set_decrypt_key       # -- Begin function tc_aes128_set_decrypt_key
	.p2align	1
	.type	tc_aes128_set_decrypt_key,@function
tc_aes128_set_decrypt_key:              # @tc_aes128_set_decrypt_key
	.cfi_startproc
# %bb.0:
	tail	tc_aes128_set_encrypt_key
.Lfunc_end0:
	.size	tc_aes128_set_decrypt_key, .Lfunc_end0-tc_aes128_set_decrypt_key
	.cfi_endproc
                                        # -- End function
	.globl	tc_aes_decrypt                  # -- Begin function tc_aes_decrypt
	.p2align	1
	.type	tc_aes_decrypt,@function
tc_aes_decrypt:                         # @tc_aes_decrypt
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
	mv	s2, a0
	li	a0, 0
	beqz	s2, .LBB1_10
# %bb.1:
	mv	s9, a2
	mv	a2, a1
	beqz	a1, .LBB1_10
# %bb.2:
	beqz	s9, .LBB1_10
# %bb.3:
	addi	a0, sp, 8
	li	a1, 16
	li	a3, 16
	call	_copy
	lw	a0, 160(s9)
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
	lw	a1, 164(s9)
	xor	a0, a0, a3
	sb	a0, 11(sp)
	lbu	a0, 12(sp)
	srli	a2, a1, 24
	addi	s3, sp, 12
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
	lw	a0, 168(s9)
	xor	a1, a1, a3
	sb	a1, 15(sp)
	lbu	a1, 16(sp)
	srli	a2, a0, 24
	addi	s4, sp, 16
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
	lw	a1, 172(s9)
	xor	a0, a0, a3
	sb	a0, 19(sp)
	lbu	a0, 20(sp)
	srli	a2, a1, 24
	addi	s5, sp, 20
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
	addi	s6, sp, 28
	addi	s7, sp, 32
	addi	s8, sp, 36
	li	s10, 9
	addi	s11, sp, 24
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(inv_sbox)
	addi	s1, a0, %pcrel_lo(.Lpcrel_hi0)
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	lbu	a0, 8(sp)
	lbu	a1, 21(sp)
	lbu	a2, 18(sp)
	lbu	a3, 15(sp)
	sb	a0, 24(sp)
	sb	a1, 25(sp)
	sb	a2, 26(sp)
	sb	a3, 27(sp)
	lbu	a0, 12(sp)
	lbu	a1, 9(sp)
	lbu	a2, 22(sp)
	lbu	a3, 19(sp)
	sb	a0, 28(sp)
	sb	a1, 29(sp)
	sb	a2, 30(sp)
	sb	a3, 31(sp)
	lbu	a0, 16(sp)
	lbu	a1, 13(sp)
	lbu	a2, 10(sp)
	lbu	a3, 23(sp)
	sb	a0, 32(sp)
	sb	a1, 33(sp)
	sb	a2, 34(sp)
	sb	a3, 35(sp)
	lbu	a0, 20(sp)
	lbu	a1, 17(sp)
	lbu	a2, 14(sp)
	lbu	a3, 11(sp)
	sb	a0, 36(sp)
	sb	a1, 37(sp)
	sb	a2, 38(sp)
	sb	a3, 39(sp)
	addi	a0, sp, 8
	li	a1, 16
	addi	a2, sp, 24
	li	a3, 16
	call	_copy
	addi	a0, sp, 8
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, 0(a0)
	add	a1, a1, s1
	lbu	a1, 0(a1)
	sb	a1, 0(a0)
	addi	a0, a0, 1
	bne	a0, s11, .LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	slli	a0, s10, 4
	add	a0, a0, s9
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
	addi	a0, sp, 24
	addi	a1, sp, 8
	call	mult_row_column
	mv	a0, s6
	mv	a1, s3
	call	mult_row_column
	mv	a0, s7
	mv	a1, s4
	call	mult_row_column
	mv	a0, s8
	mv	a1, s5
	call	mult_row_column
	addi	a0, sp, 8
	li	a1, 16
	addi	a2, sp, 24
	li	a3, 16
	call	_copy
	addi	s10, s10, -1
	bnez	s10, .LBB1_4
# %bb.7:
	lbu	a0, 8(sp)
	lbu	a1, 21(sp)
	lbu	a2, 18(sp)
	lbu	a3, 15(sp)
	sb	a0, 24(sp)
	sb	a1, 25(sp)
	sb	a2, 26(sp)
	sb	a3, 27(sp)
	lbu	a0, 12(sp)
	lbu	a1, 9(sp)
	lbu	a2, 22(sp)
	lbu	a3, 19(sp)
	sb	a0, 28(sp)
	sb	a1, 29(sp)
	sb	a2, 30(sp)
	sb	a3, 31(sp)
	lbu	a0, 16(sp)
	lbu	a1, 13(sp)
	lbu	a2, 10(sp)
	lbu	a3, 23(sp)
	sb	a0, 32(sp)
	sb	a1, 33(sp)
	sb	a2, 34(sp)
	sb	a3, 35(sp)
	lbu	a0, 20(sp)
	lbu	a1, 17(sp)
	lbu	a2, 14(sp)
	lbu	a3, 11(sp)
	sb	a0, 36(sp)
	sb	a1, 37(sp)
	sb	a2, 38(sp)
	sb	a3, 39(sp)
	addi	a0, sp, 8
	li	a1, 16
	addi	a2, sp, 24
	li	a3, 16
	addi	s0, sp, 8
	call	_copy
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	lbu	a0, 0(s0)
	add	a0, a0, s1
	lbu	a0, 0(a0)
	sb	a0, 0(s0)
	addi	s0, s0, 1
	bne	s0, s11, .LBB1_8
# %bb.9:
	lw	a0, 0(s9)
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
	lw	a1, 4(s9)
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
	lw	a0, 8(s9)
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
	lw	a1, 12(s9)
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
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        # @mult_row_column
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
	sd	s10, 0(sp)                      # 8-byte Folded Spill
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
	mv	s1, a1
	lbu	a1, 0(a1)
	mv	s2, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 0(s1)
	mv	s3, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	a1, 0(s1)
	mv	s4, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 1(s1)
	mv	s5, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 1(s1)
	mv	s6, a0
	mv	a0, a1
	call	_double_byte
	lbu	s9, 1(s1)
	lbu	a1, 2(s1)
	mv	s7, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 2(s1)
	mv	s8, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	s10, 2(s1)
	lbu	a1, 3(s1)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 3(s1)
	xor	a2, s4, s5
	xor	a2, a2, s3
	xor	a3, s6, s7
	xor	a2, a2, a3
	xor	a3, s9, s8
	xor	a3, a3, s0
	xor	a2, a2, a3
	xor	a0, s10, a0
	xor	a0, a0, a1
	xor	a0, a0, a2
	sb	a0, 0(s2)
	lbu	a0, 0(s1)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	s9, 0(s1)
	lbu	a1, 1(s1)
	mv	s3, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 1(s1)
	mv	s4, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	a1, 1(s1)
	mv	s5, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 2(s1)
	mv	s6, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 2(s1)
	mv	s7, a0
	mv	a0, a1
	call	_double_byte
	lbu	s10, 2(s1)
	lbu	a1, 3(s1)
	mv	s8, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 3(s1)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	a1, 3(s1)
	xor	a2, s9, s3
	xor	a3, s4, s5
	xor	a2, a2, a3
	xor	a3, s6, s7
	xor	a3, a3, s8
	xor	a2, a2, a3
	xor	a3, s10, s0
	xor	a0, a0, a3
	xor	a0, a0, a1
	xor	a0, a0, a2
	sb	a0, 1(s2)
	lbu	a0, 0(s1)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 0(s1)
	mv	s3, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	s9, 0(s1)
	lbu	a1, 1(s1)
	mv	s4, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	s10, 1(s1)
	lbu	a1, 2(s1)
	mv	s5, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 2(s1)
	mv	s6, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	a1, 2(s1)
	mv	s7, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 3(s1)
	mv	s8, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 3(s1)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	lbu	a1, 3(s1)
	xor	a2, s4, s9
	xor	a2, a2, s3
	xor	a3, s5, s10
	xor	a2, a2, a3
	xor	a3, s6, s7
	xor	a3, a3, s8
	xor	a2, a2, a3
	xor	a0, a0, s0
	xor	a0, a0, a1
	xor	a0, a0, a2
	sb	a0, 2(s2)
	lbu	a0, 0(s1)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 0(s1)
	mv	s3, a0
	mv	a0, a1
	call	_double_byte
	lbu	s8, 0(s1)
	lbu	a1, 1(s1)
	mv	s4, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 1(s1)
	mv	s5, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	s9, 1(s1)
	lbu	a1, 2(s1)
	mv	s6, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	s10, 2(s1)
	lbu	a1, 3(s1)
	mv	s7, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	call	_double_byte
	lbu	a1, 3(s1)
	mv	s0, a0
	mv	a0, a1
	call	_double_byte
	call	_double_byte
	lbu	a1, 3(s1)
	mv	s1, a0
	mv	a0, a1
	call	_double_byte
	xor	a1, s4, s8
	xor	a1, a1, s3
	xor	a2, s5, s6
	xor	a1, a1, a2
	xor	a2, s9, s7
	xor	a2, a2, s10
	xor	a1, a1, a2
	xor	s0, s0, s1
	xor	a0, a0, s0
	xor	a0, a0, a1
	sb	a0, 3(s2)
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
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end2:
	.size	mult_row_column, .Lfunc_end2-mult_row_column
	.cfi_endproc
                                        # -- End function
	.type	inv_sbox,@object                # @inv_sbox
	.section	.rodata,"a",@progbits
inv_sbox:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
