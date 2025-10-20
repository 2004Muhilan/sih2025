	.file	"tinycrypt_ecc_dsa.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	bits2int, @function
bits2int:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,48(sp)
	.cfi_offset 8, -16
	lh	s0,2(a3)
	li	a5,32
	sd	s1,40(sp)
	.cfi_offset 9, -24
	addiw	s1,s0,31
	divw	s1,s1,a5
	addiw	s0,s0,7
	li	a5,8
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 1, -8
	mv	s2,a0
	mv	s5,a1
	mv	s3,a3
	divw	a5,s0,a5
	sext.w	s4,s1
	mv	s0,a2
	bgtu	a5,a2,.L2
	mv	s0,a5
.L2:
	slliw	s4,s4,24
	sraiw	s4,s4,24
	mv	a1,s4
	mv	a0,s2
	call	uECC_vli_clear@plt
	sext.w	a2,s0
	mv	a1,s5
	mv	a0,s2
	call	uECC_vli_bytesToNative@plt
	lh	a4,2(s3)
	slliw	a3,s0,3
	bleu	a3,a4,.L1
	subw	s0,a3,a4
	slli	a4,s1,32
	srli	a5,a4,30
	li	a3,32
	add	a5,s2,a5
	li	a4,0
	subw	a3,a3,s0
.L5:
	bltu	s2,a5,.L6
	addi	s3,s3,36
	mv	a2,s4
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_cmp_unsafe@plt
	li	a5,1
	beq	a0,a5,.L1
	ld	s0,48(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s5,8(sp)
	.cfi_restore 21
	mv	a3,s4
	mv	a2,s3
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s3,24(sp)
	.cfi_restore 19
	mv	a1,s2
	mv	a0,s2
	ld	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	tail	uECC_vli_sub@plt
.L6:
	.cfi_restore_state
	lw	a2,-4(a5)
	addi	a5,a5,-4
	srlw	a1,a2,s0
	or	a4,a4,a1
	sw	a4,0(a5)
	sllw	a4,a2,a3
	j	.L5
.L1:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.align	1
	.globl	uECC_sign_with_k
	.type	uECC_sign_with_k, @function
uECC_sign_with_k:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sd	s1,264(sp)
	sd	s2,256(sp)
	sd	s3,248(sp)
	sd	s4,240(sp)
	sd	s5,232(sp)
	sd	s6,224(sp)
	sd	s8,208(sp)
	sd	s9,200(sp)
	sd	s11,184(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 27, -104
	mv	s1,a5
	sd	ra,280(sp)
	sd	s0,272(sp)
	sd	s7,216(sp)
	sd	s10,192(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 23, -72
	.cfi_offset 26, -96
	lb	s10,0(s1)
	la	s4,__stack_chk_guard
	mv	s11,a0
	mv	s8,a1
	ld	a5, 0(s4)
	sd	a5, 168(sp)
	li	a5, 0
	addi	s3,sp,40
	addi	s2,sp,72
	mv	a1,s10
	mv	a0,a3
	lh	s6,2(s1)
	mv	s9,a2
	sd	a3,0(sp)
	mv	s5,a4
	sd	s3,24(sp)
	sd	s2,32(sp)
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	beq	a0,zero,.L11
.L13:
	li	a0,0
.L12:
	ld	a4, 168(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L11:
	li	a5,32
	addiw	s0,s6,31
	divw	s0,s0,a5
	ld	a1,0(sp)
	addi	a5,s1,36
	mv	a0,a5
	sd	a5,8(sp)
	slliw	s0,s0,24
	sraiw	s0,s0,24
	mv	a2,s0
	call	uECC_vli_cmp@plt
	li	a5,1
	mv	s7,a0
	bne	a0,a5,.L13
	ld	a0,0(sp)
	mv	a3,s1
	mv	a2,s2
	mv	a1,s3
	call	regularize_k@plt
	sext.w	a2,a0
	seqz	a2,a2
	slli	a2,a2,3
	addi	a5,a2,160
	addi	a3,sp,16
	add	a2,a5,a3
	ld	a2,-152(a2)
	addiw	a4,s6,1
	slliw	a4,a4,16
	addi	s6,sp,104
	mv	a5,s1
	sraiw	a4,a4,16
	li	a3,0
	addi	a1,s1,68
	mv	a0,s6
	call	EccPoint_mult@plt
	mv	a1,s10
	mv	a0,s6
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	bne	a0,zero,.L13
	call	uECC_get_rng@plt
	bne	a0,zero,.L14
	mv	a1,s0
	mv	a0,s3
	call	uECC_vli_clear@plt
	sw	s7,40(sp)
.L15:
	ld	a1,0(sp)
	mv	a4,s0
	addi	a3,s1,36
	mv	a0,a1
	mv	a2,s3
	call	uECC_vli_modMult@plt
	ld	a1,0(sp)
	mv	a3,s0
	addi	a2,s1,36
	mv	a0,a1
	call	uECC_vli_modInv@plt
	ld	a1,0(sp)
	addi	a3,s1,36
	mv	a4,s0
	mv	a0,a1
	mv	a2,s3
	call	uECC_vli_modMult@plt
	lb	a1,1(s1)
	mv	a2,s6
	mv	a0,s5
	call	uECC_vli_nativeToBytes@plt
	lh	a5,2(s1)
	li	a2,8
	mv	a1,s11
	addiw	a5,a5,7
	divw	a2,a5,a2
	mv	a0,s3
	call	uECC_vli_bytesToNative@plt
	addiw	a5,s0,-1
	slli	a5,a5,2
	addi	a4,sp,16
	addi	a5,a5,160
	add	a5,a5,a4
	mv	a2,s10
	mv	a1,s6
	mv	a0,s2
	sw	zero,-104(a5)
	call	uECC_vli_set@plt
	mv	a4,s0
	addi	a3,s1,36
	mv	a2,s2
	mv	a1,s3
	mv	a0,s2
	call	uECC_vli_modMult@plt
	mv	a3,s1
	mv	a2,s9
	mv	a1,s8
	mv	a0,s3
	call	bits2int
	mv	a4,s0
	addi	a3,s1,36
	mv	a2,s2
	mv	a1,s3
	mv	a0,s2
	call	uECC_vli_modAdd@plt
	ld	a2,0(sp)
	mv	a4,s0
	addi	a3,s1,36
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult@plt
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_numBits@plt
	lb	a1,1(s1)
	slli	a5,a1,3
	blt	a5,a0,.L13
	add	a0,s5,a1
	mv	a2,s2
	call	uECC_vli_nativeToBytes@plt
	li	a0,1
	j	.L12
.L14:
	mv	a2,s0
	addi	a1,s1,36
	mv	a0,s3
	call	uECC_generate_random_int@plt
	bne	a0,zero,.L15
	j	.L13
.L16:
	ld	ra,280(sp)
	.cfi_restore 1
	ld	s0,272(sp)
	.cfi_restore 8
	ld	s1,264(sp)
	.cfi_restore 9
	ld	s2,256(sp)
	.cfi_restore 18
	ld	s3,248(sp)
	.cfi_restore 19
	ld	s4,240(sp)
	.cfi_restore 20
	ld	s5,232(sp)
	.cfi_restore 21
	ld	s6,224(sp)
	.cfi_restore 22
	ld	s7,216(sp)
	.cfi_restore 23
	ld	s8,208(sp)
	.cfi_restore 24
	ld	s9,200(sp)
	.cfi_restore 25
	ld	s10,192(sp)
	.cfi_restore 26
	ld	s11,184(sp)
	.cfi_restore 27
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	1
	.globl	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sd	s6,144(sp)
	.cfi_offset 22, -64
	la	s6,__stack_chk_guard
	sd	s0,192(sp)
	sd	s1,184(sp)
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s4,160(sp)
	sd	s5,152(sp)
	sd	s7,136(sp)
	sd	s8,128(sp)
	sd	s9,120(sp)
	sd	s10,112(sp)
	sd	ra,200(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 1, -8
	mv	s2,a0
	mv	s3,a1
	mv	s4,a2
	mv	s5,a3
	mv	s0,a4
	ld	a5, 0(s6)
	sd	a5, 104(sp)
	li	a5, 0
	li	s1,64
	addi	s7,sp,40
	li	s9,32
	addi	s10,a4,36
	addi	s8,sp,8
.L24:
	call	uECC_get_rng@plt
	mv	a5,a0
	beq	a0,zero,.L22
	li	a1,64
	mv	a0,s7
	jalr	a5
	beq	a0,zero,.L22
	lh	a5,2(s0)
	mv	a2,s10
	mv	a1,s7
	addiw	a5,a5,31
	divw	a5,a5,s9
	mv	a0,s8
	slliw	a3,a5,24
	sraiw	a3,a3,24
	call	uECC_vli_mmod@plt
	mv	a5,s0
	mv	a4,s5
	mv	a3,s8
	mv	a2,s4
	mv	a1,s3
	mv	a0,s2
	call	uECC_sign_with_k
	bne	a0,zero,.L26
	addiw	s1,s1,-1
	bne	s1,zero,.L24
.L22:
	li	a0,0
.L23:
	ld	a4, 104(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L25
	call	__stack_chk_fail@plt
.L26:
	li	a0,1
	j	.L23
.L25:
	ld	ra,200(sp)
	.cfi_restore 1
	ld	s0,192(sp)
	.cfi_restore 8
	ld	s1,184(sp)
	.cfi_restore 9
	ld	s2,176(sp)
	.cfi_restore 18
	ld	s3,168(sp)
	.cfi_restore 19
	ld	s4,160(sp)
	.cfi_restore 20
	ld	s5,152(sp)
	.cfi_restore 21
	ld	s6,144(sp)
	.cfi_restore 22
	ld	s7,136(sp)
	.cfi_restore 23
	ld	s8,128(sp)
	.cfi_restore 24
	ld	s9,120(sp)
	.cfi_restore 25
	ld	s10,112(sp)
	.cfi_restore 26
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.align	1
	.globl	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-672
	.cfi_def_cfa_offset 672
	sd	s2,640(sp)
	.cfi_offset 18, -32
	lh	s2,2(a4)
	sd	s6,608(sp)
	.cfi_offset 22, -64
	la	s6,__stack_chk_guard
	ld	a5, 0(s6)
	sd	a5, 552(sp)
	li	a5, 0
	li	a5,32
	addiw	s2,s2,31
	divw	s2,s2,a5
	sd	ra,664(sp)
	sd	s0,656(sp)
	sd	s3,632(sp)
	sd	s4,624(sp)
	sd	s5,616(sp)
	sd	s7,600(sp)
	sd	s8,592(sp)
	sd	s9,584(sp)
	sd	s10,576(sp)
	sd	s11,568(sp)
	sd	s1,648(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	.cfi_offset 9, -24
	mv	s0,a4
	mv	s10,a2
	lb	a2,1(s0)
	lb	s1,0(a4)
	addi	s11,sp,488
	addi	a4,sp,64
	mv	s5,a0
	mv	s9,a1
	mv	a1,a0
	mv	a0,s11
	mv	s3,a3
	slli	s7,s1,2
	addi	s8,sp,392
	slliw	s2,s2,24
	sraiw	s2,s2,24
	addiw	s4,s2,-1
	slli	s4,s4,2
	addi	a5,s4,496
	add	s4,a5,a4
	sw	zero,-392(s4)
	sw	zero,-200(s4)
	sw	zero,-168(s4)
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s0)
	add	a5,s11,s7
	mv	a0,a5
	add	a1,s5,a2
	sd	a5,8(sp)
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s0)
	addi	a5,sp,360
	mv	a0,a5
	mv	a1,s3
	sd	a5,32(sp)
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s0)
	mv	a0,s8
	add	a1,s3,a2
	call	uECC_vli_bytesToNative@plt
	ld	a0,32(sp)
	mv	a1,s1
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	beq	a0,zero,.L36
.L38:
	li	a0,0
.L37:
	ld	a4, 552(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L44
	call	__stack_chk_fail@plt
.L36:
	mv	a1,s1
	mv	a0,s8
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	bne	a0,zero,.L38
	ld	a1,32(sp)
	addi	s5,s0,36
	mv	a2,s2
	mv	a0,s5
	call	uECC_vli_cmp_unsafe@plt
	li	a5,1
	mv	s3,a0
	bne	a0,a5,.L38
	mv	a2,s2
	mv	a1,s8
	mv	a0,s5
	call	uECC_vli_cmp_unsafe@plt
	bne	a0,s3,.L38
	addi	a5,sp,136
	mv	a1,s8
	mv	a0,a5
	mv	a3,s2
	mv	a2,s5
	sd	a5,8(sp)
	call	uECC_vli_modInv@plt
	addi	a5,sp,72
	mv	a0,a5
	mv	a2,s10
	mv	a1,s9
	mv	a3,s0
	sd	a5,24(sp)
	sw	zero,-488(s4)
	call	bits2int
	ld	a1,24(sp)
	ld	a2,8(sp)
	mv	a4,s2
	mv	a0,a1
	mv	a3,s5
	call	uECC_vli_modMult@plt
	ld	a2,8(sp)
	ld	a1,32(sp)
	addi	a5,sp,104
	mv	a4,s2
	mv	a3,s5
	mv	a0,a5
	addi	s4,sp,424
	sd	a5,48(sp)
	call	uECC_vli_modMult@plt
	mv	a0,s4
	mv	a2,s1
	mv	a1,s11
	call	uECC_vli_set@plt
	add	s9,s4,s7
	mv	a2,s1
	add	a1,s11,s7
	mv	a0,s9
	call	uECC_vli_set@plt
	addi	s8,s0,68
	addi	a5,sp,232
	mv	a1,s8
	mv	a0,a5
	mv	a2,s1
	sd	a5,16(sp)
	call	uECC_vli_set@plt
	addi	a5,sp,264
	mv	a0,a5
	add	a1,s8,s7
	mv	a2,s1
	sd	a5,40(sp)
	call	uECC_vli_set@plt
	ld	a2,16(sp)
	ld	a0,8(sp)
	addi	s10,s0,4
	mv	a1,s4
	mv	a4,s1
	mv	a3,s10
	call	uECC_vli_modSub@plt
	ld	a1,40(sp)
	ld	a0,16(sp)
	mv	a4,s0
	mv	a2,s4
	mv	a3,s9
	call	XYcZ_add@plt
	ld	a1,8(sp)
	mv	a3,s1
	mv	a2,s10
	mv	a0,a1
	call	uECC_vli_modInv@plt
	ld	a2,8(sp)
	mv	a3,s0
	mv	a0,s4
	mv	a1,s9
	call	apply_z@plt
	ld	a0,24(sp)
	mv	a1,s2
	sd	s8,336(sp)
	sd	s4,352(sp)
	sd	zero,328(sp)
	sd	s11,344(sp)
	call	uECC_vli_numBits@plt
	mv	s8,a0
	ld	a0,48(sp)
	mv	a1,s2
	mv	s4,s8
	call	uECC_vli_numBits@plt
	bge	s8,a0,.L39
	mv	s4,a0
.L39:
	slli	s4,s4,48
	srli	s4,s4,48
	addiw	a1,s4,-1
	ld	a0,24(sp)
	slliw	a1,a1,16
	sraiw	a1,a1,16
	sd	a1,56(sp)
	call	uECC_vli_testBit@plt
	ld	a1,56(sp)
	sext.w	s8,a0
	ld	a0,48(sp)
	snez	s8,s8
	addi	s9,sp,200
	call	uECC_vli_testBit@plt
	sext.w	a5,a0
	snez	a5,a5
	slliw	a5,a5,1
	or	a5,a5,s8
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a4,sp,64
	addi	a5,a5,496
	add	a5,a5,a4
	ld	s11,-232(a5)
	addi	s8,sp,168
	mv	a2,s1
	mv	a1,s11
	mv	a0,s8
	call	uECC_vli_set@plt
	add	a1,s11,s7
	mv	a2,s1
	mv	a0,s9
	call	uECC_vli_set@plt
	ld	a0,8(sp)
	mv	a1,s1
	addiw	s4,s4,-2
	call	uECC_vli_clear@plt
	li	a5,1
	slliw	s4,s4,16
	sw	a5,136(sp)
	sraiw	s4,s4,16
	addi	s11,sp,296
.L40:
	bge	s4,zero,.L42
	ld	a1,8(sp)
	mv	a3,s1
	mv	a2,s10
	mv	a0,a1
	call	uECC_vli_modInv@plt
	ld	a2,8(sp)
	mv	a3,s0
	mv	a1,s9
	mv	a0,s8
	call	apply_z@plt
	mv	a2,s2
	mv	a1,s8
	mv	a0,s5
	call	uECC_vli_cmp_unsafe@plt
	li	a5,1
	beq	a0,a5,.L43
	mv	a3,s2
	mv	a2,s5
	mv	a1,s8
	mv	a0,s8
	call	uECC_vli_sub@plt
.L43:
	ld	a1,32(sp)
	mv	a2,s1
	mv	a0,s8
	call	uECC_vli_equal@plt
	sext.w	a0,a0
	seqz	a0,a0
	j	.L37
.L42:
	ld	a5,168(s0)
	ld	a2,8(sp)
	mv	a3,s0
	mv	a1,s9
	mv	a0,s8
	jalr	a5
	ld	a0,24(sp)
	mv	a1,s4
	call	uECC_vli_testBit@plt
	sext.w	s3,a0
	ld	a0,48(sp)
	mv	a1,s4
	call	uECC_vli_testBit@plt
	sext.w	a5,a0
	snez	a5,a5
	snez	a4,s3
	slliw	a5,a5,1
	or	a5,a5,a4
	slli	a5,a5,32
	srli	a5,a5,29
	addi	a5,a5,496
	addi	a4,sp,64
	add	a5,a5,a4
	ld	a1,-232(a5)
	beq	a1,zero,.L41
	ld	a0,16(sp)
	mv	a2,s1
	sd	a1,56(sp)
	call	uECC_vli_set@plt
	ld	a1,56(sp)
	ld	a0,40(sp)
	mv	a2,s1
	add	a1,a1,s7
	call	uECC_vli_set@plt
	ld	a2,8(sp)
	ld	a1,40(sp)
	ld	a0,16(sp)
	mv	a3,s0
	call	apply_z@plt
	ld	a2,16(sp)
	mv	a4,s1
	mv	a3,s10
	mv	a1,s8
	mv	a0,s11
	call	uECC_vli_modSub@plt
	ld	a1,40(sp)
	ld	a0,16(sp)
	mv	a3,s9
	mv	a2,s8
	mv	a4,s0
	call	XYcZ_add@plt
	ld	a1,8(sp)
	mv	a3,s0
	mv	a2,s11
	mv	a0,a1
	call	uECC_vli_modMult_fast@plt
.L41:
	addiw	s4,s4,-1
	slliw	s4,s4,16
	sraiw	s4,s4,16
	j	.L40
.L44:
	ld	ra,664(sp)
	.cfi_restore 1
	ld	s0,656(sp)
	.cfi_restore 8
	ld	s1,648(sp)
	.cfi_restore 9
	ld	s2,640(sp)
	.cfi_restore 18
	ld	s3,632(sp)
	.cfi_restore 19
	ld	s4,624(sp)
	.cfi_restore 20
	ld	s5,616(sp)
	.cfi_restore 21
	ld	s6,608(sp)
	.cfi_restore 22
	ld	s7,600(sp)
	.cfi_restore 23
	ld	s8,592(sp)
	.cfi_restore 24
	ld	s9,584(sp)
	.cfi_restore 25
	ld	s10,576(sp)
	.cfi_restore 26
	ld	s11,568(sp)
	.cfi_restore 27
	addi	sp,sp,672
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
