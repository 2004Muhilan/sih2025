	.file	"tinycrypt_ecc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
.LFB30:
	.cfi_startproc
	slli	a1,a1,2
	add	a1,a0,a1
	bgeu	a0,a1,.L1
	li	a5,0
.L3:
	lw	a4,-4(a1)
	srliw	a3,a4,1
	or	a5,a5,a3
	sw	a5,-4(a1)
	slliw	a5,a4,31
	addi	a1,a1,-4
	bltu	a0,a1,.L3
.L1:
	ret
	.cfi_endproc
.LFE30:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	1
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s2,8(sp)
	.cfi_offset 18, -24
	ble	a3,zero,.L15
	mv	t6,a0
	mv	t2,a3
	li	t4,0
	li	a7,0
	li	t3,0
	li	t0,0
	j	.L7
.L15:
	li	t1,0
	li	a7,0
	j	.L6
.L17:
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	mv	t3,a7
	mv	a7,t1
	mv	t1,s0
	j	.L11
.L25:
	.cfi_restore 8
	.cfi_restore 9
	sw	t3,0(t6)
	addi	t4,t4,1
	addi	t6,t6,4
.L14:
	mv	t3,a7
	mv	a7,t1
.L7:
	slliw	t5,t4,24
	sraiw	t5,t5,24
	mv	t1,t0
	mv	a4,t0
	blt	t5,zero,.L25
.L8:
	subw	a5,t4,a4
	slli	a5,a5,2
	add	a5,a2,a5
	lwu	a6,0(a5)
	slli	a5,a4,2
	add	a5,a1,a5
	lwu	a5,0(a5)
	mul	a6,a6,a5
	slli	a5,a7,32
	slli	t3,t3,32
	srli	t3,t3,32
	or	a5,a5,t3
	add	a5,a6,a5
	sgtu	a6,a6,a5
	addw	t1,a6,t1
	srai	a7,a5,32
	sext.w	t3,a5
	addiw	a4,a4,1
	slliw	a4,a4,24
	sraiw	a4,a4,24
	ble	a4,t5,.L8
	sw	t3,0(t6)
	addi	t4,t4,1
	addi	t6,t6,4
	bne	t4,t2,.L14
.L6:
	mv	t4,a3
	slliw	t2,a3,1
	sext.w	s2,t2
	addiw	t2,t2,-1
	ble	t2,a3,.L10
	sd	s0,24(sp)
	sd	s1,16(sp)
	mv	t6,a3
	li	t0,1
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	andi	s1,a3,0xff
	li	s0,0
.L13:
	slliw	a5,t0,24
	sraiw	a5,a5,24
	ble	a3,a5,.L17
	slli	a6,a5,2
	add	a6,a1,a6
	sub	t4,t4,a5
	slli	t4,t4,2
	add	t4,a2,t4
	subw	t5,s1,t0
	andi	t5,t5,0xff
	add	t5,t5,a5
	slli	t5,t5,2
	add	t5,a1,t5
	mv	t3,a7
	mv	a7,t1
	mv	t1,s0
.L12:
	lwu	a4,0(a6)
	lwu	a5,0(t4)
	mul	a4,a4,a5
	slli	a5,a7,32
	slli	t3,t3,32
	srli	t3,t3,32
	or	a5,a5,t3
	add	a5,a4,a5
	sgtu	a4,a4,a5
	addw	t1,a4,t1
	srai	a7,a5,32
	sext.w	t3,a5
	addi	a6,a6,4
	addi	t4,t4,-4
	bne	a6,t5,.L12
.L11:
	slli	a5,t6,2
	add	a5,a0,a5
	sw	t3,0(a5)
	addiw	t6,t6,1
	slliw	t6,t6,24
	sraiw	t6,t6,24
	mv	t4,t6
	addiw	t0,t0,1
	andi	t0,t0,0xff
	bgt	t2,t6,.L13
	ld	s0,24(sp)
	.cfi_restore 8
	ld	s1,16(sp)
	.cfi_restore 9
.L10:
	slli	s2,s2,2
	add	a0,a0,s2
	sw	a7,-4(a0)
	ld	s2,8(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	1
	.type	uECC_vli_add, @function
uECC_vli_add:
.LFB28:
	.cfi_startproc
	mv	t3,a0
	ble	a3,zero,.L31
	slli	a3,a3,2
	li	a4,0
	li	a0,0
	li	t4,0
	j	.L30
.L29:
	sgtu	a6,a6,t1
	or	a7,a7,a6
	sext.w	a0,a7
	add	a6,t3,a4
	sw	a5,0(a6)
	addi	a4,a4,4
	beq	a4,a3,.L33
.L30:
	add	a5,a1,a4
	lw	a6,0(a5)
	add	a5,a2,a4
	lw	a5,0(a5)
	addw	a5,a5,a6
	addw	a5,a5,a0
	sext.w	t1,a5
	mv	a7,t4
	bne	a6,t1,.L29
	mv	a7,a0
	j	.L29
.L33:
	ret
.L31:
	li	a0,0
	ret
	.cfi_endproc
.LFE28:
	.size	uECC_vli_add, .-uECC_vli_add
	.align	1
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	mv	s1,a2
	lw	a5,0(a0)
	andi	a5,a5,1
	bne	a5,zero,.L39
	mv	a1,a2
	call	uECC_vli_rshift1
	j	.L34
.L39:
	sd	s2,0(sp)
	mv	a3,a2
	mv	a2,a1
	mv	a1,a0
	.cfi_offset 18, -32
	call	uECC_vli_add
	sext.w	s2,a0
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_rshift1
	beq	s2,zero,.L38
	slli	s1,s1,2
	addi	s1,s1,-4
	add	s0,s0,s1
	lw	a5,0(s0)
	li	a4,-2147483648
	or	a5,a5,a4
	sw	a5,0(s0)
	ld	s2,0(sp)
	.cfi_restore 18
.L34:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L38:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	ld	s2,0(sp)
	.cfi_restore 18
	j	.L34
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.globl	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
.LFB14:
	.cfi_startproc
	sd	a0,.LANCHOR0,a5
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_set_rng, .-uECC_set_rng
	.align	1
	.globl	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
.LFB15:
	.cfi_startproc
	ld	a0,.LANCHOR0
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_get_rng, .-uECC_get_rng
	.align	1
	.globl	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
.LFB16:
	.cfi_startproc
	lh	a5,2(a0)
	addiw	a5,a5,7
	sraiw	a0,a5,31
	srliw	a0,a0,29
	addw	a0,a0,a5
	sraiw	a0,a0,3
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	1
	.globl	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
.LFB17:
	.cfi_startproc
	lb	a0,1(a0)
	slliw	a0,a0,1
	ret
	.cfi_endproc
.LFE17:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	1
	.globl	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
.LFB18:
	.cfi_startproc
	ble	a1,zero,.L44
	mv	a5,a0
	slli	a1,a1,2
	add	a0,a0,a1
.L46:
	sw	zero,0(a5)
	addi	a5,a5,4
	bne	a5,a0,.L46
.L44:
	ret
	.cfi_endproc
.LFE18:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	1
	.globl	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
.LFB19:
	.cfi_startproc
	ble	a1,zero,.L51
	mv	a5,a0
	slli	a1,a1,2
	add	a3,a0,a1
	li	a0,0
.L50:
	lw	a4,0(a5)
	or	a0,a4,a0
	addi	a5,a5,4
	bne	a5,a3,.L50
.L49:
	seqz	a0,a0
	ret
.L51:
	li	a0,0
	j	.L49
	.cfi_endproc
.LFE19:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	1
	.globl	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
.LFB20:
	.cfi_startproc
	srai	a5,a1,5
	slli	a5,a5,2
	add	a0,a0,a5
	li	a5,1
	sllw	a5,a5,a1
	lw	a0,0(a0)
	and	a0,a0,a5
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE20:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	1
	.globl	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
.LFB22:
	.cfi_startproc
	addiw	a5,a1,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a5,zero,.L55
	slli	a4,a5,2
	add	a4,a0,a4
.L56:
	lw	a3,0(a4)
	bne	a3,zero,.L69
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a4,-4
	bge	a5,zero,.L56
	li	a0,0
	ret
.L55:
	bne	a1,zero,.L62
	li	a0,0
	ret
.L65:
	mv	a4,a5
	j	.L60
.L69:
	addiw	a5,a5,1
	slliw	a1,a5,24
	sraiw	a1,a1,24
.L62:
	slli	a5,a1,2
	add	a0,a0,a5
	lw	a5,-4(a0)
	beq	a5,zero,.L65
	li	a4,0
.L61:
	srliw	a5,a5,1
	addiw	a4,a4,1
	bne	a5,zero,.L61
.L60:
	addiw	a0,a1,-1
	slliw	a0,a0,5
	addw	a0,a0,a4
	slliw	a0,a0,16
	sraiw	a0,a0,16
	ret
	.cfi_endproc
.LFE22:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	1
	.globl	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
.LFB23:
	.cfi_startproc
	ble	a2,zero,.L70
	mv	a5,a1
	slli	a2,a2,2
	add	a1,a1,a2
.L72:
	lw	a4,0(a5)
	sw	a4,0(a0)
	addi	a5,a5,4
	addi	a0,a0,4
	bne	a5,a1,.L72
.L70:
	ret
	.cfi_endproc
.LFE23:
	.size	uECC_vli_set, .-uECC_vli_set
	.align	1
	.globl	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
.LFB24:
	.cfi_startproc
	addiw	a2,a2,-1
	slliw	a2,a2,24
	sraiw	a2,a2,24
	blt	a2,zero,.L77
	slli	a5,a2,2
	add	a0,a0,a5
	add	a1,a1,a5
.L76:
	lw	a4,0(a0)
	lw	a5,0(a1)
	bgtu	a4,a5,.L78
	bltu	a4,a5,.L79
	addiw	a2,a2,-1
	slliw	a2,a2,24
	sraiw	a2,a2,24
	addi	a0,a0,-4
	addi	a1,a1,-4
	bge	a2,zero,.L76
	li	a0,0
	ret
.L77:
	li	a0,0
	ret
.L78:
	li	a0,1
	ret
.L79:
	li	a0,-1
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	1
	.globl	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
.LFB25:
	.cfi_startproc
	addiw	a2,a2,-1
	slliw	a2,a2,24
	sraiw	a2,a2,24
	blt	a2,zero,.L84
	slli	a5,a2,2
	add	a4,a0,a5
	add	a1,a1,a5
	li	a0,0
.L83:
	lw	a5,0(a4)
	lw	a3,0(a1)
	xor	a5,a5,a3
	or	a0,a5,a0
	addiw	a2,a2,-1
	slliw	a2,a2,24
	sraiw	a2,a2,24
	addi	a4,a4,-4
	addi	a1,a1,-4
	bge	a2,zero,.L83
.L82:
	snez	a0,a0
	ret
.L84:
	li	a0,0
	j	.L82
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	1
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB26:
	.cfi_startproc
	beq	a2,zero,.L88
	li	a1,0
.L88:
	mulw	a0,a0,a2
	or	a0,a1,a0
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE26:
	.size	cond_set, .-cond_set
	.align	1
	.globl	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
.LFB27:
	.cfi_startproc
	mv	t3,a0
	ble	a3,zero,.L94
	slli	a3,a3,2
	li	a5,0
	li	a0,0
	li	t4,0
	j	.L93
.L92:
	sltu	a4,a4,t1
	or	a7,a7,a4
	sext.w	a0,a7
	add	a4,t3,a5
	sw	a6,0(a4)
	addi	a5,a5,4
	beq	a5,a3,.L96
.L93:
	add	a4,a1,a5
	lw	a4,0(a4)
	subw	a6,a4,a0
	add	a7,a2,a5
	lw	a7,0(a7)
	subw	a6,a6,a7
	sext.w	t1,a6
	mv	a7,t4
	bne	a4,t1,.L92
	mv	a7,a0
	j	.L92
.L96:
	ret
.L94:
	li	a0,0
	ret
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	1
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a0
	mv	s1,a1
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 40(sp)
	li	a4, 0
	li	a2,8
	call	uECC_vli_set
	sw	zero,16(sp)
	sw	zero,12(sp)
	sw	zero,8(sp)
	lw	a5,44(s1)
	sw	a5,20(sp)
	lw	a5,48(s1)
	sw	a5,24(sp)
	lw	a5,52(s1)
	sw	a5,28(sp)
	lw	a5,56(s1)
	sw	a5,32(sp)
	lw	a5,60(s1)
	sw	a5,36(sp)
	li	a3,8
	addi	s3,sp,8
	mv	a2,s3
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_add
	sext.w	s0,a0
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_add
	addw	s0,s0,a0
	lw	a5,48(s1)
	sw	a5,20(sp)
	lw	a5,52(s1)
	sw	a5,24(sp)
	lw	a5,56(s1)
	sw	a5,28(sp)
	lw	a5,60(s1)
	sw	a5,32(sp)
	sw	zero,36(sp)
	li	a3,8
	mv	a2,s3
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_add
	addw	s0,s0,a0
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_add
	addw	s0,s0,a0
	lw	a5,32(s1)
	sw	a5,8(sp)
	lw	a5,36(s1)
	sw	a5,12(sp)
	lw	a5,40(s1)
	sw	a5,16(sp)
	sw	zero,28(sp)
	sw	zero,24(sp)
	sw	zero,20(sp)
	lw	a5,56(s1)
	sw	a5,32(sp)
	lw	a5,60(s1)
	sw	a5,36(sp)
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_add
	addw	s0,s0,a0
	lw	a5,36(s1)
	sw	a5,8(sp)
	lw	a5,40(s1)
	sw	a5,12(sp)
	lw	a5,44(s1)
	sw	a5,16(sp)
	lw	a5,52(s1)
	sw	a5,20(sp)
	lw	a4,56(s1)
	sw	a4,24(sp)
	lw	a4,60(s1)
	sw	a4,28(sp)
	sw	a5,32(sp)
	lw	a5,32(s1)
	sw	a5,36(sp)
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_add
	addw	s0,s0,a0
	lw	a5,44(s1)
	sw	a5,8(sp)
	lw	a5,48(s1)
	sw	a5,12(sp)
	lw	a5,52(s1)
	sw	a5,16(sp)
	sw	zero,28(sp)
	sw	zero,24(sp)
	sw	zero,20(sp)
	lw	a5,32(s1)
	sw	a5,32(sp)
	lw	a5,40(s1)
	sw	a5,36(sp)
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_sub
	subw	s0,s0,a0
	lw	a5,48(s1)
	sw	a5,8(sp)
	lw	a5,52(s1)
	sw	a5,12(sp)
	lw	a5,56(s1)
	sw	a5,16(sp)
	lw	a5,60(s1)
	sw	a5,20(sp)
	lw	a5,36(s1)
	sw	a5,32(sp)
	lw	a5,44(s1)
	sw	a5,36(sp)
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_sub
	subw	s0,s0,a0
	lw	a5,52(s1)
	sw	a5,8(sp)
	lw	a5,56(s1)
	sw	a5,12(sp)
	lw	a5,60(s1)
	sw	a5,16(sp)
	lw	a5,32(s1)
	sw	a5,20(sp)
	lw	a5,36(s1)
	sw	a5,24(sp)
	lw	a5,40(s1)
	sw	a5,28(sp)
	sw	zero,32(sp)
	lw	a5,48(s1)
	sw	a5,36(sp)
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_sub
	subw	s0,s0,a0
	lw	a5,56(s1)
	sw	a5,8(sp)
	lw	a5,60(s1)
	sw	a5,12(sp)
	sw	zero,16(sp)
	lw	a5,36(s1)
	sw	a5,20(sp)
	lw	a5,40(s1)
	sw	a5,24(sp)
	lw	a5,44(s1)
	sw	a5,28(sp)
	lw	a5,52(s1)
	sw	a5,36(sp)
	li	a3,8
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_sub
	subw	s0,s0,a0
	lla	s1,.LANCHOR1+4
	li	s3,1
	bge	s0,zero,.L98
.L99:
	li	a3,8
	mv	a2,s1
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_add
	addw	s0,s0,a0
	blt	s0,zero,.L99
	j	.L97
.L101:
	li	a3,8
	mv	a2,s1
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_sub
	subw	s0,s0,a0
.L98:
	bne	s0,zero,.L101
	li	a2,8
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_cmp_unsafe
	bne	a0,s3,.L101
.L97:
	la	a5,__stack_chk_guard
	ld	a4, 40(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L106
	ld	ra,88(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L106:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a2
	la	s3,__stack_chk_guard
	ld	a5, 0(s3)
	sd	a5, 40(sp)
	li	a5, 0
	mv	a3,a2
	mv	a2,a1
	mv	a1,a0
	addi	s1,sp,8
	mv	a0,s1
	call	uECC_vli_sub
	sext.w	s0,a0
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_isZero
	sext.w	a0,a0
	seqz	a0,a0
	snez	s0,s0
	slliw	s0,s0,1
	subw	a0,a0,s0
	ld	a4, 40(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L110
	slliw	a0,a0,24
	sraiw	a0,a0,24
	ld	ra,88(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L110:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE29:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	1
	.globl	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s1,a0
	mv	s2,a3
	mv	s0,a4
	mv	a3,a4
	call	uECC_vli_add
	sext.w	a0,a0
	bne	a0,zero,.L112
	mv	a2,s0
	mv	a1,s1
	mv	a0,s2
	call	uECC_vli_cmp_unsafe
	li	a5,1
	beq	a0,a5,.L111
.L112:
	mv	a3,s0
	mv	a2,s2
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_sub
.L111:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	1
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s1,a0
	mv	s2,a3
	mv	s0,a4
	mv	a3,a4
	call	uECC_vli_sub
	sext.w	a5,a0
	bne	a5,zero,.L118
.L115:
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L118:
	.cfi_restore_state
	mv	a3,s0
	mv	a2,s2
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_add
	j	.L115
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)
	sd	s0,256(sp)
	sd	s1,248(sp)
	sd	s2,240(sp)
	sd	s3,232(sp)
	sd	s4,224(sp)
	sd	s11,168(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 27, -104
	mv	s11,a0
	mv	s0,a2
	mv	s3,a3
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 152(sp)
	li	a4, 0
	addi	a5,sp,88
	sd	a5,8(sp)
	sd	a1,16(sp)
	mv	a1,a3
	mv	a0,a2
	call	uECC_vli_numBits
	slliw	a5,s3,6
	subw	a5,a5,a0
	slliw	s1,a5,16
	sraiw	s1,s1,16
	sraiw	a4,s1,31
	srliw	a4,a4,27
	addw	a5,a4,s1
	sraiw	a0,a5,5
	slliw	s4,a0,24
	sraiw	s4,s4,24
	andi	s2,a5,31
	subw	s2,s2,a4
	slliw	s2,s2,24
	sraiw	s2,s2,24
	mv	a1,s4
	addi	a0,sp,24
	call	uECC_vli_clear
	ble	s2,zero,.L120
	sd	s5,216(sp)
	sd	s6,208(sp)
	sd	s7,200(sp)
	sd	s8,192(sp)
	sd	s9,184(sp)
	sd	s10,176(sp)
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	beq	s3,zero,.L129
	mv	a2,s0
	mv	a4,s4
	addw	a0,s4,s3
	li	a5,0
	li	a7,32
	subw	a7,a7,s2
.L122:
	lw	a1,0(a2)
	slli	a6,a4,32
	srli	a3,a6,30
	addi	a3,a3,160
	add	a3,a3,sp
	sllw	a6,a1,s2
	or	a5,a5,a6
	sw	a5,-136(a3)
	srlw	a5,a1,a7
	addi	a2,a2,4
	addiw	a4,a4,1
	bne	a4,a0,.L122
.L129:
	mv	s10,s3
	slliw	s0,s3,1
	slli	a5,s3,2
	addi	s7,sp,24
	add	s7,s7,a5
	li	s2,1
	li	s4,0
	addi	s9,sp,24
	addiw	s5,s3,-1
	slli	s5,s5,2
	addi	a5,s5,160
	add	s5,a5,sp
	slli	s6,s3,2
	addi	a5,s6,160
	add	s6,a5,sp
	li	s8,-1
	j	.L124
.L120:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	slli	a0,s4,2
	mv	a2,s3
	mv	a1,s0
	addi	a5,sp,24
	add	a0,a5,a0
	call	uECC_vli_set
	li	s2,1
	blt	s1,zero,.L123
	sd	s5,216(sp)
	sd	s6,208(sp)
	sd	s7,200(sp)
	sd	s8,192(sp)
	sd	s9,184(sp)
	sd	s10,176(sp)
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	j	.L129
.L136:
	sltu	a0,a2,a1
.L125:
	add	a3,a6,a3
	sw	a4,0(a3)
	addiw	a5,a5,1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	mv	a4,a5
	bge	a5,s0,.L128
.L126:
	slli	a3,a5,2
	add	a2,a7,a3
	lw	a2,0(a2)
	slli	a4,a4,2
	addi	a4,a4,160
	add	a4,a4,sp
	lw	a4,-136(a4)
	addw	a4,a4,a0
	subw	a4,a2,a4
	sext.w	a1,a4
	bne	a2,a1,.L136
	j	.L125
.L128:
	sub	a0,s2,a0
	seqz	s2,a0
	mv	a1,s3
	mv	a0,s9
	call	uECC_vli_rshift1
	lw	a4,-136(s6)
	slliw	a4,a4,31
	lw	a5,-136(s5)
	or	a5,a5,a4
	sw	a5,-136(s5)
	mv	a1,s3
	mv	a0,s7
	call	uECC_vli_rshift1
	addiw	s1,s1,-1
	slliw	s1,s1,16
	sraiw	s1,s1,16
	beq	s1,s8,.L135
.L124:
	mv	a0,s4
	ble	s10,zero,.L128
	slli	a5,s2,3
	addi	a5,a5,160
	add	a5,a5,sp
	ld	a7,-152(a5)
	xori	a5,s2,1
	slli	a5,a5,3
	addi	a5,a5,160
	add	a5,a5,sp
	ld	a6,-152(a5)
	mv	a5,s4
	mv	a0,s4
	mv	a4,s4
	j	.L126
.L135:
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
	ld	s10,176(sp)
	.cfi_restore 26
.L123:
	slli	a5,s2,3
	addi	a5,a5,160
	add	a5,a5,sp
	mv	a2,s3
	ld	a1,-152(a5)
	mv	a0,s11
	call	uECC_vli_set
	la	a5,__stack_chk_guard
	ld	a4, 152(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L137
	ld	ra,264(sp)
	.cfi_remember_state
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
	ld	s11,168(sp)
	.cfi_restore 27
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
.L137:
	.cfi_restore_state
	sd	s5,216(sp)
	sd	s6,208(sp)
	sd	s7,200(sp)
	sd	s8,192(sp)
	sd	s9,184(sp)
	sd	s10,176(sp)
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	1
	.globl	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s2,a0
	mv	s3,a3
	mv	s1,a4
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 72(sp)
	li	a5, 0
	mv	a3,a4
	addi	s0,sp,8
	mv	a0,s0
	call	uECC_vli_mult
	mv	a3,s1
	mv	a2,s3
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_mmod
	ld	a4, 72(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L141
	ld	ra,120(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	ld	s1,104(sp)
	.cfi_restore 9
	ld	s2,96(sp)
	.cfi_restore 18
	ld	s3,88(sp)
	.cfi_restore 19
	ld	s4,80(sp)
	.cfi_restore 20
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.L141:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE36:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	1
	.globl	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
.LFB37:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a0
	mv	s1,a3
	la	s3,__stack_chk_guard
	ld	a5, 0(s3)
	sd	a5, 72(sp)
	li	a5, 0
	lb	a3,0(a3)
	addi	s0,sp,8
	mv	a0,s0
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s0
	mv	a0,s2
	jalr	a5
	ld	a4, 72(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L145
	ld	ra,120(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	ld	s1,104(sp)
	.cfi_restore 9
	ld	s2,96(sp)
	.cfi_restore 18
	ld	s3,88(sp)
	.cfi_restore 19
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.L145:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	mv	a3,a2
	mv	a2,a1
	call	uECC_vli_modMult_fast
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	1
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s1,a0
	mv	s4,a1
	mv	s0,a2
	mv	s3,a3
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 72(sp)
	li	a4, 0
	lb	s2,0(a3)
	mv	a1,s2
	mv	a0,a2
	call	uECC_vli_isZero
	sext.w	a0,a0
	beq	a0,zero,.L154
.L148:
	la	a5,__stack_chk_guard
	ld	a4, 72(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L155
	ld	ra,136(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	ld	s1,120(sp)
	.cfi_restore 9
	ld	s2,112(sp)
	.cfi_restore 18
	ld	s3,104(sp)
	.cfi_restore 19
	ld	s4,96(sp)
	.cfi_restore 20
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
.L154:
	.cfi_restore_state
	sd	s5,88(sp)
	sd	s6,80(sp)
	mv	a2,s3
	mv	a1,s4
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	addi	s5,sp,8
	mv	a0,s5
	call	uECC_vli_modSquare_fast
	mv	a3,s3
	mv	a2,s5
	mv	a1,s1
	addi	a0,sp,40
	call	uECC_vli_modMult_fast
	mv	a2,s3
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_modSquare_fast
	mv	a3,s3
	mv	a2,s0
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modMult_fast
	mv	a2,s3
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	addi	s5,s3,4
	mv	a4,s2
	mv	a3,s5
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s5
	mv	a2,s0
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s5
	mv	a2,s0
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a3,s3
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modMult_fast
	mv	a4,s2
	mv	a3,s5
	mv	a2,s1
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s5
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modAdd
	li	a1,0
	mv	a0,s1
	call	uECC_vli_testBit
	sext.w	a0,a0
	beq	a0,zero,.L150
	mv	a3,s2
	mv	a2,s5
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_add
	sext.w	s6,a0
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_rshift1
	slli	a5,s2,2
	addi	a5,a5,-4
	add	a5,s1,a5
	slliw	s6,s6,31
	lw	a4,0(a5)
	or	a4,a4,s6
	sw	a4,0(a5)
.L151:
	mv	a2,s3
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	mv	a4,s2
	mv	a3,s5
	addi	s6,sp,40
	mv	a2,s6
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s5
	mv	a2,s6
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s5
	mv	a2,s0
	mv	a1,s6
	mv	a0,s6
	call	uECC_vli_modSub
	mv	a3,s3
	mv	a2,s6
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modMult_fast
	mv	a4,s2
	mv	a3,s5
	addi	s3,sp,8
	mv	a2,s3
	mv	a1,s1
	mv	a0,s3
	call	uECC_vli_modSub
	mv	a2,s2
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_set
	mv	a2,s2
	mv	a1,s4
	mv	a0,s0
	call	uECC_vli_set
	mv	a2,s2
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_set
	ld	s5,88(sp)
	.cfi_remember_state
	.cfi_restore 21
	ld	s6,80(sp)
	.cfi_restore 22
	j	.L148
.L150:
	.cfi_restore_state
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_rshift1
	j	.L151
.L155:
	.cfi_restore 21
	.cfi_restore 22
	sd	s5,88(sp)
	sd	s6,80(sp)
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.align	1
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	mv	s0,a0
	mv	s2,a1
	mv	s1,a2
	la	s3,__stack_chk_guard
	ld	a5, 0(s3)
	sd	a5, 40(sp)
	li	a5, 0
	sw	zero,12(sp)
	sw	zero,16(sp)
	sw	zero,20(sp)
	sw	zero,24(sp)
	sw	zero,28(sp)
	sw	zero,32(sp)
	sw	zero,36(sp)
	li	a5,3
	sw	a5,8(sp)
	lb	s5,0(a2)
	call	uECC_vli_modSquare_fast
	addi	s4,s1,4
	mv	a4,s5
	mv	a3,s4
	addi	a2,sp,8
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a3,s1
	mv	a2,s2
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	mv	a4,s5
	mv	a3,s4
	addi	a2,s1,132
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modAdd
	ld	a4, 40(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L159
	ld	ra,104(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	ld	s1,88(sp)
	.cfi_restore 9
	ld	s2,80(sp)
	.cfi_restore 18
	ld	s3,72(sp)
	.cfi_restore 19
	ld	s4,64(sp)
	.cfi_restore 20
	ld	s5,56(sp)
	.cfi_restore 21
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.L159:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
	.align	1
	.type	XYcZ_addC, @function
XYcZ_addC:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)
	sd	s0,192(sp)
	sd	s1,184(sp)
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s4,160(sp)
	sd	s5,152(sp)
	sd	s6,144(sp)
	sd	s7,136(sp)
	sd	s8,128(sp)
	sd	s9,120(sp)
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
	mv	s5,a0
	mv	s8,a1
	mv	s4,a2
	mv	s7,a3
	mv	s1,a4
	la	s9,__stack_chk_guard
	ld	a5, 0(s9)
	sd	a5, 104(sp)
	li	a5, 0
	lb	s0,0(a4)
	addi	s3,a4,4
	mv	a4,s0
	mv	a3,s3
	mv	a2,a0
	mv	a1,s4
	addi	s6,sp,8
	mv	a0,s6
	call	uECC_vli_modSub
	mv	a2,s1
	mv	a1,s6
	mv	a0,s6
	call	uECC_vli_modSquare_fast
	mv	a3,s1
	mv	a2,s6
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_modMult_fast
	mv	a3,s1
	mv	a2,s6
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modMult_fast
	mv	a4,s0
	mv	a3,s3
	mv	a2,s8
	mv	a1,s7
	mv	a0,s6
	call	uECC_vli_modAdd
	mv	a4,s0
	mv	a3,s3
	mv	a2,s8
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modSub
	mv	a4,s0
	mv	a3,s3
	mv	a2,s5
	mv	a1,s4
	addi	s2,sp,40
	mv	a0,s2
	call	uECC_vli_modSub
	mv	a3,s1
	mv	a2,s2
	mv	a1,s8
	mv	a0,s8
	call	uECC_vli_modMult_fast
	mv	a4,s0
	mv	a3,s3
	mv	a2,s4
	mv	a1,s5
	mv	a0,s2
	call	uECC_vli_modAdd
	mv	a2,s1
	mv	a1,s7
	mv	a0,s4
	call	uECC_vli_modSquare_fast
	mv	a4,s0
	mv	a3,s3
	mv	a2,s2
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modSub
	mv	a4,s0
	mv	a3,s3
	mv	a2,s4
	mv	a1,s5
	addi	s4,sp,72
	mv	a0,s4
	call	uECC_vli_modSub
	mv	a3,s1
	mv	a2,s4
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modMult_fast
	mv	a4,s0
	mv	a3,s3
	mv	a2,s8
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modSub
	mv	a2,s1
	mv	a1,s6
	mv	a0,s4
	call	uECC_vli_modSquare_fast
	mv	a4,s0
	mv	a3,s3
	mv	a2,s2
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modSub
	mv	a4,s0
	mv	a3,s3
	mv	a2,s5
	mv	a1,s4
	mv	a0,s2
	call	uECC_vli_modSub
	mv	a3,s1
	mv	a2,s6
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult_fast
	mv	a4,s0
	mv	a3,s3
	mv	a2,s8
	mv	a1,s2
	mv	a0,s8
	call	uECC_vli_modSub
	mv	a2,s0
	mv	a1,s4
	mv	a0,s5
	call	uECC_vli_set
	ld	a4, 104(sp)
	ld	a5, 0(s9)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L163
	ld	ra,200(sp)
	.cfi_remember_state
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
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
.L163:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)
	sd	s0,192(sp)
	sd	s1,184(sp)
	sd	s4,160(sp)
	sd	s6,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	mv	s6,a0
	mv	s1,a1
	mv	s4,a2
	mv	s0,a3
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 136(sp)
	li	a4, 0
	mv	a1,a3
	mv	a0,s1
	call	uECC_vli_isZero
	sext.w	a0,a0
	bne	a0,zero,.L177
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s5,152(sp)
	mv	a2,s0
	mv	a1,s1
	addi	a0,sp,8
	.cfi_remember_state
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	call	uECC_vli_set
	mv	a2,s0
	mv	a1,s4
	addi	a0,sp,40
	call	uECC_vli_set
	mv	a1,s0
	addi	a0,sp,72
	call	uECC_vli_clear
	li	a5,1
	sw	a5,72(sp)
	mv	a1,s0
	addi	a0,sp,104
	call	uECC_vli_clear
	addi	s2,sp,40
	addi	s1,sp,8
	addi	s3,sp,72
	addi	s5,sp,104
	j	.L167
.L177:
	.cfi_restore_state
	mv	a1,s0
	mv	a0,s6
	call	uECC_vli_clear
	j	.L164
.L179:
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_rshift1
	mv	a2,s0
	mv	a1,s4
	mv	a0,s3
	call	vli_modInv_update
.L167:
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_cmp_unsafe
	beq	a0,zero,.L178
	lw	a5,8(sp)
	andi	a5,a5,1
	beq	a5,zero,.L179
	lw	a5,40(sp)
	andi	a5,a5,1
	beq	a5,zero,.L180
	ble	a0,zero,.L171
	mv	a3,s0
	mv	a2,s2
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_sub
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_rshift1
	mv	a2,s0
	mv	a1,s5
	mv	a0,s3
	call	uECC_vli_cmp_unsafe
	blt	a0,zero,.L181
.L172:
	mv	a3,s0
	mv	a2,s5
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_sub
	mv	a2,s0
	mv	a1,s4
	mv	a0,s3
	call	vli_modInv_update
	j	.L167
.L180:
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_rshift1
	mv	a2,s0
	mv	a1,s4
	mv	a0,s5
	call	vli_modInv_update
	j	.L167
.L181:
	mv	a3,s0
	mv	a2,s4
	addi	a0,sp,72
	mv	a1,a0
	call	uECC_vli_add
	j	.L172
.L171:
	mv	a3,s0
	mv	a2,s1
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_sub
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_rshift1
	mv	a2,s0
	mv	a1,s3
	mv	a0,s5
	call	uECC_vli_cmp_unsafe
	blt	a0,zero,.L182
.L173:
	mv	a3,s0
	mv	a2,s3
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_sub
	mv	a2,s0
	mv	a1,s4
	mv	a0,s5
	call	vli_modInv_update
	j	.L167
.L182:
	mv	a3,s0
	mv	a2,s4
	addi	a0,sp,104
	mv	a1,a0
	call	uECC_vli_add
	j	.L173
.L178:
	mv	a2,s0
	addi	a1,sp,72
	mv	a0,s6
	call	uECC_vli_set
	ld	s2,176(sp)
	.cfi_restore 18
	ld	s3,168(sp)
	.cfi_restore 19
	ld	s5,152(sp)
	.cfi_restore 21
.L164:
	la	a5,__stack_chk_guard
	ld	a4, 136(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L183
	ld	ra,200(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,192(sp)
	.cfi_restore 8
	ld	s1,184(sp)
	.cfi_restore 9
	ld	s4,160(sp)
	.cfi_restore 20
	ld	s6,144(sp)
	.cfi_restore 22
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
.L183:
	.cfi_restore_state
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s5,152(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE40:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	1
	.globl	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
.LFB43:
	.cfi_startproc
	lla	a0,.LANCHOR1
	ret
	.cfi_endproc
.LFE43:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	1
	.globl	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
.LFB45:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	lbu	a1,0(a1)
	slliw	a1,a1,1
	slliw	a1,a1,24
	sraiw	a1,a1,24
	call	uECC_vli_isZero
	sext.w	a0,a0
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	1
	.globl	apply_z
	.type	apply_z, @function
apply_z:
.LFB46:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	mv	s4,a0
	mv	s2,a1
	mv	s3,a2
	mv	s1,a3
	la	s5,__stack_chk_guard
	ld	a5, 0(s5)
	sd	a5, 40(sp)
	li	a5, 0
	mv	a2,a3
	mv	a1,s3
	addi	s0,sp,8
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	mv	a3,s1
	mv	a2,s0
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modMult_fast
	mv	a3,s1
	mv	a2,s3
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	mv	a3,s1
	mv	a2,s0
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modMult_fast
	ld	a4, 40(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L190
	ld	ra,104(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	ld	s1,88(sp)
	.cfi_restore 9
	ld	s2,80(sp)
	.cfi_restore 18
	ld	s3,72(sp)
	.cfi_restore 19
	ld	s4,64(sp)
	.cfi_restore 20
	ld	s5,56(sp)
	.cfi_restore 21
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.L190:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE46:
	.size	apply_z, .-apply_z
	.align	1
	.globl	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
.LFB48:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
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
	mv	s5,a0
	mv	s7,a1
	mv	s1,a2
	mv	s3,a3
	mv	s2,a4
	la	s8,__stack_chk_guard
	ld	a5, 0(s8)
	sd	a5, 40(sp)
	li	a5, 0
	lb	s4,0(a4)
	addi	s6,a4,4
	mv	a4,s4
	mv	a3,s6
	mv	a2,a0
	mv	a1,s1
	addi	s0,sp,8
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a2,s2
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	mv	a3,s2
	mv	a2,s0
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_modMult_fast
	mv	a3,s2
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modMult_fast
	mv	a4,s4
	mv	a3,s6
	mv	a2,s7
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modSub
	mv	a2,s2
	mv	a1,s3
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	mv	a4,s4
	mv	a3,s6
	mv	a2,s5
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s4
	mv	a3,s6
	mv	a2,s1
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s4
	mv	a3,s6
	mv	a2,s5
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modSub
	mv	a3,s2
	mv	a2,s1
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modMult_fast
	mv	a4,s4
	mv	a3,s6
	mv	a2,s0
	mv	a1,s5
	mv	a0,s1
	call	uECC_vli_modSub
	mv	a3,s2
	mv	a2,s1
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modMult_fast
	mv	a4,s4
	mv	a3,s6
	mv	a2,s7
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modSub
	mv	a2,s4
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_set
	ld	a4, 40(sp)
	ld	a5, 0(s8)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L194
	ld	ra,120(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	ld	s1,104(sp)
	.cfi_restore 9
	ld	s2,96(sp)
	.cfi_restore 18
	ld	s3,88(sp)
	.cfi_restore 19
	ld	s4,80(sp)
	.cfi_restore 20
	ld	s5,72(sp)
	.cfi_restore 21
	ld	s6,64(sp)
	.cfi_restore 22
	ld	s7,56(sp)
	.cfi_restore 23
	ld	s8,48(sp)
	.cfi_restore 24
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.L194:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.align	1
	.globl	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sd	ra,296(sp)
	sd	s0,288(sp)
	sd	s1,280(sp)
	sd	s2,272(sp)
	sd	s3,264(sp)
	sd	s4,256(sp)
	sd	s5,248(sp)
	sd	s6,240(sp)
	sd	s7,232(sp)
	sd	s8,224(sp)
	sd	s9,216(sp)
	sd	s10,208(sp)
	sd	s11,200(sp)
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
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	sd	a0,0(sp)
	mv	s1,a1
	sd	a1,8(sp)
	mv	s11,a2
	mv	s0,a3
	mv	s6,a4
	mv	s3,a5
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 184(sp)
	li	a4, 0
	lb	s8,0(s3)
	mv	a2,s8
	addi	a0,sp,88
	call	uECC_vli_set
	slli	s9,s8,2
	add	s10,s1,s9
	mv	a2,s8
	mv	a1,s10
	addi	a0,sp,152
	call	uECC_vli_set
	lb	s2,0(s3)
	beq	s0,zero,.L196
	mv	a2,s2
	mv	a1,s0
	addi	a0,sp,24
	call	uECC_vli_set
.L197:
	mv	a2,s2
	addi	s1,sp,88
	mv	a1,s1
	addi	s4,sp,56
	mv	a0,s4
	call	uECC_vli_set
	mv	a2,s2
	addi	s2,sp,152
	mv	a1,s2
	addi	s5,sp,120
	mv	a0,s5
	call	uECC_vli_set
	mv	a3,s3
	addi	s0,sp,24
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	apply_z
	ld	a5,168(s3)
	mv	a3,s3
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	jalr	a5
	mv	a3,s3
	mv	a2,s0
	mv	a1,s5
	mv	a0,s4
	call	apply_z
	addiw	s2,s6,-2
	slliw	s2,s2,16
	sraiw	s2,s2,16
	ble	s2,zero,.L198
	mv	s7,s4
	mv	s6,s5
.L199:
	mv	a1,s2
	mv	a0,s11
	call	uECC_vli_testBit
	sext.w	s0,a0
	snez	s1,s0
	slli	s1,s1,5
	add	s5,s7,s1
	add	s1,s6,s1
	seqz	s0,s0
	slli	s0,s0,5
	add	s4,s7,s0
	add	s0,s6,s0
	mv	a4,s3
	mv	a3,s0
	mv	a2,s4
	mv	a1,s1
	mv	a0,s5
	call	XYcZ_addC
	mv	a4,s3
	mv	a3,s1
	mv	a2,s5
	mv	a1,s0
	mv	a0,s4
	call	XYcZ_add
	addiw	s2,s2,-1
	slliw	s2,s2,16
	sraiw	s2,s2,16
	bne	s2,zero,.L199
.L198:
	li	a1,0
	mv	a0,s11
	call	uECC_vli_testBit
	sext.w	s1,a0
	snez	s2,s1
	slli	s2,s2,5
	addi	s4,sp,56
	add	s6,s4,s2
	addi	s5,sp,120
	add	s2,s5,s2
	seqz	s1,s1
	slli	s1,s1,5
	add	s7,s4,s1
	add	s1,s5,s1
	mv	a4,s3
	mv	a3,s1
	mv	a2,s7
	mv	a1,s2
	mv	a0,s6
	call	XYcZ_addC
	addi	s11,s3,4
	mv	a4,s8
	mv	a3,s11
	mv	a2,s4
	addi	a1,sp,88
	addi	s0,sp,24
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a3,s3
	mv	a2,s2
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	mv	a3,s3
	ld	a2,8(sp)
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	mv	a3,s8
	mv	a2,s11
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modInv
	mv	a3,s3
	mv	a2,s10
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	mv	a3,s3
	mv	a2,s6
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	mv	a4,s3
	mv	a3,s2
	mv	a2,s6
	mv	a1,s1
	mv	a0,s7
	call	XYcZ_add
	mv	a3,s3
	mv	a2,s0
	mv	a1,s5
	mv	a0,s4
	call	apply_z
	mv	a2,s8
	mv	a1,s4
	ld	s0,0(sp)
	mv	a0,s0
	call	uECC_vli_set
	mv	a2,s8
	mv	a1,s5
	add	a0,s0,s9
	call	uECC_vli_set
	la	a5,__stack_chk_guard
	ld	a4, 184(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L203
	ld	ra,296(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,288(sp)
	.cfi_restore 8
	ld	s1,280(sp)
	.cfi_restore 9
	ld	s2,272(sp)
	.cfi_restore 18
	ld	s3,264(sp)
	.cfi_restore 19
	ld	s4,256(sp)
	.cfi_restore 20
	ld	s5,248(sp)
	.cfi_restore 21
	ld	s6,240(sp)
	.cfi_restore 22
	ld	s7,232(sp)
	.cfi_restore 23
	ld	s8,224(sp)
	.cfi_restore 24
	ld	s9,216(sp)
	.cfi_restore 25
	ld	s10,208(sp)
	.cfi_restore 26
	ld	s11,200(sp)
	.cfi_restore 27
	addi	sp,sp,304
	.cfi_def_cfa_offset 0
	jr	ra
.L196:
	.cfi_restore_state
	mv	a1,s2
	addi	a0,sp,24
	call	uECC_vli_clear
	li	a5,1
	sw	a5,24(sp)
	j	.L197
.L203:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE50:
	.size	EccPoint_mult, .-EccPoint_mult
	.align	1
	.globl	regularize_k
	.type	regularize_k, @function
regularize_k:
.LFB51:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	mv	s2,a1
	mv	s3,a2
	lh	s4,2(a3)
	addiw	a5,s4,31
	sraiw	s0,a5,31
	srliw	s0,s0,27
	addw	s0,s0,a5
	sraiw	s0,s0,5
	slliw	s0,s0,24
	sraiw	s0,s0,24
	addi	s1,a3,36
	mv	a3,s0
	mv	a2,s1
	mv	a1,a0
	mv	a0,s2
	call	uECC_vli_add
	sext.w	a0,a0
	li	s6,1
	bne	a0,zero,.L205
	sd	s5,8(sp)
	slliw	a5,s0,5
	li	s6,0
	.cfi_offset 21, -56
	ble	a5,s4,.L209
	mv	a1,s4
	mv	a0,s2
	call	uECC_vli_testBit
	sext.w	s6,a0
	snez	s6,s6
	ld	s5,8(sp)
	.cfi_restore 21
	j	.L205
.L209:
	.cfi_offset 21, -56
	ld	s5,8(sp)
	.cfi_restore 21
.L205:
	mv	a3,s0
	mv	a2,s1
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_add
	mv	a0,s6
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
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	regularize_k, .-regularize_k
	.align	1
	.globl	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s1,a0
	mv	a0,a1
	mv	s0,a2
	la	s2,__stack_chk_guard
	ld	a5, 0(s2)
	sd	a5, 88(sp)
	li	a5, 0
	addi	a1,sp,24
	sd	a1,8(sp)
	addi	a2,sp,56
	sd	a2,16(sp)
	mv	a3,s0
	call	regularize_k
	sext.w	a6,a0
	lhu	a4,2(s0)
	addiw	a4,a4,1
	seqz	a6,a6
	slli	a6,a6,3
	addi	a5,a6,96
	add	a6,a5,sp
	mv	a5,s0
	slliw	a4,a4,16
	sraiw	a4,a4,16
	li	a3,0
	ld	a2,-88(a6)
	addi	a1,s0,68
	mv	a0,s1
	call	EccPoint_mult
	mv	a1,s0
	mv	a0,s1
	call	EccPoint_isZero
	ld	a4, 88(sp)
	ld	a5, 0(s2)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L213
	sext.w	a0,a0
	seqz	a0,a0
	ld	ra,120(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	ld	s1,104(sp)
	.cfi_restore 9
	ld	s2,96(sp)
	.cfi_restore 18
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.L213:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	1
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	ble	a1,zero,.L214
	li	a4,0
	li	a5,0
	addiw	a7,a1,-1
.L216:
	subw	a5,a7,a5
	add	a6,a0,a4
	srliw	a3,a5,2
	slli	a3,a3,2
	add	a3,a2,a3
	andi	a5,a5,3
	slliw	a5,a5,3
	lw	a3,0(a3)
	srlw	a5,a3,a5
	sb	a5,0(a6)
	addiw	a4,a4,1
	slliw	a4,a4,24
	sraiw	a4,a4,24
	mv	a5,a4
	blt	a4,a1,.L216
.L214:
	ret
	.cfi_endproc
.LFE53:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	1
	.globl	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s1,a0
	mv	s2,a1
	mv	s0,a2
	addiw	a5,a2,3
	sraiw	a1,a5,31
	srliw	a1,a1,30
	addw	a1,a1,a5
	sraiw	a1,a1,2
	slliw	a1,a1,24
	sraiw	a1,a1,24
	call	uECC_vli_clear
	ble	s0,zero,.L218
	li	a4,0
	li	a5,0
	addiw	a1,s0,-1
.L220:
	subw	a5,a1,a5
	srliw	a3,a5,2
	slli	a3,a3,2
	add	a3,s1,a3
	add	a2,s2,a4
	lbu	a2,0(a2)
	andi	a5,a5,3
	slliw	a5,a5,3
	sllw	a2,a2,a5
	lw	a5,0(a3)
	or	a5,a5,a2
	sw	a5,0(a3)
	addiw	a4,a4,1
	slliw	a4,a4,24
	sraiw	a4,a4,24
	mv	a5,a4
	blt	a4,s0,.L220
.L218:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	1
	.globl	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
.LFB55:
	.cfi_startproc
	ld	a5,.LANCHOR0
	beq	a5,zero,.L227
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
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
	mv	s1,a0
	mv	s7,a1
	mv	s3,a2
	mv	a1,a2
	mv	a0,s7
	call	uECC_vli_numBits
	slliw	s6,s3,2
	slli	s2,s3,2
	addi	s2,s2,-4
	add	s2,s1,s2
	slliw	a5,s3,5
	subw	a5,a5,a0
	li	s4,-1
	srlw	s4,s4,a5
	li	s0,64
	lla	s5,.LANCHOR0
	li	s8,1
	j	.L226
.L225:
	addiw	s0,s0,-1
	beq	s0,zero,.L234
.L226:
	ld	a5,0(s5)
	mv	a1,s6
	mv	a0,s1
	jalr	a5
	beq	a0,zero,.L224
	lw	a5,0(s2)
	and	a5,a5,s4
	sw	a5,0(s2)
	mv	a1,s3
	mv	a0,s1
	call	uECC_vli_isZero
	sext.w	a0,a0
	bne	a0,zero,.L225
	mv	a2,s3
	mv	a1,s1
	mv	a0,s7
	call	uECC_vli_cmp
	bne	a0,s8,.L225
	li	a0,1
.L224:
	ld	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s4,32(sp)
	.cfi_restore 20
	ld	s5,24(sp)
	.cfi_restore 21
	ld	s6,16(sp)
	.cfi_restore 22
	ld	s7,8(sp)
	.cfi_restore 23
	ld	s8,0(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L234:
	.cfi_restore_state
	li	a0,0
	j	.L224
.L227:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	li	a0,0
	ret
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	1
	.globl	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s4,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	mv	s4,a0
	mv	s0,a1
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 72(sp)
	li	a4, 0
	lb	s1,0(a1)
	call	EccPoint_isZero
	sext.w	a5,a0
	bne	a5,zero,.L238
	sd	s3,88(sp)
	.cfi_offset 19, -40
	addi	s3,s0,4
	mv	a2,s1
	mv	a1,s4
	mv	a0,s3
	call	uECC_vli_cmp_unsafe
	li	a5,1
	bne	a0,a5,.L239
	sd	s2,96(sp)
	.cfi_offset 18, -32
	slli	s2,s1,2
	add	s2,s4,s2
	mv	a2,s1
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_cmp_unsafe
	li	a5,1
	bne	a0,a5,.L240
	mv	a2,s0
	mv	a1,s2
	addi	s2,sp,8
	mv	a0,s2
	call	uECC_vli_modSquare_fast
	ld	a5,176(s0)
	mv	a2,s0
	mv	a1,s4
	addi	s0,sp,40
	mv	a0,s0
	jalr	a5
	mv	a2,s1
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_equal
	sext.w	a0,a0
	bne	a0,zero,.L241
	ld	s2,96(sp)
	.cfi_restore 18
	ld	s3,88(sp)
	.cfi_restore 19
.L236:
	la	a5,__stack_chk_guard
	ld	a4, 72(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L243
	ld	ra,120(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	ld	s1,104(sp)
	.cfi_restore 9
	ld	s4,80(sp)
	.cfi_restore 20
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.L238:
	.cfi_restore_state
	li	a0,-1
	j	.L236
.L239:
	.cfi_offset 19, -40
	li	a0,-2
	ld	s3,88(sp)
	.cfi_restore 19
	j	.L236
.L240:
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	li	a0,-2
	ld	s2,96(sp)
	.cfi_remember_state
	.cfi_restore 18
	ld	s3,88(sp)
	.cfi_restore 19
	j	.L236
.L241:
	.cfi_restore_state
	li	a0,-3
	ld	s2,96(sp)
	.cfi_restore 18
	ld	s3,88(sp)
	.cfi_restore 19
	j	.L236
.L243:
	sd	s2,96(sp)
	sd	s3,88(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	1
	.globl	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
.LFB57:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a0
	mv	s0,a1
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 72(sp)
	li	a4, 0
	lb	s3,1(a1)
	mv	a2,s3
	mv	a1,a0
	addi	s1,sp,8
	mv	a0,s1
	call	uECC_vli_bytesToNative
	lb	a0,0(s0)
	slli	a0,a0,2
	mv	a2,s3
	add	a1,s2,s3
	add	a0,s1,a0
	call	uECC_vli_bytesToNative
	li	a2,16
	addi	a1,s0,68
	mv	a0,s1
	call	uECC_vli_cmp_unsafe
	beq	a0,zero,.L247
	mv	a1,s0
	mv	a0,s1
	call	uECC_valid_point
.L245:
	la	a5,__stack_chk_guard
	ld	a4, 72(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L249
	ld	ra,120(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	ld	s1,104(sp)
	.cfi_restore 9
	ld	s2,96(sp)
	.cfi_restore 18
	ld	s3,88(sp)
	.cfi_restore 19
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.L247:
	.cfi_restore_state
	li	a0,-4
	j	.L245
.L249:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE57:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	1
	.globl	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
.LFB58:
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
	mv	s2,a1
	mv	s1,a2
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 104(sp)
	li	a4, 0
	lh	s0,2(a2)
	addiw	a4,s0,7
	sraiw	a5,a4,31
	srliw	a5,a5,29
	addw	a5,a5,a4
	sraiw	a2,a5,3
	mv	a1,a0
	addi	s3,sp,8
	mv	a0,s3
	call	uECC_vli_bytesToNative
	addiw	a5,s0,31
	sraiw	s0,a5,31
	srliw	s0,s0,27
	addw	s0,s0,a5
	sraiw	s0,s0,5
	slliw	s0,s0,24
	sraiw	s0,s0,24
	mv	a1,s0
	mv	a0,s3
	call	uECC_vli_isZero
	sext.w	a5,a0
	li	a0,0
	bne	a5,zero,.L251
	mv	a2,s0
	mv	a1,s3
	addi	a0,s1,36
	call	uECC_vli_cmp
	mv	a4,a0
	li	a5,1
	li	a0,0
	beq	a4,a5,.L257
.L251:
	la	a5,__stack_chk_guard
	ld	a4, 104(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L258
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
.L257:
	.cfi_restore_state
	mv	a2,s1
	mv	a1,s3
	addi	a0,sp,40
	call	EccPoint_compute_public_key
	sext.w	a5,a0
	li	a0,0
	beq	a5,zero,.L251
	addi	s0,sp,40
	mv	a2,s0
	lb	a1,1(s1)
	mv	a0,s2
	call	uECC_vli_nativeToBytes
	lb	a1,1(s1)
	lb	a2,0(s1)
	slli	a2,a2,2
	add	a2,s0,a2
	add	a0,s2,a1
	call	uECC_vli_nativeToBytes
	li	a0,1
	j	.L251
.L258:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE58:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.data.rel,"aw"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	g_rng_function, @object
	.size	g_rng_function, 8
g_rng_function:
	.dword	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	3
	.set	.LANCHOR1,. + 0
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
