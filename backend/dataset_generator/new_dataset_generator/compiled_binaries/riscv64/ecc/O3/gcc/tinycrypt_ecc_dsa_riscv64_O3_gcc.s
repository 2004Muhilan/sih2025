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
	lh	a5,2(a3)
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,48(sp)
	addiw	a4,a5,7
	addiw	a5,a5,31
	.cfi_offset 8, -16
	sraiw	s0,a5,31
	sd	s1,40(sp)
	.cfi_offset 9, -24
	sraiw	s1,a4,31
	srliw	s1,s1,29
	srliw	s0,s0,27
	addw	s1,s1,a4
	addw	s0,s0,a5
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sraiw	a5,s1,3
	sraiw	s0,s0,5
	sd	ra,56(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 1, -8
	mv	s4,a3
	mv	s2,a0
	mv	s5,a1
	sext.w	s3,s0
	mv	s1,a2
	bgtu	a5,a2,.L2
	mv	s1,a5
.L2:
	slliw	s3,s3,24
	sraiw	s3,s3,24
	mv	a1,s3
	mv	a0,s2
	call	uECC_vli_clear@plt
	sext.w	a2,s1
	mv	a1,s5
	mv	a0,s2
	call	uECC_vli_bytesToNative@plt
	lh	a5,2(s4)
	slliw	a3,s1,3
	mv	s1,a3
	mv	a4,a5
	bleu	a3,a5,.L1
	slli	a3,s0,32
	srli	a5,a3,30
	add	a5,s2,a5
	subw	a2,s1,a4
	bgeu	s2,a5,.L9
	li	a3,32
	subw	a3,a3,a2
	li	a4,0
.L8:
	lw	a6,-4(a5)
	addi	a5,a5,-4
	srlw	a1,a6,a2
	or	a4,a4,a1
	sw	a4,0(a5)
	sllw	a4,a6,a3
	bltu	s2,a5,.L8
.L9:
	addi	s4,s4,36
	mv	a2,s3
	mv	a1,s2
	mv	a0,s4
	call	uECC_vli_cmp_unsafe@plt
	li	a5,1
	bne	a0,a5,.L14
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
.L14:
	.cfi_restore_state
	ld	s0,48(sp)
	.cfi_restore 8
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s5,8(sp)
	.cfi_restore 21
	mv	a3,s3
	mv	a2,s4
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	mv	a1,s2
	mv	a0,s2
	ld	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	tail	uECC_vli_sub@plt
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
	sd	s0,272(sp)
	sd	s2,256(sp)
	sd	s3,248(sp)
	sd	s4,240(sp)
	sd	s5,232(sp)
	sd	s6,224(sp)
	sd	s7,216(sp)
	sd	s8,208(sp)
	sd	s10,192(sp)
	sd	s11,184(sp)
	sd	ra,280(sp)
	sd	s9,200(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	.cfi_offset 1, -8
	.cfi_offset 25, -88
	lb	s9,0(a5)
	la	s6,__stack_chk_guard
	lh	s10,2(a5)
	mv	s0,a5
	mv	s5,a0
	mv	s11,a1
	addi	s8,sp,40
	addi	s7,sp,72
	mv	a1,s9
	mv	a0,a3
	ld	a5, 0(s6)
	sd	a5, 168(sp)
	li	a5, 0
	mv	s2,a3
	mv	s4,a2
	mv	s3,a4
	sd	s8,24(sp)
	sd	s7,32(sp)
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	beq	a0,zero,.L16
.L18:
	li	a0,0
.L17:
	ld	a4, 168(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L30
	ld	ra,280(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,272(sp)
	.cfi_restore 8
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
.L16:
	.cfi_restore_state
	addiw	a5,s10,31
	sd	s1,264(sp)
	.cfi_offset 9, -24
	sraiw	s1,a5,31
	srliw	s1,s1,27
	addw	s1,s1,a5
	sraiw	s1,s1,5
	slliw	s1,s1,24
	addi	a5,s0,36
	sraiw	s1,s1,24
	mv	a0,a5
	mv	a2,s1
	mv	a1,s2
	sd	a5,0(sp)
	call	uECC_vli_cmp@plt
	li	a5,1
	beq	a0,a5,.L31
.L29:
	ld	s1,264(sp)
	.cfi_remember_state
	.cfi_restore 9
	j	.L18
.L31:
	.cfi_restore_state
	sd	a0,8(sp)
	mv	a3,s0
	mv	a2,s7
	mv	a1,s8
	mv	a0,s2
	call	regularize_k@plt
	sext.w	a5,a0
	seqz	a5,a5
	slli	a5,a5,3
	addi	a4,sp,16
	addi	a5,a5,160
	add	a5,a5,a4
	ld	a2,-152(a5)
	addiw	a4,s10,1
	slliw	a4,a4,16
	addi	s10,sp,104
	mv	a5,s0
	sraiw	a4,a4,16
	li	a3,0
	addi	a1,s0,68
	mv	a0,s10
	call	EccPoint_mult@plt
	mv	a1,s9
	mv	a0,s10
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	bne	a0,zero,.L29
	call	uECC_get_rng@plt
	beq	a0,zero,.L32
	ld	a1,0(sp)
	mv	a2,s1
	mv	a0,s8
	call	uECC_generate_random_int@plt
	beq	a0,zero,.L29
.L20:
	ld	a3,0(sp)
	mv	a4,s1
	mv	a2,s8
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult@plt
	ld	a2,0(sp)
	mv	a3,s1
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modInv@plt
	ld	a3,0(sp)
	mv	a4,s1
	mv	a2,s8
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult@plt
	lb	a1,1(s0)
	mv	a2,s10
	mv	a0,s3
	call	uECC_vli_nativeToBytes@plt
	lh	a5,2(s0)
	mv	a1,s5
	mv	a0,s8
	addiw	a5,a5,7
	sraiw	a2,a5,31
	srliw	a2,a2,29
	addw	a2,a2,a5
	sraiw	a2,a2,3
	call	uECC_vli_bytesToNative@plt
	addiw	a5,s1,-1
	slli	a5,a5,2
	addi	a4,sp,16
	addi	a5,a5,160
	add	a5,a5,a4
	mv	a2,s9
	mv	a1,s10
	mv	a0,s7
	sw	zero,-104(a5)
	call	uECC_vli_set@plt
	ld	s5,0(sp)
	mv	a4,s1
	mv	a2,s7
	mv	a3,s5
	mv	a1,s8
	mv	a0,s7
	call	uECC_vli_modMult@plt
	mv	a3,s0
	mv	a2,s4
	mv	a1,s11
	mv	a0,s8
	call	bits2int
	mv	a4,s1
	mv	a3,s5
	mv	a2,s7
	mv	a1,s8
	mv	a0,s7
	call	uECC_vli_modAdd@plt
	mv	a4,s1
	mv	a3,s5
	mv	a2,s2
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modMult@plt
	mv	a1,s1
	mv	a0,s7
	call	uECC_vli_numBits@plt
	lb	a1,1(s0)
	slli	a5,a1,3
	blt	a5,a0,.L29
	add	a0,s3,a1
	mv	a2,s7
	call	uECC_vli_nativeToBytes@plt
	li	a0,1
	ld	s1,264(sp)
	.cfi_remember_state
	.cfi_restore 9
	j	.L17
.L32:
	.cfi_restore_state
	mv	a1,s1
	mv	a0,s8
	call	uECC_vli_clear@plt
	ld	a6,8(sp)
	sw	a6,40(sp)
	j	.L20
.L30:
	.cfi_restore 9
	sd	s1,264(sp)
	.cfi_offset 9, -24
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
	addi	sp,sp,-416
	.cfi_def_cfa_offset 416
	sd	s1,392(sp)
	.cfi_offset 9, -24
	mv	s1,a4
	la	a4,__stack_chk_guard
	ld	a5, 0(a4)
	sd	a5, 296(sp)
	li	a5, 0
	addi	a5,s1,68
	sd	s2,384(sp)
	sd	s3,376(sp)
	sd	s5,360(sp)
	sd	s6,352(sp)
	sd	s8,336(sp)
	sd	s9,328(sp)
	sd	s10,320(sp)
	sd	s11,312(sp)
	sd	ra,408(sp)
	sd	s0,400(sp)
	sd	s4,368(sp)
	sd	s7,344(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 20, -48
	.cfi_offset 23, -72
	sd	a0,16(sp)
	sd	a1,24(sp)
	sd	a2,32(sp)
	sd	a3,40(sp)
	li	s3,64
	addi	s5,sp,168
	addi	s6,s1,36
	addi	s2,sp,72
	addi	s9,sp,104
	addi	s8,sp,136
	li	s10,1
	sd	a5,8(sp)
	addi	s11,sp,232
	j	.L36
.L37:
	addiw	s3,s3,-1
	beq	s3,zero,.L34
.L36:
	call	uECC_get_rng@plt
	mv	a5,a0
	beq	a0,zero,.L34
	li	a1,64
	mv	a0,s5
	jalr	a5
	beq	a0,zero,.L34
	lh	a5,2(s1)
	mv	a2,s6
	mv	a1,s5
	addiw	a5,a5,31
	sraiw	a3,a5,31
	srliw	a3,a3,27
	addw	a3,a3,a5
	sraiw	a3,a3,5
	slliw	a3,a3,24
	sraiw	a3,a3,24
	mv	a0,s2
	call	uECC_vli_mmod@plt
	lb	s4,0(s1)
	mv	a0,s2
	lh	s7,2(s1)
	mv	a1,s4
	sd	s9,56(sp)
	sd	s8,64(sp)
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	bne	a0,zero,.L37
	addiw	a5,s7,31
	sraiw	s0,a5,31
	srliw	s0,s0,27
	addw	s0,s0,a5
	sraiw	s0,s0,5
	slliw	s0,s0,24
	sraiw	s0,s0,24
	mv	a2,s0
	mv	a1,s2
	mv	a0,s6
	call	uECC_vli_cmp@plt
	bne	a0,s10,.L37
	mv	a3,s1
	mv	a2,s8
	mv	a1,s9
	mv	a0,s2
	call	regularize_k@plt
	sext.w	a5,a0
	seqz	a5,a5
	slli	a5,a5,3
	addi	a4,sp,48
	addi	a5,a5,256
	add	a5,a5,a4
	ld	a2,-248(a5)
	ld	a1,8(sp)
	addiw	a4,s7,1
	slliw	a4,a4,16
	mv	a5,s1
	sraiw	a4,a4,16
	li	a3,0
	mv	a0,s11
	call	EccPoint_mult@plt
	mv	a1,s4
	mv	a0,s11
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	bne	a0,zero,.L37
	call	uECC_get_rng@plt
	beq	a0,zero,.L53
	mv	a2,s0
	mv	a1,s6
	mv	a0,s9
	call	uECC_generate_random_int@plt
	beq	a0,zero,.L37
.L39:
	mv	a4,s0
	mv	a3,s6
	mv	a2,s9
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult@plt
	mv	a3,s0
	mv	a2,s6
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modInv@plt
	mv	a3,s6
	mv	a4,s0
	mv	a2,s9
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult@plt
	ld	s7,40(sp)
	lb	a1,1(s1)
	mv	a2,s11
	mv	a0,s7
	call	uECC_vli_nativeToBytes@plt
	lh	a5,2(s1)
	ld	a1,16(sp)
	mv	a0,s9
	addiw	a5,a5,7
	sraiw	a2,a5,31
	srliw	a2,a2,29
	addw	a2,a2,a5
	sraiw	a2,a2,3
	call	uECC_vli_bytesToNative@plt
	addiw	a5,s0,-1
	slli	a5,a5,2
	addi	a4,sp,48
	addi	a5,a5,256
	add	a5,a5,a4
	mv	a2,s4
	mv	a1,s11
	mv	a0,s8
	sw	zero,-168(a5)
	call	uECC_vli_set@plt
	mv	a4,s0
	mv	a3,s6
	mv	a2,s8
	mv	a1,s9
	mv	a0,s8
	call	uECC_vli_modMult@plt
	ld	a2,32(sp)
	ld	a1,24(sp)
	mv	a3,s1
	mv	a0,s9
	call	bits2int
	mv	a4,s0
	mv	a3,s6
	mv	a2,s8
	mv	a1,s9
	mv	a0,s8
	call	uECC_vli_modAdd@plt
	mv	a4,s0
	mv	a3,s6
	mv	a2,s2
	mv	a1,s8
	mv	a0,s8
	call	uECC_vli_modMult@plt
	mv	a1,s0
	mv	a0,s8
	call	uECC_vli_numBits@plt
	lb	a1,1(s1)
	slli	a5,a1,3
	blt	a5,a0,.L37
	add	a0,s7,a1
	mv	a2,s8
	call	uECC_vli_nativeToBytes@plt
	li	a0,1
	j	.L40
.L34:
	li	a0,0
.L40:
	la	a5,__stack_chk_guard
	ld	a4, 296(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L54
	ld	ra,408(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,400(sp)
	.cfi_restore 8
	ld	s1,392(sp)
	.cfi_restore 9
	ld	s2,384(sp)
	.cfi_restore 18
	ld	s3,376(sp)
	.cfi_restore 19
	ld	s4,368(sp)
	.cfi_restore 20
	ld	s5,360(sp)
	.cfi_restore 21
	ld	s6,352(sp)
	.cfi_restore 22
	ld	s7,344(sp)
	.cfi_restore 23
	ld	s8,336(sp)
	.cfi_restore 24
	ld	s9,328(sp)
	.cfi_restore 25
	ld	s10,320(sp)
	.cfi_restore 26
	ld	s11,312(sp)
	.cfi_restore 27
	addi	sp,sp,416
	.cfi_def_cfa_offset 0
	jr	ra
.L53:
	.cfi_restore_state
	mv	a1,s0
	mv	a0,s9
	call	uECC_vli_clear@plt
	sw	s10,104(sp)
	j	.L39
.L54:
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
	lh	a5,2(a4)
	addi	sp,sp,-672
	.cfi_def_cfa_offset 672
	sd	s0,656(sp)
	addiw	a5,a5,31
	.cfi_offset 8, -16
	sraiw	s0,a5,31
	srliw	s0,s0,27
	addw	s0,s0,a5
	sraiw	s0,s0,5
	slliw	s0,s0,24
	sraiw	s0,s0,24
	sd	ra,664(sp)
	sd	s1,648(sp)
	sd	s3,632(sp)
	sd	s4,624(sp)
	sd	s5,616(sp)
	sd	s6,608(sp)
	sd	s7,600(sp)
	sd	s8,592(sp)
	sd	s9,584(sp)
	sd	s10,576(sp)
	sd	s11,568(sp)
	sd	s2,640(sp)
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	.cfi_offset 18, -32
	addiw	a5,s0,-1
	mv	s6,a2
	slli	a5,a5,2
	lb	a2,1(a4)
	mv	s1,a4
	addi	a5,a5,496
	addi	s4,sp,488
	addi	a4,sp,64
	la	s7,__stack_chk_guard
	add	s10,a5,a4
	lb	s2,0(s1)
	ld	a4, 0(s7)
	sd	a4, 552(sp)
	li	a4, 0
	mv	s3,a0
	mv	s5,a1
	mv	a1,a0
	mv	a0,s4
	mv	s11,a3
	sw	zero,-392(s10)
	sw	zero,-200(s10)
	sw	zero,-168(s10)
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s1)
	slli	s9,s2,2
	add	a5,s4,s9
	mv	a0,a5
	add	a1,s3,a2
	sd	a5,8(sp)
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s1)
	addi	s3,sp,360
	mv	a1,s11
	mv	a0,s3
	call	uECC_vli_bytesToNative@plt
	lb	a2,1(s1)
	addi	s8,sp,392
	mv	a0,s8
	add	a1,s11,a2
	call	uECC_vli_bytesToNative@plt
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	beq	a0,zero,.L56
.L58:
	li	a0,0
.L57:
	ld	a4, 552(sp)
	ld	a5, 0(s7)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L70
	ld	ra,664(sp)
	.cfi_remember_state
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
.L56:
	.cfi_restore_state
	mv	a1,s2
	mv	a0,s8
	call	uECC_vli_isZero@plt
	sext.w	a0,a0
	bne	a0,zero,.L58
	addi	a5,s1,36
	mv	a2,s0
	mv	a1,s3
	mv	a0,a5
	sd	a5,16(sp)
	call	uECC_vli_cmp_unsafe@plt
	li	a4,1
	mv	s11,a0
	bne	a0,a4,.L58
	ld	a0,16(sp)
	mv	a2,s0
	mv	a1,s8
	call	uECC_vli_cmp_unsafe@plt
	bne	a0,s11,.L58
	ld	a2,16(sp)
	addi	s11,sp,136
	mv	a1,s8
	mv	a3,s0
	mv	a0,s11
	call	uECC_vli_modInv@plt
	addi	a5,sp,72
	mv	a0,a5
	mv	a2,s6
	mv	a1,s5
	mv	a3,s1
	mv	s5,a5
	sw	zero,-488(s10)
	call	bits2int
	ld	s6,16(sp)
	mv	a1,s5
	mv	a0,s5
	mv	a3,s6
	mv	a4,s0
	mv	a2,s11
	sd	s5,32(sp)
	call	uECC_vli_modMult@plt
	addi	a5,sp,104
	mv	a0,a5
	mv	a3,s6
	mv	a4,s0
	mv	a2,s11
	mv	a1,s3
	sd	a5,24(sp)
	addi	s8,sp,424
	call	uECC_vli_modMult@plt
	mv	a1,s4
	mv	a2,s2
	mv	a0,s8
	call	uECC_vli_set@plt
	ld	a1,8(sp)
	add	a4,s8,s9
	mv	a0,a4
	mv	a2,s2
	sd	a4,8(sp)
	addi	s5,s1,68
	call	uECC_vli_set@plt
	addi	s6,sp,232
	mv	a1,s5
	mv	a2,s2
	mv	a0,s6
	call	uECC_vli_set@plt
	addi	s10,sp,264
	add	a1,s5,s9
	mv	a2,s2
	mv	a0,s10
	call	uECC_vli_set@plt
	addi	a3,s1,4
	mv	a4,s2
	mv	a2,s6
	mv	a1,s8
	mv	a0,s11
	sd	a3,48(sp)
	call	uECC_vli_modSub@plt
	ld	a3,8(sp)
	mv	a4,s1
	mv	a2,s8
	mv	a1,s10
	mv	a0,s6
	call	XYcZ_add@plt
	ld	a2,48(sp)
	mv	a3,s2
	mv	a1,s11
	mv	a0,s11
	call	uECC_vli_modInv@plt
	ld	a1,8(sp)
	mv	a3,s1
	mv	a2,s11
	mv	a0,s8
	call	apply_z@plt
	ld	a0,32(sp)
	mv	a1,s0
	sd	s5,336(sp)
	sd	s4,344(sp)
	sd	zero,328(sp)
	sd	s8,352(sp)
	call	uECC_vli_numBits@plt
	mv	s5,a0
	ld	a0,24(sp)
	mv	a1,s0
	mv	s4,s5
	call	uECC_vli_numBits@plt
	bge	s5,a0,.L59
	mv	s4,a0
.L59:
	slli	s4,s4,48
	srli	s4,s4,48
	addiw	s8,s4,-1
	ld	a0,32(sp)
	slliw	s8,s8,16
	sraiw	s8,s8,16
	mv	a1,s8
	call	uECC_vli_testBit@plt
	mv	s5,a0
	ld	a0,24(sp)
	mv	a1,s8
	sext.w	s5,s5
	call	uECC_vli_testBit@plt
	sext.w	a5,a0
	snez	a5,a5
	snez	s5,s5
	slliw	a5,a5,1
	or	a5,a5,s5
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a4,sp,64
	addi	a5,a5,496
	add	a5,a5,a4
	ld	a1,-232(a5)
	addi	s5,sp,168
	mv	a2,s2
	mv	a0,s5
	sd	a1,40(sp)
	call	uECC_vli_set@plt
	ld	a1,40(sp)
	addi	a0,sp,200
	mv	a2,s2
	add	a1,a1,s9
	sd	a0,8(sp)
	call	uECC_vli_set@plt
	mv	a1,s2
	mv	a0,s11
	call	uECC_vli_clear@plt
	addiw	s4,s4,-2
	li	a5,1
	slliw	s4,s4,16
	sw	a5,136(sp)
	sraiw	s4,s4,16
	blt	s4,zero,.L60
	addi	a5,sp,296
	sd	a5,56(sp)
.L62:
	ld	a5,168(s1)
	ld	a1,8(sp)
	mv	a3,s1
	mv	a2,s11
	mv	a0,s5
	jalr	a5
	ld	a0,32(sp)
	mv	a1,s4
	call	uECC_vli_testBit@plt
	mv	s8,a0
	ld	a0,24(sp)
	mv	a1,s4
	sext.w	s8,s8
	call	uECC_vli_testBit@plt
	sext.w	a5,a0
	snez	a5,a5
	snez	a4,s8
	slliw	a5,a5,1
	or	a5,a5,a4
	slli	a5,a5,32
	srli	a5,a5,29
	addi	a5,a5,496
	addi	a4,sp,64
	add	a5,a5,a4
	ld	a1,-232(a5)
	beq	a1,zero,.L61
	mv	a2,s2
	mv	a0,s6
	sd	a1,40(sp)
	call	uECC_vli_set@plt
	ld	a1,40(sp)
	mv	a2,s2
	mv	a0,s10
	add	a1,a1,s9
	call	uECC_vli_set@plt
	mv	a3,s1
	mv	a2,s11
	mv	a1,s10
	mv	a0,s6
	call	apply_z@plt
	ld	s8,56(sp)
	ld	a3,48(sp)
	mv	a4,s2
	mv	a2,s6
	mv	a1,s5
	mv	a0,s8
	call	uECC_vli_modSub@plt
	ld	a3,8(sp)
	mv	a2,s5
	mv	a1,s10
	mv	a0,s6
	mv	a4,s1
	call	XYcZ_add@plt
	mv	a3,s1
	mv	a2,s8
	mv	a1,s11
	mv	a0,s11
	call	uECC_vli_modMult_fast@plt
.L61:
	addiw	s4,s4,-1
	slliw	s4,s4,16
	sraiw	s4,s4,16
	li	a5,-1
	bne	s4,a5,.L62
.L60:
	ld	a2,48(sp)
	mv	a3,s2
	mv	a1,s11
	mv	a0,s11
	call	uECC_vli_modInv@plt
	ld	a1,8(sp)
	mv	a3,s1
	mv	a2,s11
	mv	a0,s5
	call	apply_z@plt
	ld	s1,16(sp)
	mv	a2,s0
	mv	a1,s5
	mv	a0,s1
	call	uECC_vli_cmp_unsafe@plt
	li	a5,1
	beq	a0,a5,.L63
	mv	a3,s0
	mv	a2,s1
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_sub@plt
.L63:
	mv	a2,s2
	mv	a1,s3
	mv	a0,s5
	call	uECC_vli_equal@plt
	sext.w	a0,a0
	seqz	a0,a0
	j	.L57
.L70:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
