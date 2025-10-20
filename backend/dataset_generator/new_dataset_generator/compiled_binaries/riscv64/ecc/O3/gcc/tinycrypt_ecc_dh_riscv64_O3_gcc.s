	.file	"tinycrypt_ecc_dh.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	mv	a6,a2
	sd	s2,144(sp)
	sd	s4,128(sp)
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	la	s2,__stack_chk_guard
	addi	s4,sp,8
	ld	a5, 0(s2)
	sd	a5, 104(sp)
	li	a5, 0
	sd	s1,152(sp)
	sd	s5,120(sp)
	li	a2,32
	.cfi_offset 9, -24
	.cfi_offset 21, -56
	mv	s5,a0
	mv	s1,a1
	mv	a0,s4
	mv	a1,a6
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
	mv	a1,s4
	mv	a0,s3
	call	EccPoint_compute_public_key@plt
	sext.w	a5,a0
	li	a0,0
	bne	a5,zero,.L9
.L2:
	ld	a4, 104(sp)
	ld	a5, 0(s2)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L10
	ld	ra,168(sp)
	.cfi_remember_state
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
.L9:
	.cfi_restore_state
	lh	a5,2(s0)
	mv	a2,s4
	mv	a0,s1
	addiw	a5,a5,7
	sraiw	a1,a5,31
	srliw	a1,a1,29
	addw	a1,a1,a5
	sraiw	a1,a1,3
	call	uECC_vli_nativeToBytes@plt
	lb	a1,1(s0)
	mv	a2,s3
	mv	a0,s5
	call	uECC_vli_nativeToBytes@plt
	lb	a2,0(s0)
	lb	a1,1(s0)
	slli	a2,a2,2
	add	a2,s3,a2
	add	a0,s5,a1
	call	uECC_vli_nativeToBytes@plt
	sd	zero,8(sp)
	sd	zero,16(sp)
	sd	zero,24(sp)
	sd	zero,32(sp)
	li	a0,1
	j	.L2
.L10:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE15:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.align	1
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	s8,176(sp)
	.cfi_offset 24, -80
	la	s8,__stack_chk_guard
	sd	s0,240(sp)
	sd	s1,232(sp)
	sd	s2,224(sp)
	sd	s3,216(sp)
	sd	s4,208(sp)
	sd	s5,200(sp)
	sd	s6,192(sp)
	sd	s7,184(sp)
	sd	ra,248(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 1, -8
	mv	s1,a2
	mv	s6,a0
	mv	s7,a1
	ld	a5, 0(s8)
	sd	a5, 168(sp)
	li	a5, 0
	li	s0,64
	addi	s3,sp,40
	addi	s5,a2,36
	addi	s2,sp,8
	addi	s4,sp,104
	j	.L15
.L26:
	li	a1,64
	mv	a0,s3
	jalr	a5
	beq	a0,zero,.L12
	lh	a5,2(s1)
	mv	a2,s5
	mv	a1,s3
	addiw	a5,a5,31
	sraiw	a3,a5,31
	srliw	a3,a3,27
	addw	a3,a3,a5
	sraiw	a3,a3,5
	slliw	a3,a3,24
	sraiw	a3,a3,24
	mv	a0,s2
	call	uECC_vli_mmod@plt
	mv	a2,s1
	mv	a1,s2
	mv	a0,s4
	call	EccPoint_compute_public_key@plt
	sext.w	a0,a0
	bne	a0,zero,.L25
	addiw	s0,s0,-1
	beq	s0,zero,.L12
.L15:
	call	uECC_get_rng@plt
	mv	a5,a0
	bne	a0,zero,.L26
.L12:
	li	a0,0
.L14:
	ld	a4, 168(sp)
	ld	a5, 0(s8)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L27
	ld	ra,248(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,240(sp)
	.cfi_restore 8
	ld	s1,232(sp)
	.cfi_restore 9
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
.L25:
	.cfi_restore_state
	lh	a5,2(s1)
	mv	a2,s2
	mv	a0,s7
	addiw	a5,a5,7
	sraiw	a1,a5,31
	srliw	a1,a1,29
	addw	a1,a1,a5
	sraiw	a1,a1,3
	call	uECC_vli_nativeToBytes@plt
	lb	a1,1(s1)
	mv	a2,s4
	mv	a0,s6
	call	uECC_vli_nativeToBytes@plt
	lb	a2,0(s1)
	lb	a1,1(s1)
	slli	a2,a2,2
	add	a2,s4,a2
	add	a0,s6,a1
	call	uECC_vli_nativeToBytes@plt
	sd	zero,8(sp)
	sd	zero,8(s2)
	sd	zero,16(s2)
	sd	zero,24(s2)
	li	a0,1
	j	.L14
.L27:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE16:
	.size	uECC_make_key, .-uECC_make_key
	.align	1
	.globl	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
.LFB17:
	.cfi_startproc
	lh	a4,2(a3)
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	ra,248(sp)
	addiw	a4,a4,7
	sraiw	a5,a4,31
	sd	s0,240(sp)
	sd	s1,232(sp)
	sd	s2,224(sp)
	sd	s3,216(sp)
	sd	s4,208(sp)
	sd	s6,192(sp)
	sd	s7,184(sp)
	sd	s5,200(sp)
	sd	s9,168(sp)
	srliw	a5,a5,29
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 21, -56
	.cfi_offset 25, -88
	lb	s5,1(a3)
	addw	a5,a5,a4
	addi	s7,sp,24
	la	s4,__stack_chk_guard
	mv	s1,a0
	addi	s2,sp,56
	mv	a0,s7
	mv	s6,a2
	sraiw	a2,a5,3
	ld	a5, 0(s4)
	sd	a5, 152(sp)
	li	a5, 0
	lb	s9,0(a3)
	mv	s0,a3
	addi	s3,sp,88
	sd	s7,8(sp)
	sd	s2,16(sp)
	call	uECC_vli_bytesToNative@plt
	mv	a1,s1
	mv	a2,s5
	mv	a0,s3
	call	uECC_vli_bytesToNative@plt
	slli	a0,s9,2
	add	a1,s1,s5
	mv	a2,s5
	add	a0,s3,a0
	call	uECC_vli_bytesToNative@plt
	mv	a3,s0
	mv	a2,s2
	mv	a1,s7
	mv	a0,s7
	call	regularize_k@plt
	sext.w	s1,a0
	call	uECC_get_rng@plt
	beq	a0,zero,.L32
	slli	a5,s1,32
	sd	s8,176(sp)
	.cfi_offset 24, -80
	srli	s8,a5,29
	addi	a5,s8,160
	add	s8,a5,sp
	ld	a0,-152(s8)
	mv	a2,s9
	addi	a1,s0,4
	call	uECC_generate_random_int@plt
	beq	a0,zero,.L37
	ld	a3,-152(s8)
	ld	s8,176(sp)
	.cfi_restore 24
.L29:
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
	mv	a1,s5
	mv	a0,s6
	call	uECC_vli_nativeToBytes@plt
	mv	a1,s0
	mv	a0,s3
	call	EccPoint_isZero@plt
	sext.w	a0,a0
	seqz	a0,a0
.L30:
	sd	zero,8(sp)
	addi	a5,sp,8
	sd	zero,16(sp)
	sd	zero,56(sp)
	sd	zero,8(s2)
	sd	zero,16(s2)
	sd	zero,24(s2)
	sd	zero,24(sp)
	sd	zero,8(s7)
	sd	zero,16(s7)
	sd	zero,24(s7)
	ld	a4, 152(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L38
	ld	ra,248(sp)
	.cfi_restore 1
	ld	s0,240(sp)
	.cfi_restore 8
	ld	s1,232(sp)
	.cfi_restore 9
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
	ld	s9,168(sp)
	.cfi_restore 25
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
.L37:
	.cfi_def_cfa_offset 256
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
	ld	s8,176(sp)
	.cfi_restore 24
	j	.L30
.L32:
	li	a3,0
	j	.L29
.L38:
	sd	s8,176(sp)
	.cfi_offset 24, -80
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE17:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
