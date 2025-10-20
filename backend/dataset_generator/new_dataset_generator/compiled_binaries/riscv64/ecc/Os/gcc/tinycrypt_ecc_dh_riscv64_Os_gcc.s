	.file	"tinycrypt_ecc_dh.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	_set_secure.constprop.0, @function
_set_secure.constprop.0:
.LFB18:
	.cfi_startproc
	slli	a2,a1,32
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	srli	a2,a2,32
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a0
	call	memset@plt
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	_set_secure.constprop.0, .-_set_secure.constprop.0
	.align	1
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	s1,152(sp)
	sd	s5,120(sp)
	.cfi_offset 9, -24
	.cfi_offset 21, -56
	addi	s1,sp,8
	la	s5,__stack_chk_guard
	ld	a5, 0(s5)
	sd	a5, 104(sp)
	li	a5, 0
	sd	s2,144(sp)
	sd	s4,128(sp)
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	mv	s2,a0
	mv	s4,a1
	mv	a0,s1
	mv	a1,a2
	li	a2,32
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s3,136(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	mv	s0,a3
	addi	s3,sp,40
	call	memcpy@plt
	mv	a2,s0
	mv	a1,s1
	mv	a0,s3
	call	EccPoint_compute_public_key@plt
	sext.w	a5,a0
	li	a0,0
	beq	a5,zero,.L4
	lh	a5,2(s0)
	li	a1,8
	mv	a2,s1
	addiw	a5,a5,7
	divw	a1,a5,a1
	mv	a0,s4
	call	uECC_vli_nativeToBytes@plt
	lb	a1,1(s0)
	mv	a2,s3
	mv	a0,s2
	call	uECC_vli_nativeToBytes@plt
	lb	a2,0(s0)
	lb	a1,1(s0)
	slli	a2,a2,2
	add	a0,s2,a1
	add	a2,s3,a2
	call	uECC_vli_nativeToBytes@plt
	mv	a0,s1
	li	a1,32
	call	_set_secure.constprop.0
	li	a0,1
.L4:
	ld	a4, 104(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s0,160(sp)
	.cfi_restore 8
	ld	s1,152(sp)
	.cfi_restore 9
	ld	s2,144(sp)
	.cfi_restore 18
	ld	s3,136(sp)
	.cfi_restore 19
	ld	s4,128(sp)
	.cfi_restore 20
	ld	s5,120(sp)
	.cfi_restore 21
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	1
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sd	s6,208(sp)
	.cfi_offset 22, -64
	la	s6,__stack_chk_guard
	sd	s0,256(sp)
	sd	s1,248(sp)
	sd	s2,240(sp)
	sd	s3,232(sp)
	sd	s4,224(sp)
	sd	s5,216(sp)
	sd	s7,200(sp)
	sd	s8,192(sp)
	sd	s9,184(sp)
	sd	ra,264(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 1, -8
	mv	s1,a0
	mv	s4,a1
	mv	s0,a2
	ld	a5, 0(s6)
	sd	a5, 168(sp)
	li	a5, 0
	li	s3,64
	addi	s7,sp,40
	li	s8,32
	addi	s9,a2,36
	addi	s2,sp,8
	addi	s5,sp,104
.L14:
	call	uECC_get_rng@plt
	mv	a5,a0
	beq	a0,zero,.L11
	li	a1,64
	mv	a0,s7
	jalr	a5
	beq	a0,zero,.L11
	lh	a3,2(s0)
	mv	a2,s9
	mv	a1,s7
	addiw	a3,a3,31
	divw	a3,a3,s8
	mv	a0,s2
	slliw	a3,a3,24
	sraiw	a3,a3,24
	call	uECC_vli_mmod@plt
	mv	a2,s0
	mv	a1,s2
	mv	a0,s5
	call	EccPoint_compute_public_key@plt
	sext.w	a0,a0
	beq	a0,zero,.L12
	lh	a5,2(s0)
	li	a1,8
	mv	a2,s2
	addiw	a5,a5,7
	divw	a1,a5,a1
	mv	a0,s4
	call	uECC_vli_nativeToBytes@plt
	lb	a1,1(s0)
	mv	a2,s5
	mv	a0,s1
	call	uECC_vli_nativeToBytes@plt
	lb	a2,0(s0)
	lb	a1,1(s0)
	slli	a2,a2,2
	add	a0,s1,a1
	add	a2,s5,a2
	call	uECC_vli_nativeToBytes@plt
	mv	a0,s2
	li	a1,32
	call	_set_secure.constprop.0
	li	a0,1
.L13:
	ld	a4, 168(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L12:
	addiw	s3,s3,-1
	bne	s3,zero,.L14
.L11:
	li	a0,0
	j	.L13
.L15:
	ld	ra,264(sp)
	.cfi_restore 1
	ld	s0,256(sp)
	.cfi_restore 8
	ld	s1,248(sp)
	.cfi_restore 9
	ld	s2,240(sp)
	.cfi_restore 18
	ld	s3,232(sp)
	.cfi_restore 19
	ld	s4,224(sp)
	.cfi_restore 20
	ld	s5,216(sp)
	.cfi_restore 21
	ld	s6,208(sp)
	.cfi_restore 22
	ld	s7,200(sp)
	.cfi_restore 23
	ld	s8,192(sp)
	.cfi_restore 24
	ld	s9,184(sp)
	.cfi_restore 25
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	uECC_make_key, .-uECC_make_key
	.align	1
	.globl	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	s6,192(sp)
	.cfi_offset 22, -64
	la	s6,__stack_chk_guard
	ld	a5, 0(s6)
	sd	a5, 152(sp)
	li	a5, 0
	lh	a5,2(a3)
	sd	s8,176(sp)
	.cfi_offset 24, -80
	mv	s8,a2
	addiw	a5,a5,7
	li	a2,8
	divw	a2,a5,a2
	sd	ra,248(sp)
	sd	s0,240(sp)
	sd	s1,232(sp)
	sd	s3,216(sp)
	sd	s4,208(sp)
	sd	s5,200(sp)
	sd	s2,224(sp)
	sd	s7,184(sp)
	sd	s9,168(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 18, -32
	.cfi_offset 23, -72
	.cfi_offset 25, -88
	lb	s7,1(a3)
	addi	s4,sp,24
	mv	s1,a0
	addi	s5,sp,56
	mv	a0,s4
	lb	s2,0(a3)
	mv	s0,a3
	addi	s3,sp,88
	sd	s4,8(sp)
	sd	s5,16(sp)
	call	uECC_vli_bytesToNative@plt
	mv	a1,s1
	mv	a2,s7
	mv	a0,s3
	call	uECC_vli_bytesToNative@plt
	slli	a0,s2,2
	add	a1,s1,s7
	mv	a2,s7
	add	a0,s3,a0
	call	uECC_vli_bytesToNative@plt
	mv	a3,s0
	mv	a2,s5
	mv	a1,s4
	mv	a0,s4
	call	regularize_k@plt
	sext.w	s1,a0
	call	uECC_get_rng@plt
	beq	a0,zero,.L28
	slli	a5,s1,32
	srli	s9,a5,29
	addi	a5,s9,160
	add	s9,a5,sp
	ld	a0,-152(s9)
	mv	a2,s2
	addi	a1,s0,4
	call	uECC_generate_random_int@plt
	mv	s2,a0
	beq	a0,zero,.L26
	ld	a3,-152(s9)
.L25:
	seqz	s1,s1
	lhu	a4,2(s0)
	slli	s1,s1,3
	addi	a5,s1,160
	add	s1,a5,sp
	ld	a2,-152(s1)
	addiw	a4,a4,1
	slliw	a4,a4,16
	mv	a5,s0
	sraiw	a4,a4,16
	mv	a1,s3
	mv	a0,s3
	call	EccPoint_mult@plt
	mv	a2,s3
	mv	a1,s7
	mv	a0,s8
	call	uECC_vli_nativeToBytes@plt
	mv	a1,s0
	mv	a0,s3
	call	EccPoint_isZero@plt
	sext.w	s2,a0
	seqz	s2,s2
.L26:
	li	a1,16
	addi	a0,sp,8
	call	_set_secure.constprop.0
	li	a1,32
	mv	a0,s5
	call	_set_secure.constprop.0
	li	a1,32
	mv	a0,s4
	call	_set_secure.constprop.0
	ld	a4, 152(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L27
	call	__stack_chk_fail@plt
.L28:
	li	a3,0
	j	.L25
.L27:
	ld	ra,248(sp)
	.cfi_restore 1
	ld	s0,240(sp)
	.cfi_restore 8
	ld	s1,232(sp)
	.cfi_restore 9
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
	ld	s9,168(sp)
	.cfi_restore 25
	mv	a0,s2
	ld	s2,224(sp)
	.cfi_restore 18
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
