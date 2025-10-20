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
	mv	s2, a0
	li	a0, 0
	beqz	s2, .LBB1_6
# %bb.1:
	mv	s0, a2
	mv	a2, a1
	beqz	a1, .LBB1_6
# %bb.2:
	beqz	s0, .LBB1_6
# %bb.3:
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 24
	li	a1, 16
	li	a3, 16
	call	_copy
	lw	a0, 160(s0)
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
	lw	a1, 164(s0)
	xor	a0, a0, a3
	sb	a0, 27(sp)
	lbu	a0, 28(sp)
	srli	a2, a1, 24
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
	lw	a0, 168(s0)
	xor	a1, a1, a3
	sb	a1, 31(sp)
	lbu	a1, 32(sp)
	srli	a2, a0, 24
	addi	s5, sp, 32
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
	lw	a1, 172(s0)
	xor	a0, a0, a3
	sb	a0, 35(sp)
	lbu	a0, 36(sp)
	srli	a2, a1, 24
	addi	s6, sp, 36
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
	addi	s7, sp, 44
	addi	s8, sp, 48
	addi	s9, sp, 52
	addi	s4, s0, 156
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	addi	s10, s0, 12
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(inv_sbox)
	addi	s3, a0, %pcrel_lo(.Lpcrel_hi0)
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	lbu	a0, 24(sp)
	lbu	a1, 37(sp)
	lbu	a2, 34(sp)
	lbu	a3, 31(sp)
	sb	a0, 40(sp)
	sb	a1, 41(sp)
	sb	a2, 42(sp)
	sb	a3, 43(sp)
	lbu	a0, 28(sp)
	lbu	a1, 25(sp)
	lbu	a2, 38(sp)
	lbu	a3, 35(sp)
	sb	a0, 44(sp)
	sb	a1, 45(sp)
	sb	a2, 46(sp)
	sb	a3, 47(sp)
	lbu	a0, 32(sp)
	lbu	a1, 29(sp)
	lbu	a2, 26(sp)
	lbu	a3, 39(sp)
	sb	a0, 48(sp)
	sb	a1, 49(sp)
	sb	a2, 50(sp)
	sb	a3, 51(sp)
	lbu	a0, 36(sp)
	lbu	a1, 33(sp)
	lbu	a2, 30(sp)
	lbu	a3, 27(sp)
	sb	a0, 52(sp)
	sb	a1, 53(sp)
	sb	a2, 54(sp)
	sb	a3, 55(sp)
	addi	a0, sp, 24
	li	a1, 16
	addi	a2, sp, 40
	li	a3, 16
	call	_copy
	lbu	a0, 24(sp)
	lbu	a1, 25(sp)
	add	a0, a0, s3
	lbu	a6, 0(a0)
	lbu	a0, 26(sp)
	add	a1, a1, s3
	lbu	a7, 0(a1)
	lbu	a1, 27(sp)
	add	a0, a0, s3
	lbu	t1, 0(a0)
	lbu	a0, 28(sp)
	add	a1, a1, s3
	lbu	t0, 0(a1)
	lbu	a1, 29(sp)
	add	a0, a0, s3
	lbu	t2, 0(a0)
	lbu	a0, 30(sp)
	add	a1, a1, s3
	lbu	t3, 0(a1)
	lbu	a1, 31(sp)
	add	a0, a0, s3
	lbu	t5, 0(a0)
	lbu	a0, 32(sp)
	add	a1, a1, s3
	lbu	t4, 0(a1)
	lbu	a1, 33(sp)
	add	a0, a0, s3
	lbu	t6, 0(a0)
	lbu	a0, 34(sp)
	add	a1, a1, s3
	lbu	s11, 0(a1)
	lbu	a1, 35(sp)
	add	a0, a0, s3
	lbu	a5, 0(a0)
	lbu	a0, 36(sp)
	add	a1, a1, s3
	lbu	ra, 0(a1)
	lbu	a1, 37(sp)
	add	a0, a0, s3
	lbu	a0, 0(a0)
	lbu	a2, 38(sp)
	add	a1, a1, s3
	lbu	a1, 0(a1)
	lbu	a3, 39(sp)
	add	a2, a2, s3
	lw	s2, -12(s4)
	lbu	a2, 0(a2)
	add	a3, a3, s3
	lbu	a3, 0(a3)
	srli	a4, s2, 24
	xor	a4, a6, a4
	sb	a4, 24(sp)
	srli	a4, s2, 16
	xor	a4, a7, a4
	sb	a4, 25(sp)
	srli	a4, s2, 8
	xor	a4, t1, a4
	lw	s0, -8(s4)
	sb	a4, 26(sp)
	xor	a4, t0, s2
	sb	a4, 27(sp)
	srli	a4, s0, 24
	xor	a4, t2, a4
	sb	a4, 28(sp)
	srli	a4, s0, 16
	xor	a4, t3, a4
	sb	a4, 29(sp)
	srli	a4, s0, 8
	xor	a4, t5, a4
	lw	s1, -4(s4)
	sb	a4, 30(sp)
	xor	a4, t4, s0
	sb	a4, 31(sp)
	srli	a4, s1, 24
	xor	a4, t6, a4
	sb	a4, 32(sp)
	srli	a4, s1, 16
	xor	a4, s11, a4
	sb	a4, 33(sp)
	srli	a4, s1, 8
	xor	a4, a4, a5
	lw	a5, 0(s4)
	sb	a4, 34(sp)
	xor	a4, ra, s1
	sb	a4, 35(sp)
	srli	a4, a5, 24
	xor	a0, a0, a4
	sb	a0, 36(sp)
	srli	a0, a5, 16
	xor	a0, a0, a1
	sb	a0, 37(sp)
	srli	a0, a5, 8
	xor	a0, a0, a2
	sb	a0, 38(sp)
	xor	a3, a3, a5
	sb	a3, 39(sp)
	addi	a0, sp, 40
	addi	a1, sp, 24
	call	mult_row_column
	mv	a0, s7
	addi	a1, sp, 28
	call	mult_row_column
	mv	a0, s8
	mv	a1, s5
	call	mult_row_column
	mv	a0, s9
	mv	a1, s6
	call	mult_row_column
	addi	a0, sp, 24
	li	a1, 16
	addi	a2, sp, 40
	li	a3, 16
	call	_copy
	addi	s4, s4, -16
	bne	s4, s10, .LBB1_4
# %bb.5:
	lbu	a0, 24(sp)
	lbu	a1, 37(sp)
	lbu	a2, 34(sp)
	lbu	a3, 31(sp)
	sb	a0, 40(sp)
	sb	a1, 41(sp)
	sb	a2, 42(sp)
	sb	a3, 43(sp)
	lbu	a0, 28(sp)
	lbu	a1, 25(sp)
	lbu	a2, 38(sp)
	lbu	a3, 35(sp)
	sb	a0, 44(sp)
	sb	a1, 45(sp)
	sb	a2, 46(sp)
	sb	a3, 47(sp)
	lbu	a0, 32(sp)
	lbu	a1, 29(sp)
	lbu	a2, 26(sp)
	lbu	a3, 39(sp)
	sb	a0, 48(sp)
	sb	a1, 49(sp)
	sb	a2, 50(sp)
	sb	a3, 51(sp)
	lbu	a0, 36(sp)
	lbu	a1, 33(sp)
	lbu	a2, 30(sp)
	lbu	a3, 27(sp)
	sb	a0, 52(sp)
	sb	a1, 53(sp)
	sb	a2, 54(sp)
	sb	a3, 55(sp)
	addi	a0, sp, 24
	li	a1, 16
	addi	a2, sp, 40
	li	a3, 16
	call	_copy
	lbu	a0, 24(sp)
	lbu	a1, 25(sp)
	add	a0, a0, s3
	lbu	a6, 0(a0)
	lbu	a0, 26(sp)
	add	a1, a1, s3
	lbu	a7, 0(a1)
	lbu	a1, 27(sp)
	add	a0, a0, s3
	lbu	t1, 0(a0)
	lbu	a0, 28(sp)
	add	a1, a1, s3
	lbu	t0, 0(a1)
	lbu	a1, 29(sp)
	add	a0, a0, s3
	lbu	t2, 0(a0)
	lbu	a0, 30(sp)
	add	a1, a1, s3
	lbu	t3, 0(a1)
	lbu	a1, 31(sp)
	add	a0, a0, s3
	lbu	t5, 0(a0)
	lbu	a2, 32(sp)
	add	a1, a1, s3
	lbu	t4, 0(a1)
	lbu	a3, 33(sp)
	add	a2, a2, s3
	lbu	t6, 0(a2)
	lbu	a4, 34(sp)
	add	a3, a3, s3
	lbu	s2, 0(a3)
	lbu	a3, 35(sp)
	add	a4, a4, s3
	lbu	s5, 0(a4)
	lbu	a5, 36(sp)
	add	a3, a3, s3
	lbu	s4, 0(a3)
	lbu	s1, 37(sp)
	add	a5, a5, s3
	lbu	a5, 0(a5)
	lbu	s0, 38(sp)
	add	s1, s1, s3
	lbu	s1, 0(s1)
	lbu	a0, 39(sp)
	add	s0, s0, s3
	ld	a4, 8(sp)                       # 8-byte Folded Reload
	lw	a2, 0(a4)
	lbu	s0, 0(s0)
	add	a0, a0, s3
	lbu	a0, 0(a0)
	srli	a1, a2, 24
	xor	a1, a6, a1
	sb	a1, 24(sp)
	srli	a1, a2, 16
	xor	a1, a7, a1
	sb	a1, 25(sp)
	srli	a1, a2, 8
	xor	a1, t1, a1
	lw	a3, 4(a4)
	sb	a1, 26(sp)
	xor	a1, t0, a2
	sb	a1, 27(sp)
	srli	a1, a3, 24
	xor	a1, t2, a1
	sb	a1, 28(sp)
	srli	a1, a3, 16
	xor	a1, t3, a1
	sb	a1, 29(sp)
	srli	a1, a3, 8
	xor	a1, t5, a1
	lw	a2, 8(a4)
	sb	a1, 30(sp)
	xor	a1, t4, a3
	sb	a1, 31(sp)
	srli	a1, a2, 24
	xor	a1, t6, a1
	sb	a1, 32(sp)
	srli	a1, a2, 16
	xor	a1, s2, a1
	sb	a1, 33(sp)
	srli	a1, a2, 8
	xor	a1, s5, a1
	lw	a3, 12(a4)
	sb	a1, 34(sp)
	xor	a1, s4, a2
	sb	a1, 35(sp)
	srli	a1, a3, 24
	xor	a1, a1, a5
	sb	a1, 36(sp)
	srli	a1, a3, 16
	xor	a1, a1, s1
	sb	a1, 37(sp)
	srli	a1, a3, 8
	xor	a1, a1, s0
	sb	a1, 38(sp)
	xor	a0, a0, a3
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
