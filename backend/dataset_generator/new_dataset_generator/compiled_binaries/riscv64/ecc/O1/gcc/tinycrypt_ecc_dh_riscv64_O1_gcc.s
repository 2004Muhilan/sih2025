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
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s2,128(sp)
	sd	s3,120(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s3,a0
	mv	s2,a1
	mv	a1,a2
	mv	s1,a3
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 104(sp)
	li	a4, 0
	li	a2,32
	addi	s0,sp,8
	mv	a0,s0
	call	memcpy@plt
	mv	a2,s1
	mv	a1,s0
	addi	a0,sp,40
	call	EccPoint_compute_public_key@plt
	sext.w	a5,a0
	li	a0,0
	bne	a5,zero,.L6
.L2:
	la	a5,__stack_chk_guard
	ld	a4, 104(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L7
	ld	ra,152(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	ld	s1,136(sp)
	.cfi_restore 9
	ld	s2,128(sp)
	.cfi_restore 18
	ld	s3,120(sp)
	.cfi_restore 19
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.L6:
	.cfi_restore_state
	lh	a5,2(s1)
	addiw	a5,a5,7
	sraiw	a1,a5,31
	srliw	a1,a1,29
	addw	a1,a1,a5
	mv	a2,s0
	sraiw	a1,a1,3
	mv	a0,s2
	call	uECC_vli_nativeToBytes@plt
	addi	s2,sp,40
	mv	a2,s2
	lb	a1,1(s1)
	mv	a0,s3
	call	uECC_vli_nativeToBytes@plt
	lb	a1,1(s1)
	lb	a2,0(s1)
	slli	a2,a2,2
	add	a2,s2,a2
	add	a0,s3,a1
	call	uECC_vli_nativeToBytes@plt
	sd	zero,8(sp)
	sd	zero,8(s0)
	sd	zero,16(s0)
	sd	zero,24(s0)
	li	a0,1
	j	.L2
.L7:
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
	sd	ra,248(sp)
	sd	s0,240(sp)
	sd	s1,232(sp)
	sd	s2,224(sp)
	sd	s3,216(sp)
	sd	s4,208(sp)
	sd	s5,200(sp)
	sd	s6,192(sp)
	sd	s7,184(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	mv	s6,a0
	mv	s7,a1
	mv	s1,a2
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 168(sp)
	li	a4, 0
	li	s0,64
	addi	s2,sp,40
	addi	s5,a2,36
	addi	s3,sp,8
	addi	s4,sp,104
.L11:
	call	uECC_get_rng@plt
	mv	a5,a0
	beq	a0,zero,.L13
	li	a1,64
	mv	a0,s2
	jalr	a5
	beq	a0,zero,.L9
	lh	a5,2(s1)
	addiw	a5,a5,31
	sraiw	a3,a5,31
	srliw	a3,a3,27
	addw	a3,a3,a5
	sraiw	a3,a3,5
	slliw	a3,a3,24
	sraiw	a3,a3,24
	mv	a2,s5
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_mmod@plt
	mv	a2,s1
	mv	a1,s3
	mv	a0,s4
	call	EccPoint_compute_public_key@plt
	sext.w	a0,a0
	bne	a0,zero,.L16
	addiw	s0,s0,-1
	bne	s0,zero,.L11
	li	a0,0
	j	.L9
.L16:
	lh	a5,2(s1)
	addiw	a5,a5,7
	sraiw	a1,a5,31
	srliw	a1,a1,29
	addw	a1,a1,a5
	addi	s0,sp,8
	mv	a2,s0
	sraiw	a1,a1,3
	mv	a0,s7
	call	uECC_vli_nativeToBytes@plt
	addi	s2,sp,104
	mv	a2,s2
	lb	a1,1(s1)
	mv	a0,s6
	call	uECC_vli_nativeToBytes@plt
	lb	a1,1(s1)
	lb	a2,0(s1)
	slli	a2,a2,2
	add	a2,s2,a2
	add	a0,s6,a1
	call	uECC_vli_nativeToBytes@plt
	sd	zero,8(sp)
	sd	zero,16(sp)
	sd	zero,24(sp)
	sd	zero,32(sp)
	li	a0,1
	j	.L9
.L13:
	li	a0,0
.L9:
	la	a5,__stack_chk_guard
	ld	a4, 168(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L17
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
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
.L17:
	.cfi_restore_state
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
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)
	sd	s0,224(sp)
	sd	s1,216(sp)
	sd	s2,208(sp)
	sd	s3,200(sp)
	sd	s4,192(sp)
	sd	s5,184(sp)
	sd	s6,176(sp)
	sd	s7,168(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	mv	s5,a0
	mv	s3,a2
	mv	s0,a3
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 152(sp)
	li	a4, 0
	addi	s1,sp,24
	sd	s1,8(sp)
	addi	s7,sp,56
	sd	s7,16(sp)
	lb	s6,0(a3)
	lb	s2,1(a3)
	lh	a4,2(a3)
	addiw	a4,a4,7
	sraiw	a5,a4,31
	srliw	a5,a5,29
	addw	a5,a5,a4
	sraiw	a2,a5,3
	mv	a0,s1
	call	uECC_vli_bytesToNative@plt
	mv	a2,s2
	mv	a1,s5
	addi	s4,sp,88
	mv	a0,s4
	call	uECC_vli_bytesToNative@plt
	slli	a0,s6,2
	mv	a2,s2
	add	a1,s5,s2
	add	a0,s4,a0
	call	uECC_vli_bytesToNative@plt
	mv	a3,s0
	mv	a2,s7
	mv	a1,s1
	mv	a0,s1
	call	regularize_k@plt
	sext.w	s1,a0
	call	uECC_get_rng@plt
	beq	a0,zero,.L22
	slli	a4,s1,32
	srli	a5,a4,29
	addi	a5,a5,160
	add	a5,a5,sp
	mv	a2,s6
	addi	a1,s0,4
	ld	a0,-152(a5)
	call	uECC_generate_random_int@plt
	beq	a0,zero,.L20
	slli	a4,s1,32
	srli	a5,a4,29
	addi	a5,a5,160
	add	a5,a5,sp
	ld	a3,-152(a5)
.L19:
	lhu	a4,2(s0)
	addiw	a4,a4,1
	seqz	s1,s1
	slli	s1,s1,3
	addi	a5,s1,160
	add	s1,a5,sp
	mv	a5,s0
	slliw	a4,a4,16
	sraiw	a4,a4,16
	ld	a2,-152(s1)
	addi	s1,sp,88
	mv	a1,s1
	mv	a0,s1
	call	EccPoint_mult@plt
	mv	a2,s1
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_nativeToBytes@plt
	mv	a1,s0
	mv	a0,s1
	call	EccPoint_isZero@plt
	sext.w	a0,a0
	seqz	a0,a0
.L20:
	sd	zero,8(sp)
	addi	a5,sp,8
	sd	zero,16(sp)
	sd	zero,56(sp)
	addi	a5,sp,56
	sd	zero,64(sp)
	sd	zero,72(sp)
	sd	zero,80(sp)
	sd	zero,24(sp)
	addi	a5,sp,24
	sd	zero,32(sp)
	sd	zero,40(sp)
	sd	zero,48(sp)
	la	a5,__stack_chk_guard
	ld	a4, 152(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L24
	ld	ra,232(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,224(sp)
	.cfi_restore 8
	ld	s1,216(sp)
	.cfi_restore 9
	ld	s2,208(sp)
	.cfi_restore 18
	ld	s3,200(sp)
	.cfi_restore 19
	ld	s4,192(sp)
	.cfi_restore 20
	ld	s5,184(sp)
	.cfi_restore 21
	ld	s6,176(sp)
	.cfi_restore 22
	ld	s7,168(sp)
	.cfi_restore 23
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
.L22:
	.cfi_restore_state
	li	a3,0
	j	.L19
.L24:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE17:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
