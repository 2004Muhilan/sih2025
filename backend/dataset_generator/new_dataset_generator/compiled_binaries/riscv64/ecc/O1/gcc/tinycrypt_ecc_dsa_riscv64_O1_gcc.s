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
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	mv	s1,a0
	mv	s5,a1
	mv	s3,a3
	lh	a4,2(a3)
	addiw	a5,a4,31
	sraiw	s0,a5,31
	srliw	s0,s0,27
	addw	s0,s0,a5
	sraiw	s0,s0,5
	sext.w	s4,s0
	addiw	a4,a4,7
	sraiw	a5,a4,31
	srliw	a5,a5,29
	addw	a5,a5,a4
	sraiw	a5,a5,3
	mv	s2,a5
	sext.w	a5,a5
	bleu	a5,a2,.L2
	mv	s2,a2
.L2:
	slliw	s4,s4,24
	sraiw	s4,s4,24
	mv	a1,s4
	mv	a0,s1
	call	uECC_vli_clear@plt
	sext.w	a2,s2
	mv	a1,s5
	mv	a0,s1
	call	uECC_vli_bytesToNative@plt
	slliw	s2,s2,3
	sext.w	a3,s2
	lh	a5,2(s3)
	sext.w	a4,a5
	bleu	a3,a4,.L1
	subw	a1,s2,a5
	slli	a4,s0,32
	srli	a5,a4,30
	add	a5,s1,a5
	bgeu	s1,a5,.L4
	li	a4,0
	li	a2,32
	subw	a2,a2,a1
.L5:
	lw	a6,-4(a5)
	srlw	a3,a6,a1
	or	a4,a4,a3
	sw	a4,-4(a5)
	sllw	a4,a6,a2
	addi	a5,a5,-4
	bltu	s1,a5,.L5
.L4:
	addi	s3,s3,36
	mv	a2,s4
	mv	a1,s1
	mv	a0,s3
	call	uECC_vli_cmp_unsafe@plt
	li	a5,1
	bne	a0,a5,.L8
.L1:
	ld	ra,56(sp)
	.cfi_remember_state
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
.L8:
	.cfi_restore_state
	mv	a3,s4
	mv	a2,s3
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_sub@plt
	j	.L1
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.align	1
	.globl	uECC_sign_with_k
	.type	uECC_sign_with_k, @function
uECC_sign_with_k:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	ra,248(sp)
	sd	s0,240(sp)
	sd	s2,224(sp)
	sd	s3,216(sp)
	sd	s4,208(sp)
	sd	s5,200(sp)
	sd	s6,192(sp)
	sd	s7,184(sp)
	sd	s8,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	mv	s6,a0
	mv	s4,a1
	mv	s5,a2
	mv	s2,a3
	mv	s3,a4
	mv	s0,a5
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 152(sp)
	li	a4, 0
	addi	a5,sp,24
	sd	a5,8(sp)
	addi	a5,sp,56
	sd	a5,16(sp)
	lb	s7,0(s0)
	lh	s8,2(s0)
	mv	a1,s7
	mv	a0,a3
	call	uECC_vli_isZero@plt
	sext.w	a5,a0
	li	a0,0
	beq	a5,zero,.L23
.L10:
	la	a5,__stack_chk_guard
	ld	a4, 152(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L24
	ld	ra,248(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,240(sp)
	.cfi_restore 8
	ld	s2,224(sp)
	.cfi_restore 18
	ld	s3,216(sp)
	.cfi_restore 19
	ld	s4,208(sp)
	.cfi_restore 20
	ld	s5,200(sp)
	.cfi_restore 21
	ld	s6,192(sp)
	.cfi_restore 22
	ld	s7,184(sp)
	.cfi_restore 23
	ld	s8,176(sp)
	.cfi_restore 24
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
.L23:
	.cfi_restore_state
	sd	s1,232(sp)
	sd	s9,168(sp)
	addiw	a5,s8,31
	.cfi_offset 9, -24
	.cfi_offset 25, -88
	sraiw	s1,a5,31
	srliw	s1,s1,27
	addw	s1,s1,a5
	sraiw	s1,s1,5
	slliw	s1,s1,24
	sraiw	s1,s1,24
	addi	s9,s0,36
	mv	a2,s1
	mv	a1,s2
	mv	a0,s9
	call	uECC_vli_cmp@plt
	mv	a4,a0
	li	a5,1
	li	a0,0
	beq	a4,a5,.L25
	ld	s1,232(sp)
	.cfi_restore 9
	ld	s9,168(sp)
	.cfi_restore 25
	j	.L10
.L25:
	.cfi_offset 9, -24
	.cfi_offset 25, -88
	mv	a3,s0
	addi	a2,sp,56
	addi	a1,sp,24
	mv	a0,s2
	call	regularize_k@plt
	sext.w	a2,a0
	addiw	a4,s8,1
	seqz	a2,a2
	slli	a2,a2,3
	addi	a5,a2,160
	add	a2,a5,sp
	mv	a5,s0
	slliw	a4,a4,16
	sraiw	a4,a4,16
	li	a3,0
	ld	a2,-152(a2)
	addi	a1,s0,68
	addi	s8,sp,88
	mv	a0,s8
	call	EccPoint_mult@plt
	mv	a1,s7
	mv	a0,s8
	call	uECC_vli_isZero@plt
	sext.w	a5,a0
	li	a0,0
	beq	a5,zero,.L26
	ld	s1,232(sp)
	.cfi_remember_state
	.cfi_restore 9
	ld	s9,168(sp)
	.cfi_restore 25
	j	.L10
.L26:
	.cfi_restore_state
	call	uECC_get_rng@plt
	beq	a0,zero,.L27
	mv	a2,s1
	mv	a1,s9
	addi	a0,sp,24
	call	uECC_generate_random_int@plt
	beq	a0,zero,.L21
	sd	s10,160(sp)
	.cfi_offset 26, -96
.L12:
	mv	a4,s1
	mv	a3,s9
	addi	s8,sp,24
	mv	a2,s8
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult@plt
	mv	a3,s1
	mv	a2,s9
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modInv@plt
	mv	a4,s1
	mv	a3,s9
	mv	a2,s8
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult@plt
	addi	s10,sp,88
	mv	a2,s10
	lb	a1,1(s0)
	mv	a0,s3
	call	uECC_vli_nativeToBytes@plt
	lh	a5,2(s0)
	addiw	a5,a5,7
	sraiw	a2,a5,31
	srliw	a2,a2,29
	addw	a2,a2,a5
	sraiw	a2,a2,3
	mv	a1,s6
	mv	a0,s8
	call	uECC_vli_bytesToNative@plt
	addiw	a5,s1,-1
	slli	a5,a5,2
	addi	a5,a5,160
	add	a5,a5,sp
	sw	zero,-104(a5)
	mv	a2,s7
	mv	a1,s10
	addi	s6,sp,56
	mv	a0,s6
	call	uECC_vli_set@plt
	mv	a4,s1
	mv	a3,s9
	mv	a2,s6
	mv	a1,s8
	mv	a0,s6
	call	uECC_vli_modMult@plt
	mv	a3,s0
	mv	a2,s5
	mv	a1,s4
	mv	a0,s8
	call	bits2int
	mv	a4,s1
	mv	a3,s9
	mv	a2,s6
	mv	a1,s8
	mv	a0,s6
	call	uECC_vli_modAdd@plt
	mv	a4,s1
	mv	a3,s9
	mv	a2,s2
	mv	a1,s6
	mv	a0,s6
	call	uECC_vli_modMult@plt
	mv	a1,s1
	mv	a0,s6
	call	uECC_vli_numBits@plt
	mv	a5,a0
	lb	a1,1(s0)
	slliw	a4,a1,3
	li	a0,0
	bge	a4,a5,.L28
	ld	s1,232(sp)
	.cfi_restore 9
	ld	s9,168(sp)
	.cfi_restore 25
	ld	s10,160(sp)
	.cfi_restore 26
	j	.L10
.L27:
	.cfi_offset 9, -24
	.cfi_offset 25, -88
	sd	s10,160(sp)
	mv	a1,s1
	addi	a0,sp,24
	.cfi_offset 26, -96
	call	uECC_vli_clear@plt
	li	a5,1
	sw	a5,24(sp)
	j	.L12
.L28:
	mv	a2,s6
	add	a0,s3,a1
	call	uECC_vli_nativeToBytes@plt
	li	a0,1
	ld	s1,232(sp)
	.cfi_restore 9
	ld	s9,168(sp)
	.cfi_restore 25
	ld	s10,160(sp)
	.cfi_restore 26
	j	.L10
.L21:
	.cfi_offset 9, -24
	.cfi_offset 25, -88
	ld	s1,232(sp)
	.cfi_restore 9
	ld	s9,168(sp)
	.cfi_restore 25
	j	.L10
.L24:
	sd	s1,232(sp)
	sd	s9,168(sp)
	sd	s10,160(sp)
	.cfi_offset 9, -24
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.align	1
	.globl	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	sd	s1,168(sp)
	sd	s2,160(sp)
	sd	s3,152(sp)
	sd	s4,144(sp)
	sd	s5,136(sp)
	sd	s6,128(sp)
	sd	s7,120(sp)
	sd	s8,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	mv	s7,a0
	mv	s6,a1
	mv	s5,a2
	mv	s4,a3
	mv	s1,a4
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 104(sp)
	li	a4, 0
	li	s0,64
	addi	s2,sp,40
	addi	s8,s1,36
	addi	s3,sp,8
.L31:
	call	uECC_get_rng@plt
	mv	a5,a0
	beq	a0,zero,.L33
	li	a1,64
	mv	a0,s2
	jalr	a5
	beq	a0,zero,.L30
	lh	a5,2(s1)
	addiw	a5,a5,31
	sraiw	a3,a5,31
	srliw	a3,a3,27
	addw	a3,a3,a5
	sraiw	a3,a3,5
	slliw	a3,a3,24
	sraiw	a3,a3,24
	mv	a2,s8
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_mmod@plt
	mv	a5,s1
	mv	a4,s4
	mv	a3,s3
	mv	a2,s5
	mv	a1,s6
	mv	a0,s7
	call	uECC_sign_with_k
	bne	a0,zero,.L34
	addiw	s0,s0,-1
	bne	s0,zero,.L31
	j	.L30
.L33:
	li	a0,0
.L30:
	la	a5,__stack_chk_guard
	ld	a4, 104(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L37
	ld	ra,184(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	ld	s1,168(sp)
	.cfi_restore 9
	ld	s2,160(sp)
	.cfi_restore 18
	ld	s3,152(sp)
	.cfi_restore 19
	ld	s4,144(sp)
	.cfi_restore 20
	ld	s5,136(sp)
	.cfi_restore 21
	ld	s6,128(sp)
	.cfi_restore 22
	ld	s7,120(sp)
	.cfi_restore 23
	ld	s8,112(sp)
	.cfi_restore 24
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
.L34:
	.cfi_restore_state
	li	a0,1
	j	.L30
.L37:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.align	1
	.globl	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-640
	.cfi_def_cfa_offset 640
	sd	ra,632(sp)
	sd	s0,624(sp)
	sd	s1,616(sp)
	sd	s2,608(sp)
	sd	s3,600(sp)
	sd	s4,592(sp)
	sd	s5,584(sp)
	sd	s6,576(sp)
	sd	s7,568(sp)
	sd	s8,560(sp)
	sd	s9,552(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	mv	s6,a0
	mv	s5,a1
	mv	s7,a2
	mv	s4,a3
	mv	s1,a4
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 520(sp)
	li	a4, 0
	lb	s2,0(s1)
	lh	a5,2(s1)
	addiw	a5,a5,31
	sraiw	s0,a5,31
	srliw	s0,s0,27
	addw	s0,s0,a5
	sraiw	s0,s0,5
	slliw	s0,s0,24
	sraiw	s0,s0,24
	addiw	s9,s0,-1
	slli	a5,s9,2
	addi	a5,a5,496
	addi	a4,sp,32
	add	a5,a5,a4
	sw	zero,-392(a5)
	sw	zero,-200(a5)
	sw	zero,-168(a5)
	lb	a2,1(s1)
	mv	a1,a0
	addi	s8,sp,456
	mv	a0,s8
	call	uECC_vli_bytesToNative@plt
	slli	s3,s2,2
	add	s8,s8,s3
	lb	a2,1(s1)
	add	a1,s6,a2
	mv	a0,s8
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s1)
	mv	a1,s4
	addi	s6,sp,328
	mv	a0,s6
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s1)
	add	a1,s4,a2
	addi	a0,sp,360
	call	uECC_vli_bytesToNative@plt
	mv	a1,s2
	mv	a0,s6
	call	uECC_vli_isZero@plt
	sext.w	a5,a0
	li	a0,0
	beq	a5,zero,.L52
.L39:
	la	a5,__stack_chk_guard
	ld	a4, 520(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L53
	ld	ra,632(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,624(sp)
	.cfi_restore 8
	ld	s1,616(sp)
	.cfi_restore 9
	ld	s2,608(sp)
	.cfi_restore 18
	ld	s3,600(sp)
	.cfi_restore 19
	ld	s4,592(sp)
	.cfi_restore 20
	ld	s5,584(sp)
	.cfi_restore 21
	ld	s6,576(sp)
	.cfi_restore 22
	ld	s7,568(sp)
	.cfi_restore 23
	ld	s8,560(sp)
	.cfi_restore 24
	ld	s9,552(sp)
	.cfi_restore 25
	addi	sp,sp,640
	.cfi_def_cfa_offset 0
	jr	ra
.L52:
	.cfi_restore_state
	mv	a1,s2
	addi	a0,sp,360
	call	uECC_vli_isZero@plt
	sext.w	a5,a0
	li	a0,0
	bne	a5,zero,.L39
	addi	s6,s1,36
	mv	a2,s0
	addi	a1,sp,328
	mv	a0,s6
	call	uECC_vli_cmp_unsafe@plt
	mv	a4,a0
	li	a5,1
	li	a0,0
	bne	a4,a5,.L39
	mv	a2,s0
	addi	a1,sp,360
	mv	a0,s6
	call	uECC_vli_cmp_unsafe@plt
	mv	a4,a0
	li	a5,1
	li	a0,0
	bne	a4,a5,.L39
	sd	s10,544(sp)
	sd	s11,536(sp)
	mv	a3,s0
	mv	a2,s6
	addi	a1,sp,360
	addi	s4,sp,104
	mv	a0,s4
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	call	uECC_vli_modInv@plt
	slli	s9,s9,2
	addi	a5,s9,496
	addi	a4,sp,32
	add	s9,a5,a4
	sw	zero,-488(s9)
	mv	a3,s1
	mv	a2,s7
	mv	a1,s5
	addi	s7,sp,40
	mv	a0,s7
	call	bits2int
	mv	a4,s0
	mv	a3,s6
	mv	a2,s4
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modMult@plt
	mv	a4,s0
	mv	a3,s6
	mv	a2,s4
	addi	a1,sp,328
	addi	a5,sp,72
	sd	a5,0(sp)
	mv	a0,a5
	call	uECC_vli_modMult@plt
	mv	a2,s2
	addi	s11,sp,456
	mv	a1,s11
	addi	s5,sp,392
	mv	a0,s5
	call	uECC_vli_set@plt
	add	s10,s5,s3
	mv	a2,s2
	mv	a1,s8
	mv	a0,s10
	call	uECC_vli_set@plt
	addi	s8,s1,68
	mv	a2,s2
	mv	a1,s8
	addi	s9,sp,200
	mv	a0,s9
	call	uECC_vli_set@plt
	mv	a2,s2
	add	a1,s8,s3
	addi	a4,sp,232
	sd	a4,8(sp)
	mv	a0,a4
	call	uECC_vli_set@plt
	addi	a5,s1,4
	mv	a4,s2
	sd	a5,16(sp)
	mv	a3,a5
	mv	a2,s9
	mv	a1,s5
	mv	a0,s4
	call	uECC_vli_modSub@plt
	mv	a4,s1
	mv	a3,s10
	mv	a2,s5
	ld	a1,8(sp)
	mv	a0,s9
	call	XYcZ_add@plt
	mv	a3,s2
	ld	a2,16(sp)
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modInv@plt
	mv	a3,s1
	mv	a2,s4
	mv	a1,s10
	mv	a0,s5
	call	apply_z@plt
	sd	zero,296(sp)
	sd	s8,304(sp)
	sd	s11,312(sp)
	sd	s5,320(sp)
	mv	a1,s0
	mv	a0,s7
	call	uECC_vli_numBits@plt
	mv	s5,a0
	mv	a1,s0
	ld	a0,0(sp)
	call	uECC_vli_numBits@plt
	mv	s4,s5
	bge	s5,a0,.L40
	mv	s4,a0
.L40:
	slli	s4,s4,48
	srli	s4,s4,48
	addiw	s7,s4,-1
	slliw	s7,s7,16
	sraiw	s7,s7,16
	mv	a1,s7
	addi	a0,sp,40
	call	uECC_vli_testBit@plt
	sext.w	s5,a0
	mv	a1,s7
	addi	a0,sp,72
	call	uECC_vli_testBit@plt
	sext.w	a5,a0
	snez	a5,a5
	slliw	a5,a5,1
	snez	s5,s5
	or	a5,a5,s5
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,496
	addi	a4,sp,32
	add	a5,a5,a4
	ld	s5,-232(a5)
	mv	a2,s2
	mv	a1,s5
	addi	a0,sp,136
	call	uECC_vli_set@plt
	mv	a2,s2
	add	a1,s5,s3
	addi	a0,sp,168
	call	uECC_vli_set@plt
	mv	a1,s2
	addi	a0,sp,104
	call	uECC_vli_clear@plt
	li	a5,1
	sw	a5,104(sp)
	addiw	s4,s4,-2
	slliw	s4,s4,16
	sraiw	s4,s4,16
	blt	s4,zero,.L41
	addi	s7,sp,104
	addi	s11,sp,168
	addi	s9,sp,136
	addi	a5,sp,40
	sd	a5,0(sp)
	addi	a5,sp,72
	sd	a5,8(sp)
	addi	s8,sp,200
	addi	s10,sp,232
	addi	a5,sp,264
	sd	a5,24(sp)
	j	.L43
.L42:
	addiw	s4,s4,-1
	slliw	s4,s4,16
	sraiw	s4,s4,16
	blt	s4,zero,.L41
.L43:
	ld	a5,168(s1)
	mv	a3,s1
	mv	a2,s7
	mv	a1,s11
	mv	a0,s9
	jalr	a5
	mv	a1,s4
	ld	a0,0(sp)
	call	uECC_vli_testBit@plt
	sext.w	s5,a0
	mv	a1,s4
	ld	a0,8(sp)
	call	uECC_vli_testBit@plt
	sext.w	a5,a0
	snez	a5,a5
	slliw	a5,a5,1
	snez	s5,s5
	or	a5,a5,s5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,496
	addi	a4,sp,32
	add	a5,a5,a4
	ld	s5,-232(a5)
	beq	s5,zero,.L42
	mv	a2,s2
	mv	a1,s5
	mv	a0,s8
	call	uECC_vli_set@plt
	mv	a2,s2
	add	a1,s5,s3
	mv	a0,s10
	call	uECC_vli_set@plt
	mv	a3,s1
	mv	a2,s7
	mv	a1,s10
	mv	a0,s8
	call	apply_z@plt
	mv	a4,s2
	ld	a3,16(sp)
	mv	a2,s8
	mv	a1,s9
	ld	s5,24(sp)
	mv	a0,s5
	call	uECC_vli_modSub@plt
	mv	a4,s1
	mv	a3,s11
	mv	a2,s9
	mv	a1,s10
	mv	a0,s8
	call	XYcZ_add@plt
	mv	a3,s1
	mv	a2,s5
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modMult_fast@plt
	j	.L42
.L41:
	mv	a3,s2
	ld	a2,16(sp)
	addi	s3,sp,104
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modInv@plt
	mv	a3,s1
	mv	a2,s3
	addi	a1,sp,168
	addi	s1,sp,136
	mv	a0,s1
	call	apply_z@plt
	mv	a2,s0
	mv	a1,s1
	mv	a0,s6
	call	uECC_vli_cmp_unsafe@plt
	li	a5,1
	bne	a0,a5,.L54
.L44:
	mv	a2,s2
	addi	a1,sp,328
	addi	a0,sp,136
	call	uECC_vli_equal@plt
	sext.w	a0,a0
	seqz	a0,a0
	ld	s10,544(sp)
	.cfi_remember_state
	.cfi_restore 26
	ld	s11,536(sp)
	.cfi_restore 27
	j	.L39
.L54:
	.cfi_restore_state
	mv	a3,s0
	mv	a2,s6
	mv	a0,s1
	mv	a1,s1
	call	uECC_vli_sub@plt
	j	.L44
.L53:
	.cfi_restore 26
	.cfi_restore 27
	sd	s10,544(sp)
	sd	s11,536(sp)
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
