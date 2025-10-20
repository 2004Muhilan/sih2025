	.file	"tinycrypt_ecc_dh.c"
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
	.type	_set_secure, @function
_set_secure:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	mv	a4,a2
	sb	a5,-25(s0)
	mv	a5,a4
	sw	a5,-32(s0)
	lbu	a5,-25(s0)
	sext.w	a5,a5
	lwu	a4,-32(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-24(s0)
	call	memset@plt
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	_set_secure, .-_set_secure
	.align	1
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	sd	a1,-144(s0)
	sd	a2,-152(s0)
	sd	a3,-160(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-120
	li	a2,32
	ld	a1,-152(s0)
	mv	a0,a5
	call	memcpy@plt
	addi	a4,s0,-120
	addi	a5,s0,-88
	ld	a2,-160(s0)
	mv	a1,a4
	mv	a0,a5
	call	EccPoint_compute_public_key@plt
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L3
	ld	a5,-160(s0)
	lh	a5,2(a5)
	addiw	a5,a5,7
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,29
	addw	a5,a4,a5
	sraiw	a5,a5,3
	sext.w	a5,a5
	addi	a4,s0,-120
	mv	a2,a4
	mv	a1,a5
	ld	a0,-144(s0)
	call	uECC_vli_nativeToBytes@plt
	ld	a5,-160(s0)
	lb	a5,1(a5)
	mv	a4,a5
	addi	a5,s0,-88
	mv	a2,a5
	mv	a1,a4
	ld	a0,-136(s0)
	call	uECC_vli_nativeToBytes@plt
	ld	a5,-160(s0)
	lb	a5,1(a5)
	mv	a4,a5
	ld	a5,-136(s0)
	add	a3,a5,a4
	ld	a5,-160(s0)
	lb	a5,1(a5)
	mv	a1,a5
	ld	a5,-160(s0)
	lb	a5,0(a5)
	slli	a5,a5,2
	addi	a4,s0,-88
	add	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	uECC_vli_nativeToBytes@plt
	addi	a5,s0,-120
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	_set_secure
	li	a5,1
	j	.L5
.L3:
	li	a5,0
.L5:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	mv	a0,a4
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	1
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)
	sd	s0,224(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sd	a0,-216(s0)
	sd	a1,-224(s0)
	sd	a2,-232(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-196(s0)
	j	.L8
.L13:
	call	uECC_get_rng@plt
	sd	a0,-192(s0)
	ld	a5,-192(s0)
	beq	a5,zero,.L9
	addi	a4,s0,-152
	ld	a5,-192(s0)
	li	a1,64
	mv	a0,a4
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L10
.L9:
	li	a5,0
	j	.L14
.L10:
	ld	a5,-232(s0)
	addi	a2,a5,36
	ld	a5,-232(s0)
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
	addi	a4,s0,-152
	addi	a5,s0,-184
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_mmod@plt
	addi	a4,s0,-184
	addi	a5,s0,-88
	ld	a2,-232(s0)
	mv	a1,a4
	mv	a0,a5
	call	EccPoint_compute_public_key@plt
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L12
	ld	a5,-232(s0)
	lh	a5,2(a5)
	addiw	a5,a5,7
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,29
	addw	a5,a4,a5
	sraiw	a5,a5,3
	sext.w	a5,a5
	addi	a4,s0,-184
	mv	a2,a4
	mv	a1,a5
	ld	a0,-224(s0)
	call	uECC_vli_nativeToBytes@plt
	ld	a5,-232(s0)
	lb	a5,1(a5)
	mv	a4,a5
	addi	a5,s0,-88
	mv	a2,a5
	mv	a1,a4
	ld	a0,-216(s0)
	call	uECC_vli_nativeToBytes@plt
	ld	a5,-232(s0)
	lb	a5,1(a5)
	mv	a4,a5
	ld	a5,-216(s0)
	add	a3,a5,a4
	ld	a5,-232(s0)
	lb	a5,1(a5)
	mv	a1,a5
	ld	a5,-232(s0)
	lb	a5,0(a5)
	slli	a5,a5,2
	addi	a4,s0,-88
	add	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	uECC_vli_nativeToBytes@plt
	addi	a5,s0,-184
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	_set_secure
	li	a5,1
	j	.L14
.L12:
	lw	a5,-196(s0)
	addiw	a5,a5,1
	sw	a5,-196(s0)
.L8:
	lw	a5,-196(s0)
	sext.w	a4,a5
	li	a5,63
	bleu	a4,a5,.L13
	li	a5,0
.L14:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L15:
	mv	a0,a4
	ld	ra,232(sp)
	.cfi_restore 1
	ld	s0,224(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uECC_make_key, .-uECC_make_key
	.align	1
	.globl	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sd	ra,216(sp)
	sd	s0,208(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	sd	a0,-200(s0)
	sd	a1,-208(s0)
	sd	a2,-216(s0)
	sd	a3,-224(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-152
	sd	a5,-168(s0)
	addi	a5,s0,-120
	sd	a5,-160(s0)
	sd	zero,-176(s0)
	ld	a5,-224(s0)
	lbu	a5,0(a5)
	sb	a5,-186(s0)
	ld	a5,-224(s0)
	lbu	a5,1(a5)
	sb	a5,-185(s0)
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
	ld	a1,-208(s0)
	mv	a0,a5
	call	uECC_vli_bytesToNative@plt
	lb	a5,-185(s0)
	sext.w	a4,a5
	addi	a5,s0,-88
	mv	a2,a4
	ld	a1,-200(s0)
	mv	a0,a5
	call	uECC_vli_bytesToNative@plt
	lb	a5,-186(s0)
	slli	a5,a5,2
	addi	a4,s0,-88
	add	a3,a4,a5
	lb	a5,-185(s0)
	ld	a4,-200(s0)
	add	a5,a4,a5
	lb	a4,-185(s0)
	sext.w	a4,a4
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	uECC_vli_bytesToNative@plt
	addi	a2,s0,-120
	addi	a4,s0,-152
	addi	a5,s0,-152
	ld	a3,-224(s0)
	mv	a1,a4
	mv	a0,a5
	call	regularize_k@plt
	mv	a5,a0
	sw	a5,-180(s0)
	call	uECC_get_rng@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lwu	a5,-180(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-152(a5)
	ld	a5,-224(s0)
	addi	a5,a5,4
	lb	a3,-186(s0)
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
	call	uECC_generate_random_int@plt
	mv	a5,a0
	bne	a5,zero,.L18
	sw	zero,-184(s0)
	j	.L19
.L18:
	lwu	a5,-180(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-152(a5)
	sd	a5,-176(s0)
.L17:
	lw	a5,-180(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a2,-152(a5)
	ld	a5,-224(s0)
	lh	a5,2(a5)
	slli	a5,a5,48
	srli	a5,a5,48
	addiw	a5,a5,1
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a4,a5,16
	sraiw	a4,a4,16
	addi	a1,s0,-88
	addi	a0,s0,-88
	ld	a5,-224(s0)
	ld	a3,-176(s0)
	call	EccPoint_mult@plt
	lb	a5,-185(s0)
	sext.w	a5,a5
	addi	a4,s0,-88
	mv	a2,a4
	mv	a1,a5
	ld	a0,-216(s0)
	call	uECC_vli_nativeToBytes@plt
	addi	a5,s0,-88
	ld	a1,-224(s0)
	mv	a0,a5
	call	EccPoint_isZero@plt
	mv	a5,a0
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-184(s0)
.L19:
	addi	a5,s0,-168
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	_set_secure
	addi	a5,s0,-120
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	_set_secure
	addi	a5,s0,-152
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	_set_secure
	lw	a5,-184(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L21
	call	__stack_chk_fail@plt
.L21:
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
.LFE3:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
