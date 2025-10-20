	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"tinycrypt_ecc_dh.c"
	.globl	uECC_make_key_with_d            # -- Begin function uECC_make_key_with_d
	.p2align	1
	.type	uECC_make_key_with_d,@function
uECC_make_key_with_d:                   # @uECC_make_key_with_d
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -176
	.cfi_def_cfa_offset 176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 176
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	ld	a0, -48(s0)
	sd	a0, -160(s0)                    # 8-byte Folded Spill
	lwu	a2, 24(a0)
	lwu	a1, 28(a0)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, -64(s0)
	lwu	a2, 16(a0)
	lwu	a1, 20(a0)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, -72(s0)
	lwu	a2, 8(a0)
	lwu	a1, 12(a0)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, -80(s0)
	lwu	a1, 0(a0)
	lwu	a0, 4(a0)
	slli	a0, a0, 32
	or	a0, a0, a1
	sd	a0, -88(s0)
	ld	a2, -56(s0)
	addi	a0, s0, -152
	addi	a1, s0, -88
	call	EccPoint_compute_public_key
	beqz	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	lh	a1, 2(a1)
	addi	a1, a1, 7
	srliw	a2, a1, 29
	add	a1, a1, a2
	srai	a1, a1, 3
	addi	a2, s0, -88
	sd	a2, -168(s0)                    # 8-byte Folded Spill
	call	uECC_vli_nativeToBytes
	ld	a0, -32(s0)
	ld	a1, -56(s0)
	lb	a1, 1(a1)
	addi	a2, s0, -152
	sd	a2, -176(s0)                    # 8-byte Folded Spill
	call	uECC_vli_nativeToBytes
	ld	a2, -176(s0)                    # 8-byte Folded Reload
	ld	a0, -32(s0)
	ld	a3, -56(s0)
	lb	a1, 1(a3)
	add	a0, a0, a1
	lb	a3, 0(a3)
	slli	a3, a3, 2
	add	a2, a2, a3
	call	uECC_vli_nativeToBytes
	ld	a0, -168(s0)                    # 8-byte Folded Reload
	li	a1, 0
	li	a2, 32
	call	_set_secure
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_2:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:
	lw	a0, -20(s0)
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function _set_secure
	.type	_set_secure,@function
_set_secure:                            # @_set_secure
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
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sb	a1, -25(s0)
	sw	a2, -32(s0)
	ld	a0, -24(s0)
	lwu	a2, -32(s0)
	lbu	a1, -25(s0)
	call	memset
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	#APP
	#NO_APP
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	_set_secure, .Lfunc_end1-_set_secure
	.cfi_endproc
                                        # -- End function
	.globl	uECC_make_key                   # -- Begin function uECC_make_key
	.p2align	1
	.type	uECC_make_key,@function
uECC_make_key:                          # @uECC_make_key
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
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	li	a0, 0
	sw	a0, -212(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -212(s0)
	li	a0, 63
	bltu	a0, a1, .LBB2_9
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	call	uECC_get_rng
	sd	a0, -224(s0)
	ld	a0, -224(s0)
	beqz	a0, .LBB2_4
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a2, -224(s0)
	addi	a0, s0, -112
	li	a1, 64
	jalr	a2
	bnez	a0, .LBB2_5
	j	.LBB2_4
.LBB2_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_10
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	ld	a0, -48(s0)
	addi	a2, a0, 36
	lh	a0, 2(a0)
	addiw	a0, a0, 31
	srliw	a1, a0, 27
	addw	a0, a0, a1
	slli	a0, a0, 51
	srai	a3, a0, 56
	addi	a0, s0, -144
	sd	a0, -232(s0)                    # 8-byte Folded Spill
	addi	a1, s0, -112
	call	uECC_vli_mmod
	ld	a1, -232(s0)                    # 8-byte Folded Reload
	ld	a2, -48(s0)
	addi	a0, s0, -208
	call	EccPoint_compute_public_key
	beqz	a0, .LBB2_7
	j	.LBB2_6
.LBB2_6:
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	lh	a1, 2(a1)
	addi	a1, a1, 7
	srliw	a2, a1, 29
	add	a1, a1, a2
	srai	a1, a1, 3
	addi	a2, s0, -144
	sd	a2, -240(s0)                    # 8-byte Folded Spill
	call	uECC_vli_nativeToBytes
	ld	a0, -32(s0)
	ld	a1, -48(s0)
	lb	a1, 1(a1)
	addi	a2, s0, -208
	sd	a2, -248(s0)                    # 8-byte Folded Spill
	call	uECC_vli_nativeToBytes
	ld	a2, -248(s0)                    # 8-byte Folded Reload
	ld	a0, -32(s0)
	ld	a3, -48(s0)
	lb	a1, 1(a3)
	add	a0, a0, a1
	lb	a3, 0(a3)
	slli	a3, a3, 2
	add	a2, a2, a3
	call	uECC_vli_nativeToBytes
	ld	a0, -240(s0)                    # 8-byte Folded Reload
	li	a1, 0
	li	a2, 32
	call	_set_secure
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB2_10
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	j	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -212(s0)
	addiw	a0, a0, 1
	sw	a0, -212(s0)
	j	.LBB2_1
.LBB2_9:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_10
.LBB2_10:
	lw	a0, -20(s0)
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.Lfunc_end2:
	.size	uECC_make_key, .Lfunc_end2-uECC_make_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_shared_secret              # -- Begin function uECC_shared_secret
	.p2align	1
	.type	uECC_shared_secret,@function
uECC_shared_secret:                     # @uECC_shared_secret
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -272
	.cfi_def_cfa_offset 272
	sd	ra, 264(sp)                     # 8-byte Folded Spill
	sd	s0, 256(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 272
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	addi	a0, s0, -144
	sd	a0, -232(s0)                    # 8-byte Folded Spill
	sd	a0, -192(s0)
	addi	a1, s0, -176
	sd	a1, -224(s0)                    # 8-byte Folded Spill
	sd	a1, -184(s0)
	li	a1, 0
	sd	a1, -200(s0)
	ld	a1, -48(s0)
	lbu	a1, 0(a1)
	sb	a1, -205(s0)
	ld	a1, -48(s0)
	lbu	a1, 1(a1)
	sb	a1, -206(s0)
	ld	a1, -32(s0)
	ld	a2, -48(s0)
	lh	a2, 2(a2)
	addi	a2, a2, 7
	srliw	a3, a2, 29
	add	a2, a2, a3
	srai	a2, a2, 3
	call	uECC_vli_bytesToNative
	ld	a1, -24(s0)
	lb	a2, -206(s0)
	addi	a0, s0, -112
	sd	a0, -240(s0)                    # 8-byte Folded Spill
	call	uECC_vli_bytesToNative
	ld	a0, -240(s0)                    # 8-byte Folded Reload
	lb	a1, -205(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	ld	a1, -24(s0)
	lb	a2, -206(s0)
	add	a1, a1, a2
	call	uECC_vli_bytesToNative
	ld	a1, -232(s0)                    # 8-byte Folded Reload
	ld	a2, -224(s0)                    # 8-byte Folded Reload
	ld	a3, -48(s0)
	mv	a0, a1
	call	regularize_k
	sw	a0, -204(s0)
	call	uECC_get_rng
	beqz	a0, .LBB3_4
	j	.LBB3_1
.LBB3_1:
	lwu	a0, -204(s0)
	slli	a1, a0, 3
	addi	a0, s0, -192
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	a1, -48(s0)
	addi	a1, a1, 4
	lb	a2, -205(s0)
	call	uECC_generate_random_int
	bnez	a0, .LBB3_3
	j	.LBB3_2
.LBB3_2:
	li	a0, 0
	sw	a0, -212(s0)
	j	.LBB3_5
.LBB3_3:
	lwu	a0, -204(s0)
	slli	a1, a0, 3
	addi	a0, s0, -192
	add	a0, a0, a1
	ld	a0, 0(a0)
	sd	a0, -200(s0)
	j	.LBB3_4
.LBB3_4:
	lw	a0, -204(s0)
	seqz	a0, a0
	slli	a1, a0, 3
	addi	a0, s0, -192
	add	a0, a0, a1
	ld	a2, 0(a0)
	ld	a3, -200(s0)
	ld	a5, -48(s0)
	lh	a0, 2(a5)
	addiw	a0, a0, 1
	slli	a0, a0, 48
	srai	a4, a0, 48
	addi	a1, s0, -112
	sd	a1, -248(s0)                    # 8-byte Folded Spill
	mv	a0, a1
	call	EccPoint_mult
	ld	a2, -248(s0)                    # 8-byte Folded Reload
	ld	a0, -40(s0)
	lb	a1, -206(s0)
	call	uECC_vli_nativeToBytes
	ld	a0, -248(s0)                    # 8-byte Folded Reload
	ld	a1, -48(s0)
	call	EccPoint_isZero
	seqz	a0, a0
	sw	a0, -212(s0)
	j	.LBB3_5
.LBB3_5:
	addi	a0, s0, -192
	li	a1, 0
	sd	a1, -264(s0)                    # 8-byte Folded Spill
	li	a2, 16
	call	_set_secure
	ld	a1, -264(s0)                    # 8-byte Folded Reload
	addi	a0, s0, -176
	li	a2, 32
	sd	a2, -256(s0)                    # 8-byte Folded Spill
	call	_set_secure
	ld	a1, -264(s0)                    # 8-byte Folded Reload
	ld	a2, -256(s0)                    # 8-byte Folded Reload
	addi	a0, s0, -144
	call	_set_secure
	lw	a0, -212(s0)
	ld	ra, 264(sp)                     # 8-byte Folded Reload
	ld	s0, 256(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 272
	ret
.Lfunc_end3:
	.size	uECC_shared_secret, .Lfunc_end3-uECC_shared_secret
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym EccPoint_compute_public_key
	.addrsig_sym uECC_vli_nativeToBytes
	.addrsig_sym _set_secure
	.addrsig_sym uECC_get_rng
	.addrsig_sym uECC_vli_mmod
	.addrsig_sym uECC_vli_bytesToNative
	.addrsig_sym regularize_k
	.addrsig_sym uECC_generate_random_int
	.addrsig_sym EccPoint_mult
	.addrsig_sym EccPoint_isZero
