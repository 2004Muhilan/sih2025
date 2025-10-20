	.file	"tinycrypt_ecc_dsa.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.data.rel.ro,"aw"
	.align	3
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 192
curve_secp256r1:
	.byte	8
	.byte	32
	.half	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.zero	4
	.dword	double_jacobian_default
	.dword	x_side_default
	.dword	vli_mmod_fast_secp256r1
	.text
	.align	1
	.type	bits2int, @function
bits2int:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	mv	a5,a2
	sd	a3,-80(s0)
	sw	a5,-68(s0)
	ld	a5,-80(s0)
	lh	a5,2(a5)
	addiw	a5,a5,7
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,29
	addw	a5,a4,a5
	sraiw	a5,a5,3
	sext.w	a5,a5
	sw	a5,-40(s0)
	ld	a5,-80(s0)
	lh	a5,2(a5)
	addiw	a5,a5,31
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	sext.w	a5,a5
	sw	a5,-36(s0)
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bleu	a4,a5,.L2
	lw	a5,-40(s0)
	sw	a5,-68(s0)
.L2:
	lw	a5,-36(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	mv	a1,a5
	ld	a0,-56(s0)
	call	uECC_vli_clear@plt
	lw	a5,-68(s0)
	mv	a2,a5
	ld	a1,-64(s0)
	ld	a0,-56(s0)
	call	uECC_vli_bytesToNative@plt
	lw	a5,-68(s0)
	slliw	a5,a5,3
	sext.w	a4,a5
	ld	a5,-80(s0)
	lh	a5,2(a5)
	bleu	a4,a5,.L7
	lw	a5,-68(s0)
	slliw	a5,a5,3
	sext.w	a5,a5
	ld	a4,-80(s0)
	lh	a4,2(a4)
	subw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-32(s0)
	sw	zero,-44(s0)
	lwu	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	j	.L5
.L6:
	ld	a5,-24(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	srlw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-44(s0)
	or	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,0(a5)
	li	a5,32
	lw	a4,-32(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-28(s0)
	sllw	a5,a4,a5
	sw	a5,-44(s0)
.L5:
	ld	a5,-24(s0)
	addi	a4,a5,-4
	sd	a4,-24(s0)
	ld	a4,-56(s0)
	bltu	a4,a5,.L6
	ld	a5,-80(s0)
	addi	a5,a5,36
	lw	a4,-36(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	mv	a2,a4
	ld	a1,-56(s0)
	mv	a0,a5
	call	uECC_vli_cmp_unsafe@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L1
	ld	a5,-80(s0)
	addi	a5,a5,36
	lw	a4,-36(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	mv	a3,a4
	mv	a2,a5
	ld	a1,-56(s0)
	ld	a0,-56(s0)
	call	uECC_vli_sub@plt
	j	.L1
.L7:
	nop
.L1:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
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
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sd	ra,216(sp)
	sd	s0,208(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	sd	a0,-184(s0)
	sd	a1,-192(s0)
	sd	a3,-208(s0)
	sd	a4,-216(s0)
	sd	a5,-224(s0)
	mv	a5,a2
	sw	a5,-196(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-152
	sd	a5,-168(s0)
	addi	a5,s0,-120
	sd	a5,-160(s0)
	ld	a5,-224(s0)
	lbu	a5,0(a5)
	sb	a5,-176(s0)
	ld	a5,-224(s0)
	lh	a5,2(a5)
	addiw	a5,a5,31
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	sext.w	a5,a5
	sb	a5,-175(s0)
	ld	a5,-224(s0)
	lhu	a5,2(a5)
	sh	a5,-174(s0)
	lb	a5,-176(s0)
	mv	a1,a5
	ld	a0,-208(s0)
	call	uECC_vli_isZero@plt
	mv	a5,a0
	sext.w	a5,a5
	bne	a5,zero,.L9
	ld	a5,-224(s0)
	addi	a5,a5,36
	lb	a4,-175(s0)
	mv	a2,a4
	ld	a1,-208(s0)
	mv	a0,a5
	call	uECC_vli_cmp@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L10
.L9:
	li	a5,0
	j	.L16
.L10:
	addi	a4,s0,-120
	addi	a5,s0,-152
	ld	a3,-224(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-208(s0)
	call	regularize_k@plt
	mv	a5,a0
	sw	a5,-172(s0)
	ld	a5,-224(s0)
	addi	a1,a5,68
	lw	a5,-172(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a2,-152(a5)
	lhu	a5,-174(s0)
	addiw	a5,a5,1
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a4,a5,16
	sraiw	a4,a4,16
	addi	a0,s0,-88
	ld	a5,-224(s0)
	li	a3,0
	call	EccPoint_mult@plt
	lb	a4,-176(s0)
	addi	a5,s0,-88
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_isZero@plt
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L12
	li	a5,0
	j	.L16
.L12:
	call	uECC_get_rng@plt
	mv	a5,a0
	bne	a5,zero,.L13
	lb	a4,-175(s0)
	addi	a5,s0,-152
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_clear@plt
	li	a5,1
	sw	a5,-152(s0)
	j	.L14
.L13:
	ld	a5,-224(s0)
	addi	a4,a5,36
	lb	a3,-175(s0)
	addi	a5,s0,-152
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_generate_random_int@plt
	mv	a5,a0
	bne	a5,zero,.L14
	li	a5,0
	j	.L16
.L14:
	ld	a5,-224(s0)
	addi	a3,a5,36
	lb	a4,-175(s0)
	addi	a5,s0,-152
	mv	a2,a5
	ld	a1,-208(s0)
	ld	a0,-208(s0)
	call	uECC_vli_modMult@plt
	ld	a5,-224(s0)
	addi	a5,a5,36
	lb	a4,-175(s0)
	mv	a3,a4
	mv	a2,a5
	ld	a1,-208(s0)
	ld	a0,-208(s0)
	call	uECC_vli_modInv@plt
	ld	a5,-224(s0)
	addi	a3,a5,36
	lb	a4,-175(s0)
	addi	a5,s0,-152
	mv	a2,a5
	ld	a1,-208(s0)
	ld	a0,-208(s0)
	call	uECC_vli_modMult@plt
	ld	a5,-224(s0)
	lb	a5,1(a5)
	mv	a4,a5
	addi	a5,s0,-88
	mv	a2,a5
	mv	a1,a4
	ld	a0,-216(s0)
	call	uECC_vli_nativeToBytes@plt
	ld	a5,-224(s0)
	lh	a5,2(a5)
	addiw	a5,a5,7
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,29
	addw	a5,a4,a5
	sraiw	a5,a5,3
	sext.w	a4,a5
	addi	a5,s0,-152
	mv	a2,a4
	ld	a1,-184(s0)
	mv	a0,a5
	call	uECC_vli_bytesToNative@plt
	lb	a5,-175(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-104(a5)
	lb	a3,-176(s0)
	addi	a4,s0,-88
	addi	a5,s0,-120
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set@plt
	ld	a5,-224(s0)
	addi	a3,a5,36
	lb	a4,-175(s0)
	addi	a2,s0,-120
	addi	a1,s0,-152
	addi	a5,s0,-120
	mv	a0,a5
	call	uECC_vli_modMult@plt
	lw	a4,-196(s0)
	addi	a5,s0,-152
	ld	a3,-224(s0)
	mv	a2,a4
	ld	a1,-192(s0)
	mv	a0,a5
	call	bits2int
	ld	a5,-224(s0)
	addi	a3,a5,36
	lb	a4,-175(s0)
	addi	a2,s0,-120
	addi	a1,s0,-152
	addi	a5,s0,-120
	mv	a0,a5
	call	uECC_vli_modAdd@plt
	ld	a5,-224(s0)
	addi	a3,a5,36
	lb	a4,-175(s0)
	addi	a1,s0,-120
	addi	a5,s0,-120
	ld	a2,-208(s0)
	mv	a0,a5
	call	uECC_vli_modMult@plt
	lb	a4,-175(s0)
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_numBits@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-224(s0)
	lb	a5,1(a5)
	slliw	a5,a5,3
	sext.w	a5,a5
	ble	a4,a5,.L15
	li	a5,0
	j	.L16
.L15:
	ld	a5,-224(s0)
	lb	a5,1(a5)
	mv	a4,a5
	ld	a5,-216(s0)
	add	a4,a5,a4
	ld	a5,-224(s0)
	lb	a5,1(a5)
	mv	a3,a5
	addi	a5,s0,-120
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	uECC_vli_nativeToBytes@plt
	li	a5,1
.L16:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
	mv	a0,a4
	ld	ra,216(sp)
	.cfi_restore 1
	ld	s0,208(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 224
	addi	sp,sp,224
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
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sd	a0,-152(s0)
	sd	a1,-160(s0)
	mv	a5,a2
	sd	a3,-176(s0)
	sd	a4,-184(s0)
	sw	a5,-164(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-132(s0)
	j	.L19
.L24:
	call	uECC_get_rng@plt
	sd	a0,-128(s0)
	ld	a5,-128(s0)
	beq	a5,zero,.L20
	addi	a4,s0,-88
	ld	a5,-128(s0)
	li	a1,64
	mv	a0,a4
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L21
.L20:
	li	a5,0
	j	.L25
.L21:
	ld	a5,-184(s0)
	addi	a2,a5,36
	ld	a5,-184(s0)
	lh	a5,2(a5)
	addiw	a5,a5,31
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	sext.w	a5,a5
	slliw	a3,a5,24
	sraiw	a3,a3,24
	addi	a4,s0,-88
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_mmod@plt
	addi	a3,s0,-120
	lw	a2,-164(s0)
	ld	a5,-184(s0)
	ld	a4,-176(s0)
	ld	a1,-160(s0)
	ld	a0,-152(s0)
	call	uECC_sign_with_k
	mv	a5,a0
	beq	a5,zero,.L23
	li	a5,1
	j	.L25
.L23:
	lw	a5,-132(s0)
	addiw	a5,a5,1
	sw	a5,-132(s0)
.L19:
	lw	a5,-132(s0)
	sext.w	a4,a5
	li	a5,63
	bleu	a4,a5,.L24
	li	a5,0
.L25:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L26
	call	__stack_chk_fail@plt
.L26:
	mv	a0,a4
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.align	1
	.type	smax, @function
smax:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sh	a5,-18(s0)
	mv	a5,a4
	sh	a5,-20(s0)
	lhu	a5,-18(s0)
	mv	a2,a5
	lhu	a5,-20(s0)
	mv	a3,a5
	slliw	a4,a3,16
	sraiw	a4,a4,16
	slliw	a5,a2,16
	sraiw	a5,a5,16
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L28
	mv	a3,a2
.L28:
	slliw	a5,a3,16
	sraiw	a5,a5,16
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	smax, .-smax
	.align	1
	.globl	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-592
	.cfi_def_cfa_offset 592
	sd	ra,584(sp)
	sd	s0,576(sp)
	sd	s1,568(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,592
	.cfi_def_cfa 8, 0
	sd	a0,-552(s0)
	sd	a1,-560(s0)
	mv	a5,a2
	sd	a3,-576(s0)
	sd	a4,-584(s0)
	sw	a5,-564(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	ld	a5,-584(s0)
	lbu	a5,0(a5)
	sb	a5,-538(s0)
	ld	a5,-584(s0)
	lh	a5,2(a5)
	addiw	a5,a5,31
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	sext.w	a5,a5
	sb	a5,-537(s0)
	lb	a5,-537(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	zero,-392(a5)
	lb	a5,-537(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	zero,-200(a5)
	lb	a5,-537(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	zero,-168(a5)
	ld	a5,-584(s0)
	lb	a5,1(a5)
	mv	a4,a5
	addi	a5,s0,-104
	mv	a2,a4
	ld	a1,-552(s0)
	mv	a0,a5
	call	uECC_vli_bytesToNative@plt
	lb	a5,-538(s0)
	slli	a5,a5,2
	addi	a4,s0,-104
	add	a4,a4,a5
	ld	a5,-584(s0)
	lb	a5,1(a5)
	mv	a3,a5
	ld	a5,-552(s0)
	add	a3,a5,a3
	ld	a5,-584(s0)
	lb	a5,1(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	uECC_vli_bytesToNative@plt
	ld	a5,-584(s0)
	lb	a5,1(a5)
	mv	a4,a5
	addi	a5,s0,-232
	mv	a2,a4
	ld	a1,-576(s0)
	mv	a0,a5
	call	uECC_vli_bytesToNative@plt
	ld	a5,-584(s0)
	lb	a5,1(a5)
	mv	a4,a5
	ld	a5,-576(s0)
	add	a4,a5,a4
	ld	a5,-584(s0)
	lb	a5,1(a5)
	mv	a3,a5
	addi	a5,s0,-200
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_bytesToNative@plt
	lb	a4,-538(s0)
	addi	a5,s0,-232
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_isZero@plt
	mv	a5,a0
	sext.w	a5,a5
	bne	a5,zero,.L31
	lb	a4,-538(s0)
	addi	a5,s0,-200
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_isZero@plt
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L32
.L31:
	li	a5,0
	j	.L44
.L32:
	ld	a5,-584(s0)
	addi	a5,a5,36
	lb	a3,-537(s0)
	addi	a4,s0,-232
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_cmp_unsafe@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L34
	ld	a5,-584(s0)
	addi	a5,a5,36
	lb	a3,-537(s0)
	addi	a4,s0,-200
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_cmp_unsafe@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L35
.L34:
	li	a5,0
	j	.L44
.L35:
	ld	a5,-584(s0)
	addi	a2,a5,36
	lb	a3,-537(s0)
	addi	a4,s0,-200
	addi	a5,s0,-456
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modInv@plt
	lb	a5,-537(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	zero,-488(a5)
	lw	a4,-564(s0)
	addi	a5,s0,-520
	ld	a3,-584(s0)
	mv	a2,a4
	ld	a1,-560(s0)
	mv	a0,a5
	call	bits2int
	ld	a5,-584(s0)
	addi	a3,a5,36
	lb	a4,-537(s0)
	addi	a2,s0,-456
	addi	a1,s0,-520
	addi	a5,s0,-520
	mv	a0,a5
	call	uECC_vli_modMult@plt
	ld	a5,-584(s0)
	addi	a3,a5,36
	lb	a4,-537(s0)
	addi	a2,s0,-456
	addi	a1,s0,-232
	addi	a5,s0,-488
	mv	a0,a5
	call	uECC_vli_modMult@plt
	lb	a3,-538(s0)
	addi	a4,s0,-104
	addi	a5,s0,-168
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set@plt
	lb	a5,-538(s0)
	slli	a5,a5,2
	addi	a4,s0,-168
	add	a3,a4,a5
	lb	a5,-538(s0)
	slli	a5,a5,2
	addi	a4,s0,-104
	add	a5,a4,a5
	lb	a4,-538(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	uECC_vli_set@plt
	ld	a5,-584(s0)
	addi	a4,a5,68
	lb	a3,-538(s0)
	addi	a5,s0,-360
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set@plt
	ld	a5,-584(s0)
	addi	a4,a5,68
	lb	a5,-538(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lb	a3,-538(s0)
	addi	a5,s0,-328
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set@plt
	ld	a5,-584(s0)
	addi	a3,a5,4
	lb	a4,-538(s0)
	addi	a2,s0,-360
	addi	a1,s0,-168
	addi	a5,s0,-456
	mv	a0,a5
	call	uECC_vli_modSub@plt
	lb	a5,-538(s0)
	slli	a5,a5,2
	addi	a4,s0,-168
	add	a3,a4,a5
	addi	a2,s0,-168
	addi	a1,s0,-328
	addi	a5,s0,-360
	ld	a4,-584(s0)
	mv	a0,a5
	call	XYcZ_add@plt
	ld	a5,-584(s0)
	addi	a2,a5,4
	lb	a3,-538(s0)
	addi	a4,s0,-456
	addi	a5,s0,-456
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modInv@plt
	lb	a5,-538(s0)
	slli	a5,a5,2
	addi	a4,s0,-168
	add	a4,a4,a5
	addi	a2,s0,-456
	addi	a5,s0,-168
	ld	a3,-584(s0)
	mv	a1,a4
	mv	a0,a5
	call	apply_z@plt
	sd	zero,-264(s0)
	ld	a5,-584(s0)
	addi	a5,a5,68
	sd	a5,-256(s0)
	addi	a5,s0,-104
	sd	a5,-248(s0)
	addi	a5,s0,-168
	sd	a5,-240(s0)
	lb	a4,-537(s0)
	addi	a5,s0,-520
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_numBits@plt
	mv	a5,a0
	mv	s1,a5
	lb	a4,-537(s0)
	addi	a5,s0,-488
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_numBits@plt
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	smax
	mv	a5,a0
	sh	a5,-534(s0)
	lhu	a5,-534(s0)
	addiw	a5,a5,-1
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a4,a5,16
	sraiw	a4,a4,16
	addi	a5,s0,-520
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_testBit@plt
	mv	a5,a0
	sext.w	a5,a5
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	s1,a5
	lhu	a5,-534(s0)
	addiw	a5,a5,-1
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a4,a5,16
	sraiw	a4,a4,16
	addi	a5,s0,-488
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_testBit@plt
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L36
	li	a5,2
	j	.L37
.L36:
	li	a5,0
.L37:
	or	a5,a5,s1
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-232(a5)
	sd	a5,-528(s0)
	lb	a4,-538(s0)
	addi	a5,s0,-424
	mv	a2,a4
	ld	a1,-528(s0)
	mv	a0,a5
	call	uECC_vli_set@plt
	lb	a5,-538(s0)
	slli	a5,a5,2
	ld	a4,-528(s0)
	add	a4,a4,a5
	lb	a3,-538(s0)
	addi	a5,s0,-392
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set@plt
	lb	a4,-538(s0)
	addi	a5,s0,-456
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_clear@plt
	li	a5,1
	sw	a5,-456(s0)
	lhu	a5,-534(s0)
	addiw	a5,a5,-2
	slli	a5,a5,48
	srli	a5,a5,48
	sh	a5,-536(s0)
	j	.L38
.L42:
	ld	a5,-584(s0)
	ld	a5,168(a5)
	addi	a2,s0,-456
	addi	a1,s0,-392
	addi	a4,s0,-424
	ld	a3,-584(s0)
	mv	a0,a4
	jalr	a5
	lh	a4,-536(s0)
	addi	a5,s0,-520
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_testBit@plt
	mv	a5,a0
	sext.w	a5,a5
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	s1,a5
	lh	a4,-536(s0)
	addi	a5,s0,-488
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_testBit@plt
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L39
	li	a5,2
	j	.L40
.L39:
	li	a5,0
.L40:
	or	a5,a5,s1
	sext.w	a5,a5
	sw	a5,-532(s0)
	lwu	a5,-532(s0)
	slli	a5,a5,3
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-232(a5)
	sd	a5,-528(s0)
	ld	a5,-528(s0)
	beq	a5,zero,.L41
	lb	a4,-538(s0)
	addi	a5,s0,-360
	mv	a2,a4
	ld	a1,-528(s0)
	mv	a0,a5
	call	uECC_vli_set@plt
	lb	a5,-538(s0)
	slli	a5,a5,2
	ld	a4,-528(s0)
	add	a4,a4,a5
	lb	a3,-538(s0)
	addi	a5,s0,-328
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set@plt
	addi	a2,s0,-456
	addi	a4,s0,-328
	addi	a5,s0,-360
	ld	a3,-584(s0)
	mv	a1,a4
	mv	a0,a5
	call	apply_z@plt
	ld	a5,-584(s0)
	addi	a3,a5,4
	lb	a4,-538(s0)
	addi	a2,s0,-360
	addi	a1,s0,-424
	addi	a5,s0,-296
	mv	a0,a5
	call	uECC_vli_modSub@plt
	addi	a3,s0,-392
	addi	a2,s0,-424
	addi	a1,s0,-328
	addi	a5,s0,-360
	ld	a4,-584(s0)
	mv	a0,a5
	call	XYcZ_add@plt
	addi	a2,s0,-296
	addi	a4,s0,-456
	addi	a5,s0,-456
	ld	a3,-584(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modMult_fast@plt
.L41:
	lhu	a5,-536(s0)
	addiw	a5,a5,-1
	slli	a5,a5,48
	srli	a5,a5,48
	sh	a5,-536(s0)
.L38:
	lh	a5,-536(s0)
	sext.w	a5,a5
	bge	a5,zero,.L42
	ld	a5,-584(s0)
	addi	a2,a5,4
	lb	a3,-538(s0)
	addi	a4,s0,-456
	addi	a5,s0,-456
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modInv@plt
	addi	a2,s0,-456
	addi	a4,s0,-392
	addi	a5,s0,-424
	ld	a3,-584(s0)
	mv	a1,a4
	mv	a0,a5
	call	apply_z@plt
	ld	a5,-584(s0)
	addi	a5,a5,36
	lb	a3,-537(s0)
	addi	a4,s0,-424
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_cmp_unsafe@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L43
	ld	a5,-584(s0)
	addi	a2,a5,36
	lb	a3,-537(s0)
	addi	a4,s0,-424
	addi	a5,s0,-424
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_sub@plt
.L43:
	lb	a3,-538(s0)
	addi	a4,s0,-232
	addi	a5,s0,-424
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_equal@plt
	mv	a5,a0
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
.L44:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L45
	call	__stack_chk_fail@plt
.L45:
	mv	a0,a4
	ld	ra,584(sp)
	.cfi_restore 1
	ld	s0,576(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 592
	ld	s1,568(sp)
	.cfi_restore 9
	addi	sp,sp,592
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
