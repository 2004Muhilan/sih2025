	.file	"tinycrypt_ecc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s1,16(sp)
	.cfi_offset 9, -16
	ble	a3,zero,.L13
	mv	t2,a0
	li	t0,0
	li	t1,0
	li	a7,0
.L3:
	slliw	t5,t0,24
	mv	t3,a7
	sext.w	t6,t0
	mv	a7,t1
	li	a4,0
	li	t1,0
	sraiw	t5,t5,24
.L6:
	subw	a5,t6,a4
	slli	t4,a4,2
	slli	a5,a5,2
	add	a5,a2,a5
	add	t4,a1,t4
	lwu	a6,0(a5)
	lwu	t4,0(t4)
	slli	t3,t3,32
	slli	a5,a7,32
	mul	a6,a6,t4
	srli	t3,t3,32
	or	a5,a5,t3
	addiw	a4,a4,1
	slliw	a4,a4,24
	sraiw	a4,a4,24
	add	a5,a6,a5
	sltu	a6,a5,a6
	addw	t1,a6,t1
	srai	a7,a5,32
	sext.w	t3,a5
	ble	a4,t5,.L6
	sw	t3,0(t2)
	addi	t0,t0,1
	addi	t2,t2,4
	bne	a3,t0,.L3
.L2:
	slliw	t2,a3,1
	addiw	t2,t2,-1
	mv	t4,a3
	slli	s1,a3,1
	bge	a3,t2,.L7
	sd	s0,24(sp)
	sd	s2,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -24
	andi	s0,a3,0xff
	mv	t6,a3
	li	t0,1
.L12:
	slliw	a6,t0,24
	sraiw	a6,a6,24
	ble	a3,a6,.L14
	subw	s2,s0,t0
	andi	s2,s2,0xff
	sub	t4,t4,a6
	add	s2,s2,a6
	slli	t4,t4,2
	slli	a6,a6,2
	slli	s2,s2,2
	mv	t3,a7
	add	a6,a1,a6
	mv	a7,t1
	add	t4,a2,t4
	add	s2,a1,s2
	li	t1,0
.L11:
	lwu	a4,0(a6)
	lwu	t5,0(t4)
	slli	t3,t3,32
	slli	a5,a7,32
	mul	a4,a4,t5
	srli	t3,t3,32
	or	a5,a5,t3
	addi	a6,a6,4
	addi	t4,t4,-4
	add	a5,a4,a5
	sltu	a4,a5,a4
	addw	t1,a4,t1
	srai	a7,a5,32
	sext.w	t3,a5
	bne	s2,a6,.L11
.L8:
	slli	a5,t6,2
	addiw	t6,t6,1
	add	a5,a0,a5
	slliw	t6,t6,24
	sraiw	t6,t6,24
	addiw	t0,t0,1
	sw	t3,0(a5)
	mv	t4,t6
	andi	t0,t0,0xff
	blt	t6,t2,.L12
	ld	s0,24(sp)
	.cfi_restore 8
	ld	s2,8(sp)
	.cfi_restore 18
.L7:
	slli	s1,s1,2
	add	a0,a0,s1
	sw	a7,-4(a0)
	ld	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L14:
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	mv	t3,a7
	mv	a7,t1
	li	t1,0
	j	.L8
.L13:
	.cfi_restore 8
	.cfi_restore 18
	li	t1,0
	li	a7,0
	j	.L2
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	1
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	la	t4,__stack_chk_guard
	ld	a5, 0(t4)
	sd	a5, 40(sp)
	li	a5, 0
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	a5,a1
	addi	a2,a1,32
	mv	a4,a0
.L21:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a2,a5,.L21
	lw	a7,44(a1)
	lw	a4,56(a1)
	lw	a6,48(a1)
	lw	a2,52(a1)
	lw	a5,60(a1)
	addi	a3,sp,8
	sw	a7,20(sp)
	sw	a4,32(sp)
	sw	zero,16(sp)
	sd	zero,8(sp)
	sw	a6,24(sp)
	sw	a2,28(sp)
	sw	a5,36(sp)
	addi	a7,sp,40
	mv	a4,a3
	li	t0,0
.L24:
	lw	a5,0(a4)
	li	a6,0
	slliw	a2,a5,1
	addw	t1,a2,t0
	mv	a2,t1
	bne	a5,t1,.L23
	mv	a6,t0
.L23:
	sgtu	a5,a5,t1
	or	a6,a6,a5
	sw	a2,0(a4)
	addi	a4,a4,4
	sext.w	t0,a6
	bne	a7,a4,.L24
	addi	t1,a0,32
	mv	t3,a3
	mv	a2,a0
	li	t6,0
.L27:
	lw	a4,0(a2)
	lw	a5,0(t3)
	li	a6,0
	addw	a5,a5,a4
	addw	t5,a5,t6
	mv	a5,t5
	bne	a4,t5,.L26
	mv	a6,t6
.L26:
	sgtu	a4,a4,t5
	or	a6,a6,a4
	sw	a5,0(a2)
	addi	a2,a2,4
	sext.w	t6,a6
	addi	t3,t3,4
	bne	t1,a2,.L27
	lw	a4,56(a1)
	lw	a6,48(a1)
	lw	a2,52(a1)
	lw	a5,60(a1)
	addw	t5,t6,t0
	sw	a4,28(sp)
	sw	a6,20(sp)
	sw	a2,24(sp)
	sw	a5,32(sp)
	sw	zero,36(sp)
	mv	a4,a3
	li	t6,0
.L30:
	lw	a5,0(a4)
	li	a6,0
	slliw	a2,a5,1
	addw	t3,a2,t6
	mv	a2,t3
	bne	a5,t3,.L29
	mv	a6,t6
.L29:
	sgtu	a5,a5,t3
	or	a6,a6,a5
	sw	a2,0(a4)
	addi	a4,a4,4
	sext.w	t6,a6
	bne	a7,a4,.L30
	addw	t5,t5,t6
	mv	a7,a3
	mv	a2,a0
	li	t6,0
.L33:
	lw	a4,0(a2)
	lw	a5,0(a7)
	li	a6,0
	addw	a5,a5,a4
	addw	t3,a5,t6
	mv	a5,t3
	bne	a4,t3,.L32
	mv	a6,t6
.L32:
	sgtu	a4,a4,t3
	or	a6,a6,a4
	sw	a5,0(a2)
	addi	a2,a2,4
	sext.w	t6,a6
	addi	a7,a7,4
	bne	t1,a2,.L33
	lwu	a4,32(a1)
	lwu	a7,36(a1)
	lwu	a5,56(a1)
	lwu	a6,60(a1)
	li	a2,-1
	srli	a2,a2,32
	lw	t3,40(a1)
	slli	a7,a7,32
	and	a4,a4,a2
	and	a5,a5,a2
	slli	a6,a6,32
	or	a4,a4,a7
	or	a5,a5,a6
	addw	t5,t5,t6
	sd	a4,8(sp)
	sw	t3,16(sp)
	sw	zero,20(sp)
	sd	zero,24(sp)
	sd	a5,32(sp)
	mv	a7,a3
	mv	a2,a0
	li	t6,0
.L36:
	lw	a4,0(a2)
	lw	a5,0(a7)
	li	a6,0
	addw	a5,a5,a4
	addw	t3,a5,t6
	mv	a5,t3
	bne	a4,t3,.L35
	mv	a6,t6
.L35:
	sgtu	a4,a4,t3
	or	a6,a6,a4
	sw	a5,0(a2)
	addi	a2,a2,4
	sext.w	t6,a6
	addi	a7,a7,4
	bne	t1,a2,.L36
	lwu	a5,52(a1)
	lwu	a6,44(a1)
	lwu	a2,56(a1)
	lwu	t2,60(a1)
	lwu	t0,32(a1)
	lwu	a7,36(a1)
	lwu	t3,40(a1)
	li	a4,-1
	srli	a4,a4,32
	and	a7,a7,a4
	slli	s0,a5,32
	and	a6,a6,a4
	and	a2,a2,a4
	and	a5,a5,a4
	slli	t2,t2,32
	slli	t0,t0,32
	slli	t3,t3,32
	or	a4,a2,t2
	or	a6,a6,s0
	or	a2,a7,t3
	or	a5,a5,t0
	addw	t6,t5,t6
	sd	a2,8(sp)
	sd	a6,16(sp)
	sd	a4,24(sp)
	sd	a5,32(sp)
	mv	a7,a3
	mv	a2,a0
	li	t5,0
.L39:
	lw	a4,0(a2)
	lw	a5,0(a7)
	li	a6,0
	addw	a5,a5,a4
	addw	t3,a5,t5
	mv	a5,t3
	bne	a4,t3,.L38
	mv	a6,t5
.L38:
	sgtu	a4,a4,t3
	or	a6,a6,a4
	sw	a5,0(a2)
	addi	a2,a2,4
	sext.w	t5,a6
	addi	a7,a7,4
	bne	t1,a2,.L39
	lwu	a4,44(a1)
	lwu	a7,48(a1)
	lwu	a5,32(a1)
	lwu	a6,40(a1)
	li	a2,-1
	srli	a2,a2,32
	lw	t3,52(a1)
	slli	a7,a7,32
	and	a4,a4,a2
	slli	a6,a6,32
	and	a5,a5,a2
	or	a4,a4,a7
	or	a5,a5,a6
	addw	t6,t6,t5
	sd	a4,8(sp)
	sw	t3,16(sp)
	sw	zero,20(sp)
	sd	zero,24(sp)
	sd	a5,32(sp)
	mv	a7,a3
	mv	a4,a0
	li	t5,0
.L42:
	lw	a5,0(a4)
	lw	t3,0(a7)
	li	a6,0
	subw	a2,a5,t5
	subw	t3,a2,t3
	mv	a2,t3
	bne	a5,t3,.L41
	mv	a6,t5
.L41:
	sltu	a5,a5,t3
	or	a6,a6,a5
	sw	a2,0(a4)
	addi	a4,a4,4
	sext.w	t5,a6
	addi	a7,a7,4
	bne	t1,a4,.L42
	lwu	a4,56(a1)
	lwu	t0,60(a1)
	lwu	a2,48(a1)
	lwu	t3,52(a1)
	lwu	a5,36(a1)
	lwu	a7,44(a1)
	li	a6,-1
	srli	a6,a6,32
	slli	t3,t3,32
	slli	a7,a7,32
	slli	t0,t0,32
	and	a4,a4,a6
	and	a2,a2,a6
	and	a5,a5,a6
	or	a4,a4,t0
	or	a2,a2,t3
	or	a5,a5,a7
	sd	a4,16(sp)
	subw	t6,t6,t5
	sd	a2,8(sp)
	sd	a5,32(sp)
	mv	t3,a3
	mv	a4,a0
	li	a7,0
.L45:
	lw	a5,0(a4)
	lw	t5,0(t3)
	li	a6,0
	subw	a2,a5,a7
	subw	t5,a2,t5
	mv	a2,t5
	bne	a5,t5,.L44
	mv	a6,a7
.L44:
	sltu	a5,a5,t5
	or	a6,a6,a5
	sw	a2,0(a4)
	addi	a4,a4,4
	sext.w	a7,a6
	addi	t3,t3,4
	bne	t1,a4,.L45
	lwu	a4,60(a1)
	lwu	t0,32(a1)
	lwu	a5,36(a1)
	lwu	t5,40(a1)
	lwu	a2,52(a1)
	lwu	t3,56(a1)
	li	a6,-1
	srli	a6,a6,32
	lw	t2,48(a1)
	slli	t3,t3,32
	slli	t0,t0,32
	and	a4,a4,a6
	slli	t5,t5,32
	and	a5,a5,a6
	and	a2,a2,a6
	or	a4,a4,t0
	or	a2,a2,t3
	or	a5,a5,t5
	subw	a7,t6,a7
	sd	a4,16(sp)
	sd	a2,8(sp)
	sd	a5,24(sp)
	sw	zero,32(sp)
	sw	t2,36(sp)
	mv	t3,a3
	mv	a4,a0
	li	t6,0
.L48:
	lw	a5,0(a4)
	lw	t5,0(t3)
	li	a6,0
	subw	a2,a5,t6
	subw	t5,a2,t5
	mv	a2,t5
	bne	a5,t5,.L47
	mv	a6,t6
.L47:
	sltu	a5,a5,t5
	or	a6,a6,a5
	sw	a2,0(a4)
	addi	a4,a4,4
	sext.w	t6,a6
	addi	t3,t3,4
	bne	t1,a4,.L48
	lwu	a4,60(a1)
	lwu	a5,56(a1)
	lw	t0,36(a1)
	lw	t5,40(a1)
	lw	a6,44(a1)
	lw	a2,52(a1)
	slli	a4,a4,32
	or	a5,a5,a4
	subw	t3,a7,t6
	sd	a5,8(sp)
	sw	zero,16(sp)
	sw	t0,20(sp)
	sw	t5,24(sp)
	sw	a6,28(sp)
	sw	a2,36(sp)
	mv	a4,a0
	li	a7,0
.L51:
	lw	a5,0(a4)
	lw	a6,0(a3)
	li	a1,0
	subw	a2,a5,a7
	subw	a6,a2,a6
	mv	a2,a6
	bne	a5,a6,.L50
	mv	a1,a7
.L50:
	sltu	a5,a5,a6
	or	a1,a1,a5
	sw	a2,0(a4)
	addi	a4,a4,4
	sext.w	a7,a1
	addi	a3,a3,4
	bne	t1,a4,.L51
	subw	t3,t3,a7
	lla	t5,.LANCHOR0
	addi	t6,a0,28
	blt	t3,zero,.L56
.L52:
	bne	t3,zero,.L60
	lla	a5,.LANCHOR0+32
	mv	a4,t6
	j	.L62
.L94:
	bltu	a2,a3,.L60
	addi	a5,a5,-4
	addi	a4,a4,-4
	beq	t5,a5,.L60
.L62:
	lw	a2,0(a5)
	lw	a3,0(a4)
	bleu	a2,a3,.L94
.L20:
	ld	a4, 40(sp)
	ld	a5, 0(t4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L95
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L96:
	.cfi_restore_state
	addw	t3,t3,a7
	bge	t3,zero,.L20
.L56:
	lla	a1,.LANCHOR0
	mv	a3,a0
	li	a7,0
.L55:
	lw	a4,0(a3)
	lw	a5,4(a1)
	li	a2,0
	addw	a5,a5,a4
	addw	a6,a5,a7
	mv	a5,a6
	bne	a4,a6,.L54
	mv	a2,a7
.L54:
	sgtu	a4,a4,a6
	or	a2,a2,a4
	sw	a5,0(a3)
	addi	a3,a3,4
	sext.w	a7,a2
	addi	a1,a1,4
	bne	a3,t1,.L55
	j	.L96
.L60:
	lla	a1,.LANCHOR0
	mv	a4,a0
	li	a7,0
.L59:
	lw	a5,0(a4)
	lw	a6,4(a1)
	li	a2,0
	subw	a3,a5,a7
	subw	a6,a3,a6
	mv	a3,a6
	bne	a5,a6,.L58
	mv	a2,a7
.L58:
	sltu	a5,a5,a6
	or	a2,a2,a5
	sw	a3,0(a4)
	addi	a4,a4,4
	sext.w	a7,a2
	addi	a1,a1,4
	bne	a4,t1,.L59
	subw	t3,t3,a7
	j	.L52
.L95:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	lw	a6,0(a0)
	slli	t4,a2,2
	add	a5,a0,t4
	andi	a6,a6,1
	bne	a6,zero,.L117
	bgeu	a0,a5,.L118
.L104:
	li	a3,0
.L108:
	lw	a4,-4(a5)
	addi	a5,a5,-4
	srliw	a2,a4,1
	or	a3,a3,a2
	slliw	a4,a4,31
	sw	a3,0(a5)
	sext.w	a3,a4
	bltu	a0,a5,.L108
.L107:
	beq	a6,zero,.L97
	addi	t4,t4,-4
	add	a0,a0,t4
	lw	a5,0(a0)
	li	a4,-2147483648
	or	a5,a5,a4
	sw	a5,0(a0)
.L97:
	ret
.L117:
	ble	a2,zero,.L99
	mv	a3,a0
	li	a6,0
.L102:
	lw	a7,0(a3)
	lw	a4,0(a1)
	li	a2,0
	addi	a1,a1,4
	addw	a4,a4,a7
	addw	t1,a4,a6
	mv	a4,t1
	sgtu	t3,a7,t1
	bne	a7,t1,.L101
	mv	a2,a6
.L101:
	or	a2,a2,t3
	sw	a4,0(a3)
	addi	a3,a3,4
	sext.w	a6,a2
	bne	a5,a3,.L102
	bltu	a0,a5,.L104
	j	.L107
.L118:
	ret
.L99:
	li	a6,0
	bltu	a0,a5,.L104
	ret
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.globl	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
.LFB14:
	.cfi_startproc
	sd	a0,.LANCHOR1,a5
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
	ld	a0,.LANCHOR1
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
	ble	a1,zero,.L123
	andi	a1,a1,0xff
	slli	a2,a1,2
	li	a1,0
	tail	memset@plt
.L123:
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
	ble	a1,zero,.L128
	slli	a1,a1,2
	add	a3,a0,a1
	li	a5,0
.L127:
	lw	a4,0(a0)
	addi	a0,a0,4
	or	a5,a4,a5
	bne	a3,a0,.L127
	seqz	a0,a5
	ret
.L128:
	li	a0,1
	ret
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
	lw	a0,0(a0)
	li	a5,1
	sllw	a5,a5,a1
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
	addiw	a4,a1,-1
	slliw	a3,a4,24
	sraiw	a3,a3,24
	mv	a7,a0
	andi	a4,a4,0xff
	blt	a3,zero,.L139
	slli	a4,a4,2
	add	a4,a0,a4
	li	a6,-1
	j	.L133
.L134:
	addi	a4,a4,-4
	beq	a5,a6,.L132
	mv	a3,a5
.L133:
	andi	a2,a3,0xff
	lw	a1,0(a4)
	addiw	a5,a2,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	beq	a1,zero,.L134
	addiw	a2,a2,1
	slliw	a3,a2,24
	sraiw	a3,a3,24
.L135:
	slli	a5,a3,2
	add	a7,a7,a5
	lw	a5,-4(a7)
	li	a4,0
	beq	a5,zero,.L137
.L138:
	srliw	a5,a5,1
	addiw	a4,a4,1
	bne	a5,zero,.L138
	slli	a4,a4,48
	srli	a4,a4,48
.L137:
	addiw	a0,a3,-1
	slliw	a0,a0,5
	addw	a0,a0,a4
	slliw	a0,a0,16
	sraiw	a0,a0,16
	ret
.L139:
	mv	a3,a1
.L132:
	li	a0,0
	bne	a3,zero,.L135
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
	ble	a2,zero,.L145
	slli	a2,a2,2
	add	a4,a1,a2
.L147:
	lw	a5,0(a1)
	addi	a1,a1,4
	addi	a0,a0,4
	sw	a5,-4(a0)
	bne	a1,a4,.L147
.L145:
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
	slliw	a5,a2,24
	sraiw	a5,a5,24
	andi	a2,a2,0xff
	blt	a5,zero,.L152
	slli	a2,a2,2
	add	a0,a0,a2
	add	a1,a1,a2
	li	a2,-1
	j	.L151
.L156:
	bltu	a3,a4,.L154
	addi	a0,a0,-4
	addi	a1,a1,-4
	beq	a5,a2,.L152
.L151:
	lw	a3,0(a0)
	lw	a4,0(a1)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	bleu	a3,a4,.L156
	li	a0,1
	ret
.L152:
	li	a0,0
	ret
.L154:
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
	slliw	a5,a2,24
	sraiw	a5,a5,24
	andi	a2,a2,0xff
	blt	a5,zero,.L160
	slli	a2,a2,2
	add	a3,a0,a2
	add	a1,a1,a2
	li	a0,0
	li	a6,-1
.L159:
	lw	a4,0(a3)
	lw	a2,0(a1)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	xor	a4,a4,a2
	sraiw	a5,a5,24
	or	a0,a4,a0
	addi	a3,a3,-4
	addi	a1,a1,-4
	bne	a5,a6,.L159
	snez	a0,a0
	ret
.L160:
	li	a0,0
	ret
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	1
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB26:
	.cfi_startproc
	beq	a2,zero,.L164
	li	a1,0
.L164:
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
	mv	t5,a0
	ble	a3,zero,.L170
	slli	a3,a3,2
	li	a5,0
	li	a0,0
.L169:
	add	a4,a1,a5
	lw	a7,0(a4)
	add	a4,a2,a5
	lw	a6,0(a4)
	subw	a4,a7,a0
	add	t3,t5,a5
	subw	t1,a4,a6
	mv	a4,t1
	sltu	t4,a7,t1
	addi	a5,a5,4
	li	a6,0
	bne	a7,t1,.L168
	mv	a6,a0
.L168:
	or	a6,a6,t4
	sw	a4,0(t3)
	sext.w	a0,a6
	bne	a3,a5,.L169
	ret
.L170:
	li	a0,0
	ret
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	1
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	la	t4,__stack_chk_guard
	sd	ra,56(sp)
	.cfi_offset 1, -8
	ld	a5, 0(t4)
	sd	a5, 40(sp)
	li	a5, 0
	ble	a2,zero,.L180
	addi	a6,sp,8
	slli	a2,a2,2
	add	t5,a0,a2
	mv	t1,a6
	li	a7,0
.L177:
	lw	a5,0(a0)
	lw	t3,0(a1)
	li	a3,0
	subw	a4,a5,a7
	subw	t3,a4,t3
	mv	a4,t3
	bne	a5,t3,.L176
	mv	a3,a7
.L176:
	sltu	a5,a5,t3
	or	a3,a3,a5
	sw	a4,0(t1)
	addi	a0,a0,4
	sext.w	a7,a3
	addi	a1,a1,4
	addi	t1,t1,4
	bne	t5,a0,.L177
	snez	a7,a7
	add	a4,a2,a6
	li	a5,0
.L178:
	lw	a3,0(a6)
	addi	a6,a6,4
	or	a5,a3,a5
	bne	a4,a6,.L178
	snez	a0,a5
	slliw	a7,a7,1
	subw	a0,a0,a7
	slliw	a0,a0,24
	sraiw	a0,a0,24
.L174:
	ld	a4, 40(sp)
	ld	a5, 0(t4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L185
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L180:
	.cfi_restore_state
	li	a0,0
	j	.L174
.L185:
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
	ble	a4,zero,.L187
	slli	t5,a4,2
	li	a6,0
	li	t4,0
.L190:
	add	a7,a1,a6
	add	a5,a2,a6
	lw	t1,0(a7)
	lw	a5,0(a5)
	add	t6,a0,a6
	li	a7,0
	addw	a5,a5,t1
	addw	t3,a5,t4
	addi	a6,a6,4
	mv	a5,t3
	sgtu	t0,t1,t3
	bne	t1,t3,.L189
	mv	a7,t4
.L189:
	or	a7,a7,t0
	sw	a5,0(t6)
	sext.w	t4,a7
	bne	t5,a6,.L190
	bne	t4,zero,.L191
	addiw	a5,a4,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
.L199:
	slli	a2,a5,2
	add	a7,a3,a2
	li	t1,-1
	add	a2,a0,a2
	j	.L195
.L207:
	bltu	a6,a1,.L194
	addi	a7,a7,-4
	addi	a2,a2,-4
	beq	a5,t1,.L194
.L195:
	lw	a6,0(a7)
	lw	a1,0(a2)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	bleu	a6,a1,.L207
.L186:
	ret
.L194:
	slli	t5,a4,2
	ble	a4,zero,.L208
.L191:
	add	t5,a0,t5
	li	a6,0
.L198:
	lw	a2,0(a0)
	lw	a1,0(a3)
	li	a4,0
	subw	a5,a2,a6
	subw	a1,a5,a1
	mv	a5,a1
	sltu	a7,a2,a1
	bne	a2,a1,.L197
	mv	a4,a6
.L197:
	or	a4,a4,a7
	sw	a5,0(a0)
	addi	a0,a0,4
	sext.w	a6,a4
	addi	a3,a3,4
	bne	t5,a0,.L198
	ret
.L208:
	ret
.L187:
	addiw	a5,a4,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a5,zero,.L186
	li	a5,127
	j	.L199
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	1
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s6,112(sp)
	sd	s5,120(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 21, -56
	lb	s5,0(a2)
	la	s2,__stack_chk_guard
	addi	s1,sp,40
	ld	a5, 0(s2)
	sd	a5, 104(sp)
	li	a5, 0
	mv	s4,a2
	li	a5,3
	mv	a2,a1
	mv	s0,a0
	mv	a3,s5
	mv	a0,s1
	mv	s6,a1
	sw	a5,8(sp)
	sw	zero,12(sp)
	sw	zero,16(sp)
	sw	zero,20(sp)
	sw	zero,24(sp)
	sw	zero,28(sp)
	sw	zero,32(sp)
	sw	zero,36(sp)
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s1
	mv	a0,s0
	jalr	a5
	addi	s3,s4,4
	ble	s5,zero,.L210
	slli	t4,s5,2
	mv	a4,s0
	addi	t1,sp,8
	add	t4,t4,s0
	mv	a3,s0
	li	t3,0
.L213:
	lw	a5,0(a3)
	lw	a0,0(t1)
	li	a7,0
	subw	a6,a5,t3
	subw	a0,a6,a0
	mv	a6,a0
	bne	a5,a0,.L212
	mv	a7,t3
.L212:
	sltu	a5,a5,a0
	or	a7,a7,a5
	sw	a6,0(a3)
	addi	a3,a3,4
	sext.w	t3,a7
	addi	t1,t1,4
	bne	t4,a3,.L213
	bne	t3,zero,.L227
.L210:
	lb	a3,0(s4)
	mv	a2,s6
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s1
	mv	a0,s0
	jalr	a5
	ld	a4, 104(sp)
	ld	a5, 0(s2)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L228
	mv	a1,s0
	mv	a0,s0
	ld	s0,160(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s1,152(sp)
	.cfi_restore 9
	ld	s2,144(sp)
	.cfi_restore 18
	ld	s6,112(sp)
	.cfi_restore 22
	mv	a4,s5
	mv	a3,s3
	ld	s5,120(sp)
	.cfi_restore 21
	ld	s3,136(sp)
	.cfi_restore 19
	addi	a2,s4,132
	ld	s4,128(sp)
	.cfi_restore 20
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	tail	uECC_vli_modAdd
.L227:
	.cfi_restore_state
	mv	a1,s3
	li	a6,0
.L216:
	lw	a3,0(a4)
	lw	a5,0(a1)
	li	a2,0
	addw	a5,a5,a3
	addw	a0,a5,a6
	mv	a5,a0
	bne	a3,a0,.L215
	mv	a2,a6
.L215:
	sgtu	a3,a3,a0
	or	a2,a2,a3
	sw	a5,0(a4)
	addi	a4,a4,4
	sext.w	a6,a2
	addi	a1,a1,4
	bne	t4,a4,.L216
	j	.L210
.L228:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE42:
	.size	x_side_default, .-x_side_default
	.align	1
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	ble	a4,zero,.L229
	slli	a4,a4,2
	li	a5,0
	li	t4,0
.L233:
	add	a6,a1,a5
	lw	t1,0(a6)
	add	a6,a2,a5
	lw	a7,0(a6)
	subw	a6,t1,t4
	add	t5,a0,a5
	subw	t3,a6,a7
	mv	a6,t3
	sltu	t6,t1,t3
	addi	a5,a5,4
	li	a7,0
	bne	t1,t3,.L232
	mv	a7,t4
.L232:
	or	a7,a7,t6
	sw	a6,0(t5)
	sext.w	t4,a7
	bne	a4,a5,.L233
	bne	t4,zero,.L244
.L229:
	ret
.L244:
	add	a4,a0,a4
	li	a7,0
.L236:
	lw	a1,0(a0)
	lw	a5,0(a3)
	li	a2,0
	addi	a3,a3,4
	addw	a5,a5,a1
	addw	a6,a5,a7
	mv	a5,a6
	sgtu	t1,a1,a6
	bne	a1,a6,.L235
	mv	a2,a7
.L235:
	or	a2,a2,t1
	sw	a5,0(a0)
	addi	a0,a0,4
	sext.w	a7,a2
	bne	a4,a0,.L236
	ret
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sd	s11,168(sp)
	sd	ra,264(sp)
	sd	s2,240(sp)
	.cfi_offset 27, -104
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	lb	s2,0(a3)
	la	s11,__stack_chk_guard
	ld	a5, 0(s11)
	sd	a5, 152(sp)
	li	a5, 0
	ble	s2,zero,.L245
	sd	s10,176(sp)
	.cfi_offset 26, -96
	slli	s10,s2,2
	sd	s0,256(sp)
	sd	s1,248(sp)
	sd	s3,232(sp)
	sd	s4,224(sp)
	sd	s9,184(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 25, -88
	mv	s4,a3
	mv	s1,a0
	mv	s3,a1
	mv	s0,a2
	mv	s9,a2
	add	a6,s10,a2
	mv	a5,a2
	li	a4,0
.L247:
	lw	a2,0(a5)
	addi	a5,a5,4
	or	a4,a2,a4
	bne	a5,a6,.L247
	sd	a6,8(sp)
	beq	a4,zero,.L273
	sd	s6,208(sp)
	.cfi_offset 22, -64
	addi	s6,sp,88
	mv	a3,s2
	mv	a2,s3
	mv	a1,s3
	mv	a0,s6
	sd	s5,216(sp)
	sd	s7,200(sp)
	sd	s8,192(sp)
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	call	uECC_vli_mult
	ld	a5,184(s4)
	addi	s5,sp,24
	mv	a1,s6
	mv	a0,s5
	jalr	a5
	lb	a3,0(s4)
	mv	a2,s5
	mv	a1,s1
	mv	a0,s6
	call	uECC_vli_mult
	ld	a5,184(s4)
	addi	s8,sp,56
	mv	a1,s6
	mv	a0,s8
	jalr	a5
	lb	a3,0(s4)
	mv	a2,s5
	mv	a1,s5
	mv	a0,s6
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s6
	mv	a0,s5
	jalr	a5
	lb	a3,0(s4)
	mv	a2,s0
	mv	a1,s3
	mv	a0,s6
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s6
	mv	a0,s3
	jalr	a5
	lb	a3,0(s4)
	mv	a2,s0
	mv	a1,s0
	mv	a0,s6
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s6
	mv	a0,s0
	jalr	a5
	addi	s7,s4,4
	mv	a4,s2
	mv	a3,s7
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s7
	mv	a2,s0
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s7
	mv	a2,s0
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_modSub
	lb	a3,0(s4)
	mv	a2,s0
	mv	a1,s1
	mv	a0,s6
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s6
	mv	a0,s1
	jalr	a5
	mv	a4,s2
	mv	a3,s7
	mv	a2,s1
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a3,s7
	mv	a4,s2
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modAdd
	lw	a3,0(s1)
	ld	a6,8(sp)
	add	a5,s1,s10
	andi	a3,a3,1
	beq	a3,zero,.L274
	mv	a2,s1
	mv	a0,s7
	li	t1,0
.L252:
	lw	a3,0(a2)
	lw	a4,0(a0)
	li	a1,0
	addw	a4,a4,a3
	addw	a7,a4,t1
	mv	a4,a7
	bne	a3,a7,.L251
	mv	a1,t1
.L251:
	sgtu	a3,a3,a7
	or	a1,a1,a3
	sw	a4,0(a2)
	addi	a2,a2,4
	sext.w	t1,a1
	addi	a0,a0,4
	bne	a5,a2,.L252
	li	a3,0
	bgeu	s1,a5,.L256
.L255:
	lw	a4,-4(a5)
	addi	a5,a5,-4
	srliw	a2,a4,1
	or	a3,a3,a2
	slliw	a4,a4,31
	sw	a3,0(a5)
	sext.w	a3,a4
	bltu	s1,a5,.L255
.L256:
	addi	a5,s10,-4
	add	a5,s1,a5
	lw	a4,0(a5)
	slliw	t1,t1,31
	or	a4,a4,t1
	sw	a4,0(a5)
.L254:
	lb	a3,0(s4)
	mv	a2,s1
	mv	a1,s1
	mv	a0,s6
	sd	a6,8(sp)
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s6
	mv	a0,s0
	jalr	a5
	mv	a4,s2
	mv	a3,s7
	mv	a2,s8
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s7
	mv	a2,s8
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s7
	mv	a2,s0
	mv	a1,s8
	mv	a0,s8
	call	uECC_vli_modSub
	lb	a3,0(s4)
	mv	a2,s8
	mv	a1,s1
	mv	a0,s6
	call	uECC_vli_mult
	ld	a5,184(s4)
	mv	a1,s6
	mv	a0,s1
	jalr	a5
	mv	a2,s5
	mv	a4,s2
	mv	a3,s7
	mv	a1,s1
	mv	a0,s5
	call	uECC_vli_modSub
	ld	a6,8(sp)
	mv	a2,s0
.L260:
	lw	a5,0(a2)
	addi	a2,a2,4
	addi	s1,s1,4
	sw	a5,-4(s1)
	bne	a6,a2,.L260
	mv	a5,s3
	add	s10,s10,s3
.L261:
	lw	a4,0(a5)
	addi	a5,a5,4
	addi	s9,s9,4
	sw	a4,-4(s9)
	bne	s10,a5,.L261
	andi	a2,s2,0xff
	mv	a1,s5
	mv	a0,s3
	slli	a2,a2,2
	call	memcpy@plt
	ld	s0,256(sp)
	.cfi_restore 8
	ld	s1,248(sp)
	.cfi_restore 9
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
	ld	s10,176(sp)
	.cfi_restore 26
.L245:
	ld	a4, 152(sp)
	ld	a5, 0(s11)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L275
	ld	ra,264(sp)
	.cfi_restore 1
	ld	s2,240(sp)
	.cfi_restore 18
	ld	s11,168(sp)
	.cfi_restore 27
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
.L274:
	.cfi_def_cfa_offset 272
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
	bgeu	s1,a5,.L254
	lw	a4,-4(a5)
	addi	a5,a5,-4
	srliw	a2,a4,1
	or	a3,a3,a2
	slliw	a4,a4,31
	sw	a3,0(a5)
	sext.w	a3,a4
	j	.L274
.L273:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	ld	s0,256(sp)
	.cfi_restore 8
	ld	s1,248(sp)
	.cfi_restore 9
	ld	s3,232(sp)
	.cfi_restore 19
	ld	s4,224(sp)
	.cfi_restore 20
	ld	s9,184(sp)
	.cfi_restore 25
	ld	s10,176(sp)
	.cfi_restore 26
	j	.L245
.L275:
	sd	s0,256(sp)
	sd	s1,248(sp)
	sd	s3,232(sp)
	sd	s4,224(sp)
	sd	s5,216(sp)
	sd	s6,208(sp)
	sd	s7,200(sp)
	sd	s8,192(sp)
	sd	s9,184(sp)
	sd	s10,176(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE41:
	.size	double_jacobian_default, .-double_jacobian_default
	.align	1
	.type	XYcZ_addC, @function
XYcZ_addC:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sd	ra,280(sp)
	sd	s0,272(sp)
	sd	s1,264(sp)
	sd	s3,248(sp)
	sd	s4,240(sp)
	sd	s5,232(sp)
	sd	s6,224(sp)
	sd	s7,216(sp)
	sd	s8,208(sp)
	sd	s9,200(sp)
	sd	s10,192(sp)
	sd	s11,184(sp)
	sd	s2,256(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
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
	lb	s2,0(a4)
	addi	s5,a4,4
	mv	s6,a2
	addi	s3,sp,8
	la	s10,__stack_chk_guard
	mv	s0,a4
	mv	s7,a3
	mv	s11,a1
	mv	a4,s2
	mv	s8,a0
	mv	a2,a0
	ld	a5, 0(s10)
	sd	a5, 168(sp)
	li	a5, 0
	mv	a3,s5
	mv	a1,s6
	mv	a0,s3
	call	uECC_vli_modSub
	lb	a3,0(s0)
	addi	s1,sp,104
	mv	a2,s3
	mv	a1,s3
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s3
	jalr	a5
	lb	a3,0(s0)
	mv	a2,s3
	mv	a1,s8
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s8
	jalr	a5
	lb	a3,0(s0)
	mv	a2,s3
	mv	a1,s6
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s6
	jalr	a5
	mv	a4,s2
	mv	a3,s5
	mv	a2,s11
	mv	a1,s7
	mv	a0,s3
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s5
	mv	a2,s11
	mv	a1,s7
	mv	a0,s7
	addi	s4,sp,40
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s5
	mv	a2,s8
	mv	a1,s6
	mv	a0,s4
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s4
	mv	a1,s11
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s11
	jalr	a5
	mv	a4,s2
	mv	a3,s5
	mv	a2,s6
	mv	a1,s8
	mv	a0,s4
	call	uECC_vli_modAdd
	lb	a3,0(s0)
	mv	a2,s7
	mv	a1,s7
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s6
	jalr	a5
	mv	a4,s2
	mv	a3,s5
	mv	a2,s4
	mv	a1,s6
	mv	a0,s6
	call	uECC_vli_modSub
	addi	s9,sp,72
	mv	a4,s2
	mv	a3,s5
	mv	a2,s6
	mv	a1,s8
	mv	a0,s9
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s9
	mv	a1,s7
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s7
	jalr	a5
	mv	a4,s2
	mv	a3,s5
	mv	a2,s11
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s3
	mv	a1,s3
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s9
	jalr	a5
	mv	a4,s2
	mv	a3,s5
	mv	a2,s4
	mv	a1,s9
	mv	a0,s9
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s5
	mv	a2,s8
	mv	a1,s9
	mv	a0,s4
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s3
	mv	a1,s4
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s4
	jalr	a5
	mv	a4,s2
	mv	a3,s5
	mv	a2,s11
	mv	a1,s4
	mv	a0,s11
	call	uECC_vli_modSub
	ble	s2,zero,.L276
	andi	a2,s2,0xff
	slli	a2,a2,2
	mv	a1,s9
	mv	a0,s8
	call	memcpy@plt
.L276:
	ld	a4, 168(sp)
	ld	a5, 0(s10)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L280
	ld	ra,280(sp)
	.cfi_remember_state
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
.L280:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	s1,216(sp)
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	ld	a5, 0(s1)
	sd	a5, 152(sp)
	li	a5, 0
	addi	a5,sp,88
	sd	s0,224(sp)
	sd	s5,184(sp)
	.cfi_offset 8, -16
	.cfi_offset 21, -56
	mv	s0,a0
	mv	s5,a1
	mv	a0,a2
	mv	a1,a3
	sd	s2,208(sp)
	sd	s3,200(sp)
	sd	s4,192(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s3,a3
	sd	s6,176(sp)
	sd	s7,168(sp)
	sd	a5,8(sp)
	sd	ra,232(sp)
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 1, -8
	mv	s6,a2
	sd	s5,16(sp)
	call	uECC_vli_numBits
	slliw	a5,s3,6
	subw	a5,a5,a0
	slliw	s2,a5,16
	sraiw	s2,s2,16
	sraiw	a3,s2,31
	srliw	a3,a3,27
	addw	a5,a3,s2
	sraiw	a4,a5,5
	andi	s7,a5,31
	subw	s7,s7,a3
	slliw	s4,a4,24
	slliw	s7,s7,16
	sraiw	s4,s4,24
	sraiw	s7,s7,16
	ble	s4,zero,.L285
	slliw	a4,a4,16
	sraiw	a4,a4,16
	addiw	a4,a4,-1
	andi	a2,a4,0xff
	addi	a2,a2,1
	slli	a2,a2,2
	li	a1,0
	addi	a0,sp,24
	call	memset@plt
.L285:
	ble	s7,zero,.L325
	sd	s8,160(sp)
	.cfi_offset 24, -80
	beq	s3,zero,.L323
	li	a6,32
	mv	a5,s4
	subw	a6,a6,s7
	mv	a2,s6
	addw	a7,s3,s4
	li	a4,0
.L288:
	lw	a1,0(a2)
	slli	a0,a5,32
	srli	a3,a0,30
	addi	a3,a3,160
	sllw	a0,a1,s7
	or	a4,a4,a0
	add	a3,a3,sp
	sw	a4,-136(a3)
	addiw	a5,a5,1
	srlw	a4,a1,a6
	addi	a2,a2,4
	bne	a7,a5,.L288
.L323:
	addi	s4,sp,24
.L289:
	addiw	a7,s3,-1
	slli	t1,s3,2
	slli	a7,a7,2
	add	a2,s4,t1
	addi	a5,a7,160
	sub	a1,a2,t1
	add	a7,a5,sp
	addi	a5,t1,160
	slli	a0,s3,1
	addi	t5,a2,-4
	add	a3,a2,t1
	addi	a1,a1,-4
	li	a6,1
	add	t4,a5,sp
	li	t3,-1
.L287:
	li	t0,0
	ble	s3,zero,.L304
	xori	a5,a6,1
	slli	a4,a6,3
	slli	a5,a5,3
	addi	a4,a4,160
	addi	a5,a5,160
	add	a4,a4,sp
	add	a5,a5,sp
	ld	s5,-152(a4)
	ld	t2,-152(a5)
	li	t0,0
	li	a5,0
	li	a4,0
.L295:
	slli	a4,a4,2
	addi	a4,a4,160
	slli	t6,a5,2
	add	a4,a4,sp
	lw	a4,-136(a4)
	add	s6,s5,t6
	lw	s6,0(s6)
	addw	a4,a4,t0
	subw	s7,s6,a4
	mv	a4,s7
	sltu	s8,s6,s7
	beq	s6,s7,.L294
	mv	t0,s8
.L294:
	addiw	a5,a5,1
	add	t6,t2,t6
	slliw	a5,a5,24
	sraiw	a5,a5,24
	sw	a4,0(t6)
	mv	a4,a5
	blt	a5,a0,.L295
.L304:
	sub	t0,a6,t0
	seqz	a6,t0
	mv	a5,t5
	li	t6,0
	bleu	a2,s4,.L299
.L296:
	lw	a4,0(a5)
	addi	a5,a5,-4
	srliw	t0,a4,1
	or	t6,t6,t0
	slliw	a4,a4,31
	sw	t6,4(a5)
	sext.w	t6,a4
	bne	a5,a1,.L296
.L299:
	lw	t6,-136(t4)
	lw	a4,-136(a7)
	mv	a5,a3
	slliw	t6,t6,31
	or	a4,a4,t6
	sw	a4,-136(a7)
	li	t6,0
	bleu	a3,a2,.L298
.L301:
	lw	a4,-4(a5)
	addi	a5,a5,-4
	srliw	t0,a4,1
	or	t6,t6,t0
	slliw	a4,a4,31
	sw	t6,0(a5)
	sext.w	t6,a4
	bltu	a2,a5,.L301
.L298:
	addiw	s2,s2,-1
	slliw	s2,s2,16
	sraiw	s2,s2,16
	bne	s2,t3,.L287
	slli	a5,a6,3
	addi	a5,a5,160
	add	a5,a5,sp
	ld	s5,-152(a5)
	ld	s8,160(sp)
	.cfi_restore 24
	ble	s3,zero,.L281
.L291:
	mv	a1,s5
	add	t1,s5,t1
.L305:
	lw	a5,0(a1)
	addi	a1,a1,4
	addi	s0,s0,4
	sw	a5,-4(s0)
	bne	a1,t1,.L305
.L281:
	ld	a4, 152(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L326
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
.L325:
	.cfi_restore_state
	slli	a0,s4,2
	addi	s4,sp,24
	ble	s3,zero,.L290
	andi	a2,s3,0xff
	slli	a2,a2,2
	mv	a1,s6
	add	a0,s4,a0
	call	memcpy@plt
	slli	t1,s3,2
	blt	s2,zero,.L291
	sd	s8,160(sp)
	.cfi_remember_state
	.cfi_offset 24, -80
	j	.L289
.L290:
	.cfi_restore_state
	blt	s2,zero,.L281
	sd	s8,160(sp)
	.cfi_remember_state
	.cfi_offset 24, -80
	j	.L289
.L326:
	.cfi_restore_state
	sd	s8,160(sp)
	.cfi_offset 24, -80
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
	sd	s0,112(sp)
	sd	s4,80(sp)
	.cfi_offset 8, -16
	.cfi_offset 20, -48
	addi	s0,sp,8
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 72(sp)
	li	a5, 0
	sd	s2,96(sp)
	sd	s3,88(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a0
	mv	s3,a3
	mv	a0,s0
	mv	a3,a4
	sd	ra,120(sp)
	sd	s1,104(sp)
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	mv	s1,a4
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
	bne	a5,zero,.L330
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
.L330:
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
	mv	s1,a3
	lb	a3,0(a3)
	la	s3,__stack_chk_guard
	addi	s0,sp,8
	mv	s2,a0
	ld	a5, 0(s3)
	sd	a5, 72(sp)
	li	a5, 0
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
	bne	a5,zero,.L334
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
.L334:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	la	a4,__stack_chk_guard
	sd	ra,328(sp)
	ld	a5, 0(a4)
	sd	a5, 216(sp)
	li	a5, 0
	sd	a0,40(sp)
	sd	a2,0(sp)
	.cfi_offset 1, -8
	ble	a3,zero,.L335
	sd	s11,232(sp)
	.cfi_offset 27, -104
	slli	s11,a3,2
	sd	s1,312(sp)
	mv	a5,a1
	.cfi_offset 9, -24
	mv	s1,a3
	add	a2,s11,a1
	li	a4,0
.L338:
	lw	a3,0(a5)
	addi	a5,a5,4
	or	a4,a3,a4
	bne	a2,a5,.L338
	beq	a4,zero,.L422
	andi	a5,s1,0xff
	sd	s2,304(sp)
	sd	s5,280(sp)
	.cfi_offset 18, -32
	.cfi_offset 21, -56
	slli	s2,a5,2
	addi	s5,sp,88
	mv	a2,s2
	mv	a0,s5
	sd	s0,320(sp)
	sd	s3,296(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	addiw	s0,a5,-1
	sd	s4,288(sp)
	sd	s6,272(sp)
	sd	s7,264(sp)
	sd	s8,256(sp)
	sd	s9,248(sp)
	sd	s10,240(sp)
	sd	s2,72(sp)
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	call	memcpy@plt
	ld	a1,0(sp)
	addi	s7,sp,120
	mv	a2,s2
	mv	a0,s7
	call	memcpy@plt
	addi	s3,sp,152
	mv	a2,s2
	li	a1,0
	mv	a0,s3
	call	memset@plt
	addi	a5,sp,184
	sd	a5,24(sp)
	mv	a2,s2
	mv	a0,a5
	mv	s2,a5
	li	a1,0
	li	a5,1
	add	s9,s7,s11
	sw	a5,152(sp)
	call	memset@plt
	add	s6,s5,s11
	andi	s0,s0,0xff
	addi	a4,s9,-4
	slli	a5,s0,2
	sd	a4,64(sp)
	addi	a4,s6,-4
	sd	a4,32(sp)
	add	a4,s5,a5
	li	a7,-4
	sd	a4,16(sp)
	add	a4,s7,a5
	sub	a7,a7,s11
	slliw	s0,s0,24
	sd	a4,8(sp)
	add	a4,s2,a5
	add	a5,s3,a5
	add	s2,s2,s11
	sraiw	s0,s0,24
	add	s8,s9,a7
	sd	a4,56(sp)
	sd	a5,48(sp)
	add	s4,s6,a7
	add	s11,s3,s11
	li	s10,-1
.L341:
	ld	a3,8(sp)
	ld	a4,16(sp)
	mv	a5,s0
	j	.L379
.L424:
	bltu	a1,a2,.L390
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a4,-4
	addi	a3,a3,-4
	beq	a5,s10,.L423
.L379:
	lw	a1,0(a4)
	lw	a2,0(a3)
	bleu	a1,a2,.L424
	lw	a5,88(sp)
	li	a4,1
	andi	a5,a5,1
	beq	a5,zero,.L425
.L416:
	lw	a5,120(sp)
	andi	a5,a5,1
	beq	a5,zero,.L426
	li	a5,1
	bne	a4,a5,.L386
	mv	a0,s7
	mv	a2,s5
	li	a5,0
.L353:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L352
	mv	a1,a5
.L352:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	s6,a2,.L353
	ld	a3,32(sp)
	li	a5,0
	bleu	s6,s5,.L356
.L354:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s4,.L354
.L356:
	ld	a1,56(sp)
	ld	a2,48(sp)
	mv	a5,s0
	j	.L355
.L427:
	bltu	a3,a4,.L358
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a2,a2,-4
	addi	a1,a1,-4
	beq	a5,s10,.L357
.L355:
	lw	a3,0(a2)
	lw	a4,0(a1)
	bleu	a3,a4,.L427
.L357:
	ld	a0,24(sp)
	mv	a2,s3
	li	a5,0
.L359:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L364
	mv	a1,a5
.L364:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	a2,s11,.L359
.L343:
	ld	a1,0(sp)
	mv	a2,s1
	mv	a0,s3
	call	vli_modInv_update
	j	.L341
.L390:
	lw	a5,88(sp)
	li	a4,-1
	andi	a5,a5,1
	bne	a5,zero,.L416
.L425:
	ld	a3,32(sp)
	bleu	s6,s5,.L343
.L342:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s4,.L342
	ld	a1,0(sp)
	mv	a2,s1
	mv	a0,s3
	call	vli_modInv_update
	j	.L341
.L423:
	ld	a2,72(sp)
	ld	a0,40(sp)
	mv	a1,s3
	call	memcpy@plt
	ld	s0,320(sp)
	.cfi_restore 8
	ld	s1,312(sp)
	.cfi_restore 9
	ld	s2,304(sp)
	.cfi_restore 18
	ld	s3,296(sp)
	.cfi_restore 19
	ld	s4,288(sp)
	.cfi_restore 20
	ld	s5,280(sp)
	.cfi_restore 21
	ld	s6,272(sp)
	.cfi_restore 22
	ld	s7,264(sp)
	.cfi_restore 23
	ld	s8,256(sp)
	.cfi_restore 24
	ld	s9,248(sp)
	.cfi_restore 25
	ld	s10,240(sp)
	.cfi_restore 26
	ld	s11,232(sp)
	.cfi_restore 27
.L335:
	la	a5,__stack_chk_guard
	ld	a4, 216(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L428
	ld	ra,328(sp)
	.cfi_restore 1
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
.L426:
	.cfi_def_cfa_offset 336
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
	ld	a3,64(sp)
	bleu	s9,s7,.L348
.L347:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s8,.L347
.L348:
	ld	a1,0(sp)
	ld	a0,24(sp)
	mv	a2,s1
	call	vli_modInv_update
	j	.L341
.L386:
	mv	a0,s5
	mv	a2,s7
	li	a5,0
.L350:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L366
	mv	a1,a5
.L366:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	s9,a2,.L350
	ld	a3,64(sp)
	li	a5,0
	bleu	s9,s7,.L369
.L367:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s8,.L367
.L369:
	ld	a3,48(sp)
	ld	a4,56(sp)
	mv	a5,s0
	j	.L368
.L429:
	bltu	a1,a2,.L371
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a4,-4
	addi	a3,a3,-4
	beq	a5,s10,.L370
.L368:
	lw	a1,0(a4)
	lw	a2,0(a3)
	bleu	a1,a2,.L429
.L370:
	ld	a2,24(sp)
	mv	a0,s3
	li	a5,0
.L372:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L377
	mv	a1,a5
.L377:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	s2,a2,.L372
	ld	a1,0(sp)
	ld	a0,24(sp)
	mv	a2,s1
	call	vli_modInv_update
	j	.L341
.L358:
	ld	a0,0(sp)
	mv	a1,s3
	li	a5,0
.L362:
	lw	a3,0(a1)
	lw	a4,0(a0)
	li	a2,0
	addw	a4,a4,a3
	addw	a6,a4,a5
	mv	a4,a6
	bne	a3,a6,.L361
	mv	a2,a5
.L361:
	sgtu	a3,a3,a6
	or	a2,a2,a3
	sw	a4,0(a1)
	addi	a1,a1,4
	sext.w	a5,a2
	addi	a0,a0,4
	bne	a1,s11,.L362
	j	.L357
.L422:
	.cfi_restore 8
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	la	a5,__stack_chk_guard
	andi	a2,s1,0xff
	ld	a4, 216(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	slli	a2,a2,2
	bne	a5,zero,.L430
	ld	a0,40(sp)
	ld	s1,312(sp)
	.cfi_restore 9
	ld	s11,232(sp)
	.cfi_restore 27
	ld	ra,328(sp)
	.cfi_restore 1
	li	a1,0
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	tail	memset@plt
.L371:
	.cfi_def_cfa_offset 336
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
	ld	a0,0(sp)
	ld	a1,24(sp)
	li	a5,0
.L375:
	lw	a3,0(a1)
	lw	a4,0(a0)
	li	a2,0
	addw	a4,a4,a3
	addw	a6,a4,a5
	mv	a4,a6
	bne	a3,a6,.L374
	mv	a2,a5
.L374:
	sgtu	a3,a3,a6
	or	a2,a2,a3
	sw	a4,0(a1)
	addi	a1,a1,4
	sext.w	a5,a2
	addi	a0,a0,4
	bne	a1,s2,.L375
	j	.L370
.L430:
	.cfi_restore 8
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	sd	s0,320(sp)
	sd	s2,304(sp)
	sd	s3,296(sp)
	sd	s4,288(sp)
	sd	s5,280(sp)
	sd	s6,272(sp)
	sd	s7,264(sp)
	sd	s8,256(sp)
	sd	s9,248(sp)
	sd	s10,240(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	call	__stack_chk_fail@plt
.L428:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	sd	s0,320(sp)
	sd	s1,312(sp)
	sd	s2,304(sp)
	sd	s3,296(sp)
	sd	s4,288(sp)
	sd	s5,280(sp)
	sd	s6,272(sp)
	sd	s7,264(sp)
	sd	s8,256(sp)
	sd	s9,248(sp)
	sd	s10,240(sp)
	sd	s11,232(sp)
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
	lla	a0,.LANCHOR0
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
	lbu	a5,0(a1)
	slliw	a5,a5,1
	slliw	a4,a5,24
	sraiw	a4,a4,24
	andi	a5,a5,0xff
	ble	a4,zero,.L435
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a0,4
	slli	a5,a5,2
	add	a5,a5,a4
	li	a4,0
.L434:
	lw	a3,0(a0)
	addi	a0,a0,4
	or	a4,a3,a4
	bne	a0,a5,.L434
	seqz	a0,a4
	ret
.L435:
	li	a0,1
	ret
	.cfi_endproc
.LFE45:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	1
	.globl	apply_z
	.type	apply_z, @function
apply_z:
.LFB46:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s1,a3
	lb	a3,0(a3)
	addi	s0,sp,40
	la	s6,__stack_chk_guard
	mv	s5,a0
	mv	s3,a1
	mv	a0,s0
	mv	a1,a2
	ld	a5, 0(s6)
	sd	a5, 104(sp)
	li	a5, 0
	mv	s4,a2
	call	uECC_vli_mult
	ld	a5,184(s1)
	addi	s2,sp,8
	mv	a1,s0
	mv	a0,s2
	jalr	a5
	lb	a3,0(s1)
	mv	a2,s2
	mv	a1,s5
	mv	a0,s0
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s0
	mv	a0,s5
	jalr	a5
	lb	a3,0(s1)
	mv	a2,s4
	mv	a1,s2
	mv	a0,s0
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s0
	mv	a0,s2
	jalr	a5
	lb	a3,0(s1)
	mv	a2,s2
	mv	a1,s3
	mv	a0,s0
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s0
	mv	a0,s3
	jalr	a5
	ld	a4, 104(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L440
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
	ld	s6,112(sp)
	.cfi_restore 22
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.L440:
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
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)
	sd	s0,192(sp)
	sd	s1,184(sp)
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s5,152(sp)
	sd	s6,144(sp)
	sd	s7,136(sp)
	sd	s8,128(sp)
	sd	s9,120(sp)
	sd	s4,160(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 20, -48
	lb	s4,0(a4)
	addi	s2,sp,8
	mv	s3,a2
	addi	s7,a4,4
	la	s9,__stack_chk_guard
	mv	s0,a4
	mv	s5,a3
	mv	a4,s4
	mv	s6,a0
	mv	s8,a1
	mv	a2,a0
	ld	a5, 0(s9)
	sd	a5, 104(sp)
	li	a5, 0
	mv	a3,s7
	mv	a1,s3
	mv	a0,s2
	call	uECC_vli_modSub
	lb	a3,0(s0)
	addi	s1,sp,40
	mv	a2,s2
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s2
	jalr	a5
	lb	a3,0(s0)
	mv	a2,s2
	mv	a1,s6
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s6
	jalr	a5
	lb	a3,0(s0)
	mv	a2,s2
	mv	a1,s3
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s3
	jalr	a5
	mv	a4,s4
	mv	a3,s7
	mv	a2,s8
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s5
	mv	a1,s5
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s2
	jalr	a5
	mv	a4,s4
	mv	a3,s7
	mv	a2,s6
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modSub
	mv	a4,s4
	mv	a3,s7
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_modSub
	mv	a4,s4
	mv	a3,s7
	mv	a2,s6
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s3
	mv	a1,s8
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s8
	jalr	a5
	mv	a4,s4
	mv	a3,s7
	mv	a2,s2
	mv	a1,s6
	mv	a0,s3
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s3
	mv	a1,s5
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s1
	mv	a0,s5
	jalr	a5
	mv	a4,s4
	mv	a3,s7
	mv	a2,s8
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_modSub
	ble	s4,zero,.L441
	andi	a2,s4,0xff
	slli	a2,a2,2
	mv	a1,s2
	mv	a0,s3
	call	memcpy@plt
.L441:
	ld	a4, 104(sp)
	ld	a5, 0(s9)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L445
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
.L445:
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
	addi	sp,sp,-416
	.cfi_def_cfa_offset 416
	sd	s0,400(sp)
	sd	s1,392(sp)
	sd	s2,384(sp)
	sd	s5,360(sp)
	sd	s8,336(sp)
	sd	ra,408(sp)
	sd	s3,376(sp)
	sd	s4,368(sp)
	sd	s6,352(sp)
	sd	s7,344(sp)
	sd	s9,328(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 21, -56
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 25, -88
	lb	s4,0(a5)
	la	s1,__stack_chk_guard
	mv	s0,a5
	slli	s2,s4,2
	ld	a5, 0(s1)
	sd	a5, 296(sp)
	li	a5, 0
	sd	a0,56(sp)
	sd	a1,16(sp)
	sd	s2,40(sp)
	mv	s5,a2
	mv	s1,a3
	mv	s8,a4
	ble	s4,zero,.L447
	andi	s6,s4,0xff
	addi	a5,sp,136
	slli	s6,s6,2
	mv	a2,s6
	mv	a0,a5
	mv	s3,a1
	sd	a5,8(sp)
	call	memcpy@plt
	add	a5,s3,s2
	addi	s9,sp,200
	mv	a2,s6
	mv	a1,a5
	mv	a0,s9
	sd	a5,48(sp)
	call	memcpy@plt
	beq	s1,zero,.L466
	addi	s3,sp,232
	mv	a2,s6
	mv	a1,s1
	mv	a0,s3
	call	memcpy@plt
.L452:
	ld	a1,8(sp)
	addi	s1,sp,104
	mv	a2,s6
	mv	a0,s1
	call	memmove@plt
	addi	s2,sp,168
	mv	a2,s6
	mv	a1,s9
	mv	a0,s2
	call	memmove@plt
.L450:
	ld	s6,8(sp)
	mv	a3,s0
	mv	a2,s3
	mv	a0,s6
	mv	a1,s9
	call	apply_z
	ld	a5,168(s0)
	mv	a0,s6
	mv	a3,s0
	mv	a2,s3
	mv	a1,s9
	jalr	a5
	mv	a3,s0
	mv	a2,s3
	mv	a1,s2
	mv	a0,s1
	call	apply_z
	addiw	a5,s8,-2
	slliw	s8,a5,16
	sraiw	s8,s8,16
	li	s6,1
	ble	s8,zero,.L456
	sd	s10,320(sp)
	sd	s11,312(sp)
	.cfi_offset 26, -96
	.cfi_offset 27, -104
.L453:
	srai	a4,s8,5
	slli	a4,a4,2
	add	a4,s5,a4
	lw	s9,0(a4)
	sllw	a3,s6,s8
	mv	a4,s0
	and	s9,s9,a3
	sext.w	s9,s9
	snez	a1,s9
	seqz	s9,s9
	slli	a1,a1,5
	slli	s9,s9,5
	add	s10,s1,a1
	add	s11,s1,s9
	add	s7,s2,a1
	add	s9,s2,s9
	mv	a3,s9
	mv	a2,s11
	mv	a1,s7
	mv	a0,s10
	call	XYcZ_addC
	mv	a4,s0
	mv	a3,s7
	mv	a2,s10
	mv	a1,s9
	mv	a0,s11
	call	XYcZ_add
	addiw	a5,s8,-1
	slli	a4,a5,48
	slliw	s8,a5,16
	srli	a4,a4,48
	sraiw	s8,s8,16
	bne	a4,zero,.L453
	ld	s10,320(sp)
	.cfi_restore 26
	ld	s11,312(sp)
	.cfi_restore 27
.L456:
	lw	s5,0(s5)
	mv	a4,s0
	addi	s7,sp,72
	andi	s9,s5,1
	mv	s5,s9
	xori	s9,s9,1
	slli	s5,s5,5
	slli	s9,s9,5
	add	a5,s1,s9
	add	s6,s1,s5
	add	s9,s2,s9
	add	s5,s2,s5
	mv	a2,a5
	mv	a3,s9
	mv	a1,s5
	mv	a0,s6
	sd	a5,32(sp)
	call	XYcZ_addC
	ld	a1,8(sp)
	addi	a6,s0,4
	mv	a3,a6
	mv	a4,s4
	mv	a2,s1
	mv	a0,s7
	sd	a6,24(sp)
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s5
	mv	a1,s7
	mv	a0,s3
	call	uECC_vli_mult
	ld	a4,184(s0)
	mv	a1,s3
	mv	a0,s7
	jalr	a4
	lb	a3,0(s0)
	ld	a2,16(sp)
	mv	a1,s7
	mv	a0,s3
	call	uECC_vli_mult
	ld	a4,184(s0)
	mv	a1,s3
	mv	a0,s7
	jalr	a4
	ld	a6,24(sp)
	mv	a3,s4
	mv	a1,s7
	mv	a2,a6
	mv	a0,s7
	call	uECC_vli_modInv
	lb	a3,0(s0)
	ld	a2,48(sp)
	mv	a1,s7
	mv	a0,s3
	call	uECC_vli_mult
	ld	a4,184(s0)
	mv	a1,s3
	mv	a0,s7
	jalr	a4
	lb	a3,0(s0)
	mv	a2,s6
	mv	a1,s7
	mv	a0,s3
	call	uECC_vli_mult
	ld	a4,184(s0)
	mv	a1,s3
	mv	a0,s7
	jalr	a4
	ld	a5,32(sp)
	mv	a3,s5
	mv	a2,s6
	mv	a1,s9
	mv	a0,a5
	mv	a4,s0
	call	XYcZ_add
	mv	a3,s0
	mv	a2,s7
	mv	a1,s2
	mv	a0,s1
	call	apply_z
	ble	s4,zero,.L446
	ld	s0,56(sp)
	andi	s4,s4,0xff
	slli	s4,s4,2
	mv	a2,s4
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	ld	a4,40(sp)
	mv	a2,s4
	mv	a1,s2
	add	a0,s0,a4
	call	memcpy@plt
.L446:
	la	a5,__stack_chk_guard
	ld	a4, 296(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L467
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
	addi	sp,sp,416
	.cfi_def_cfa_offset 0
	jr	ra
.L466:
	.cfi_restore_state
	addi	s3,sp,232
	mv	a2,s6
	li	a1,0
	mv	a0,s3
	call	memset@plt
	li	a5,1
	sw	a5,232(sp)
	j	.L452
.L447:
	bne	a3,zero,.L465
	li	a5,1
	sw	a5,232(sp)
.L465:
	addi	a5,sp,136
	ld	a4,40(sp)
	sd	a5,8(sp)
	ld	a5,16(sp)
	addi	s9,sp,200
	addi	s3,sp,232
	add	a5,a5,a4
	sd	a5,48(sp)
	addi	s1,sp,104
	addi	s2,sp,168
	j	.L450
.L467:
	sd	s10,320(sp)
	sd	s11,312(sp)
	.cfi_offset 26, -96
	.cfi_offset 27, -104
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
	lh	t2,2(a3)
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s1,16(sp)
	addiw	a4,t2,31
	sraiw	a5,a4,31
	srliw	a5,a5,27
	addw	a5,a5,a4
	.cfi_offset 9, -16
	sraiw	s1,a5,5
	sd	s2,8(sp)
	.cfi_offset 18, -24
	slliw	s2,s1,24
	sd	s0,24(sp)
	.cfi_offset 8, -8
	sraiw	s2,s2,24
	ble	s2,zero,.L490
	addiw	t6,s1,-1
	andi	t0,t6,0xff
	addi	a5,a0,4
	addi	s0,a3,36
	slli	t0,t0,2
	mv	a4,a0
	mv	t3,s0
	mv	t1,a1
	add	t0,t0,a5
	li	a0,0
.L475:
	lw	a7,0(a4)
	lw	a5,0(t3)
	addi	a4,a4,4
	li	a6,0
	addw	a5,a5,a7
	addw	t4,a5,a0
	mv	a5,t4
	sgtu	t5,a7,t4
	bne	a7,t4,.L474
	mv	a6,a0
.L474:
	or	a6,a6,t5
	sw	a5,0(t1)
	sext.w	a0,a6
	addi	t3,t3,4
	addi	t1,t1,4
	bne	t0,a4,.L475
	beq	a0,zero,.L491
	li	a0,1
.L477:
	andi	t4,t6,0xff
	slli	t4,t4,2
	addi	a5,a1,4
	mv	a6,s0
	add	t4,t4,a5
	li	t1,0
.L480:
	lw	a3,0(a1)
	lw	a5,0(a6)
	addi	a1,a1,4
	li	a4,0
	addw	a5,a5,a3
	addw	a7,a5,t1
	mv	a5,a7
	sgtu	t3,a3,a7
	bne	a3,a7,.L479
	mv	a4,t1
.L479:
	or	a4,a4,t3
	sw	a5,0(a2)
	sext.w	t1,a4
	addi	a6,a6,4
	addi	a2,a2,4
	bne	t4,a1,.L480
.L487:
	ld	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,16(sp)
	.cfi_restore 9
	ld	s2,8(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L491:
	.cfi_restore_state
	slli	a5,s2,5
	ble	a5,t2,.L477
.L470:
	srai	a5,t2,5
	slli	a5,a5,2
	add	a5,a1,a5
	lw	a0,0(a5)
	li	a5,1
	sllw	a5,a5,t2
	and	a0,a0,a5
	sext.w	a0,a0
	snez	a0,a0
	addi	s0,a3,36
	addiw	t6,s1,-1
	bgt	s2,zero,.L477
	j	.L487
.L490:
	slli	a5,s2,5
	li	a0,0
	ble	a5,t2,.L487
	j	.L470
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
	mv	a5,a1
	sd	s2,96(sp)
	.cfi_offset 18, -32
	la	s2,__stack_chk_guard
	mv	a3,a2
	addi	a1,sp,24
	sd	s0,112(sp)
	sd	s1,104(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	mv	s1,a2
	mv	a0,a5
	addi	a2,sp,56
	ld	a5, 0(s2)
	sd	a5, 88(sp)
	li	a5, 0
	sd	ra,120(sp)
	.cfi_offset 1, -8
	sd	a1,8(sp)
	sd	a2,16(sp)
	call	regularize_k
	sext.w	a1,a0
	seqz	a1,a1
	lhu	a4,2(s1)
	slli	a1,a1,3
	addi	a5,a1,96
	add	a1,a5,sp
	ld	a2,-88(a1)
	addiw	a4,a4,1
	slliw	a4,a4,16
	mv	a5,s1
	sraiw	a4,a4,16
	li	a3,0
	addi	a1,s1,68
	mv	a0,s0
	call	EccPoint_mult
	lbu	a5,0(s1)
	slliw	a5,a5,1
	slliw	a4,a5,24
	sraiw	a4,a4,24
	ble	a4,zero,.L496
	andi	a5,a5,0xff
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,s0,4
	slli	a5,a5,2
	add	a5,a5,a4
	mv	a0,s0
	li	a4,0
.L494:
	lw	a3,0(a0)
	addi	a0,a0,4
	or	a4,a3,a4
	bne	a0,a5,.L494
	snez	a0,a4
.L493:
	ld	a4, 88(sp)
	ld	a5, 0(s2)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L499
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
.L496:
	.cfi_restore_state
	li	a0,0
	j	.L493
.L499:
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
	ble	a1,zero,.L500
	addiw	a7,a1,-1
	li	a4,0
	li	a5,0
.L502:
	subw	a5,a7,a5
	srliw	a3,a5,2
	slli	a3,a3,2
	add	a3,a2,a3
	lw	a3,0(a3)
	andi	a5,a5,3
	add	a6,a0,a4
	slliw	a5,a5,3
	addiw	a4,a4,1
	srlw	a5,a3,a5
	slliw	a4,a4,24
	sraiw	a4,a4,24
	sb	a5,0(a6)
	mv	a5,a4
	blt	a4,a1,.L502
.L500:
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
	addiw	a4,a2,3
	sraiw	a5,a4,31
	srliw	a5,a5,30
	addw	a5,a5,a4
	sraiw	a5,a5,2
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	slliw	a4,a5,24
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	sraiw	a4,a4,24
	mv	s0,a2
	mv	s1,a0
	mv	s2,a1
	ble	a4,zero,.L509
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a5,a5,1
	slli	a2,a5,2
	li	a1,0
	call	memset@plt
.L509:
	ble	s0,zero,.L505
	addiw	a2,s0,-1
	li	a4,0
	li	a5,0
.L510:
	subw	a5,a2,a5
	srliw	a3,a5,2
	add	a6,s2,a4
	slli	a3,a3,2
	lbu	a7,0(a6)
	add	a3,s1,a3
	lw	a6,0(a3)
	andi	a5,a5,3
	slliw	a5,a5,3
	sllw	a5,a7,a5
	addiw	a4,a4,1
	or	a5,a6,a5
	slliw	a4,a4,24
	sraiw	a4,a4,24
	sw	a5,0(a3)
	mv	a5,a4
	blt	a4,s0,.L510
.L505:
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
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	s5,104(sp)
	la	a4,__stack_chk_guard
	.cfi_offset 21, -56
	mv	s5,a1
	sd	s7,88(sp)
	ld	a5, 0(a4)
	sd	a5, 40(sp)
	li	a5, 0
	.cfi_offset 23, -72
	mv	s7,a0
	mv	a1,a2
	mv	a0,s5
	sd	s0,144(sp)
	sd	s2,128(sp)
	sd	ra,152(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s0,a2
	lla	s2,.LANCHOR1
	call	uECC_vli_numBits
	ld	a5,0(s2)
	beq	a5,zero,.L514
	sd	s9,72(sp)
	.cfi_offset 25, -88
	slli	s9,s0,2
	sd	s3,120(sp)
	slliw	a4,s0,5
	.cfi_offset 19, -40
	mv	s3,s9
	sd	s1,136(sp)
	sd	s4,112(sp)
	sd	s6,96(sp)
	sd	s8,80(sp)
	sd	s10,64(sp)
	sd	s11,56(sp)
	addi	a7,s9,-4
	subw	a4,a4,a0
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 24, -80
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	addi	s4,sp,8
	li	s1,-1
	mv	a1,s3
	mv	a0,s7
	add	s8,s9,s7
	add	s10,s5,s9
	add	s6,s7,a7
	srlw	s1,s1,a4
	add	s9,s9,s4
	li	s11,64
	jalr	a5
	beq	a0,zero,.L542
.L544:
	lw	a3,0(s6)
	mv	a5,s7
	li	a4,0
	and	a3,a3,s1
	sw	a3,0(s6)
	ble	s0,zero,.L517
.L515:
	lw	a3,0(a5)
	addi	a5,a5,4
	or	a4,a3,a4
	bne	s8,a5,.L515
	beq	a4,zero,.L517
	mv	t1,s4
	mv	a0,s7
	mv	a2,s5
	li	a1,0
.L520:
	lw	a5,0(a2)
	lw	t3,0(a0)
	li	a3,0
	subw	a4,a5,a1
	subw	t3,a4,t3
	mv	a4,t3
	bne	a5,t3,.L519
	mv	a3,a1
.L519:
	sltu	a5,a5,t3
	or	a3,a3,a5
	sw	a4,0(t1)
	addi	a2,a2,4
	sext.w	a1,a3
	addi	a0,a0,4
	addi	t1,t1,4
	bne	s10,a2,.L520
	snez	a1,a1
	mv	a5,s4
	li	a4,0
.L521:
	lw	a3,0(a5)
	addi	a5,a5,4
	or	a4,a3,a4
	bne	a5,s9,.L521
	snez	a5,a4
	slliw	a1,a1,1
	subw	a5,a5,a1
	andi	a5,a5,0xff
	li	a4,1
	beq	a5,a4,.L543
.L517:
	addiw	s11,s11,-1
	beq	s11,zero,.L542
	ld	a5,0(s2)
	mv	a1,s3
	mv	a0,s7
	jalr	a5
	bne	a0,zero,.L544
.L542:
	ld	s1,136(sp)
	.cfi_restore 9
	ld	s3,120(sp)
	.cfi_restore 19
	ld	s4,112(sp)
	.cfi_restore 20
	ld	s6,96(sp)
	.cfi_restore 22
	ld	s8,80(sp)
	.cfi_restore 24
	ld	s9,72(sp)
	.cfi_restore 25
	ld	s10,64(sp)
	.cfi_restore 26
	ld	s11,56(sp)
	.cfi_restore 27
.L514:
	li	a0,0
.L522:
	la	a5,__stack_chk_guard
	ld	a4, 40(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L545
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	ld	s2,128(sp)
	.cfi_restore 18
	ld	s5,104(sp)
	.cfi_restore 21
	ld	s7,88(sp)
	.cfi_restore 23
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.L543:
	.cfi_def_cfa_offset 160
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
	ld	s1,136(sp)
	.cfi_restore 9
	ld	s3,120(sp)
	.cfi_restore 19
	ld	s4,112(sp)
	.cfi_restore 20
	ld	s6,96(sp)
	.cfi_restore 22
	ld	s8,80(sp)
	.cfi_restore 24
	ld	s9,72(sp)
	.cfi_restore 25
	ld	s10,64(sp)
	.cfi_restore 26
	ld	s11,56(sp)
	.cfi_restore 27
	li	a0,1
	j	.L522
.L545:
	sd	s1,136(sp)
	sd	s3,120(sp)
	sd	s4,112(sp)
	sd	s6,96(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	sd	s10,64(sp)
	sd	s11,56(sp)
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	1
	.globl	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	s3,136(sp)
	sd	s6,112(sp)
	sd	ra,168(sp)
	lb	a3,0(a1)
	.cfi_offset 19, -40
	.cfi_offset 22, -64
	.cfi_offset 1, -8
	la	s3,__stack_chk_guard
	ld	a4, 0(s3)
	sd	a4, 104(sp)
	li	a4, 0
	andi	s6,a3,0xff
	slliw	a5,s6,1
	slliw	a4,a5,24
	sraiw	a4,a4,24
	ble	a4,zero,.L555
	andi	a5,a5,0xff
	addiw	a5,a5,-1
	andi	a4,a5,0xff
	addi	a2,a0,4
	slli	a4,a4,2
	sd	s4,128(sp)
	sd	s5,120(sp)
	add	a4,a4,a2
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s4,a1
	mv	s5,a0
	mv	a5,a0
	li	a2,0
.L548:
	lw	a1,0(a5)
	addi	a5,a5,4
	or	a2,a1,a2
	bne	a5,a4,.L548
	beq	a2,zero,.L556
	addiw	s6,s6,-1
	slliw	s0,s6,24
	sraiw	s0,s0,24
	andi	s6,s6,0xff
	blt	s0,zero,.L559
	slli	s6,s6,2
	add	a4,s4,s6
	add	t3,s5,s6
	mv	t1,a4
	mv	a5,s0
	li	a2,-1
	j	.L550
.L568:
	bltu	a7,a6,.L559
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	t1,t1,-4
	addi	t3,t3,-4
	beq	a5,a2,.L559
.L550:
	lw	a7,4(t1)
	lw	a6,0(t3)
	bleu	a7,a6,.L568
	slli	a2,a3,2
	add	a2,s5,a2
	add	t1,a2,s6
	mv	a5,s0
	li	a1,-1
	j	.L552
.L569:
	bltu	a7,a6,.L559
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a4,-4
	addi	t1,t1,-4
	beq	a5,a1,.L559
.L552:
	lw	a7,4(a4)
	lw	a6,0(t1)
	bleu	a7,a6,.L569
	addi	s1,sp,40
	mv	a1,a2
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s4)
	addi	s2,sp,8
	mv	a1,s1
	mv	a0,s2
	jalr	a5
	ld	a5,176(s4)
	mv	a2,s4
	mv	a1,s5
	mv	a0,s1
	jalr	a5
	add	a0,s2,s6
	add	a1,s1,s6
	li	a4,0
	li	a2,-1
.L553:
	lw	a5,0(a0)
	lw	a3,0(a1)
	addiw	s0,s0,-1
	slliw	s0,s0,24
	xor	a5,a5,a3
	sraiw	s0,s0,24
	or	a4,a5,a4
	addi	a0,a0,-4
	addi	a1,a1,-4
	bne	s0,a2,.L553
	bne	a4,zero,.L560
	li	a0,0
.L567:
	ld	s0,160(sp)
	.cfi_restore 8
	ld	s1,152(sp)
	.cfi_restore 9
	ld	s2,144(sp)
	.cfi_restore 18
	ld	s4,128(sp)
	.cfi_restore 20
	ld	s5,120(sp)
	.cfi_restore 21
.L547:
	ld	a4, 104(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L570
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s3,136(sp)
	.cfi_restore 19
	ld	s6,112(sp)
	.cfi_restore 22
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.L559:
	.cfi_def_cfa_offset 176
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	li	a0,-2
	j	.L567
.L555:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 20
	.cfi_restore 21
	li	a0,-1
	j	.L547
.L560:
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	li	a0,-3
	j	.L567
.L556:
	li	a0,-1
	j	.L567
.L570:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 20
	.cfi_restore 21
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
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
	sd	s4,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	lb	s4,1(a1)
	addi	s0,sp,8
	la	s3,__stack_chk_guard
	mv	s1,a1
	ld	a5, 0(s3)
	sd	a5, 72(sp)
	li	a5, 0
	mv	a1,a0
	mv	s2,a0
	mv	a2,s4
	mv	a0,s0
	call	uECC_vli_bytesToNative
	lb	a0,0(s1)
	mv	a2,s4
	add	a1,s2,s4
	slli	a0,a0,2
	add	a0,s0,a0
	call	uECC_vli_bytesToNative
	addi	a5,sp,68
	addi	a4,s1,128
	j	.L573
.L580:
	bltu	a2,a3,.L572
	addi	a3,a5,-4
	addi	a4,a4,-4
	beq	s0,a5,.L579
	mv	a5,a3
.L573:
	lw	a2,0(a5)
	lw	a3,0(a4)
	bleu	a2,a3,.L580
.L572:
	mv	a1,s1
	mv	a0,s0
	call	uECC_valid_point
.L574:
	ld	a4, 72(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L581
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
.L579:
	.cfi_restore_state
	li	a0,-4
	j	.L574
.L581:
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
	sd	s4,112(sp)
	.cfi_offset 20, -48
	lh	s4,2(a2)
	sd	s1,136(sp)
	.cfi_offset 9, -24
	mv	s1,a2
	addiw	a5,s4,7
	sraiw	a2,a5,31
	srliw	a2,a2,29
	sd	s2,128(sp)
	sd	s3,120(sp)
	addw	a2,a2,a5
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	addi	s3,sp,8
	la	s2,__stack_chk_guard
	sd	s0,144(sp)
	ld	a5, 0(s2)
	sd	a5, 104(sp)
	li	a5, 0
	.cfi_offset 8, -16
	mv	s0,a1
	sraiw	a2,a2,3
	mv	a1,a0
	mv	a0,s3
	addiw	s4,s4,31
	sd	ra,152(sp)
	.cfi_offset 1, -8
	call	uECC_vli_bytesToNative
	sraiw	a5,s4,31
	srliw	a5,a5,27
	addw	a5,a5,s4
	sraiw	a5,a5,5
	slliw	a4,a5,24
	sraiw	a4,a4,24
	ble	a4,zero,.L586
	addiw	a4,a5,-1
	andi	a4,a4,0xff
	slli	a1,a4,2
	addi	t3,sp,12
	mv	a6,s3
	add	t3,t3,a1
	mv	a5,s3
	li	a4,0
.L585:
	lw	a3,0(a5)
	addi	a5,a5,4
	or	a4,a3,a4
	bne	t3,a5,.L585
	beq	a4,zero,.L586
	addi	a0,sp,40
	addi	t1,s1,36
	mv	t5,a0
	mv	a2,a0
	li	a7,0
.L589:
	lw	a5,0(t1)
	lw	t4,0(a6)
	li	a3,0
	subw	a4,a5,a7
	subw	t4,a4,t4
	mv	a4,t4
	bne	a5,t4,.L588
	mv	a3,a7
.L588:
	sltu	a5,a5,t4
	or	a3,a3,a5
	sw	a4,0(a2)
	addi	a6,a6,4
	sext.w	a7,a3
	addi	t1,t1,4
	addi	a2,a2,4
	bne	t3,a6,.L589
	addi	a5,a0,4
	snez	a7,a7
	add	a4,a5,a1
	li	a3,0
	j	.L590
.L610:
	addi	a5,a5,4
.L590:
	lw	a2,0(t5)
	mv	t5,a5
	or	a3,a2,a3
	bne	a4,a5,.L610
	snez	a3,a3
	slliw	a7,a7,1
	subw	a3,a3,a7
	andi	a3,a3,0xff
	li	a5,1
	beq	a3,a5,.L611
.L586:
	li	a0,0
.L584:
	ld	a4, 104(sp)
	ld	a5, 0(s2)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L612
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
	ld	s4,112(sp)
	.cfi_restore 20
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.L611:
	.cfi_restore_state
	mv	a2,s1
	mv	a1,s3
	call	EccPoint_compute_public_key
	sext.w	a0,a0
	beq	a0,zero,.L586
	lb	a6,1(s1)
	ble	a6,zero,.L593
	li	a0,1
	addiw	a1,a6,-1
	mv	a3,s0
	li	a5,0
	subw	a0,a0,s0
.L592:
	subw	a5,a1,a5
	srliw	a4,a5,2
	slli	a4,a4,2
	addi	a4,a4,112
	add	a4,a4,sp
	lw	a4,-72(a4)
	andi	a5,a5,3
	slliw	a5,a5,3
	addw	a2,a0,a3
	srlw	a5,a4,a5
	sb	a5,0(a3)
	slliw	a5,a2,24
	sraiw	a5,a5,24
	addi	a3,a3,1
	bgt	a6,a5,.L592
	lb	a2,1(s1)
	lb	a6,0(s1)
	ble	a2,zero,.L593
	add	s0,s0,a2
	li	a1,1
	addiw	a0,a2,-1
	li	a5,0
	subw	a1,a1,s0
.L594:
	subw	a5,a0,a5
	srliw	a4,a5,2
	add	a4,a4,a6
	slli	a4,a4,2
	addi	a4,a4,112
	add	a4,a4,sp
	lw	a4,-72(a4)
	andi	a5,a5,3
	slliw	a5,a5,3
	addw	a3,a1,s0
	srlw	a5,a4,a5
	sb	a5,0(s0)
	slliw	a5,a3,24
	sraiw	a5,a5,24
	addi	s0,s0,1
	bgt	a2,a5,.L594
.L593:
	li	a0,1
	j	.L584
.L612:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE58:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.data.rel,"aw"
	.align	3
	.set	.LANCHOR1,. + 0
	.type	g_rng_function, @object
	.size	g_rng_function, 8
g_rng_function:
	.dword	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	3
	.set	.LANCHOR0,. + 0
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
