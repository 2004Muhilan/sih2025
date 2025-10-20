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
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	lwu	a4, 4(a2)
	lwu	a5, 0(a2)
	mv	s0, a3
	mv	s2, a1
	mv	s1, a0
	slli	a4, a4, 32
	lwu	a0, 12(a2)
	or	a4, a4, a5
	lwu	a1, 8(a2)
	sd	a4, 80(sp)
	slli	a0, a0, 32
	lwu	a3, 20(a2)
	or	a0, a0, a1
	sd	a0, 88(sp)
	lwu	a0, 16(a2)
	slli	a3, a3, 32
	lwu	a1, 28(a2)
	lwu	a2, 24(a2)
	or	a0, a0, a3
	sd	a0, 96(sp)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, 104(sp)
	addi	s4, sp, 16
	addi	a0, sp, 16
	addi	a1, sp, 80
	addi	s3, sp, 80
	mv	a2, s0
	call	EccPoint_compute_public_key
	beqz	a0, .LBB0_2
# %bb.1:
	lh	a0, 2(s0)
	addi	a0, a0, 7
	srliw	a1, a0, 29
	add	a0, a0, a1
	srai	a1, a0, 3
	addi	a2, sp, 80
	mv	a0, s2
	call	uECC_vli_nativeToBytes
	lb	a1, 1(s0)
	addi	a2, sp, 16
	mv	a0, s1
	call	uECC_vli_nativeToBytes
	lb	a1, 1(s0)
	lb	a2, 0(s0)
	add	a0, s1, a1
	slli	a2, a2, 2
	add	a2, a2, s4
	call	uECC_vli_nativeToBytes
	sd	zero, 104(sp)
	sd	zero, 96(sp)
	sd	zero, 88(sp)
	sd	zero, 80(sp)
	sd	s3, 8(sp)
	#APP
	#NO_APP
	li	a0, 1
.LBB0_2:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end0:
	.size	uECC_make_key_with_d, .Lfunc_end0-uECC_make_key_with_d
	.cfi_endproc
                                        # -- End function
	.globl	uECC_make_key                   # -- Begin function uECC_make_key
	.p2align	1
	.type	uECC_make_key,@function
uECC_make_key:                          # @uECC_make_key
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
	mv	s0, a2
	mv	s2, a1
	mv	s3, a0
	addi	s4, a2, 36
	li	s1, 64
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	call	uECC_get_rng
	beqz	a0, .LBB1_7
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	mv	a2, a0
	addi	a0, sp, 112
	li	a1, 64
	jalr	a2
	beqz	a0, .LBB1_7
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	lh	a0, 2(s0)
	addi	a0, a0, 31
	srliw	a1, a0, 27
	add	a0, a0, a1
	slli	a0, a0, 51
	srai	a3, a0, 56
	addi	a0, sp, 80
	addi	a1, sp, 112
	mv	a2, s4
	call	uECC_vli_mmod
	addi	a0, sp, 16
	addi	a1, sp, 80
	mv	a2, s0
	call	EccPoint_compute_public_key
	bnez	a0, .LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	addiw	s1, s1, -1
	bnez	s1, .LBB1_1
# %bb.5:
	li	a0, 0
	j	.LBB1_7
.LBB1_6:
	lh	a0, 2(s0)
	addi	a0, a0, 7
	srliw	a1, a0, 29
	add	a0, a0, a1
	srai	a1, a0, 3
	addi	a2, sp, 80
	addi	s4, sp, 80
	mv	a0, s2
	call	uECC_vli_nativeToBytes
	lb	a1, 1(s0)
	addi	a2, sp, 16
	addi	s1, sp, 16
	mv	a0, s3
	call	uECC_vli_nativeToBytes
	lb	a1, 1(s0)
	lb	a2, 0(s0)
	add	a0, s3, a1
	slli	a2, a2, 2
	add	a2, a2, s1
	call	uECC_vli_nativeToBytes
	sd	zero, 104(sp)
	sd	zero, 96(sp)
	sd	zero, 88(sp)
	sd	zero, 80(sp)
	sd	s4, 8(sp)
	#APP
	#NO_APP
	li	a0, 1
.LBB1_7:
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end1:
	.size	uECC_make_key, .Lfunc_end1-uECC_make_key
	.cfi_endproc
                                        # -- End function
	.globl	uECC_shared_secret              # -- Begin function uECC_shared_secret
	.p2align	1
	.type	uECC_shared_secret,@function
uECC_shared_secret:                     # @uECC_shared_secret
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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	mv	s0, a3
	mv	s2, a2
	mv	s1, a0
	addi	a0, sp, 72
	sd	a0, 24(sp)
	addi	a0, sp, 40
	lh	a2, 2(a3)
	sd	a0, 32(sp)
	lb	s3, 0(a3)
	lb	s4, 1(a3)
	addi	a2, a2, 7
	srliw	a0, a2, 29
	add	a0, a0, a2
	srai	a2, a0, 3
	addi	a0, sp, 72
	call	uECC_vli_bytesToNative
	addi	a0, sp, 104
	addi	s5, sp, 104
	mv	a1, s1
	mv	a2, s4
	call	uECC_vli_bytesToNative
	slli	a0, s3, 2
	add	a0, a0, s5
	add	a1, s1, s4
	mv	a2, s4
	call	uECC_vli_bytesToNative
	addi	a0, sp, 72
	addi	a1, sp, 72
	addi	a2, sp, 40
	mv	a3, s0
	call	regularize_k
	mv	s1, a0
	call	uECC_get_rng
	beqz	a0, .LBB2_2
# %bb.1:
	slli	a0, s1, 32
	srli	a0, a0, 29
	addi	a1, sp, 24
	add	a0, a0, a1
	ld	s5, 0(a0)
	addi	a1, s0, 4
	mv	a0, s5
	mv	a2, s3
	call	uECC_generate_random_int
	bnez	a0, .LBB2_3
	j	.LBB2_4
.LBB2_2:
	li	s5, 0
.LBB2_3:
	seqz	a0, s1
	slli	a0, a0, 3
	addi	a1, sp, 24
	add	a0, a0, a1
	lh	a1, 2(s0)
	ld	a2, 0(a0)
	addi	a1, a1, 1
	slli	a1, a1, 48
	srai	a4, a1, 48
	addi	a0, sp, 104
	addi	a1, sp, 104
	mv	a3, s5
	mv	a5, s0
	call	EccPoint_mult
	addi	a2, sp, 104
	mv	a0, s2
	mv	a1, s4
	call	uECC_vli_nativeToBytes
	addi	a0, sp, 104
	mv	a1, s0
	call	EccPoint_isZero
	seqz	a0, a0
.LBB2_4:
	sd	zero, 32(sp)
	sd	zero, 24(sp)
	addi	a1, sp, 24
	sd	a1, 16(sp)
	#APP
	#NO_APP
	sd	zero, 64(sp)
	sd	zero, 56(sp)
	sd	zero, 48(sp)
	sd	zero, 40(sp)
	addi	a1, sp, 40
	sd	a1, 8(sp)
	#APP
	#NO_APP
	sd	zero, 96(sp)
	sd	zero, 88(sp)
	sd	zero, 80(sp)
	sd	zero, 72(sp)
	addi	a1, sp, 72
	sd	a1, 0(sp)
	#APP
	#NO_APP
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end2:
	.size	uECC_shared_secret, .Lfunc_end2-uECC_shared_secret
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
