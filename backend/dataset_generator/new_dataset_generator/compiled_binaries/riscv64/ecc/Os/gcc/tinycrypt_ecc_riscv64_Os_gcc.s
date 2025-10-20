	.file	"tinycrypt_ecc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	uECC_vli_add, @function
uECC_vli_add:
.LFB28:
	.cfi_startproc
	mv	t3,a0
	li	a6,0
	li	a4,0
	li	a0,0
.L2:
	blt	a4,a3,.L5
	ret
.L5:
	add	a5,a1,a6
	lw	a7,0(a5)
	add	a5,a2,a6
	lw	a5,0(a5)
	li	t1,0
	addw	a5,a5,a7
	addw	t4,a5,a0
	mv	a5,t4
	bne	a7,t4,.L4
	mv	t1,a0
.L4:
	sgtu	a7,a7,t4
	addiw	a4,a4,1
	or	t1,t1,a7
	slliw	a4,a4,24
	add	a7,t3,a6
	sext.w	a0,t1
	sw	a5,0(a7)
	sraiw	a4,a4,24
	addi	a6,a6,4
	j	.L2
	.cfi_endproc
.LFE28:
	.size	uECC_vli_add, .-uECC_vli_add
	.align	1
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
.LFB30:
	.cfi_startproc
	slli	a1,a1,2
	add	a1,a0,a1
	li	a5,0
.L8:
	bltu	a0,a1,.L9
	ret
.L9:
	lw	a4,-4(a1)
	addi	a1,a1,-4
	srliw	a3,a4,1
	or	a5,a5,a3
	sw	a5,0(a1)
	slliw	a5,a4,31
	j	.L8
	.cfi_endproc
.LFE30:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	1
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s2,0(sp)
	.cfi_offset 18, -32
	lw	s2,0(a0)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	andi	s2,s2,1
	mv	s0,a0
	mv	s1,a2
	beq	s2,zero,.L11
	mv	a3,a2
	mv	a2,a1
	mv	a1,a0
	call	uECC_vli_add
	sext.w	s2,a0
.L11:
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_rshift1
	beq	s2,zero,.L10
	slli	s1,s1,2
	addi	s1,s1,-4
	add	s0,s0,s1
	lw	a5,0(s0)
	li	a4,-2147483648
	or	a5,a5,a4
	sw	a5,0(s0)
.L10:
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
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB32:
	.cfi_startproc
	li	t1,0
	li	a6,0
	li	a5,0
.L21:
	slliw	t0,t1,24
	sraiw	t0,t0,24
	bgt	a3,t0,.L25
	slliw	a7,a3,1
	slli	t6,a3,1
	addiw	t0,a7,-1
	li	t1,1
	addiw	t2,a3,-1
.L26:
	addw	a4,t2,t1
	slliw	a4,a4,24
	sraiw	a4,a4,24
	blt	a4,t0,.L31
	slli	a4,t6,2
	add	a0,a0,a4
	sw	a5,-4(a0)
	ret
.L25:
	slli	t3,t1,2
	add	t6,a2,t3
	li	t4,0
	li	t5,0
.L24:
	slli	a4,t4,2
	add	a4,a1,a4
	lwu	a7,0(a4)
	lwu	a4,0(t6)
	slli	a5,a5,32
	srli	a5,a5,32
	mul	a7,a7,a4
	slli	a4,a6,32
	or	a5,a4,a5
	addi	t4,t4,1
	slliw	a4,t4,24
	sraiw	a4,a4,24
	addi	t6,t6,-4
	add	a5,a7,a5
	sltu	a7,a5,a7
	srai	a6,a5,32
	addw	t5,a7,t5
	sext.w	a5,a5
	ble	a4,t0,.L24
	add	t3,a0,t3
	sw	a5,0(t3)
	addi	t1,t1,1
	mv	a5,a6
	mv	a6,t5
	j	.L21
.L31:
	slliw	t4,t1,24
	mv	a7,a6
	sraiw	t4,t4,24
	slli	a4,a4,2
	li	a6,0
.L27:
	slliw	t3,t4,24
	sraiw	t3,t3,24
	bgt	a3,t3,.L30
	add	a4,a0,a4
	addiw	t1,t1,1
	sw	a5,0(a4)
	andi	t1,t1,0xff
	mv	a5,a7
	j	.L26
.L30:
	slli	t5,t4,2
	sub	t3,a4,t5
	add	t3,a2,t3
	add	t5,a1,t5
	lwu	t3,0(t3)
	lwu	t5,0(t5)
	slli	a5,a5,32
	srli	a5,a5,32
	mul	t3,t3,t5
	slli	a7,a7,32
	or	a7,a7,a5
	addi	t4,t4,1
	add	a5,t3,a7
	sltu	t3,a5,t3
	srai	a7,a5,32
	addw	a6,t3,a6
	sext.w	a5,a5
	j	.L27
	.cfi_endproc
.LFE32:
	.size	uECC_vli_mult, .-uECC_vli_mult
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
	li	a0,8
	addiw	a5,a5,7
	divw	a0,a5,a0
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
	li	a5,0
.L38:
	slliw	a4,a5,24
	sraiw	a4,a4,24
	bgt	a1,a4,.L39
	ret
.L39:
	slli	a4,a5,2
	add	a4,a0,a4
	sw	zero,0(a4)
	addi	a5,a5,1
	j	.L38
	.cfi_endproc
.LFE18:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	1
	.globl	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
.LFB19:
	.cfi_startproc
	li	a5,0
	li	a4,0
.L41:
	slliw	a3,a5,24
	sraiw	a3,a3,24
	bgt	a1,a3,.L42
	seqz	a0,a4
	ret
.L42:
	slli	a3,a5,2
	add	a3,a0,a3
	lw	a3,0(a3)
	addi	a5,a5,1
	or	a4,a3,a4
	j	.L41
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
	addiw	a1,a1,-1
	slliw	a1,a1,24
	mv	a5,a0
	sraiw	a1,a1,24
.L46:
	slliw	a4,a1,24
	sraiw	a4,a4,24
	blt	a4,zero,.L45
	addi	a3,a1,-1
	slli	a4,a3,2
	add	a4,a5,a4
	lw	a4,4(a4)
	beq	a4,zero,.L50
.L45:
	addiw	a1,a1,1
	slliw	a1,a1,24
	sraiw	a1,a1,24
	li	a0,0
	beq	a1,zero,.L47
	slli	a4,a1,2
	add	a5,a5,a4
	lw	a4,-4(a5)
	li	a5,0
.L48:
	bne	a4,zero,.L49
	addiw	a0,a1,-1
	slliw	a0,a0,5
	addw	a0,a0,a5
	slliw	a0,a0,16
	sraiw	a0,a0,16
.L47:
	ret
.L50:
	mv	a1,a3
	j	.L46
.L49:
	srliw	a4,a4,1
	addiw	a5,a5,1
	j	.L48
	.cfi_endproc
.LFE22:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	1
	.globl	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
.LFB23:
	.cfi_startproc
	li	a5,0
.L53:
	slliw	a4,a5,24
	sraiw	a4,a4,24
	bgt	a2,a4,.L54
	ret
.L54:
	slli	a4,a5,2
	add	a3,a1,a4
	lw	a3,0(a3)
	add	a4,a0,a4
	addi	a5,a5,1
	sw	a3,0(a4)
	j	.L53
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
.L56:
	slliw	a5,a2,24
	sraiw	a5,a5,24
	bge	a5,zero,.L58
	li	a0,0
	ret
.L58:
	slli	a5,a2,2
	add	a4,a0,a5
	add	a5,a1,a5
	lw	a4,0(a4)
	lw	a5,0(a5)
	bgtu	a4,a5,.L59
	addi	a2,a2,-1
	bgeu	a4,a5,.L56
	li	a0,-1
	ret
.L59:
	li	a0,1
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
	li	a4,0
.L62:
	slliw	a5,a2,24
	sraiw	a5,a5,24
	bge	a5,zero,.L63
	snez	a0,a4
	ret
.L63:
	slli	a5,a2,2
	add	a3,a0,a5
	add	a5,a1,a5
	lw	a3,0(a3)
	lw	a5,0(a5)
	addi	a2,a2,-1
	xor	a5,a3,a5
	or	a4,a5,a4
	j	.L62
	.cfi_endproc
.LFE25:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	1
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB26:
	.cfi_startproc
	beq	a2,zero,.L66
	li	a1,0
.L66:
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
	li	a4,0
	li	a5,0
	li	a0,0
.L68:
	blt	a5,a3,.L71
	ret
.L71:
	add	a6,a1,a4
	lw	a6,0(a6)
	add	t1,a2,a4
	lw	t1,0(t1)
	subw	a7,a6,a0
	subw	t4,a7,t1
	mv	a7,t4
	li	t1,0
	bne	a6,t4,.L70
	mv	t1,a0
.L70:
	sltu	a6,a6,t4
	addiw	a5,a5,1
	or	t1,t1,a6
	slliw	a5,a5,24
	add	a6,t3,a4
	sext.w	a0,t1
	sw	a7,0(a6)
	sraiw	a5,a5,24
	addi	a4,a4,4
	j	.L68
	.cfi_endproc
.LFE27:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	1
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	s4,64(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 40(sp)
	li	a5, 0
	li	a2,8
	sd	s1,88(sp)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s2,80(sp)
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a1
	sd	s3,72(sp)
	sd	s5,56(sp)
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	mv	s3,a0
	call	uECC_vli_set
	lw	a5,44(s0)
	addi	s5,sp,8
	li	a3,8
	sw	a5,20(sp)
	lw	a5,48(s0)
	mv	a2,s5
	mv	a1,s5
	sw	a5,24(sp)
	lw	a5,52(s0)
	mv	a0,s5
	sd	zero,8(sp)
	sw	a5,28(sp)
	lw	a5,56(s0)
	sw	zero,16(sp)
	addi	s1,sp,-80
	sw	a5,112(s1)
	lw	a5,60(s0)
	sw	a5,116(s1)
	call	uECC_vli_add
	sext.w	s2,a0
	li	a3,8
	mv	a2,s5
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_add
	lw	a5,48(s0)
	addw	s2,a0,s2
	li	a3,8
	sw	a5,100(s1)
	lw	a5,52(s0)
	mv	a2,s5
	mv	a1,s5
	sw	a5,104(s1)
	lw	a5,56(s0)
	mv	a0,s5
	sw	zero,36(sp)
	sw	a5,108(s1)
	lw	a5,60(s0)
	sw	a5,112(s1)
	call	uECC_vli_add
	addw	s2,s2,a0
	li	a3,8
	mv	a2,s5
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_add
	lw	a5,32(s0)
	addw	s2,s2,a0
	li	a3,8
	sw	a5,88(s1)
	lw	a5,36(s0)
	mv	a2,s5
	mv	a1,s3
	sw	a5,92(s1)
	lw	a5,40(s0)
	mv	a0,s3
	sw	zero,20(sp)
	sw	a5,96(s1)
	lw	a5,56(s0)
	sd	zero,24(sp)
	sw	a5,112(s1)
	lw	a5,60(s0)
	sw	a5,116(s1)
	call	uECC_vli_add
	lw	a5,36(s0)
	lw	a4,56(s0)
	addw	s2,s2,a0
	sw	a5,88(s1)
	lw	a5,40(s0)
	sw	a4,104(s1)
	lw	a4,60(s0)
	sw	a5,92(s1)
	lw	a5,44(s0)
	li	a3,8
	mv	a2,s5
	sw	a5,96(s1)
	lw	a5,52(s0)
	mv	a1,s3
	mv	a0,s3
	sw	a5,100(s1)
	sw	a5,112(s1)
	lw	a5,32(s0)
	sw	a4,108(s1)
	sw	a5,116(s1)
	call	uECC_vli_add
	lw	a5,44(s0)
	addw	s2,s2,a0
	li	a3,8
	sw	a5,88(s1)
	lw	a5,48(s0)
	mv	a2,s5
	mv	a1,s3
	sw	a5,92(s1)
	lw	a5,52(s0)
	mv	a0,s3
	sw	zero,20(sp)
	sw	a5,96(s1)
	lw	a5,32(s0)
	sd	zero,24(sp)
	sw	a5,112(s1)
	lw	a5,40(s0)
	sw	a5,116(s1)
	call	uECC_vli_sub
	lw	a5,48(s0)
	subw	s2,s2,a0
	li	a3,8
	sw	a5,88(s1)
	lw	a5,52(s0)
	mv	a2,s5
	mv	a1,s3
	sw	a5,92(s1)
	lw	a5,56(s0)
	mv	a0,s3
	sw	a5,96(s1)
	lw	a5,60(s0)
	sw	a5,100(s1)
	lw	a5,36(s0)
	sw	a5,112(s1)
	lw	a5,44(s0)
	sw	a5,116(s1)
	call	uECC_vli_sub
	lw	a5,52(s0)
	subw	s2,s2,a0
	li	a3,8
	sw	a5,88(s1)
	lw	a5,56(s0)
	mv	a2,s5
	mv	a1,s3
	sw	a5,92(s1)
	lw	a5,60(s0)
	mv	a0,s3
	sw	zero,32(sp)
	sw	a5,96(s1)
	lw	a5,32(s0)
	sw	a5,100(s1)
	lw	a5,36(s0)
	sw	a5,104(s1)
	lw	a5,40(s0)
	sw	a5,108(s1)
	lw	a5,48(s0)
	sw	a5,116(s1)
	call	uECC_vli_sub
	lw	a5,56(s0)
	subw	s2,s2,a0
	li	a3,8
	sw	a5,88(s1)
	lw	a5,60(s0)
	mv	a2,s5
	mv	a1,s3
	sw	a5,92(s1)
	lw	a5,36(s0)
	mv	a0,s3
	sw	zero,16(sp)
	sw	a5,100(s1)
	lw	a5,40(s0)
	sw	a5,104(s1)
	lw	a5,44(s0)
	sw	a5,108(s1)
	lw	a5,52(s0)
	sw	a5,116(s1)
	call	uECC_vli_sub
	subw	s0,s2,a0
	lla	s1,.LANCHOR1+4
	li	s2,1
	bge	s0,zero,.L74
.L75:
	li	a3,8
	mv	a2,s1
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_add
	addw	s0,a0,s0
	blt	s0,zero,.L75
.L73:
	ld	a4, 40(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L78
	call	__stack_chk_fail@plt
.L76:
	li	a3,8
	mv	a2,s1
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_sub
	subw	s0,s0,a0
.L74:
	bne	s0,zero,.L76
	li	a2,8
	mv	a1,s3
	mv	a0,s1
	call	uECC_vli_cmp_unsafe
	bne	a0,s2,.L76
	j	.L73
.L78:
	ld	ra,104(sp)
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
	sd	s1,72(sp)
	sd	s3,56(sp)
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	addi	s1,sp,8
	la	s3,__stack_chk_guard
	ld	a5, 0(s3)
	sd	a5, 40(sp)
	li	a5, 0
	mv	a3,a2
	sd	s2,64(sp)
	.cfi_offset 18, -32
	mv	s2,a2
	mv	a2,a1
	mv	a1,a0
	mv	a0,s1
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	call	uECC_vli_sub
	sext.w	s0,a0
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_isZero
	sext.w	a0,a0
	snez	s0,s0
	seqz	a0,a0
	slliw	s0,s0,1
	ld	a4, 40(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	subw	a0,a0,s0
	beq	a5,zero,.L84
	call	__stack_chk_fail@plt
.L84:
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	slliw	a0,a0,24
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	sraiw	a0,a0,24
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
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
	sd	s2,0(sp)
	.cfi_offset 18, -32
	mv	s2,a3
	mv	a3,a4
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	mv	s1,a0
	mv	s0,a4
	call	uECC_vli_add
	sext.w	a0,a0
	bne	a0,zero,.L87
	mv	a2,s0
	mv	a1,s1
	mv	a0,s2
	call	uECC_vli_cmp_unsafe
	li	a5,1
	beq	a0,a5,.L86
.L87:
	mv	a3,s0
	ld	s0,16(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,24(sp)
	.cfi_restore 1
	mv	a2,s2
	mv	a1,s1
	ld	s2,0(sp)
	.cfi_restore 18
	mv	a0,s1
	ld	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	tail	uECC_vli_sub
.L86:
	.cfi_restore_state
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s1,24(sp)
	.cfi_offset 9, -24
	mv	s1,a3
	mv	a3,a4
	sd	s0,32(sp)
	sd	ra,40(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a0
	sd	a4,8(sp)
	call	uECC_vli_sub
	sext.w	a0,a0
	ld	a3,8(sp)
	beq	a0,zero,.L90
	mv	a1,s0
	mv	a0,s0
	ld	s0,32(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,40(sp)
	.cfi_restore 1
	mv	a2,s1
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	tail	uECC_vli_add
.L90:
	.cfi_restore_state
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	s4,208(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 152(sp)
	li	a5, 0
	sd	s0,240(sp)
	sd	s3,216(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	mv	s0,a3
	addi	a5,sp,88
	sd	a1,16(sp)
	mv	s3,a0
	mv	a1,a3
	mv	a0,a2
	sd	s1,232(sp)
	sd	s2,224(sp)
	sd	s5,200(sp)
	sd	s6,192(sp)
	sd	s7,184(sp)
	sd	s8,176(sp)
	sd	ra,248(sp)
	sd	s9,168(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 25, -88
	mv	s6,a2
	sd	a5,8(sp)
	slliw	s1,s0,6
	call	uECC_vli_numBits
	subw	s1,s1,a0
	slliw	s1,s1,16
	sraiw	s1,s1,16
	li	s8,32
	divw	s2,s1,s8
	addi	s5,sp,24
	mv	a0,s5
	remw	s7,s1,s8
	slliw	s2,s2,24
	sraiw	s2,s2,24
	mv	a1,s2
	slliw	s7,s7,16
	sraiw	s7,s7,16
	call	uECC_vli_clear
	bgt	s7,zero,.L105
	slli	a0,s2,2
	mv	a2,s0
	mv	a1,s6
	add	a0,s5,a0
	call	uECC_vli_set
	j	.L97
.L96:
	slli	a2,a4,2
	add	a2,s6,a2
	lw	a2,0(a2)
	addw	a5,s2,a5
	slli	a1,a5,32
	srli	a5,a1,30
	addi	a5,a5,160
	sllw	a1,a2,s7
	or	a3,a3,a1
	add	a5,a5,sp
	sw	a3,-136(a5)
	addi	a4,a4,1
	srlw	a3,a2,s8
.L94:
	sext.w	a5,a4
	bgtu	s0,a5,.L96
.L97:
	addiw	s6,s0,-1
	slli	s6,s6,2
	slli	s7,s0,2
	addi	a5,s6,160
	add	s6,a5,sp
	addi	a5,s7,160
	add	s8,s5,s7
	slli	s9,s0,1
	li	s2,1
	add	s7,a5,sp
.L98:
	bge	s1,zero,.L106
	slli	s2,s2,3
	addi	a5,s2,160
	add	s2,a5,sp
	ld	a1,-152(s2)
	mv	a2,s0
	mv	a0,s3
	call	uECC_vli_set
	ld	a4, 152(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L104
	call	__stack_chk_fail@plt
.L105:
	li	a4,0
	li	a3,0
	subw	s8,s8,s7
	j	.L94
.L102:
	ld	a4,-152(a7)
	slli	a1,a5,2
	add	a4,a4,a1
	lw	a2,0(a4)
	addi	a4,a1,160
	add	a4,a4,sp
	lw	a4,-136(a4)
	addw	a4,a4,a6
	subw	a0,a2,a4
	mv	a4,a0
	sltu	t1,a2,a0
	beq	a2,a0,.L101
	mv	a6,t1
.L101:
	ld	a2,-152(a3)
	addiw	a5,a5,1
	slliw	a5,a5,24
	add	a2,a2,a1
	sw	a4,0(a2)
	sraiw	a5,a5,24
.L103:
	blt	a5,s9,.L102
	sub	a5,s2,a6
	mv	a1,s0
	mv	a0,s5
	seqz	s2,a5
	call	uECC_vli_rshift1
	lw	a4,-136(s7)
	lw	a5,-136(s6)
	addiw	s1,s1,-1
	slliw	a4,a4,31
	or	a5,a5,a4
	mv	a1,s0
	mv	a0,s8
	slliw	s1,s1,16
	sw	a5,-136(s6)
	sraiw	s1,s1,16
	call	uECC_vli_rshift1
	j	.L98
.L106:
	slli	a4,s2,3
	xori	a3,s2,1
	addi	a4,a4,160
	slli	a3,a3,3
	add	a7,a4,sp
	addi	a4,a3,160
	li	a5,0
	li	a6,0
	add	a3,a4,sp
	j	.L103
.L104:
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
	ld	s8,176(sp)
	.cfi_restore 24
	ld	s9,168(sp)
	.cfi_restore 25
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	1
	.globl	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	s0,128(sp)
	sd	s3,104(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	addi	s0,sp,24
	la	s3,__stack_chk_guard
	ld	a5, 0(s3)
	sd	a5, 88(sp)
	li	a5, 0
	sd	s1,120(sp)
	sd	s2,112(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s1,a0
	mv	s2,a3
	mv	a0,s0
	mv	a3,a4
	sd	a4,8(sp)
	sd	ra,136(sp)
	.cfi_offset 1, -8
	call	uECC_vli_mult
	ld	a3,8(sp)
	mv	a2,s2
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_mmod
	ld	a4, 88(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L110
	call	__stack_chk_fail@plt
.L110:
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	ld	s1,120(sp)
	.cfi_restore 9
	ld	s2,112(sp)
	.cfi_restore 18
	ld	s3,104(sp)
	.cfi_restore 19
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
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
	beq	a5,zero,.L113
	call	__stack_chk_fail@plt
.L113:
	ld	ra,120(sp)
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
	.cfi_endproc
.LFE37:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
.LFB38:
	.cfi_startproc
	mv	a3,a2
	mv	a2,a1
	tail	uECC_vli_modMult_fast
	.cfi_endproc
.LFE38:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	1
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s3,136(sp)
	sd	s5,120(sp)
	sd	s8,96(sp)
	sd	ra,168(sp)
	sd	s2,144(sp)
	sd	s4,128(sp)
	sd	s6,112(sp)
	sd	s7,104(sp)
	sd	s9,88(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 25, -88
	lb	s2,0(a3)
	la	s8,__stack_chk_guard
	mv	s1,a0
	mv	s5,a1
	ld	a5, 0(s8)
	sd	a5, 72(sp)
	li	a5, 0
	mv	a1,s2
	mv	a0,a2
	mv	s0,a2
	mv	s3,a3
	call	uECC_vli_isZero
	sext.w	a0,a0
	bne	a0,zero,.L116
	addi	s6,sp,8
	mv	a2,s3
	mv	a1,s5
	mv	a0,s6
	call	uECC_vli_modSquare_fast
	addi	s7,sp,40
	mv	a3,s3
	mv	a2,s6
	mv	a1,s1
	mv	a0,s7
	call	uECC_vli_modMult_fast
	mv	a2,s3
	mv	a1,s6
	mv	a0,s6
	call	uECC_vli_modSquare_fast
	mv	a3,s3
	mv	a2,s0
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_modMult_fast
	mv	a2,s3
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	addi	s4,s3,4
	mv	a4,s2
	mv	a3,s4
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s4
	mv	a2,s0
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s4
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
	mv	a3,s4
	mv	a2,s1
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a4,s2
	mv	a3,s4
	mv	a2,s0
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modAdd
	lw	a5,0(s1)
	andi	a5,a5,1
	beq	a5,zero,.L118
	mv	a3,s2
	mv	a2,s4
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_add
	sext.w	s9,a0
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_rshift1
	slli	a5,s2,2
	addi	a5,a5,-4
	add	a5,s1,a5
	lw	a4,0(a5)
	slliw	s9,s9,31
	or	a4,a4,s9
	sw	a4,0(a5)
.L119:
	mv	a2,s3
	mv	a1,s1
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	mv	a4,s2
	mv	a3,s4
	mv	a2,s7
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s4
	mv	a2,s7
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s2
	mv	a3,s4
	mv	a2,s0
	mv	a1,s7
	mv	a0,s7
	call	uECC_vli_modSub
	mv	a3,s3
	mv	a2,s7
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modMult_fast
	mv	a4,s2
	mv	a3,s4
	mv	a2,s6
	mv	a1,s1
	mv	a0,s6
	call	uECC_vli_modSub
	mv	a2,s2
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_set
	mv	a2,s2
	mv	a1,s5
	mv	a0,s0
	call	uECC_vli_set
	mv	a2,s2
	mv	a1,s6
	mv	a0,s5
	call	uECC_vli_set
.L116:
	ld	a4, 72(sp)
	ld	a5, 0(s8)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L120
	call	__stack_chk_fail@plt
.L118:
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_rshift1
	j	.L119
.L120:
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
	ld	s6,112(sp)
	.cfi_restore 22
	ld	s7,104(sp)
	.cfi_restore 23
	ld	s8,96(sp)
	.cfi_restore 24
	ld	s9,88(sp)
	.cfi_restore 25
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
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
	sd	s5,56(sp)
	.cfi_offset 21, -56
	la	s5,__stack_chk_guard
	sd	s0,96(sp)
	sd	s1,88(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	mv	s1,a2
	sd	s2,80(sp)
	ld	a5, 0(s5)
	sd	a5, 40(sp)
	li	a5, 0
	.cfi_offset 18, -32
	mv	s2,a1
	li	a2,28
	li	a1,0
	addi	a0,sp,12
	sd	ra,104(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	call	memset@plt
	lb	s4,0(s1)
	li	a5,3
	mv	a2,s1
	mv	a1,s2
	mv	a0,s0
	sw	a5,8(sp)
	addi	s3,s1,4
	call	uECC_vli_modSquare_fast
	mv	a4,s4
	mv	a3,s3
	addi	a2,sp,8
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a3,s1
	mv	a2,s2
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	ld	a4, 40(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L123
	call	__stack_chk_fail@plt
.L123:
	mv	a1,s0
	mv	a0,s0
	ld	s0,96(sp)
	.cfi_restore 8
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s2,80(sp)
	.cfi_restore 18
	ld	s5,56(sp)
	.cfi_restore 21
	mv	a4,s4
	mv	a3,s3
	ld	s4,64(sp)
	.cfi_restore 20
	ld	s3,72(sp)
	.cfi_restore 19
	addi	a2,s1,132
	ld	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	tail	uECC_vli_modAdd
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
	sd	s1,184(sp)
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s4,160(sp)
	sd	s5,152(sp)
	sd	s6,144(sp)
	sd	s7,136(sp)
	sd	s8,128(sp)
	sd	s9,120(sp)
	sd	s0,192(sp)
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 8, -16
	lb	s0,0(a4)
	addi	s3,a4,4
	mv	s4,a2
	addi	s6,sp,8
	la	s9,__stack_chk_guard
	ld	a5, 0(s9)
	sd	a5, 104(sp)
	li	a5, 0
	mv	s7,a3
	mv	s1,a4
	mv	s5,a0
	mv	s8,a1
	mv	a4,s0
	mv	a3,s3
	mv	a2,a0
	mv	a1,s4
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
	mv	a1,s4
	mv	a0,s4
	mv	a3,s1
	mv	a2,s6
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
	addi	s2,sp,40
	call	uECC_vli_modSub
	mv	a4,s0
	mv	a1,s4
	mv	a3,s3
	mv	a2,s5
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
	mv	a0,s4
	mv	a2,s1
	mv	a1,s7
	call	uECC_vli_modSquare_fast
	mv	a1,s4
	mv	a0,s4
	mv	a4,s0
	mv	a3,s3
	mv	a2,s2
	call	uECC_vli_modSub
	mv	a2,s4
	addi	s4,sp,72
	mv	a4,s0
	mv	a3,s3
	mv	a1,s5
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
	beq	a5,zero,.L127
	call	__stack_chk_fail@plt
.L127:
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
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sd	s1,200(sp)
	sd	s7,152(sp)
	.cfi_offset 9, -24
	.cfi_offset 23, -72
	mv	s1,a1
	la	s7,__stack_chk_guard
	sd	s6,160(sp)
	ld	a5, 0(s7)
	sd	a5, 136(sp)
	li	a5, 0
	.cfi_offset 22, -64
	mv	s6,a0
	mv	a1,a3
	mv	a0,s1
	sd	s0,208(sp)
	sd	s3,184(sp)
	sd	ra,216(sp)
	sd	s2,192(sp)
	sd	s4,176(sp)
	sd	s5,168(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	mv	s3,a2
	mv	s0,a3
	call	uECC_vli_isZero
	sext.w	a0,a0
	beq	a0,zero,.L130
	ld	a4, 136(sp)
	ld	a5, 0(s7)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L131
.L144:
	call	__stack_chk_fail@plt
.L131:
	mv	a1,s0
	ld	s0,208(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,216(sp)
	.cfi_restore 1
	ld	s1,200(sp)
	.cfi_restore 9
	ld	s2,192(sp)
	.cfi_restore 18
	ld	s3,184(sp)
	.cfi_restore 19
	ld	s4,176(sp)
	.cfi_restore 20
	ld	s5,168(sp)
	.cfi_restore 21
	ld	s7,152(sp)
	.cfi_restore 23
	mv	a0,s6
	ld	s6,160(sp)
	.cfi_restore 22
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	tail	uECC_vli_clear
.L130:
	.cfi_restore_state
	addi	s4,sp,8
	mv	a1,s1
	mv	a2,s0
	mv	a0,s4
	call	uECC_vli_set
	addi	s5,sp,40
	mv	a2,s0
	mv	a1,s3
	mv	a0,s5
	call	uECC_vli_set
	addi	s1,sp,72
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_clear
	addi	s2,sp,104
	li	a5,1
	mv	a1,s0
	mv	a0,s2
	sw	a5,72(sp)
	call	uECC_vli_clear
.L132:
	mv	a2,s0
	mv	a1,s5
	mv	a0,s4
	call	uECC_vli_cmp_unsafe
	bne	a0,zero,.L139
	mv	a2,s0
	mv	a1,s1
	mv	a0,s6
	call	uECC_vli_set
	ld	a4, 136(sp)
	ld	a5, 0(s7)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L144
	ld	ra,216(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,208(sp)
	.cfi_restore 8
	ld	s1,200(sp)
	.cfi_restore 9
	ld	s2,192(sp)
	.cfi_restore 18
	ld	s3,184(sp)
	.cfi_restore 19
	ld	s4,176(sp)
	.cfi_restore 20
	ld	s5,168(sp)
	.cfi_restore 21
	ld	s6,160(sp)
	.cfi_restore 22
	ld	s7,152(sp)
	.cfi_restore 23
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
.L139:
	.cfi_restore_state
	lw	a5,8(sp)
	andi	a5,a5,1
	bne	a5,zero,.L133
	mv	a1,s0
	mv	a0,s4
	call	uECC_vli_rshift1
.L145:
	mv	a2,s0
	mv	a1,s3
	mv	a0,s1
.L143:
	call	vli_modInv_update
	j	.L132
.L133:
	lw	a5,40(sp)
	andi	a5,a5,1
	bne	a5,zero,.L135
	mv	a1,s0
	mv	a0,s5
	call	uECC_vli_rshift1
.L142:
	mv	a2,s0
	mv	a1,s3
	mv	a0,s2
	j	.L143
.L135:
	mv	a3,s0
	ble	a0,zero,.L136
	mv	a2,s5
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_sub
	mv	a1,s0
	mv	a0,s4
	call	uECC_vli_rshift1
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	uECC_vli_cmp_unsafe
	bge	a0,zero,.L137
	mv	a3,s0
	mv	a2,s3
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_add
.L137:
	mv	a3,s0
	mv	a2,s2
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_sub
	j	.L145
.L136:
	mv	a2,s4
	mv	a1,s5
	mv	a0,s5
	call	uECC_vli_sub
	mv	a1,s0
	mv	a0,s5
	call	uECC_vli_rshift1
	mv	a2,s0
	mv	a1,s1
	mv	a0,s2
	call	uECC_vli_cmp_unsafe
	bge	a0,zero,.L138
	mv	a3,s0
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_add
.L138:
	mv	a3,s0
	mv	a2,s1
	mv	a1,s2
	mv	a0,s2
	call	uECC_vli_sub
	j	.L142
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
	lbu	a1,0(a1)
	slliw	a1,a1,1
	slliw	a1,a1,24
	sraiw	a1,a1,24
	tail	uECC_vli_isZero
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
	sd	s0,96(sp)
	sd	s2,80(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	addi	s0,sp,8
	mv	s2,a2
	sd	s5,56(sp)
	.cfi_offset 21, -56
	la	s5,__stack_chk_guard
	ld	a5, 0(s5)
	sd	a5, 40(sp)
	li	a5, 0
	mv	a2,a3
	sd	s3,72(sp)
	sd	s4,64(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s3,a1
	mv	s4,a0
	mv	a1,s2
	mv	a0,s0
	sd	ra,104(sp)
	sd	s1,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	mv	s1,a3
	call	uECC_vli_modSquare_fast
	mv	a3,s1
	mv	a2,s0
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modMult_fast
	mv	a3,s1
	mv	a2,s2
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modMult_fast
	mv	a3,s1
	mv	a2,s0
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modMult_fast
	ld	a4, 40(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L149
	call	__stack_chk_fail@plt
.L149:
	ld	ra,104(sp)
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
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s3,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 19, -40
	lb	s3,0(a4)
	addi	s0,sp,8
	mv	s1,a2
	addi	s6,a4,4
	la	s8,__stack_chk_guard
	ld	a5, 0(s8)
	sd	a5, 40(sp)
	li	a5, 0
	mv	s4,a3
	mv	s2,a4
	mv	s5,a0
	mv	s7,a1
	mv	a4,s3
	mv	a3,s6
	mv	a2,a0
	mv	a1,s1
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
	mv	a4,s3
	mv	a3,s6
	mv	a2,s7
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modSub
	mv	a2,s2
	mv	a1,s4
	mv	a0,s0
	call	uECC_vli_modSquare_fast
	mv	a4,s3
	mv	a3,s6
	mv	a2,s5
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s3
	mv	a3,s6
	mv	a2,s1
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	mv	a4,s3
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
	mv	a4,s3
	mv	a3,s6
	mv	a2,s0
	mv	a1,s5
	mv	a0,s1
	call	uECC_vli_modSub
	mv	a3,s2
	mv	a2,s1
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modMult_fast
	mv	a4,s3
	mv	a3,s6
	mv	a2,s7
	mv	a1,s4
	mv	a0,s4
	call	uECC_vli_modSub
	mv	a2,s3
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_set
	ld	a4, 40(sp)
	ld	a5, 0(s8)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L152
	call	__stack_chk_fail@plt
.L152:
	ld	ra,120(sp)
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
	.cfi_endproc
.LFE48:
	.size	XYcZ_add, .-XYcZ_add
	.align	1
	.globl	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)
	sd	s0,320(sp)
	sd	s1,312(sp)
	sd	s3,296(sp)
	sd	s4,288(sp)
	sd	s6,272(sp)
	sd	s7,264(sp)
	sd	s8,256(sp)
	sd	s9,248(sp)
	sd	s10,240(sp)
	sd	s11,232(sp)
	sd	s2,304(sp)
	sd	s5,280(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	.cfi_offset 18, -32
	.cfi_offset 21, -56
	mv	s1,a5
	lb	s2,0(s1)
	la	s0,__stack_chk_guard
	addi	s6,sp,120
	ld	a5, 0(s0)
	sd	a5, 216(sp)
	li	a5, 0
	mv	s7,a0
	mv	s11,a2
	mv	a0,s6
	mv	a2,s2
	mv	s8,a1
	mv	s3,a3
	mv	s9,a4
	slli	s10,s2,2
	call	uECC_vli_set
	add	a5,s8,s10
	addi	s4,sp,184
	mv	a1,a5
	mv	a2,s2
	mv	a0,s4
	sd	a5,32(sp)
	call	uECC_vli_set
	addi	a5,sp,56
	sd	a5,8(sp)
	beq	s3,zero,.L155
	mv	a2,s2
	mv	a1,s3
	mv	a0,a5
	call	uECC_vli_set
.L156:
	addi	s3,sp,88
	mv	a2,s2
	mv	a1,s6
	mv	a0,s3
	call	uECC_vli_set
	addi	s5,sp,152
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	uECC_vli_set
	ld	a2,8(sp)
	mv	a3,s1
	mv	a1,s4
	mv	a0,s6
	call	apply_z
	ld	a5,168(s1)
	ld	a2,8(sp)
	mv	a3,s1
	mv	a1,s4
	mv	a0,s6
	jalr	a5
	ld	a2,8(sp)
	mv	a3,s1
	mv	a1,s5
	mv	a0,s3
	addiw	s9,s9,-2
	call	apply_z
	slliw	s9,s9,16
.L161:
	sraiw	s9,s9,16
	bgt	s9,zero,.L158
	lw	a5,0(s11)
	mv	a4,s1
	addi	s11,s1,4
	andi	s4,a5,1
	slli	a5,s4,5
	add	s9,s3,a5
	add	a5,s5,a5
	sd	a5,16(sp)
	xori	s4,s4,1
	ld	a1,16(sp)
	slli	s4,s4,5
	add	a5,s3,s4
	add	s4,s5,s4
	mv	a2,a5
	mv	a3,s4
	mv	a0,s9
	sd	a5,24(sp)
	call	XYcZ_addC
	ld	a0,8(sp)
	mv	a4,s2
	mv	a3,s11
	mv	a2,s3
	mv	a1,s6
	call	uECC_vli_modSub
	ld	a1,8(sp)
	ld	a2,16(sp)
	mv	a3,s1
	mv	a0,a1
	call	uECC_vli_modMult_fast
	ld	a1,8(sp)
	mv	a3,s1
	mv	a2,s8
	mv	a0,a1
	call	uECC_vli_modMult_fast
	ld	a1,8(sp)
	mv	a3,s2
	mv	a2,s11
	mv	a0,a1
	call	uECC_vli_modInv
	ld	a1,8(sp)
	ld	a2,32(sp)
	mv	a3,s1
	mv	a0,a1
	call	uECC_vli_modMult_fast
	ld	a1,8(sp)
	mv	a3,s1
	mv	a2,s9
	mv	a0,a1
	call	uECC_vli_modMult_fast
	ld	a3,16(sp)
	ld	a0,24(sp)
	mv	a4,s1
	mv	a2,s9
	mv	a1,s4
	call	XYcZ_add
	ld	a2,8(sp)
	mv	a3,s1
	mv	a1,s5
	mv	a0,s3
	call	apply_z
	mv	a2,s2
	mv	a1,s3
	mv	a0,s7
	call	uECC_vli_set
	mv	a2,s2
	mv	a1,s5
	add	a0,s7,s10
	call	uECC_vli_set
	ld	a4, 216(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L159
	call	__stack_chk_fail@plt
.L155:
	ld	a0,8(sp)
	mv	a1,s2
	call	uECC_vli_clear
	li	a5,1
	sw	a5,56(sp)
	j	.L156
.L158:
	mv	a1,s9
	mv	a0,s11
	call	uECC_vli_testBit
	sext.w	s4,a0
	snez	a1,s4
	slli	a1,a1,5
	add	a5,s3,a1
	sd	a5,16(sp)
	seqz	s4,s4
	ld	a0,16(sp)
	slli	s4,s4,5
	add	a5,s3,s4
	add	s4,s5,s4
	mv	a2,a5
	add	a1,s5,a1
	mv	a4,s1
	mv	a3,s4
	sd	a5,24(sp)
	sd	a1,40(sp)
	call	XYcZ_addC
	ld	a1,40(sp)
	ld	a2,16(sp)
	ld	a0,24(sp)
	mv	a3,a1
	mv	a4,s1
	mv	a1,s4
	call	XYcZ_add
	addiw	a5,s9,-1
	slliw	s9,a5,16
	j	.L161
.L159:
	ld	ra,328(sp)
	.cfi_restore 1
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
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
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
	sd	s5,8(sp)
	.cfi_offset 21, -56
	lh	s5,2(a3)
	sd	s2,32(sp)
	li	a5,32
	.cfi_offset 18, -32
	addiw	s2,s5,31
	divw	s2,s2,a5
	sd	s1,40(sp)
	sd	s3,24(sp)
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	addi	s1,a3,36
	mv	s3,a1
	sd	s4,16(sp)
	mv	a1,a0
	.cfi_offset 20, -48
	mv	s4,a2
	mv	a0,s3
	mv	a2,s1
	sd	s0,48(sp)
	sd	ra,56(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	li	s0,1
	slliw	s2,s2,24
	sraiw	s2,s2,24
	mv	a3,s2
	call	uECC_vli_add
	sext.w	a0,a0
	bne	a0,zero,.L163
	slli	a5,s2,5
	li	s0,0
	ble	a5,s5,.L163
	mv	a1,s5
	mv	a0,s3
	call	uECC_vli_testBit
	sext.w	s0,a0
	snez	s0,s0
.L163:
	mv	a3,s2
	mv	a2,s1
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_add
	ld	ra,56(sp)
	.cfi_restore 1
	mv	a0,s0
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
	sd	s0,112(sp)
	sd	s2,96(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a2
	la	s2,__stack_chk_guard
	addi	a2,sp,56
	sd	s1,104(sp)
	ld	a5, 0(s2)
	sd	a5, 88(sp)
	li	a5, 0
	.cfi_offset 9, -24
	mv	s1,a0
	mv	a3,s0
	mv	a0,a1
	addi	a1,sp,24
	sd	ra,120(sp)
	.cfi_offset 1, -8
	sd	a1,8(sp)
	sd	a2,16(sp)
	call	regularize_k
	sext.w	a6,a0
	seqz	a6,a6
	lhu	a4,2(s0)
	slli	a6,a6,3
	addi	a5,a6,96
	add	a6,a5,sp
	ld	a2,-88(a6)
	addiw	a4,a4,1
	slliw	a4,a4,16
	mv	a5,s0
	sraiw	a4,a4,16
	li	a3,0
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
	beq	a5,zero,.L168
	call	__stack_chk_fail@plt
.L168:
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	sext.w	a0,a0
	ld	s1,104(sp)
	.cfi_restore 9
	ld	s2,96(sp)
	.cfi_restore 18
	seqz	a0,a0
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	1
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB53:
	.cfi_startproc
	li	a5,0
	addiw	a6,a1,-1
.L171:
	blt	a5,a1,.L172
	ret
.L172:
	subw	a4,a6,a5
	srliw	a3,a4,2
	slli	a3,a3,2
	add	a3,a2,a3
	lw	a3,0(a3)
	andi	a4,a4,3
	add	a7,a0,a5
	slliw	a4,a4,3
	addiw	a5,a5,1
	srlw	a4,a3,a4
	slliw	a5,a5,24
	sb	a4,0(a7)
	sraiw	a5,a5,24
	j	.L171
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
	li	a5,4
	sd	s2,0(sp)
	.cfi_offset 18, -32
	mv	s2,a1
	addiw	a1,a2,3
	divw	a1,a1,a5
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a2
	sd	ra,24(sp)
	.cfi_offset 1, -8
	mv	s1,a0
	slliw	a1,a1,24
	sraiw	a1,a1,24
	call	uECC_vli_clear
	li	a5,0
	addiw	a1,s0,-1
.L174:
	blt	a5,s0,.L175
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
.L175:
	.cfi_restore_state
	subw	a3,a1,a5
	add	a2,s2,a5
	lbu	a2,0(a2)
	srliw	a4,a3,2
	slli	a4,a4,2
	andi	a3,a3,3
	add	a4,s1,a4
	slliw	a3,a3,3
	sllw	a2,a2,a3
	lw	a3,0(a4)
	addiw	a5,a5,1
	slliw	a5,a5,24
	or	a3,a3,a2
	sw	a3,0(a4)
	sraiw	a5,a5,24
	j	.L174
	.cfi_endproc
.LFE54:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	1
	.globl	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
.LFB55:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s3,40(sp)
	.cfi_offset 19, -40
	mv	s3,a1
	sd	s2,48(sp)
	mv	a1,a2
	.cfi_offset 18, -32
	mv	s2,a0
	mv	a0,s3
	sd	s0,64(sp)
	sd	s6,16(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	.cfi_offset 8, -16
	.cfi_offset 22, -64
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	mv	s0,a2
	lla	s6,.LANCHOR0
	call	uECC_vli_numBits
	ld	a5,0(s6)
	beq	a5,zero,.L178
	slli	s7,s0,2
	slliw	a5,s0,5
	addi	s1,s7,-4
	subw	a0,a5,a0
	li	s5,-1
	add	s1,s2,s1
	srlw	s5,s5,a0
	li	s4,64
	li	s8,1
.L181:
	ld	a5,0(s6)
	mv	a1,s7
	mv	a0,s2
	jalr	a5
	beq	a0,zero,.L178
	lw	a5,0(s1)
	mv	a1,s0
	mv	a0,s2
	and	a5,a5,s5
	sw	a5,0(s1)
	call	uECC_vli_isZero
	sext.w	a0,a0
	bne	a0,zero,.L179
	mv	a2,s0
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_cmp
	beq	a0,s8,.L182
.L179:
	addiw	s4,s4,-1
	bne	s4,zero,.L181
.L178:
	li	a0,0
.L180:
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
.L182:
	.cfi_restore_state
	li	a0,1
	j	.L180
	.cfi_endproc
.LFE55:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	1
	.globl	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	s4,112(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	ra,152(sp)
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s5,104(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	ld	a5, 0(s4)
	sd	a5, 88(sp)
	li	a5, 0
	lb	s3,0(a1)
	mv	s1,a0
	mv	s0,a1
	call	EccPoint_isZero
	sext.w	a0,a0
	li	a5,-1
	bne	a0,zero,.L192
	addi	s5,s0,4
	mv	a2,s3
	mv	a1,s1
	mv	a0,s5
	call	uECC_vli_cmp_unsafe
	li	a4,1
	mv	s2,a0
	li	a5,-2
	bne	a0,a4,.L192
	slli	a1,s3,2
	add	a1,s1,a1
	mv	a2,s3
	mv	a0,s5
	sd	a1,8(sp)
	call	uECC_vli_cmp_unsafe
	li	a5,-2
	bne	a0,s2,.L192
	ld	a1,8(sp)
	addi	s2,sp,24
	mv	a2,s0
	mv	a0,s2
	call	uECC_vli_modSquare_fast
	ld	a5,176(s0)
	mv	a2,s0
	addi	s0,sp,56
	mv	a1,s1
	mv	a0,s0
	jalr	a5
	mv	a2,s3
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_equal
	sext.w	a0,a0
	li	a5,-3
	bne	a0,zero,.L192
	li	a5,0
.L192:
	ld	a3, 88(sp)
	ld	a4, 0(s4)
	xor	a4, a3, a4
	li	a3, 0
	beq	a4,zero,.L193
	call	__stack_chk_fail@plt
.L193:
	ld	ra,152(sp)
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
	ld	s5,104(sp)
	.cfi_restore 21
	mv	a0,a5
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	1
	.globl	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
.LFB57:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	lb	a2,1(a1)
	addi	s1,sp,24
	la	s3,__stack_chk_guard
	ld	a5, 0(s3)
	sd	a5, 88(sp)
	li	a5, 0
	mv	s0,a1
	mv	s2,a0
	mv	a1,a0
	mv	a0,s1
	sd	a2,8(sp)
	call	uECC_vli_bytesToNative
	lb	a0,0(s0)
	ld	a2,8(sp)
	slli	a0,a0,2
	add	a1,s2,a2
	add	a0,s1,a0
	call	uECC_vli_bytesToNative
	li	a2,16
	addi	a1,s0,68
	mv	a0,s1
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	li	a0,-4
	beq	a5,zero,.L200
	mv	a1,s0
	mv	a0,s1
	call	uECC_valid_point
.L200:
	ld	a4, 88(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L201
	call	__stack_chk_fail@plt
.L201:
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	ld	s1,120(sp)
	.cfi_restore 9
	ld	s2,112(sp)
	.cfi_restore 18
	ld	s3,104(sp)
	.cfi_restore 19
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
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
	sd	s0,144(sp)
	.cfi_offset 8, -16
	lh	s0,2(a2)
	sd	s4,112(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 104(sp)
	li	a5, 0
	li	a5,8
	sd	s1,136(sp)
	.cfi_offset 9, -24
	mv	s1,a2
	addiw	a2,s0,7
	divw	a2,a2,a5
	sd	s3,120(sp)
	.cfi_offset 19, -40
	addi	s3,sp,8
	sd	s2,128(sp)
	.cfi_offset 18, -32
	mv	s2,a1
	mv	a1,a0
	mv	a0,s3
	sd	ra,152(sp)
	.cfi_offset 1, -8
	addiw	s0,s0,31
	call	uECC_vli_bytesToNative
	li	a5,32
	divw	s0,s0,a5
	mv	a0,s3
	slliw	s0,s0,24
	sraiw	s0,s0,24
	mv	a1,s0
	call	uECC_vli_isZero
	sext.w	a0,a0
	beq	a0,zero,.L206
.L208:
	li	a0,0
.L207:
	ld	a4, 104(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L209
	call	__stack_chk_fail@plt
.L206:
	mv	a2,s0
	mv	a1,s3
	addi	a0,s1,36
	call	uECC_vli_cmp
	li	a5,1
	bne	a0,a5,.L208
	addi	s0,sp,40
	mv	a2,s1
	mv	a1,s3
	mv	a0,s0
	call	EccPoint_compute_public_key
	sext.w	a0,a0
	beq	a0,zero,.L208
	lb	a1,1(s1)
	mv	a2,s0
	mv	a0,s2
	call	uECC_vli_nativeToBytes
	lb	a2,0(s1)
	lb	a1,1(s1)
	slli	a2,a2,2
	add	a0,s2,a1
	add	a2,s0,a2
	call	uECC_vli_nativeToBytes
	li	a0,1
	j	.L207
.L209:
	ld	ra,152(sp)
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
