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
	lui	a0, 221184
	sw	a0, -48(s0)
	addiw	a0, a0, 1
	slli	a0, a0, 31
	sd	a0, -56(s0)
	lui	a0, 131072
	slli	a1, a0, 33
	add	a0, a0, a1
	sd	a0, -64(s0)
	lui	a0, 32768
	slli	a1, a0, 33
	add	a0, a0, a1
	sd	a0, -72(s0)
	lui	a0, 8192
	slli	a1, a0, 33
	add	a0, a0, a1
	sd	a0, -80(s0)
	li	a0, 1
	slli	a0, a0, 56
	sd	a0, -88(s0)
	ld	a0, -32(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_16
.LBB0_2:
	ld	a0, -40(s0)
	bnez	a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_16
.LBB0_4:
	j	.LBB0_5
.LBB0_5:
	li	a0, 0
	sw	a0, -92(s0)
	j	.LBB0_6
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -92(s0)
	li	a0, 3
	bltu	a0, a1, .LBB0_9
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a1, -40(s0)
	lwu	a0, -92(s0)
	slli	a2, a0, 2
	slli	a0, a2, 32
	srli	a0, a0, 32
	add	a0, a0, a1
	lbu	a0, 0(a0)
	slliw	a0, a0, 24
	addi	a3, a2, 1
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a3, a3, a1
	lbu	a3, 0(a3)
	slliw	a3, a3, 16
	or	a0, a0, a3
	addi	a3, a2, 2
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a3, a3, a1
	lbu	a3, 0(a3)
	slliw	a3, a3, 8
	or	a0, a0, a3
	addi	a3, a2, 3
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a1, a1, a3
	lbu	a1, 0(a1)
	or	a0, a0, a1
	ld	a1, -32(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	lw	a0, -92(s0)
	addiw	a0, a0, 1
	sw	a0, -92(s0)
	j	.LBB0_6
.LBB0_9:
	j	.LBB0_10
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -92(s0)
	li	a0, 43
	bltu	a0, a1, .LBB0_15
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	ld	a0, -32(s0)
	lw	a1, -92(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 30
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -96(s0)
	lbu	a0, -92(s0)
	andi	a0, a0, 3
	bnez	a0, .LBB0_13
	j	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, -96(s0)
	call	rotword
	srliw	a1, a0, 24
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(sbox)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	sd	a0, -112(s0)                    # 8-byte Folded Spill
	add	a0, a0, a1
	lbu	a0, 0(a0)
	slliw	a0, a0, 24
	sd	a0, -128(s0)                    # 8-byte Folded Spill
	lw	a0, -96(s0)
	call	rotword
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -128(s0)                    # 8-byte Folded Reload
	slli	a2, a2, 40
	srli	a2, a2, 56
	add	a1, a1, a2
	lbu	a1, 0(a1)
	slliw	a1, a1, 16
	or	a0, a0, a1
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	lw	a0, -96(s0)
	call	rotword
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -120(s0)                    # 8-byte Folded Reload
	slli	a2, a2, 48
	srli	a2, a2, 56
	add	a1, a1, a2
	lbu	a1, 0(a1)
	slliw	a1, a1, 8
	or	a0, a0, a1
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	lw	a0, -96(s0)
	call	rotword
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	andi	a2, a2, 255
	add	a1, a1, a2
	lbu	a1, 0(a1)
	or	a0, a0, a1
	lwu	a1, -92(s0)
	andi	a2, a1, -4
	addi	a1, s0, -88
	add	a1, a1, a2
	lw	a1, 0(a1)
	xor	a0, a0, a1
	sw	a0, -96(s0)
	j	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	ld	a1, -32(s0)
	lwu	a2, -92(s0)
	addiw	a0, a2, -4
	slli	a0, a0, 32
	srli	a0, a0, 30
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a3, -96(s0)
	xor	a0, a0, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, -92(s0)
	addiw	a0, a0, 1
	sw	a0, -92(s0)
	j	.LBB0_10
.LBB0_15:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB0_16
.LBB0_16:
	lw	a0, -20(s0)
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end0:
	.size	tc_aes128_set_encrypt_key, .Lfunc_end0-tc_aes128_set_encrypt_key
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function rotword
	.type	rotword,@function
rotword:                                # @rotword
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
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	srliw	a1, a0, 24
	slliw	a0, a0, 8
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	rotword, .Lfunc_end1-rotword
	.cfi_endproc
                                        # -- End function
	.globl	tc_aes_encrypt                  # -- Begin function tc_aes_encrypt
	.p2align	1
	.type	tc_aes_encrypt,@function
tc_aes_encrypt:                         # @tc_aes_encrypt
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
	bnez	a0, .LBB2_2
	j	.LBB2_1
.LBB2_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_13
.LBB2_2:
	ld	a0, -40(s0)
	bnez	a0, .LBB2_4
	j	.LBB2_3
.LBB2_3:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_13
.LBB2_4:
	ld	a0, -48(s0)
	bnez	a0, .LBB2_6
	j	.LBB2_5
.LBB2_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_13
.LBB2_6:
	j	.LBB2_7
.LBB2_7:
	j	.LBB2_8
.LBB2_8:
	ld	a2, -40(s0)
	addi	a0, s0, -64
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	li	a3, 16
	mv	a1, a3
	call	_copy
                                        # kill: def $x11 killed $x10
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -48(s0)
	call	add_round_key
	li	a0, 0
	sw	a0, -68(s0)
	j	.LBB2_9
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -68(s0)
	li	a0, 8
	bltu	a0, a1, .LBB2_12
	j	.LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_9 Depth=1
	addi	a0, s0, -64
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	call	sub_bytes
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	call	shift_rows
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	call	mix_columns
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	ld	a1, -48(s0)
	lw	a2, -68(s0)
	slliw	a2, a2, 2
	addiw	a2, a2, 4
	slli	a2, a2, 32
	srli	a2, a2, 30
	add	a1, a1, a2
	call	add_round_key
	j	.LBB2_11
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=1
	lw	a0, -68(s0)
	addiw	a0, a0, 1
	sw	a0, -68(s0)
	j	.LBB2_9
.LBB2_12:
	addi	a0, s0, -64
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	call	sub_bytes
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	call	shift_rows
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	ld	a1, -48(s0)
	lw	a2, -68(s0)
	slliw	a2, a2, 2
	addiw	a2, a2, 4
	slli	a2, a2, 32
	srli	a2, a2, 30
	add	a1, a1, a2
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
	j	.LBB2_13
.LBB2_13:
	lw	a0, -20(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end2:
	.size	tc_aes_encrypt, .Lfunc_end2-tc_aes_encrypt
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
.Lfunc_end3:
	.size	add_round_key, .Lfunc_end3-add_round_key
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function sub_bytes
	.type	sub_bytes,@function
sub_bytes:                              # @sub_bytes
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
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(sbox)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1)
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
	.size	sub_bytes, .Lfunc_end4-sub_bytes
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function shift_rows
	.type	shift_rows,@function
shift_rows:                             # @shift_rows
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
	lbu	a0, 5(a0)
	sb	a0, -39(s0)
	ld	a0, -24(s0)
	lbu	a0, 10(a0)
	sb	a0, -38(s0)
	ld	a0, -24(s0)
	lbu	a0, 15(a0)
	sb	a0, -37(s0)
	ld	a0, -24(s0)
	lbu	a0, 4(a0)
	sb	a0, -36(s0)
	ld	a0, -24(s0)
	lbu	a0, 9(a0)
	sb	a0, -35(s0)
	ld	a0, -24(s0)
	lbu	a0, 14(a0)
	sb	a0, -34(s0)
	ld	a0, -24(s0)
	lbu	a0, 3(a0)
	sb	a0, -33(s0)
	ld	a0, -24(s0)
	lbu	a0, 8(a0)
	sb	a0, -32(s0)
	ld	a0, -24(s0)
	lbu	a0, 13(a0)
	sb	a0, -31(s0)
	ld	a0, -24(s0)
	lbu	a0, 2(a0)
	sb	a0, -30(s0)
	ld	a0, -24(s0)
	lbu	a0, 7(a0)
	sb	a0, -29(s0)
	ld	a0, -24(s0)
	lbu	a0, 12(a0)
	sb	a0, -28(s0)
	ld	a0, -24(s0)
	lbu	a0, 1(a0)
	sb	a0, -27(s0)
	ld	a0, -24(s0)
	lbu	a0, 6(a0)
	sb	a0, -26(s0)
	ld	a0, -24(s0)
	lbu	a0, 11(a0)
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
.Lfunc_end5:
	.size	shift_rows, .Lfunc_end5-shift_rows
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function mix_columns
	.type	mix_columns,@function
mix_columns:                            # @mix_columns
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
.Lfunc_end6:
	.size	mix_columns, .Lfunc_end6-mix_columns
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function mult_row_column
	.type	mult_row_column,@function
mult_row_column:                        # @mult_row_column
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
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 1(a0)
	call	_double_byte
	mv	a2, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)
	lbu	a3, 1(a1)
	xor	a2, a2, a3
	xor	a0, a0, a2
	lbu	a2, 2(a1)
	xor	a0, a0, a2
	lbu	a1, 3(a1)
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 0(a1)
	ld	a0, -32(s0)
	lbu	a1, 0(a0)
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	lbu	a0, 1(a0)
	call	_double_byte
	mv	a1, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a1
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 2(a0)
	call	_double_byte
	mv	a2, a0
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)
	lbu	a3, 2(a1)
	xor	a2, a2, a3
	xor	a0, a0, a2
	lbu	a1, 3(a1)
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 1(a1)
	ld	a0, -32(s0)
	lbu	a1, 0(a0)
	lbu	a2, 1(a0)
	xor	a1, a1, a2
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	lbu	a0, 2(a0)
	call	_double_byte
	mv	a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a1
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	ld	a0, -32(s0)
	lbu	a0, 3(a0)
	call	_double_byte
	mv	a1, a0
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	ld	a2, -32(s0)
	lbu	a2, 3(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 2(a1)
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	call	_double_byte
	mv	a1, a0
	ld	a0, -32(s0)
	lbu	a2, 0(a0)
	xor	a1, a1, a2
	lbu	a2, 1(a0)
	xor	a1, a1, a2
	lbu	a2, 2(a0)
	xor	a1, a1, a2
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	lbu	a0, 3(a0)
	call	_double_byte
	mv	a1, a0
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sb	a0, 3(a1)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end7:
	.size	mult_row_column, .Lfunc_end7-mult_row_column
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
	.addrsig_sym rotword
	.addrsig_sym _copy
	.addrsig_sym add_round_key
	.addrsig_sym sub_bytes
	.addrsig_sym shift_rows
	.addrsig_sym mix_columns
	.addrsig_sym _set
	.addrsig_sym mult_row_column
	.addrsig_sym _double_byte
	.addrsig_sym sbox
