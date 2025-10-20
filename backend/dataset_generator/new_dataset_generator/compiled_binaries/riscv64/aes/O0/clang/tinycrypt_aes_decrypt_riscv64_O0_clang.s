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
	call	tc_aes128_set_encrypt_key
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
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
	sd	a2, -48(s0)
	ld	a0, -32(s0)
	bnez	a0, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB1_13
.LBB1_2:
	ld	a0, -40(s0)
	bnez	a0, .LBB1_4
	j	.LBB1_3
.LBB1_3:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB1_13
.LBB1_4:
	ld	a0, -48(s0)
	bnez	a0, .LBB1_6
	j	.LBB1_5
.LBB1_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB1_13
.LBB1_6:
	j	.LBB1_7
.LBB1_7:
	j	.LBB1_8
.LBB1_8:
	ld	a2, -40(s0)
	addi	a0, s0, -64
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	li	a3, 16
	mv	a1, a3
	call	_copy
                                        # kill: def $x11 killed $x10
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -48(s0)
	addi	a1, a1, 160
	call	add_round_key
	li	a0, 9
	sw	a0, -68(s0)
	j	.LBB1_9
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -68(s0)
	beqz	a0, .LBB1_12
	j	.LBB1_10
.LBB1_10:                               #   in Loop: Header=BB1_9 Depth=1
	addi	a0, s0, -64
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	call	inv_shift_rows
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	call	inv_sub_bytes
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	ld	a1, -48(s0)
	lw	a2, -68(s0)
	slli	a2, a2, 34
	srli	a2, a2, 30
	add	a1, a1, a2
	call	add_round_key
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	call	inv_mix_columns
	j	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=1
	lw	a0, -68(s0)
	addiw	a0, a0, -1
	sw	a0, -68(s0)
	j	.LBB1_9
.LBB1_12:
	addi	a0, s0, -64
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	call	inv_shift_rows
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	call	inv_sub_bytes
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	ld	a1, -48(s0)
	call	add_round_key
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a0, -32(s0)
	li	a3, 16
	sd	a3, -104(s0)                    # 8-byte Folded Spill
	mv	a1, a3
	call	_copy
	ld	a2, -104(s0)                    # 8-byte Folded Reload
                                        # kill: def $x11 killed $x10
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	li	a1, 0
	call	_set
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB1_13
.LBB1_13:
	lw	a0, -20(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end1:
	.size	tc_aes_decrypt, .Lfunc_end1-tc_aes_decrypt
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function add_round_key
	.type	add_round_key,@function
add_round_key:                          # @add_round_key
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
	ld	a0, -32(s0)
	lbu	a2, 3(a0)
	ld	a1, -24(s0)
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	ld	a0, -32(s0)
	lhu	a2, 2(a0)
	ld	a1, -24(s0)
	lbu	a0, 1(a1)
	xor	a0, a0, a2
	sb	a0, 1(a1)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	srli	a2, a0, 8
	ld	a1, -24(s0)
	lbu	a0, 2(a1)
	xor	a0, a0, a2
	sb	a0, 2(a1)
	ld	a0, -32(s0)
	lw	a2, 0(a0)
	ld	a1, -24(s0)
	lbu	a0, 3(a1)
	xor	a0, a0, a2
	sb	a0, 3(a1)
	ld	a0, -32(s0)
	lbu	a2, 7(a0)
	ld	a1, -24(s0)
	lbu	a0, 4(a1)
	xor	a0, a0, a2
	sb	a0, 4(a1)
	ld	a0, -32(s0)
	lhu	a2, 6(a0)
	ld	a1, -24(s0)
	lbu	a0, 5(a1)
	xor	a0, a0, a2
	sb	a0, 5(a1)
	ld	a0, -32(s0)
	lw	a0, 4(a0)
	srli	a2, a0, 8
	ld	a1, -24(s0)
	lbu	a0, 6(a1)
	xor	a0, a0, a2
	sb	a0, 6(a1)
	ld	a0, -32(s0)
	lw	a2, 4(a0)
	ld	a1, -24(s0)
	lbu	a0, 7(a1)
	xor	a0, a0, a2
	sb	a0, 7(a1)
	ld	a0, -32(s0)
	lbu	a2, 11(a0)
	ld	a1, -24(s0)
	lbu	a0, 8(a1)
	xor	a0, a0, a2
	sb	a0, 8(a1)
	ld	a0, -32(s0)
	lhu	a2, 10(a0)
	ld	a1, -24(s0)
	lbu	a0, 9(a1)
	xor	a0, a0, a2
	sb	a0, 9(a1)
	ld	a0, -32(s0)
	lw	a0, 8(a0)
	srli	a2, a0, 8
	ld	a1, -24(s0)
	lbu	a0, 10(a1)
	xor	a0, a0, a2
	sb	a0, 10(a1)
	ld	a0, -32(s0)
	lw	a2, 8(a0)
	ld	a1, -24(s0)
	lbu	a0, 11(a1)
	xor	a0, a0, a2
	sb	a0, 11(a1)
	ld	a0, -32(s0)
	lbu	a2, 15(a0)
	ld	a1, -24(s0)
	lbu	a0, 12(a1)
	xor	a0, a0, a2
	sb	a0, 12(a1)
	ld	a0, -32(s0)
	lhu	a2, 14(a0)
	ld	a1, -24(s0)
	lbu	a0, 13(a1)
	xor	a0, a0, a2
	sb	a0, 13(a1)
	ld	a0, -32(s0)
	lw	a0, 12(a0)
	srli	a2, a0, 8
	ld	a1, -24(s0)
	lbu	a0, 14(a1)
	xor	a0, a0, a2
	sb	a0, 14(a1)
	ld	a0, -32(s0)
	lw	a2, 12(a0)
	ld	a1, -24(s0)
	lbu	a0, 15(a1)
	xor	a0, a0, a2
	sb	a0, 15(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	add_round_key, .Lfunc_end2-add_round_key
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function inv_shift_rows
	.type	inv_shift_rows,@function
inv_shift_rows:                         # @inv_shift_rows
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
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	sb	a0, -40(s0)
	ld	a0, -24(s0)
	lbu	a0, 13(a0)
	sb	a0, -39(s0)
	ld	a0, -24(s0)
	lbu	a0, 10(a0)
	sb	a0, -38(s0)
	ld	a0, -24(s0)
	lbu	a0, 7(a0)
	sb	a0, -37(s0)
	ld	a0, -24(s0)
	lbu	a0, 4(a0)
	sb	a0, -36(s0)
	ld	a0, -24(s0)
	lbu	a0, 1(a0)
	sb	a0, -35(s0)
	ld	a0, -24(s0)
	lbu	a0, 14(a0)
	sb	a0, -34(s0)
	ld	a0, -24(s0)
	lbu	a0, 11(a0)
	sb	a0, -33(s0)
	ld	a0, -24(s0)
	lbu	a0, 8(a0)
	sb	a0, -32(s0)
	ld	a0, -24(s0)
	lbu	a0, 5(a0)
	sb	a0, -31(s0)
	ld	a0, -24(s0)
	lbu	a0, 2(a0)
	sb	a0, -30(s0)
	ld	a0, -24(s0)
	lbu	a0, 15(a0)
	sb	a0, -29(s0)
	ld	a0, -24(s0)
	lbu	a0, 12(a0)
	sb	a0, -28(s0)
	ld	a0, -24(s0)
	lbu	a0, 9(a0)
	sb	a0, -27(s0)
	ld	a0, -24(s0)
	lbu	a0, 6(a0)
	sb	a0, -26(s0)
	ld	a0, -24(s0)
	lbu	a0, 3(a0)
	sb	a0, -25(s0)
	ld	a0, -24(s0)
	addi	a2, s0, -40
	li	a3, 16
	mv	a1, a3
	call	_copy
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	inv_shift_rows, .Lfunc_end3-inv_shift_rows
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function inv_sub_bytes
	.type	inv_sub_bytes,@function
inv_sub_bytes:                          # @inv_sub_bytes
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
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -28(s0)
	li	a0, 15
	bltu	a0, a1, .LBB4_4
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	ld	a0, -24(s0)
	lwu	a1, -28(s0)
	add	a1, a1, a0
	lbu	a2, 0(a1)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(inv_sbox)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	sb	a0, 0(a1)
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB4_1
.LBB4_4:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	inv_sub_bytes, .Lfunc_end4-inv_sub_bytes
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function inv_mix_columns
	.type	inv_mix_columns,@function
inv_mix_columns:                        # @inv_mix_columns
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
	ld	a1, -24(s0)
	addi	a0, s0, -40
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	call	mult_row_column
	addi	a0, s0, -36
	ld	a1, -24(s0)
	addi	a1, a1, 4
	call	mult_row_column
	addi	a0, s0, -32
	ld	a1, -24(s0)
	addi	a1, a1, 8
	call	mult_row_column
	addi	a0, s0, -28
	ld	a1, -24(s0)
	addi	a1, a1, 12
	call	mult_row_column
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a0, -24(s0)
	li	a3, 16
	mv	a1, a3
	call	_copy
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	inv_mix_columns, .Lfunc_end5-inv_mix_columns
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        # @mult_row_column
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -256(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	call	_double_byte
	mv	a1, a0
	ld	a0, -256(s0)                    # 8-byte Folded Reload
	xor	a0, a0, a1
	sd	a0, -248(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	mv	a1, a0
	ld	a0, -248(s0)                    # 8-byte Folded Reload
	xor	a0, a0, a1
	sd	a0, -240(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 1(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -232(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 1(a0)
	call	_double_byte
	ld	a1, -240(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -232(s0)                    # 8-byte Folded Reload
	xor	a2, a2, a0
	ld	a0, -32(s0)
	lbu	a3, 1(a0)
	xor	a2, a2, a3
	xor	a1, a1, a2
	sd	a1, -224(s0)                    # 8-byte Folded Spill
	lbu	a0, 2(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -216(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 2(a0)
	call	_double_byte
	call	_double_byte
	ld	a1, -224(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -216(s0)                    # 8-byte Folded Reload
	xor	a2, a2, a0
	ld	a0, -32(s0)
	lbu	a3, 2(a0)
	xor	a2, a2, a3
	xor	a1, a1, a2
	sd	a1, -208(s0)                    # 8-byte Folded Spill
	lbu	a0, 3(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	mv	a1, a0
	ld	a0, -208(s0)                    # 8-byte Folded Reload
	ld	a2, -32(s0)
	lbu	a2, 3(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 0(a1)
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	mv	a1, a0
	ld	a0, -32(s0)
	lbu	a2, 0(a0)
	xor	a1, a1, a2
	sd	a1, -184(s0)                    # 8-byte Folded Spill
	lbu	a0, 1(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -200(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 1(a0)
	call	_double_byte
	call	_double_byte
	mv	a1, a0
	ld	a0, -200(s0)                    # 8-byte Folded Reload
	xor	a0, a0, a1
	sd	a0, -192(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 1(a0)
	call	_double_byte
	ld	a1, -192(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -184(s0)                    # 8-byte Folded Reload
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -176(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 2(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -168(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 2(a0)
	call	_double_byte
	ld	a1, -176(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -168(s0)                    # 8-byte Folded Reload
	xor	a2, a2, a0
	ld	a0, -32(s0)
	lbu	a3, 2(a0)
	xor	a2, a2, a3
	xor	a1, a1, a2
	sd	a1, -152(s0)                    # 8-byte Folded Spill
	lbu	a0, 3(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -160(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 3(a0)
	call	_double_byte
	call	_double_byte
	ld	a1, -160(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -152(s0)                    # 8-byte Folded Reload
	xor	a1, a1, a2
	ld	a2, -32(s0)
	lbu	a2, 3(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 1(a1)
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -144(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	call	_double_byte
	mv	a1, a0
	ld	a0, -144(s0)                    # 8-byte Folded Reload
	xor	a1, a1, a0
	ld	a0, -32(s0)
	lbu	a2, 0(a0)
	xor	a1, a1, a2
	sd	a1, -136(s0)                    # 8-byte Folded Spill
	lbu	a0, 1(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	ld	a1, -136(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -32(s0)
	lbu	a3, 1(a0)
	xor	a2, a2, a3
	xor	a1, a1, a2
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	lbu	a0, 2(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -128(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 2(a0)
	call	_double_byte
	call	_double_byte
	mv	a1, a0
	ld	a0, -128(s0)                    # 8-byte Folded Reload
	xor	a0, a0, a1
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 2(a0)
	call	_double_byte
	ld	a1, -120(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 3(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 3(a0)
	call	_double_byte
	ld	a1, -104(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	xor	a1, a1, a2
	ld	a2, -32(s0)
	lbu	a2, 3(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 2(a1)
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	mv	a1, a0
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	xor	a1, a1, a0
	ld	a0, -32(s0)
	lbu	a2, 0(a0)
	xor	a1, a1, a2
	sd	a1, -80(s0)                     # 8-byte Folded Spill
	lbu	a0, 1(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 1(a0)
	call	_double_byte
	call	_double_byte
	ld	a1, -80(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	xor	a2, a2, a0
	ld	a0, -32(s0)
	lbu	a3, 1(a0)
	xor	a2, a2, a3
	xor	a1, a1, a2
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	lbu	a0, 2(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -32(s0)
	lbu	a3, 2(a0)
	xor	a2, a2, a3
	xor	a1, a1, a2
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	lbu	a0, 3(a0)
	call	_double_byte
	call	_double_byte
	call	_double_byte
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 3(a0)
	call	_double_byte
	call	_double_byte
	mv	a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a1
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 3(a0)
	call	_double_byte
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 3(a1)
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.Lfunc_end6:
	.size	mult_row_column, .Lfunc_end6-mult_row_column
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
	.addrsig_sym tc_aes128_set_encrypt_key
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym inv_shift_rows
	.addrsig_sym inv_sub_bytes
	.addrsig_sym inv_mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym inv_sbox
