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
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB39:
	.cfi_startproc
	lw	a7,0(a0)
	slli	t4,a2,2
	add	a5,a0,t4
	andi	a7,a7,1
	beq	a7,zero,.L21
	ble	a2,zero,.L22
	mv	a3,a0
	li	a7,0
.L25:
	lw	a6,0(a3)
	lw	a4,0(a1)
	li	a2,0
	addi	a1,a1,4
	addw	a4,a4,a6
	addw	t1,a4,a7
	mv	a4,t1
	sgtu	t3,a6,t1
	bne	a6,t1,.L24
	mv	a2,a7
.L24:
	or	a2,a2,t3
	sw	a4,0(a3)
	addi	a3,a3,4
	sext.w	a7,a2
	bne	a5,a3,.L25
	bgeu	a0,a5,.L30
.L27:
	li	a3,0
.L31:
	lw	a4,-4(a5)
	addi	a5,a5,-4
	srliw	a2,a4,1
	or	a3,a3,a2
	slliw	a4,a4,31
	sw	a3,0(a5)
	sext.w	a3,a4
	bltu	a0,a5,.L31
.L30:
	beq	a7,zero,.L20
	addi	t4,t4,-4
	add	a0,a0,t4
	lw	a5,0(a0)
	li	a4,-2147483648
	or	a5,a5,a4
	sw	a5,0(a0)
.L20:
	ret
.L21:
	bltu	a0,a5,.L27
	ret
.L22:
	li	a7,0
	bltu	a0,a5,.L27
	ret
	.cfi_endproc
.LFE39:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	or	a5,a1,a0
	sd	s0,104(sp)
	sd	s1,96(sp)
	sd	s2,88(sp)
	sd	s3,80(sp)
	sd	s4,72(sp)
	sd	s5,64(sp)
	sd	s6,56(sp)
	sd	s7,48(sp)
	sd	s8,40(sp)
	sd	s9,32(sp)
	sd	s10,24(sp)
	sd	s11,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	.cfi_offset 20, -40
	.cfi_offset 21, -48
	.cfi_offset 22, -56
	.cfi_offset 23, -64
	.cfi_offset 24, -72
	.cfi_offset 25, -80
	.cfi_offset 26, -88
	.cfi_offset 27, -96
	andi	a5,a5,7
	bne	a5,zero,.L41
	addi	a5,a1,4
	beq	a0,a5,.L41
	ld	a5,0(a1)
	sd	a5,0(a0)
	ld	a5,8(a1)
	sd	a5,8(a0)
	ld	a5,16(a1)
	sd	a5,16(a0)
	ld	a5,24(a1)
	sd	a5,24(a0)
.L42:
	lw	a6,44(a1)
	lw	a7,48(a1)
	lw	a5,52(a1)
	slliw	a4,a6,1
	sgtu	a6,a6,a4
	slliw	t1,a7,1
	addw	t3,t1,a6
	mv	t4,a4
	lw	a2,60(a1)
	lw	a4,56(a1)
	mv	t1,t3
	li	a3,0
	beq	a6,zero,.L44
	sub	a3,a7,t3
	seqz	a3,a3
.L44:
	sgtu	a7,a7,t3
	or	a3,a3,a7
	slliw	a6,a5,1
	addw	t3,a6,a3
	sub	a7,a5,t3
	seqz	a7,a7
	and	a3,a7,a3
	sgtu	a5,a5,t3
	or	a5,a5,a3
	slliw	t0,a4,1
	addw	a7,t0,a5
	sub	a3,a4,a7
	seqz	a3,a3
	sgtu	a4,a4,a7
	and	a5,a5,a3
	or	a5,a4,a5
	slliw	t5,a2,1
	mv	a6,t3
	addw	t3,t5,a5
	mv	t0,a7
	mv	t5,t3
	li	a4,0
	bne	a2,t3,.L46
	mv	a4,a5
.L46:
	lw	a7,12(a0)
	lw	a3,16(a0)
	sgtu	a5,a2,t3
	addw	t3,t4,a7
	addw	a2,a3,t1
	mv	t4,t3
	sltu	t3,t3,a7
	or	t1,a4,a5
	addw	s3,a2,t3
	sw	t4,12(a0)
	lw	s1,0(a0)
	lw	t6,4(a0)
	lw	a4,8(a0)
	mv	a2,s3
	sext.w	t1,t1
	li	a7,0
	beq	t3,zero,.L50
	sub	a7,a3,s3
	seqz	a7,a7
.L50:
	lw	a5,20(a0)
	sgtu	a3,a3,s3
	or	a7,a7,a3
	addw	a6,a5,a6
	addw	a6,a6,a7
	lw	a3,24(a0)
	sub	t2,a5,a6
	seqz	t2,t2
	and	a7,t2,a7
	sgtu	a5,a5,a6
	or	a5,a5,a7
	addw	t0,a3,t0
	addw	t2,t0,a5
	lw	a7,28(a0)
	sub	t0,a3,t2
	seqz	t0,t0
	and	a5,a5,t0
	sgtu	a3,a3,t2
	or	a5,a3,a5
	addw	a3,a7,t5
	addw	s2,a3,a5
	sw	a2,16(a0)
	sw	a6,20(a0)
	sw	t2,24(a0)
	sw	s2,28(a0)
	mv	t3,a6
	mv	s0,t2
	mv	a3,s2
	li	t0,0
	bne	a7,s2,.L52
	mv	t0,a5
.L52:
	lw	t5,48(a1)
	lw	s5,52(a1)
	sgtu	a7,a7,s2
	slliw	s4,t5,1
	slliw	s8,s5,1
	sgtu	t5,t5,s4
	or	t0,t0,a7
	addw	s6,s8,t5
	addw	t0,t0,t1
	lw	a7,56(a1)
	lw	s7,60(a1)
	mv	a5,s4
	mv	s8,s6
	li	t1,0
	beq	t5,zero,.L54
	sub	t1,s5,s6
	seqz	t1,t1
.L54:
	sgtu	t5,s5,s6
	or	t1,t1,t5
	slliw	s6,a7,1
	addw	s5,s6,t1
	sub	t5,a7,s5
	seqz	t5,t5
	sgtu	a7,a7,s5
	and	t5,t5,t1
	or	t1,a7,t5
	mv	s6,s5
	slliw	s5,s7,1
	addw	t5,a5,t4
	addw	s10,s5,t1
	sub	t4,s7,s10
	sltu	s9,t5,s4
	addw	a7,s9,a2
	seqz	t4,t4
	and	t1,t1,t4
	sgtu	s7,s7,s10
	addw	t4,a7,s8
	sw	t5,12(a0)
	mv	a5,t5
	mv	s5,s10
	mv	a7,t4
	or	s4,s7,t1
	li	a2,0
	beq	s9,zero,.L58
	sub	a2,t4,s3
	seqz	a2,a2
.L58:
	sltu	s3,t4,s3
	or	a2,a2,s3
	addw	t3,s6,t3
	addw	s3,t3,a2
	sub	t1,s3,a6
	seqz	t1,t1
	and	a2,t1,a2
	sltu	a6,s3,a6
	or	a6,a6,a2
	addw	s0,s5,s0
	addw	a2,s0,a6
	sub	t1,a2,t2
	seqz	t1,t1
	and	a6,a6,t1
	sltu	t1,a2,t2
	addw	a3,a3,s4
	or	a6,t1,a6
	addw	t2,a3,a6
	sw	a7,16(a0)
	sw	s3,20(a0)
	sw	a2,24(a0)
	sw	t2,28(a0)
	mv	t3,s3
	mv	s0,a2
	mv	a3,t2
	li	s7,0
	bne	t2,s2,.L60
	mv	s7,a6
.L60:
	lw	a6,32(a1)
	lw	t1,36(a1)
	sltu	s4,t2,s2
	addw	s6,a6,s1
	mv	s1,s6
	addw	t1,t1,t6
	sltu	s6,s6,a6
	lw	s5,40(a1)
	lw	s2,56(a1)
	lw	a6,60(a1)
	or	s7,s7,s4
	addw	s8,t1,s6
	sw	s1,0(a0)
	addw	s7,s7,t0
	mv	t1,s8
	li	t0,0
	beq	s6,zero,.L64
	sub	t0,s8,t6
	seqz	t0,t0
.L64:
	sltu	t6,s8,t6
	addw	s5,s5,a4
	or	t6,t0,t6
	addw	t0,s5,t6
	sub	s4,t0,a4
	seqz	s4,s4
	and	t6,s4,t6
	sltu	a4,t0,a4
	or	a4,a4,t6
	addw	t6,a4,a5
	sub	t5,t6,t5
	seqz	t5,t5
	and	t5,a4,t5
	sltu	a4,t6,a4
	or	a4,a4,t5
	addw	t5,a4,a7
	sub	t4,t5,t4
	seqz	t4,t4
	and	t4,a4,t4
	sltu	a4,t5,a4
	or	a4,a4,t4
	addw	t4,a4,t3
	sub	s3,t4,s3
	seqz	s3,s3
	and	s3,a4,s3
	sltu	a4,t4,a4
	or	a4,a4,s3
	addw	s2,s2,s0
	addw	s2,s2,a4
	sub	s0,s2,a2
	seqz	s0,s0
	and	a4,a4,s0
	sltu	a2,s2,a2
	or	a4,a2,a4
	addw	a6,a6,a3
	addw	s6,a6,a4
	sw	t1,4(a0)
	sw	t0,8(a0)
	sw	t6,12(a0)
	sw	t5,16(a0)
	sw	t4,20(a0)
	sw	s2,24(a0)
	sw	s6,28(a0)
	mv	s5,t0
	mv	a5,t6
	mv	a7,t5
	mv	t3,t4
	mv	s4,s2
	mv	s3,s6
	li	s10,0
	bne	s6,t2,.L72
	mv	s10,a4
.L72:
	lw	s9,36(a1)
	lw	a4,44(a1)
	lw	s11,40(a1)
	addw	s0,s1,s9
	sd	a4,0(sp)
	lw	a4,32(a1)
	sltu	s9,s0,s9
	sltu	t2,s6,t2
	addw	t1,s9,t1
	or	t2,s10,t2
	lw	a3,52(a1)
	lw	a6,56(a1)
	lw	a2,60(a1)
	addw	t1,t1,s11
	sd	a4,8(sp)
	sw	s0,0(a0)
	addw	t2,t2,s7
	mv	s1,s0
	sext.w	s7,t1
	li	s10,0
	beq	s9,zero,.L76
	sub	s10,s7,s8
	seqz	s10,s10
.L76:
	ld	a4,0(sp)
	sltu	s8,s7,s8
	or	s8,s10,s8
	addw	a4,a4,s5
	addw	s5,a4,s8
	sub	s9,s5,t0
	seqz	s9,s9
	and	s8,s9,s8
	sltu	t0,s5,t0
	or	s9,t0,s8
	addw	a5,a3,a5
	addw	s8,a5,s9
	sub	a5,s8,t6
	seqz	a5,a5
	and	s9,s9,a5
	sltu	a5,s8,t6
	addw	a7,a6,a7
	or	a5,a5,s9
	addw	t6,a7,a5
	sub	a6,t6,t5
	seqz	a6,a6
	and	a5,a5,a6
	sltu	t5,t6,t5
	or	a5,t5,a5
	addw	a6,a2,t3
	addw	a2,a6,a5
	sub	t3,a2,t4
	seqz	t3,t3
	and	t3,a5,t3
	sltu	a5,a2,t4
	or	a5,a5,t3
	addw	a3,a3,s4
	addw	t4,a3,a5
	sub	t3,t4,s2
	seqz	t3,t3
	and	a5,a5,t3
	sltu	t3,t4,s2
	or	t3,t3,a5
	ld	a5,8(sp)
	sw	t1,4(a0)
	sw	s5,8(a0)
	addw	a5,a5,s3
	addw	t5,a5,t3
	sw	s8,12(a0)
	sw	t6,16(a0)
	sw	a2,20(a0)
	sw	t4,24(a0)
	sw	t5,28(a0)
	mv	a4,s5
	mv	t0,s8
	mv	a7,t6
	mv	a6,a2
	mv	a3,t4
	mv	a5,t5
	li	s3,0
	bne	t5,s6,.L78
	mv	s3,t3
.L78:
	lw	t3,44(a1)
	lw	s2,48(a1)
	lw	s9,52(a1)
	subw	t3,s1,t3
	sltu	s0,s0,t3
	subw	t1,t1,s0
	subw	s2,t1,s2
	sub	s4,s2,s7
	seqz	s4,s4
	negw	s4,s4
	and	s0,s0,s4
	sgtu	s7,s2,s7
	or	s4,s0,s7
	subw	a4,a4,s9
	subw	s0,a4,s4
	sub	s7,s0,s5
	seqz	s7,s7
	and	s4,s7,s4
	sgtu	s5,s0,s5
	or	s9,s5,s4
	sltu	s6,t5,s6
	lw	s7,32(a1)
	lw	s5,40(a1)
	or	s3,s3,s6
	subw	s4,t0,s9
	sw	t3,0(a0)
	sw	s2,4(a0)
	sw	s0,8(a0)
	addw	t2,s3,t2
	mv	s1,t3
	mv	t1,s2
	mv	a4,s0
	mv	t0,s4
	sltu	s3,s8,s4
	li	s6,0
	bne	s4,s8,.L86
	mv	s6,s9
.L86:
	or	s6,s6,s3
	subw	s3,a7,s6
	sub	s8,s3,t6
	seqz	s8,s8
	and	s8,s8,s6
	sltu	t6,t6,s3
	or	s8,s8,t6
	subw	t6,a6,s8
	sub	s6,t6,a2
	seqz	s6,s6
	and	s6,s6,s8
	sltu	a2,a2,t6
	subw	a3,a3,s7
	or	a2,s6,a2
	subw	s6,a3,a2
	sub	s7,s6,t4
	seqz	s7,s7
	and	a2,s7,a2
	sgtu	t4,s6,t4
	or	t4,t4,a2
	subw	a5,a5,s5
	subw	s5,a5,t4
	sw	t0,12(a0)
	sw	s3,16(a0)
	sw	t6,20(a0)
	sw	s6,24(a0)
	sw	s5,28(a0)
	mv	a7,s3
	mv	a6,t6
	mv	a3,s6
	mv	a5,s5
	li	a2,0
	bne	s5,t5,.L92
	mv	a2,t4
.L92:
	lw	t4,48(a1)
	lw	s7,52(a1)
	lw	s9,56(a1)
	subw	t4,s1,t4
	sltu	t3,t3,t4
	addw	s7,s7,t3
	subw	s7,t1,s7
	sub	s8,s7,s2
	seqz	s8,s8
	negw	s8,s8
	and	t3,t3,s8
	sltu	s2,s2,s7
	or	s8,t3,s2
	subw	a4,a4,s8
	sgtu	t5,s5,t5
	subw	a4,a4,s9
	or	a2,a2,t5
	lw	s9,60(a1)
	lw	s2,36(a1)
	lw	t3,44(a1)
	sext.w	t5,a4
	sw	t4,0(a0)
	sw	s7,4(a0)
	subw	t2,t2,a2
	mv	s1,t4
	mv	t1,s7
	sext.w	s8,s8
	li	a2,0
	bne	t5,s0,.L100
	mv	a2,s8
.L100:
	sgtu	s0,t5,s0
	or	s0,a2,s0
	subw	t0,t0,s9
	subw	t0,t0,s0
	sw	a4,8(a0)
	sext.w	s8,s0
	mv	a2,t0
	li	s0,0
	bne	t0,s4,.L102
	mv	s0,s8
.L102:
	sgtu	s4,t0,s4
	or	s4,s0,s4
	subw	s0,a7,s4
	sw	a2,12(a0)
	sext.w	s8,s4
	mv	a7,s0
	sltu	s9,s3,s0
	li	s4,0
	bne	s0,s3,.L106
	mv	s4,s8
.L106:
	or	s4,s4,s9
	subw	s3,a6,s4
	sw	a7,16(a0)
	sext.w	s8,s4
	mv	a6,s3
	sltu	s9,t6,s3
	li	s4,0
	bne	s3,t6,.L110
	mv	s4,s8
.L110:
	or	s4,s4,s9
	subw	a3,a3,s2
	subw	t6,a3,s4
	sw	a6,20(a0)
	mv	a3,t6
	sext.w	s4,s4
	li	s9,0
	bne	t6,s6,.L112
	mv	s9,s4
.L112:
	sgtu	s6,t6,s6
	or	s9,s9,s6
	subw	a5,a5,t3
	subw	s8,a5,s9
	sw	a3,24(a0)
	sw	s8,28(a0)
	lw	s6,52(a1)
	lw	s2,56(a1)
	lw	t3,60(a1)
	subw	s4,s1,s6
	sltu	t4,t4,s4
	addw	s1,s2,t4
	subw	s2,t1,s1
	sub	t1,s7,s2
	seqz	t1,t1
	negw	t1,t1
	and	t4,t4,t1
	sltu	t1,s7,s2
	or	s7,t4,t1
	sub	t1,s8,s5
	subw	a4,a4,s7
	sext.w	s9,s9
	seqz	t1,t1
	and	s11,s9,t1
	subw	t4,a4,t3
	sgtu	s5,s8,s5
	lw	s10,32(a1)
	lw	s9,36(a1)
	lw	t1,40(a1)
	lw	a4,48(a1)
	or	t3,s11,s5
	sw	s4,0(a0)
	sw	s2,4(a0)
	sext.w	s5,t4
	subw	t3,t2,t3
	mv	a5,s8
	mv	s6,s4
	mv	s1,s2
	sext.w	s7,s7
	li	t2,0
	bne	t5,s5,.L120
	mv	t2,s7
.L120:
	sltu	t5,t5,s5
	or	s7,t2,t5
	subw	a2,a2,s7
	subw	t2,a2,s10
	sw	t4,8(a0)
	sext.w	a2,s7
	mv	t5,t2
	li	s7,0
	bne	t0,t2,.L122
	mv	s7,a2
.L122:
	sltu	t0,t0,t2
	or	s7,s7,t0
	subw	a7,a7,s9
	subw	t0,a7,s7
	sw	t5,12(a0)
	mv	a2,t0
	sext.w	s7,s7
	li	a7,0
	bne	s0,t0,.L124
	mv	a7,s7
.L124:
	sltu	s0,s0,t0
	subw	a6,a6,t1
	or	a7,a7,s0
	subw	s0,a6,a7
	sw	a2,16(a0)
	mv	t1,s0
	sext.w	a7,a7
	li	a6,0
	bne	s3,s0,.L126
	mv	a6,a7
.L126:
	sltu	s3,s3,s0
	or	a6,a6,s3
	subw	s7,a3,a6
	sw	t1,20(a0)
	mv	s3,s7
	sext.w	a6,a6
	sltu	a7,t6,s7
	li	a3,0
	bne	t6,s7,.L130
	mv	a3,a6
.L130:
	or	a3,a3,a7
	subw	a5,a5,a4
	subw	s9,a5,a3
	sw	s3,24(a0)
	sw	s9,28(a0)
	mv	t6,s9
	sext.w	a3,a3
	li	a7,0
	bne	s9,s8,.L132
	mv	a7,a3
.L132:
	lw	a5,56(a1)
	lw	a6,60(a1)
	sgtu	s8,s9,s8
	subw	a3,s6,a5
	sltu	s4,s4,a3
	addw	a6,a6,s4
	subw	a4,s1,a6
	mv	a5,a3
	sub	a3,s2,a4
	seqz	a3,a3
	negw	a3,a3
	and	a3,s4,a3
	sltu	s2,s2,a4
	or	a3,a3,s2
	subw	s2,t4,a3
	lw	s1,36(a1)
	lw	s10,40(a1)
	lw	s6,44(a1)
	lw	s4,52(a1)
	mv	t4,s2
	or	a7,a7,s8
	sw	a5,0(a0)
	sw	a4,4(a0)
	mv	a6,s2
	sext.w	a1,a3
	subw	a7,t3,a7
	sltu	s2,s5,s2
	li	a3,0
	bne	s5,t4,.L142
	mv	a3,a1
.L142:
	or	a3,a3,s2
	addw	s1,a3,s1
	subw	t3,t5,s1
	mv	t5,t3
	sw	t4,8(a0)
	mv	a1,t3
	sltu	t4,t2,t3
	sext.w	a3,a3
	li	t3,0
	bne	t2,t5,.L146
	mv	t3,a3
.L146:
	or	t3,t3,t4
	subw	a3,a2,t3
	subw	a2,a3,s10
	sw	t5,12(a0)
	sext.w	t4,t3
	mv	a3,a2
	li	t3,0
	bne	t0,a2,.L148
	mv	t3,t4
.L148:
	sltu	t0,t0,a2
	or	t3,t3,t0
	subw	t1,t1,t3
	subw	t1,t1,s6
	sw	a3,16(a0)
	sext.w	a3,t1
	sext.w	t4,t3
	li	t3,0
	bne	s0,a3,.L150
	mv	t3,t4
.L150:
	sltu	s0,s0,a3
	or	t3,t3,s0
	subw	t4,s3,t3
	mv	s3,t4
	sw	t1,20(a0)
	sltu	t5,s7,t4
	mv	t1,t4
	sext.w	t3,t3
	li	t4,0
	bne	s7,s3,.L154
	mv	t4,t3
.L154:
	or	t4,t4,t5
	subw	t3,t6,t4
	subw	t6,t3,s4
	sw	s3,24(a0)
	sw	t6,28(a0)
	sext.w	t4,t4
	li	t3,0
	bne	t6,s9,.L156
	mv	t3,t4
.L156:
	sgtu	s9,t6,s9
	or	t3,t3,s9
	subw	a7,a7,t3
	li	t4,1
	li	t3,-1
	blt	a7,zero,.L224
	beq	a7,zero,.L166
.L225:
	lw	a1,4(a0)
	lw	a6,0(a0)
	lw	t2,8(a0)
	lw	a3,12(a0)
	lw	a4,16(a0)
	lw	a5,20(a0)
	lw	t0,24(a0)
.L167:
	addiw	a2,a6,1
	mv	t1,a2
	sgtu	a2,a2,a6
	addiw	a6,a1,1
	subw	t5,a6,a2
	sub	s0,t5,a1
	seqz	s0,s0
	and	a2,a2,s0
	mv	a6,t5
	sgtu	t5,t5,a1
	or	t5,t5,a2
	addiw	a1,t2,1
	subw	a2,a1,t5
	sub	s0,a2,t2
	seqz	s0,s0
	and	t5,t5,s0
	mv	a1,a2
	sgtu	a2,a2,t2
	or	a2,a2,t5
	subw	s0,a3,a2
	sub	t2,s0,a3
	seqz	t2,t2
	and	a2,a2,t2
	sltu	a3,a3,s0
	or	a3,a3,a2
	mv	t5,s0
	subw	s0,a4,a3
	sub	t2,s0,a4
	seqz	t2,t2
	and	a3,a3,t2
	sltu	a4,a4,s0
	or	a4,a4,a3
	mv	a2,s0
	subw	s0,a5,a4
	sub	a3,s0,a5
	seqz	a3,a3
	sltu	a5,a5,s0
	and	a4,a4,a3
	or	a4,a5,a4
	addiw	a3,t0,-1
	subw	a5,a3,a4
	mv	t2,s0
	sub	s0,a5,t0
	seqz	s0,s0
	and	a4,a4,s0
	mv	a3,a5
	sgtu	a5,a5,t0
	or	a5,a5,a4
	addiw	a4,t6,1
	subw	t0,a4,a5
	sub	s0,t0,t6
	seqz	s0,s0
	sgtu	t6,t0,t6
	and	a5,a5,s0
	or	a5,a5,t6
	sw	t1,0(a0)
	sw	a6,4(a0)
	sw	a1,8(a0)
	sw	t5,12(a0)
	sw	a2,16(a0)
	sw	t2,20(a0)
	sw	a3,24(a0)
	sw	t0,28(a0)
	subw	a7,a7,a5
	mv	t6,t0
	bne	a7,zero,.L225
.L166:
	bne	t6,t3,.L40
	lw	t0,24(a0)
	beq	t0,zero,.L40
	lw	a5,20(a0)
	lw	a4,16(a0)
	lw	a3,12(a0)
	lw	t2,8(a0)
	bne	t0,t4,.L223
	bne	a5,zero,.L223
	bne	a4,zero,.L223
	bne	a3,zero,.L223
	bne	t2,t6,.L40
	lw	a5,4(a0)
	bne	a5,t6,.L40
	lw	a1,0(a0)
	bne	a1,t3,.L40
	li	a5,0
	li	a4,0
	mv	t2,a1
	mv	a6,a1
	j	.L167
.L224:
	addiw	t0,a5,-1
.L164:
	addi	a5,t0,1
	snez	a5,a5
	addiw	t5,a4,-1
	addw	t5,t5,a5
	sext.w	t3,a4
	sext.w	a4,t5
	sub	t4,t3,a4
	seqz	t4,t4
	and	a5,a5,t4
	sgtu	t3,t3,a4
	or	t3,t3,a5
	addiw	t4,a6,-1
	addw	t4,t4,t3
	sext.w	a5,a6
	sext.w	a6,t4
	sub	t2,a5,a6
	seqz	t2,t2
	and	t3,t3,t2
	sgtu	a5,a5,a6
	or	a5,a5,t3
	addw	s0,a1,a5
	sext.w	t3,a1
	sub	t3,t3,s0
	seqz	t3,t3
	sltu	s1,s0,a1
	and	a5,a5,t3
	or	a5,a5,s1
	addw	s1,a5,a2
	sext.w	t3,a2
	sub	t3,t3,s1
	seqz	t3,t3
	sltu	s2,s1,a2
	and	a5,t3,a5
	or	a5,a5,s2
	addw	s2,a5,a3
	sext.w	t3,a3
	sub	t3,t3,s2
	seqz	t3,t3
	sltu	s3,s2,a3
	and	t3,t3,a5
	or	t3,t3,s3
	addiw	s3,t1,1
	addw	s3,s3,t3
	sext.w	a5,t1
	sext.w	t1,s3
	mv	t2,s0
	mv	a1,s0
	mv	a2,s1
	mv	s0,s1
	mv	a3,s2
	mv	s1,s2
	sub	s2,a5,t1
	seqz	s2,s2
	and	t3,s2,t3
	sgtu	a5,a5,t1
	or	a5,a5,t3
	addiw	s2,t6,-1
	addw	s2,s2,a5
	sext.w	t3,t6
	sext.w	t6,s2
	sub	s4,t3,t6
	seqz	s4,s4
	sgtu	t3,t3,t6
	and	a5,a5,s4
	or	a5,a5,t3
	addw	a7,a5,a7
	sext.w	a5,t0
	addiw	t0,t0,-1
	bne	a7,zero,.L164
	sw	a5,0(a0)
	sw	t5,4(a0)
	sw	t4,8(a0)
	sw	t2,12(a0)
	sw	s0,16(a0)
	sw	s1,20(a0)
	sw	s3,24(a0)
	sw	s2,28(a0)
.L40:
	ld	s0,104(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,96(sp)
	.cfi_restore 9
	ld	s2,88(sp)
	.cfi_restore 18
	ld	s3,80(sp)
	.cfi_restore 19
	ld	s4,72(sp)
	.cfi_restore 20
	ld	s5,64(sp)
	.cfi_restore 21
	ld	s6,56(sp)
	.cfi_restore 22
	ld	s7,48(sp)
	.cfi_restore 23
	ld	s8,40(sp)
	.cfi_restore 24
	ld	s9,32(sp)
	.cfi_restore 25
	ld	s10,24(sp)
	.cfi_restore 26
	ld	s11,16(sp)
	.cfi_restore 27
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.L223:
	.cfi_restore_state
	lw	a1,4(a0)
	lw	a6,0(a0)
	j	.L167
.L41:
	lw	a5,0(a1)
	sw	a5,0(a0)
	lw	a5,4(a1)
	sw	a5,4(a0)
	lw	a5,8(a1)
	sw	a5,8(a0)
	lw	a5,12(a1)
	sw	a5,12(a0)
	lw	a5,16(a1)
	sw	a5,16(a0)
	lw	a5,20(a1)
	sw	a5,20(a0)
	lw	a5,24(a1)
	sw	a5,24(a0)
	lw	a5,28(a1)
	sw	a5,28(a0)
	j	.L42
	.cfi_endproc
.LFE44:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.type	uECC_vli_modInv.part.0, @function
uECC_vli_modInv.part.0:
.LFB60:
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	la	a4,__stack_chk_guard
	sd	s11,232(sp)
	sd	ra,328(sp)
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
	.cfi_offset 27, -104
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
	ld	a5, 0(a4)
	sd	a5, 216(sp)
	li	a5, 0
	sd	a0,72(sp)
	sd	a2,24(sp)
	mv	s11,a3
	ble	a3,zero,.L227
	andi	s0,a3,0xff
	slli	s0,s0,2
	addi	s6,sp,88
	mv	s1,a2
	mv	a0,s6
	mv	a2,s0
	call	memcpy@plt
	addi	s4,sp,120
	mv	a2,s0
	mv	a1,s1
	mv	a0,s4
	call	memcpy@plt
	addi	a5,sp,152
	mv	a2,s0
	li	a1,0
	mv	a0,a5
	sd	a5,0(sp)
	addi	s2,sp,184
	call	memset@plt
	li	a5,1
	mv	a2,s0
	li	a1,0
	mv	a0,s2
	sw	a5,152(sp)
	call	memset@plt
.L228:
	slli	s0,s11,2
	addiw	a5,s11,-1
	add	s5,s4,s0
	slliw	s1,a5,24
	andi	a5,a5,0xff
	add	s3,s6,s0
	sraiw	s1,s1,24
	sd	a5,64(sp)
	addi	a5,s5,-4
	slli	s7,s1,2
	sd	a5,32(sp)
	addi	a5,s3,-4
	sd	a5,56(sp)
	add	a5,s6,s7
	sd	a5,16(sp)
	add	a5,s4,s7
	sd	a5,8(sp)
	add	a5,s2,s7
	sd	a5,48(sp)
	ld	a5,0(sp)
	li	t1,-4
	sub	t1,t1,s0
	add	a4,a5,s7
	sd	a4,40(sp)
	add	s8,s2,s0
	add	s9,s5,t1
	add	s10,s3,t1
	add	s0,a5,s0
	li	s7,-1
	blt	s1,zero,.L226
.L229:
	ld	a0,8(sp)
	ld	a1,16(sp)
	mv	a5,s1
	j	.L269
.L326:
	bltu	a3,a4,.L284
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a1,a1,-4
	addi	a0,a0,-4
	beq	a5,s7,.L325
.L269:
	lw	a3,0(a1)
	lw	a4,0(a0)
	bleu	a3,a4,.L326
	lw	a5,88(sp)
	li	a4,1
	andi	a5,a5,1
	beq	a5,zero,.L327
.L313:
	lw	a5,120(sp)
	andi	a5,a5,1
	beq	a5,zero,.L328
	li	a5,1
	beq	a4,a5,.L237
	mv	a0,s6
	mv	a2,s4
	li	a5,0
	ble	s11,zero,.L239
.L238:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L256
	mv	a1,a5
.L256:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	s5,a2,.L238
.L239:
	ld	a3,32(sp)
	li	a5,0
	bleu	s5,s4,.L259
.L257:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s9,.L257
.L259:
	ld	a3,40(sp)
	ld	a4,48(sp)
	mv	a5,s1
	j	.L258
.L329:
	bltu	a1,a2,.L261
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a4,-4
	addi	a3,a3,-4
	beq	a5,s7,.L260
.L258:
	lw	a1,0(a4)
	lw	a2,0(a3)
	bleu	a1,a2,.L329
.L260:
	ble	s11,zero,.L236
.L275:
	ld	a0,0(sp)
	mv	a2,s2
	li	a5,0
.L267:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L266
	mv	a1,a5
.L266:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	s8,a2,.L267
.L236:
	ld	a1,24(sp)
	mv	a2,s11
	mv	a0,s2
	call	vli_modInv_update
	j	.L229
.L284:
	lw	a5,88(sp)
	li	a4,-1
	andi	a5,a5,1
	bne	a5,zero,.L313
.L327:
	ld	a3,56(sp)
	bleu	s3,s6,.L233
.L231:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s10,.L231
.L233:
	ld	a1,24(sp)
	ld	a0,0(sp)
	mv	a2,s11
	call	vli_modInv_update
	j	.L229
.L328:
	ld	a3,32(sp)
	bleu	s5,s4,.L236
.L235:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s9,.L235
	ld	a1,24(sp)
	mv	a2,s11
	mv	a0,s2
	call	vli_modInv_update
	j	.L229
.L237:
	ble	s11,zero,.L240
	mv	a0,s4
	mv	a2,s6
	li	a5,0
.L243:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L242
	mv	a1,a5
.L242:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	s3,a2,.L243
.L240:
	ld	a3,56(sp)
	li	a5,0
	bleu	s3,s6,.L246
.L244:
	lw	a4,0(a3)
	addi	a3,a3,-4
	srliw	a2,a4,1
	or	a5,a5,a2
	slliw	a4,a4,31
	sw	a5,4(a3)
	sext.w	a5,a4
	bne	a3,s10,.L244
.L246:
	ld	a3,48(sp)
	ld	a4,40(sp)
	mv	a5,s1
	j	.L245
.L330:
	bltu	a1,a2,.L248
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a4,-4
	addi	a3,a3,-4
	beq	a5,s7,.L247
.L245:
	lw	a1,0(a4)
	lw	a2,0(a3)
	bleu	a1,a2,.L330
.L247:
	ble	s11,zero,.L233
.L273:
	ld	a2,0(sp)
	mv	a0,s2
	li	a5,0
.L254:
	lw	a4,0(a2)
	lw	a6,0(a0)
	li	a1,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L253
	mv	a1,a5
.L253:
	sltu	a4,a4,a6
	or	a1,a1,a4
	sw	a3,0(a2)
	addi	a2,a2,4
	sext.w	a5,a1
	addi	a0,a0,4
	bne	a2,s0,.L254
	ld	a1,24(sp)
	ld	a0,0(sp)
	mv	a2,s11
	call	vli_modInv_update
	j	.L229
.L325:
	ble	s11,zero,.L226
	ld	a5,64(sp)
	ld	a1,0(sp)
	ld	a0,72(sp)
	addi	a2,a5,1
	slli	a2,a2,2
	call	memcpy@plt
.L226:
	la	a5,__stack_chk_guard
	ld	a4, 216(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L331
	ld	ra,328(sp)
	.cfi_remember_state
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
.L261:
	.cfi_restore_state
	ld	a0,24(sp)
	mv	a1,s2
	li	a5,0
	ble	s11,zero,.L236
.L264:
	lw	a3,0(a1)
	lw	a4,0(a0)
	li	a2,0
	addw	a4,a4,a3
	addw	a6,a4,a5
	mv	a4,a6
	bne	a3,a6,.L263
	mv	a2,a5
.L263:
	sgtu	a3,a3,a6
	or	a2,a2,a3
	sw	a4,0(a1)
	addi	a1,a1,4
	sext.w	a5,a2
	addi	a0,a0,4
	bne	a1,s8,.L264
	j	.L275
.L248:
	ld	a0,24(sp)
	ld	a1,0(sp)
	li	a5,0
	ble	s11,zero,.L233
.L251:
	lw	a3,0(a1)
	lw	a4,0(a0)
	li	a2,0
	addw	a4,a4,a3
	addw	a6,a4,a5
	mv	a4,a6
	bne	a3,a6,.L250
	mv	a2,a5
.L250:
	sgtu	a3,a3,a6
	or	a2,a2,a3
	sw	a4,0(a1)
	addi	a1,a1,4
	sext.w	a5,a2
	addi	a0,a0,4
	bne	a1,s0,.L251
	j	.L273
.L227:
	li	a5,1
	sw	a5,152(sp)
	addi	a5,sp,152
	addi	s6,sp,88
	addi	s4,sp,120
	sd	a5,0(sp)
	addi	s2,sp,184
	j	.L228
.L331:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE60:
	.size	uECC_vli_modInv.part.0, .-uECC_vli_modInv.part.0
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
	ble	a1,zero,.L336
	andi	a1,a1,0xff
	slli	a2,a1,2
	li	a1,0
	tail	memset@plt
.L336:
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
	ble	a1,zero,.L344
	andi	a3,a1,0xff
	addiw	a4,a3,-1
	srli	a5,a0,2
	andi	a4,a4,0xff
	li	a2,11
	andi	a5,a5,1
	bleu	a4,a2,.L345
	beq	a5,zero,.L346
	lw	a7,0(a0)
	li	t1,1
.L341:
	subw	a3,a3,a5
	andi	a3,a3,0xff
	slli	a5,a5,2
	srli	a6,a3,1
	add	a5,a0,a5
	slli	a6,a6,3
	add	a6,a6,a5
	li	a4,0
.L342:
	ld	a2,0(a5)
	addi	a5,a5,8
	or	a4,a4,a2
	bne	a5,a6,.L342
	srli	a5,a4,32
	or	a4,a4,a5
	or	a4,a4,a7
	andi	a5,a3,1
	sext.w	a4,a4
	beq	a5,zero,.L343
	andi	a5,a3,-2
	addw	a5,a5,t1
	slliw	a5,a5,24
	sraiw	a5,a5,24
.L340:
	slli	a3,a5,2
	add	a3,a0,a3
	andi	a5,a5,0xff
	lw	a6,0(a3)
	addiw	a3,a5,1
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a2,0(a3)
	addiw	a3,a5,2
	slliw	a6,a3,24
	or	a4,a2,a4
	sraiw	a6,a6,24
	sext.w	a4,a4
	andi	a3,a3,0xff
	ble	a1,a6,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,3
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,4
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,5
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,6
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,7
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,8
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,9
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a6,0(a3)
	addiw	a3,a5,10
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a6,a4
	andi	a3,a3,0xff
	ble	a1,a2,.L343
	slli	a3,a3,2
	add	a3,a0,a3
	lw	a2,0(a3)
	addiw	a5,a5,11
	slliw	a3,a5,24
	sraiw	a3,a3,24
	or	a4,a2,a4
	andi	a5,a5,0xff
	ble	a1,a3,.L343
	slli	a5,a5,2
	add	a0,a0,a5
	lw	a5,0(a0)
	or	a4,a5,a4
.L343:
	seqz	a0,a4
	ret
.L346:
	li	t1,0
	li	a7,0
	j	.L341
.L344:
	li	a0,1
	ret
.L345:
	li	a5,0
	li	a4,0
	j	.L340
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
	blt	a3,zero,.L360
	slli	a4,a4,2
	add	a4,a0,a4
	li	a6,-1
	j	.L354
.L355:
	addi	a4,a4,-4
	beq	a5,a6,.L353
	mv	a3,a5
.L354:
	andi	a2,a3,0xff
	lw	a1,0(a4)
	addiw	a5,a2,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	beq	a1,zero,.L355
	addiw	a2,a2,1
	slliw	a3,a2,24
	sraiw	a3,a3,24
.L356:
	slli	a5,a3,2
	add	a7,a7,a5
	lw	a5,-4(a7)
	li	a4,0
	beq	a5,zero,.L358
.L359:
	srliw	a5,a5,1
	addiw	a4,a4,1
	bne	a5,zero,.L359
	slli	a4,a4,48
	srli	a4,a4,48
.L358:
	addiw	a0,a3,-1
	slliw	a0,a0,5
	addw	a0,a0,a4
	slliw	a0,a0,16
	sraiw	a0,a0,16
	ret
.L360:
	mv	a3,a1
.L353:
	li	a0,0
	bne	a3,zero,.L356
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
	ble	a2,zero,.L366
	andi	a7,a2,0xff
	addiw	a5,a7,-1
	andi	a5,a5,0xff
	li	a4,8
	bleu	a5,a4,.L368
	or	a5,a0,a1
	andi	a5,a5,7
	bne	a5,zero,.L368
	addi	a5,a1,4
	beq	a0,a5,.L368
	srli	a6,a7,1
	slli	a6,a6,3
	mv	a5,a1
	mv	a4,a0
	add	a6,a6,a1
.L369:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L369
	andi	a5,a2,254
	beq	a7,a5,.L366
	slli	a5,a5,2
	add	a1,a1,a5
	lw	a4,0(a1)
	add	a0,a0,a5
	sw	a4,0(a0)
	ret
.L368:
	slli	a5,a2,2
	add	a5,a1,a5
.L371:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a0,a0,4
	sw	a4,-4(a0)
	bne	a5,a1,.L371
.L366:
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
	blt	a5,zero,.L384
	slli	a2,a2,2
	add	a0,a0,a2
	add	a1,a1,a2
	li	a2,-1
	j	.L383
.L388:
	bltu	a3,a4,.L386
	addi	a0,a0,-4
	addi	a1,a1,-4
	beq	a5,a2,.L384
.L383:
	lw	a3,0(a0)
	lw	a4,0(a1)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	bleu	a3,a4,.L388
	li	a0,1
	ret
.L384:
	li	a0,0
	ret
.L386:
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
	blt	a5,zero,.L392
	slli	a2,a2,2
	add	a3,a0,a2
	add	a1,a1,a2
	li	a0,0
	li	a6,-1
.L391:
	lw	a4,0(a3)
	lw	a2,0(a1)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	xor	a4,a4,a2
	sraiw	a5,a5,24
	or	a0,a4,a0
	addi	a3,a3,-4
	addi	a1,a1,-4
	bne	a5,a6,.L391
	snez	a0,a0
	ret
.L392:
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
	beq	a2,zero,.L396
	li	a1,0
.L396:
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
	ble	a3,zero,.L402
	slli	a3,a3,2
	li	a5,0
	li	a0,0
.L401:
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
	bne	a7,t1,.L400
	mv	a6,a0
.L400:
	or	a6,a6,t4
	sw	a4,0(t3)
	sext.w	a0,a6
	bne	a3,a5,.L401
	ret
.L402:
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
	ble	a2,zero,.L414
	addi	t5,sp,8
	slli	t3,a2,2
	add	t3,a0,t3
	mv	a6,t5
	li	t1,0
.L409:
	lw	a5,0(a0)
	lw	a7,0(a1)
	li	a3,0
	subw	a4,a5,t1
	subw	a7,a4,a7
	mv	a4,a7
	bne	a5,a7,.L408
	mv	a3,t1
.L408:
	sltu	a5,a5,a7
	or	a3,a3,a5
	sw	a4,0(a6)
	addi	a0,a0,4
	sext.w	t1,a3
	addi	a1,a1,4
	addi	a6,a6,4
	bne	t3,a0,.L409
	andi	a5,a2,0xff
	addiw	a4,a5,-1
	andi	a4,a4,0xff
	li	a3,2
	snez	t1,t1
	bleu	a4,a3,.L415
	srli	a5,a5,1
	slli	a5,a5,3
	add	a5,a5,t5
	li	a4,0
.L411:
	ld	a3,0(t5)
	addi	t5,t5,8
	or	a4,a4,a3
	bne	t5,a5,.L411
	srli	a5,a4,32
	or	a5,a5,a4
	andi	a4,a2,1
	sext.w	a5,a5
	beq	a4,zero,.L412
	andi	a4,a2,-2
.L410:
	slli	a3,a4,2
	addi	a3,a3,48
	add	a3,a3,sp
	andi	a4,a4,0xff
	lw	a0,-40(a3)
	addiw	a3,a4,1
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	a2,a1,.L412
	slli	a3,a3,2
	addi	a3,a3,48
	add	a3,a3,sp
	lw	a1,-40(a3)
	addiw	a4,a4,2
	slliw	a3,a4,24
	or	a5,a1,a5
	sraiw	a3,a3,24
	sext.w	a5,a5
	andi	a4,a4,0xff
	ble	a2,a3,.L412
	slli	a4,a4,2
	addi	a4,a4,48
	add	a4,a4,sp
	lw	a4,-40(a4)
	or	a5,a4,a5
.L412:
	snez	a0,a5
	slliw	t1,t1,1
	subw	a0,a0,t1
	slliw	a0,a0,24
	sraiw	a0,a0,24
.L406:
	ld	a4, 40(sp)
	ld	a5, 0(t4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L423
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L414:
	.cfi_restore_state
	li	a0,0
	j	.L406
.L415:
	li	a5,0
	li	a4,0
	j	.L410
.L423:
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
	slli	t5,a4,2
	li	a6,0
	li	t4,0
	ble	a4,zero,.L447
.L430:
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
	bne	t1,t3,.L429
	mv	a7,t4
.L429:
	or	a7,a7,t0
	sw	a5,0(t6)
	sext.w	t4,a7
	bne	t5,a6,.L430
	beq	t4,zero,.L448
.L431:
	add	t5,a0,t5
	li	a6,0
.L437:
	lw	a2,0(a0)
	lw	a1,0(a3)
	li	a4,0
	subw	a5,a2,a6
	subw	a1,a5,a1
	mv	a5,a1
	sltu	a7,a2,a1
	bne	a2,a1,.L436
	mv	a4,a6
.L436:
	or	a4,a4,a7
	sw	a5,0(a0)
	addi	a0,a0,4
	sext.w	a6,a4
	addi	a3,a3,4
	bne	t5,a0,.L437
	ret
.L448:
	addiw	a5,a4,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
.L426:
	slli	a2,a5,2
	add	a7,a3,a2
	li	t1,-1
	add	a2,a0,a2
	j	.L434
.L449:
	bltu	a6,a1,.L433
	addi	a7,a7,-4
	addi	a2,a2,-4
	beq	a5,t1,.L433
.L434:
	lw	a6,0(a7)
	lw	a1,0(a2)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	bleu	a6,a1,.L449
	ret
.L433:
	slli	t5,a4,2
	bgt	a4,zero,.L431
	ret
.L447:
	addiw	a2,a4,-1
	slliw	a2,a2,24
	sraiw	a2,a2,24
	li	a5,127
	bge	a2,zero,.L426
	ret
	.cfi_endproc
.LFE33:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	1
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB34:
	.cfi_startproc
	ble	a4,zero,.L450
	slli	a4,a4,2
	li	a5,0
	li	t4,0
.L454:
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
	bne	t1,t3,.L453
	mv	a7,t4
.L453:
	or	a7,a7,t6
	sw	a6,0(t5)
	sext.w	t4,a7
	bne	a4,a5,.L454
	beq	t4,zero,.L450
	add	a4,a0,a4
	li	a7,0
.L457:
	lw	a1,0(a0)
	lw	a5,0(a3)
	li	a2,0
	addi	a3,a3,4
	addw	a5,a5,a1
	addw	a6,a5,a7
	mv	a5,a6
	sgtu	t1,a1,a6
	bne	a1,a6,.L456
	mv	a2,a7
.L456:
	or	a2,a2,t1
	sw	a5,0(a0)
	addi	a0,a0,4
	sext.w	a7,a2
	bne	a4,a0,.L457
.L450:
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
	sd	s8,192(sp)
	sd	ra,264(sp)
	sd	s7,200(sp)
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 23, -72
	lb	s7,0(a3)
	la	s8,__stack_chk_guard
	ld	a5, 0(s8)
	sd	a5, 152(sp)
	li	a5, 0
	ble	s7,zero,.L465
	sd	s6,208(sp)
	.cfi_offset 22, -64
	andi	s6,s7,0xff
	sd	s11,168(sp)
	.cfi_offset 27, -104
	addiw	s11,s6,-1
	sd	s0,256(sp)
	sd	s1,248(sp)
	sd	s3,232(sp)
	sd	s9,184(sp)
	sd	s10,176(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	mv	s1,a3
	srli	a5,a2,2
	andi	s11,s11,0xff
	li	a3,11
	mv	s9,a0
	mv	s3,a1
	mv	s0,a2
	mv	s10,a2
	andi	a5,a5,1
	bleu	s11,a3,.L495
	beq	a5,zero,.L496
	lw	a7,0(a2)
	li	a0,1
.L468:
	subw	a1,s6,a5
	andi	a1,a1,0xff
	slli	a5,a5,2
	srli	a2,a1,1
	add	a5,s0,a5
	slli	a2,a2,3
	add	a2,a2,a5
	li	a6,0
.L469:
	ld	a3,0(a5)
	addi	a5,a5,8
	or	a6,a6,a3
	bne	a5,a2,.L469
	srli	a5,a6,32
	or	a6,a6,a5
	or	a6,a6,a7
	andi	a5,a1,1
	sext.w	a6,a6
	beq	a5,zero,.L470
	andi	a5,a1,-2
	addw	a5,a5,a0
	slliw	a5,a5,24
	sraiw	a5,a5,24
.L467:
	slli	a3,a5,2
	add	a3,s0,a3
	andi	a5,a5,0xff
	lw	a1,0(a3)
	addiw	a3,a5,1
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a2,0(a3)
	addiw	a3,a5,2
	slliw	a1,a3,24
	or	a2,a2,a6
	sraiw	a1,a1,24
	sext.w	a6,a2
	andi	a3,a3,0xff
	ble	s7,a1,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,3
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,4
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,5
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,6
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,7
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,8
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,9
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a1,0(a3)
	addiw	a3,a5,10
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a6,a1,a6
	andi	a3,a3,0xff
	ble	s7,a2,.L470
	slli	a3,a3,2
	add	a3,s0,a3
	lw	a2,0(a3)
	addiw	a5,a5,11
	slliw	a3,a5,24
	sraiw	a3,a3,24
	or	a6,a2,a6
	andi	a5,a5,0xff
	ble	s7,a3,.L470
	slli	a5,a5,2
	add	a5,s0,a5
	lw	a5,0(a5)
	or	a6,a5,a6
.L470:
	beq	a6,zero,.L524
	sd	s2,240(sp)
	.cfi_offset 18, -32
	addi	s2,sp,88
	mv	a3,s7
	mv	a2,s3
	mv	a1,s3
	mv	a0,s2
	sd	s4,224(sp)
	sd	s5,216(sp)
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	call	uECC_vli_mult
	ld	a5,184(s1)
	addi	s4,sp,24
	mv	a1,s2
	mv	a0,s4
	jalr	a5
	lb	a3,0(s1)
	mv	a2,s4
	mv	a1,s9
	mv	a0,s2
	call	uECC_vli_mult
	ld	a5,184(s1)
	addi	a4,sp,56
	mv	a0,a4
	mv	a1,s2
	sd	a4,0(sp)
	jalr	a5
	lb	a3,0(s1)
	mv	a2,s4
	mv	a1,s4
	mv	a0,s2
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s4
	jalr	a5
	lb	a3,0(s1)
	mv	a2,s0
	mv	a1,s3
	mv	a0,s2
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s3
	jalr	a5
	lb	a3,0(s1)
	mv	a2,s0
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s0
	jalr	a5
	addi	s5,s1,4
	mv	a4,s7
	mv	a3,s5
	mv	a2,s0
	mv	a1,s9
	mv	a0,s9
	call	uECC_vli_modAdd
	mv	a4,s7
	mv	a3,s5
	mv	a2,s0
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a4,s7
	mv	a3,s5
	mv	a2,s0
	mv	a1,s9
	mv	a0,s0
	call	uECC_vli_modSub
	lb	a3,0(s1)
	mv	a2,s0
	mv	a1,s9
	mv	a0,s2
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s9
	jalr	a5
	mv	a4,s7
	mv	a3,s5
	mv	a2,s9
	mv	a1,s9
	mv	a0,s0
	call	uECC_vli_modAdd
	mv	a2,s0
	mv	a4,s7
	mv	a3,s5
	mv	a1,s9
	mv	a0,s9
	call	uECC_vli_modAdd
	lw	a2,0(s9)
	slli	a6,s7,2
	add	a5,s9,a6
	andi	a2,a2,1
	beq	a2,zero,.L525
	mv	a1,s9
	mv	a7,s5
	li	t1,0
.L475:
	lw	a2,0(a1)
	lw	a3,0(a7)
	li	a0,0
	addw	a3,a3,a2
	addw	t3,a3,t1
	mv	a3,t3
	bne	a2,t3,.L474
	mv	a0,t1
.L474:
	sgtu	a2,a2,t3
	or	a0,a0,a2
	sw	a3,0(a1)
	addi	a1,a1,4
	sext.w	t1,a0
	addi	a7,a7,4
	bne	a5,a1,.L475
	li	a2,0
	bgeu	s9,a5,.L479
.L478:
	lw	a3,-4(a5)
	addi	a5,a5,-4
	srliw	a1,a3,1
	or	a2,a2,a1
	slliw	a3,a3,31
	sw	a2,0(a5)
	sext.w	a2,a3
	bltu	s9,a5,.L478
.L479:
	addi	a5,a6,-4
	add	a5,s9,a5
	lw	a3,0(a5)
	slliw	t1,t1,31
	or	a3,a3,t1
	sw	a3,0(a5)
.L477:
	lb	a3,0(s1)
	mv	a2,s9
	mv	a1,s9
	mv	a0,s2
	sd	a6,8(sp)
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s0
	jalr	a5
	ld	a2,0(sp)
	mv	a4,s7
	mv	a3,s5
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	ld	a2,0(sp)
	mv	a4,s7
	mv	a3,s5
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	ld	a1,0(sp)
	mv	a4,s7
	mv	a3,s5
	mv	a0,a1
	mv	a2,s0
	call	uECC_vli_modSub
	lb	a3,0(s1)
	ld	a2,0(sp)
	mv	a1,s9
	mv	a0,s2
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s9
	jalr	a5
	mv	a4,s7
	mv	a3,s5
	mv	a2,s4
	mv	a1,s9
	mv	a0,s4
	call	uECC_vli_modSub
	li	a5,8
	ld	a6,8(sp)
	bleu	s11,a5,.L483
	or	a5,s9,s0
	andi	a5,a5,7
	bne	a5,zero,.L483
	addi	a5,s0,4
	beq	s9,a5,.L483
	srli	a1,s6,1
	slli	a1,a1,3
	mv	a3,s9
	add	a1,s0,a1
	mv	a5,s0
.L484:
	ld	a2,0(a5)
	addi	a5,a5,8
	addi	a3,a3,8
	sd	a2,-8(a3)
	bne	a5,a1,.L484
	andi	a5,s7,254
	beq	a5,s6,.L488
	slli	a5,a5,2
	add	a3,s0,a5
	lw	a3,0(a3)
	add	a5,s9,a5
	sw	a3,0(a5)
.L488:
	or	a5,s0,s3
	andi	a5,a5,7
	bne	a5,zero,.L489
	addi	a5,s3,4
	beq	s0,a5,.L489
	srli	a2,s6,1
	slli	a2,a2,3
	mv	a5,s3
	add	a2,s0,a2
.L490:
	ld	a3,0(a5)
	addi	s10,s10,8
	addi	a5,a5,8
	sd	a3,-8(s10)
	bne	a2,s10,.L490
	andi	a5,s7,254
	beq	s6,a5,.L493
	slli	a5,a5,2
	add	a4,s3,a5
	lw	a4,0(a4)
	add	s0,s0,a5
	sw	a4,0(s0)
.L493:
	slli	a2,s6,2
	mv	a1,s4
	mv	a0,s3
	call	memcpy@plt
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
	ld	s9,184(sp)
	.cfi_restore 25
	ld	s10,176(sp)
	.cfi_restore 26
	ld	s11,168(sp)
	.cfi_restore 27
.L465:
	ld	a4, 152(sp)
	ld	a5, 0(s8)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L526
	ld	ra,264(sp)
	.cfi_restore 1
	ld	s7,200(sp)
	.cfi_restore 23
	ld	s8,192(sp)
	.cfi_restore 24
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
.L525:
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
	bgeu	s9,a5,.L477
	lw	a3,-4(a5)
	addi	a5,a5,-4
	srliw	a1,a3,1
	or	a2,a2,a1
	slliw	a3,a3,31
	sw	a2,0(a5)
	sext.w	a2,a3
	j	.L525
.L524:
	.cfi_restore 18
	.cfi_restore 20
	.cfi_restore 21
	ld	s0,256(sp)
	.cfi_restore 8
	ld	s1,248(sp)
	.cfi_restore 9
	ld	s3,232(sp)
	.cfi_restore 19
	ld	s6,208(sp)
	.cfi_restore 22
	ld	s9,184(sp)
	.cfi_restore 25
	ld	s10,176(sp)
	.cfi_restore 26
	ld	s11,168(sp)
	.cfi_restore 27
	j	.L465
.L483:
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	mv	a0,s9
	add	a2,s0,a6
	mv	a5,s0
.L486:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a0,a0,4
	sw	a3,-4(a0)
	bne	a5,a2,.L486
	li	a5,8
	bgtu	s11,a5,.L488
.L489:
	mv	a5,s3
	add	a6,a6,s3
.L492:
	lw	a4,0(a5)
	addi	a5,a5,4
	addi	s10,s10,4
	sw	a4,-4(s10)
	bne	a5,a6,.L492
	j	.L493
.L496:
	.cfi_restore 18
	.cfi_restore 20
	.cfi_restore 21
	li	a7,0
	li	a0,0
	j	.L468
.L495:
	li	a6,0
	li	a5,0
	j	.L467
.L526:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 19
	.cfi_restore 22
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	sd	s0,256(sp)
	sd	s1,248(sp)
	sd	s2,240(sp)
	sd	s3,232(sp)
	sd	s4,224(sp)
	sd	s5,216(sp)
	sd	s6,208(sp)
	sd	s9,184(sp)
	sd	s10,176(sp)
	sd	s11,168(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
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
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	sd	s4,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 20, -48
	lb	s4,0(a2)
	la	s5,__stack_chk_guard
	addi	s2,sp,40
	ld	a5, 0(s5)
	sd	a5, 104(sp)
	li	a5, 0
	mv	s0,a0
	mv	s1,a2
	mv	a3,s4
	mv	a2,a1
	li	a5,3
	mv	a0,s2
	mv	s3,a1
	sw	a5,8(sp)
	sw	zero,12(sp)
	sw	zero,16(sp)
	sw	zero,20(sp)
	sw	zero,24(sp)
	sw	zero,28(sp)
	sw	zero,32(sp)
	sw	zero,36(sp)
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s0
	jalr	a5
	addi	s6,s1,4
	mv	a4,s4
	mv	a3,s6
	addi	a2,sp,8
	mv	a1,s0
	mv	a0,s0
	call	uECC_vli_modSub
	lb	a3,0(s1)
	mv	a2,s3
	mv	a1,s0
	mv	a0,s2
	call	uECC_vli_mult
	ld	a5,184(s1)
	mv	a1,s2
	mv	a0,s0
	jalr	a5
	ld	a4, 104(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L531
	mv	a1,s0
	mv	a0,s0
	ld	s0,160(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s2,144(sp)
	.cfi_restore 18
	ld	s3,136(sp)
	.cfi_restore 19
	ld	s5,120(sp)
	.cfi_restore 21
	mv	a4,s4
	mv	a3,s6
	ld	s4,128(sp)
	.cfi_restore 20
	ld	s6,112(sp)
	.cfi_restore 22
	addi	a2,s1,132
	ld	s1,152(sp)
	.cfi_restore 9
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	tail	uECC_vli_modAdd
.L531:
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
	addi	s1,sp,104
	call	uECC_vli_modSub
	mv	a3,s2
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
	ble	s2,zero,.L532
	andi	a2,s2,0xff
	slli	a2,a2,2
	mv	a1,s9
	mv	a0,s8
	call	memcpy@plt
.L532:
	ld	a4, 168(sp)
	ld	a5, 0(s10)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L536
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
.L536:
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
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	s5,200(sp)
	sd	s6,192(sp)
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	la	s5,__stack_chk_guard
	andi	s6,a3,0xff
	sd	s4,208(sp)
	ld	a5, 0(s5)
	sd	a5, 152(sp)
	li	a5, 0
	.cfi_offset 20, -48
	addiw	s4,s6,-1
	sd	s0,240(sp)
	sd	s1,232(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	slliw	s0,a3,6
	mv	s1,a3
	addi	a5,sp,88
	slliw	a3,s4,24
	sd	s2,224(sp)
	sd	s7,184(sp)
	sd	s8,176(sp)
	slli	s0,s0,48
	sd	ra,248(sp)
	sd	s3,216(sp)
	sd	s9,168(sp)
	.cfi_offset 18, -32
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 19, -40
	.cfi_offset 25, -88
	sd	a5,8(sp)
	sd	a1,16(sp)
	sraiw	a3,a3,24
	mv	s7,a1
	mv	s2,a0
	mv	s8,a2
	srli	s0,s0,48
	andi	s4,s4,0xff
	blt	a3,zero,.L576
	slli	a4,s4,2
	add	a4,a2,a4
	li	a2,-1
	j	.L539
.L540:
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a4,-4
	beq	a5,a2,.L538
	mv	a3,a5
.L539:
	lw	a1,0(a4)
	andi	a5,a3,0xff
	beq	a1,zero,.L540
	addiw	a5,a5,1
	slliw	a3,a5,24
	sraiw	a3,a3,24
.L541:
	slli	a5,a3,2
	add	a5,s8,a5
	lw	a5,-4(a5)
	li	a4,0
	beq	a5,zero,.L543
.L544:
	srliw	a5,a5,1
	addiw	a4,a4,1
	bne	a5,zero,.L544
	slli	a4,a4,48
	srli	a4,a4,48
.L543:
	addiw	a5,a3,-1
	slliw	a5,a5,5
	subw	s0,s0,a5
	subw	s0,s0,a4
	slli	s0,s0,48
	srli	s0,s0,48
.L542:
	slliw	s0,s0,16
	sraiw	s0,s0,16
	sraiw	a3,s0,31
	srliw	a3,a3,27
	addw	a4,a3,s0
	sraiw	a5,a4,5
	andi	s3,a4,31
	slliw	s9,a5,24
	subw	s3,s3,a3
	slliw	a5,a5,16
	slliw	s3,s3,16
	sraiw	s9,s9,24
	sraiw	a5,a5,16
	sraiw	s3,s3,16
	ble	s9,zero,.L548
	addiw	a5,a5,-1
	andi	a2,a5,0xff
	addi	a2,a2,1
	slli	a2,a2,2
	li	a1,0
	addi	a0,sp,24
	call	memset@plt
.L548:
	ble	s3,zero,.L631
	beq	s1,zero,.L630
	lw	a4,0(s8)
	slli	a5,s9,32
	srli	a3,a5,30
	addi	a5,a3,160
	add	a3,a5,sp
	sllw	a2,a4,s3
	li	a5,32
	sw	a2,-136(a3)
	subw	a5,a5,s3
	li	a2,1
	srlw	a3,a4,a5
	beq	s1,a2,.L630
	lw	a2,4(s8)
	addiw	a4,s9,1
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a2,s3
	add	a4,a4,sp
	or	a3,a1,a3
	sw	a3,-136(a4)
	li	a4,2
	srlw	a2,a2,a5
	beq	s1,a4,.L630
	lw	a3,8(s8)
	addiw	a4,s9,2
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,3
	srlw	a3,a3,a5
	beq	s1,a4,.L630
	lw	a2,12(s8)
	addiw	a4,s9,3
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a2,s3
	add	a4,a4,sp
	or	a3,a1,a3
	sw	a3,-136(a4)
	li	a4,4
	srlw	a2,a2,a5
	beq	s1,a4,.L630
	lw	a3,16(s8)
	addiw	a4,s9,4
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,5
	srlw	a3,a3,a5
	beq	s1,a4,.L630
	lw	a2,20(s8)
	addiw	a4,s9,5
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a2,s3
	add	a4,a4,sp
	or	a3,a1,a3
	sw	a3,-136(a4)
	li	a4,6
	srlw	a2,a2,a5
	beq	s1,a4,.L630
	lw	a3,24(s8)
	addiw	a4,s9,6
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,7
	srlw	a3,a3,a5
	beq	s1,a4,.L630
	lw	a2,28(s8)
	addiw	a4,s9,7
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a2,s3
	add	a4,a4,sp
	or	a3,a1,a3
	sw	a3,-136(a4)
	li	a4,8
	srlw	a2,a2,a5
	beq	s1,a4,.L630
	lw	a3,32(s8)
	addiw	a4,s9,8
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,9
	srlw	a2,a3,a5
	beq	s1,a4,.L630
	lw	a3,36(s8)
	addiw	a4,s9,9
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,10
	srlw	a2,a3,a5
	beq	s1,a4,.L630
	lw	a3,40(s8)
	addiw	a4,s9,10
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,11
	srlw	a3,a3,a5
	beq	s1,a4,.L630
	lw	a2,44(s8)
	addiw	a4,s9,11
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a2,s3
	add	a4,a4,sp
	or	a3,a1,a3
	sw	a3,-136(a4)
	li	a4,12
	srlw	a2,a2,a5
	beq	s1,a4,.L630
	lw	a3,48(s8)
	addiw	a4,s9,12
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,13
	srlw	a2,a3,a5
	beq	s1,a4,.L630
	lw	a3,52(s8)
	addiw	a4,s9,13
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,14
	srlw	a2,a3,a5
	beq	s1,a4,.L630
	lw	a3,56(s8)
	addiw	a4,s9,14
	slli	a1,a4,32
	srli	a4,a1,30
	addi	a4,a4,160
	sllw	a1,a3,s3
	add	a4,a4,sp
	or	a2,a1,a2
	sw	a2,-136(a4)
	li	a4,15
	srlw	a3,a3,a5
	beq	s1,a4,.L630
	addiw	a5,s9,15
	lw	a4,60(s8)
	slli	a2,a5,32
	srli	a5,a2,30
	sllw	a4,a4,s3
	addi	a5,a5,160
	add	a5,a5,sp
	or	a4,a4,a3
	sw	a4,-136(a5)
	addi	s3,sp,24
	j	.L553
.L576:
	mv	a3,s1
.L538:
	beq	a3,zero,.L542
	j	.L541
.L630:
	addi	s3,sp,24
.L553:
	addiw	a7,s1,-1
	slli	t1,s1,2
	slli	a7,a7,2
	add	a2,s3,t1
	addi	a5,a7,160
	sub	a1,a2,t1
	add	a7,a5,sp
	addi	a5,t1,160
	add	a0,a2,t1
	slli	a6,s1,1
	addi	t4,a2,-4
	addi	a1,a1,-4
	li	a3,1
	add	t1,a5,sp
	li	t3,-1
.L550:
	li	t6,0
	ble	s1,zero,.L559
	xori	a5,a3,1
	slli	a4,a3,3
	slli	a5,a5,3
	addi	a4,a4,160
	addi	a5,a5,160
	add	a4,a4,sp
	add	a5,a5,sp
	ld	t0,-152(a4)
	ld	t2,-152(a5)
	li	t6,0
	li	a5,0
	li	a4,0
.L560:
	slli	a4,a4,2
	addi	a4,a4,160
	slli	t5,a5,2
	add	a4,a4,sp
	add	s7,t0,t5
	lw	a4,-136(a4)
	lw	s7,0(s7)
	addiw	a5,a5,1
	addw	a4,a4,t6
	subw	s8,s7,a4
	slliw	a5,a5,24
	sltu	s9,s7,s8
	add	t5,t2,t5
	sraiw	a5,a5,24
	beq	s7,s8,.L557
	sw	s8,0(t5)
	mv	t6,s9
	mv	a4,a5
	bgt	a6,a5,.L560
.L559:
	sub	t6,a3,t6
	seqz	a3,t6
	mv	a5,t4
	li	t5,0
	bleu	a2,s3,.L564
.L561:
	lw	a4,0(a5)
	addi	a5,a5,-4
	srliw	t6,a4,1
	or	t5,t5,t6
	slliw	a4,a4,31
	sw	t5,4(a5)
	sext.w	t5,a4
	bne	a5,a1,.L561
.L564:
	lw	t5,-136(t1)
	lw	a4,-136(a7)
	mv	a5,a0
	slliw	t5,t5,31
	or	a4,a4,t5
	sw	a4,-136(a7)
	li	t5,0
	bleu	a0,a2,.L563
.L566:
	lw	a4,-4(a5)
	addi	a5,a5,-4
	srliw	t6,a4,1
	or	t5,t5,t6
	slliw	a4,a4,31
	sw	t5,0(a5)
	sext.w	t5,a4
	bltu	a2,a5,.L566
.L563:
	addiw	s0,s0,-1
	slliw	s0,s0,16
	sraiw	s0,s0,16
	bne	s0,t3,.L550
	slli	a5,a3,3
	addi	a5,a5,160
	add	a5,a5,sp
	ld	s7,-152(a5)
	ble	s1,zero,.L537
.L554:
	li	a5,8
	bleu	s4,a5,.L569
	or	a5,s7,s2
	andi	a5,a5,7
	bne	a5,zero,.L569
	addi	a5,s7,4
	beq	s2,a5,.L569
	srli	a2,s6,1
	slli	a2,a2,3
	mv	a5,s2
	mv	a4,s7
	add	a2,a2,s2
.L570:
	ld	a3,0(a4)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a5)
	bne	a2,a5,.L570
	andi	s1,s1,254
	beq	s6,s1,.L537
	slli	s1,s1,2
	add	a1,s7,s1
	lw	a5,0(a1)
	add	s1,s2,s1
	sw	a5,0(s1)
.L537:
	ld	a4, 152(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L632
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
	ld	s9,168(sp)
	.cfi_restore 25
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
.L557:
	.cfi_restore_state
	sw	s7,0(t5)
	mv	a4,a5
	blt	a5,a6,.L560
	j	.L559
.L569:
	slli	a5,s1,2
	mv	a1,s7
	add	a5,s7,a5
.L573:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	s2,s2,4
	sw	a4,-4(s2)
	bne	a5,a1,.L573
	j	.L537
.L631:
	slli	a0,s9,2
	addi	s3,sp,24
	ble	s1,zero,.L552
	addi	a2,s4,1
	slli	a2,a2,2
	mv	a1,s8
	add	a0,s3,a0
	call	memcpy@plt
	bge	s0,zero,.L553
	j	.L554
.L552:
	bge	s0,zero,.L553
	j	.L537
.L632:
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
	bne	a5,zero,.L636
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
.L636:
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
	bne	a5,zero,.L640
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
.L640:
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
	ble	a3,zero,.L655
	andi	t3,a3,0xff
	addiw	a4,t3,-1
	srli	a5,a1,2
	andi	a4,a4,0xff
	li	a6,11
	andi	a5,a5,1
	bleu	a4,a6,.L649
	beq	a5,zero,.L650
	lw	t4,0(a1)
	li	t5,1
.L645:
	subw	t1,t3,a5
	andi	t1,t1,0xff
	slli	a5,a5,2
	srli	a7,t1,1
	add	a5,a1,a5
	slli	a7,a7,3
	add	a7,a7,a5
	li	a4,0
.L646:
	ld	a6,0(a5)
	addi	a5,a5,8
	or	a4,a4,a6
	bne	a7,a5,.L646
	srli	a5,a4,32
	or	a5,a4,a5
	or	a5,a5,t4
	andi	a4,t1,1
	sext.w	a5,a5
	beq	a4,zero,.L647
	andi	a4,t1,-2
	addw	a4,a4,t5
	slliw	a4,a4,24
	sraiw	a4,a4,24
.L644:
	slli	a6,a4,2
	add	a6,a1,a6
	andi	a4,a4,0xff
	lw	t1,0(a6)
	addiw	a6,a4,1
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	a7,0(a6)
	addiw	a6,a4,2
	slliw	t1,a6,24
	or	a5,a7,a5
	sraiw	t1,t1,24
	sext.w	a5,a5
	andi	a6,a6,0xff
	ble	a3,t1,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,3
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,4
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,5
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,6
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,7
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,8
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,9
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	t1,0(a6)
	addiw	a6,a4,10
	slliw	a7,a6,24
	sraiw	a7,a7,24
	or	a5,t1,a5
	andi	a6,a6,0xff
	ble	a3,a7,.L647
	slli	a6,a6,2
	add	a6,a1,a6
	lw	a7,0(a6)
	addiw	a4,a4,11
	slliw	a6,a4,24
	sraiw	a6,a6,24
	or	a5,a7,a5
	andi	a4,a4,0xff
	ble	a3,a6,.L647
	slli	a4,a4,2
	add	a4,a1,a4
	lw	a4,0(a4)
	or	a5,a4,a5
.L647:
	beq	a5,zero,.L648
	tail	uECC_vli_modInv.part.0
.L648:
	slli	a2,t3,2
	li	a1,0
	tail	memset@plt
.L650:
	li	t4,0
	li	t5,0
	j	.L645
.L649:
	li	a5,0
	li	a4,0
	j	.L644
.L655:
	ret
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
	lbu	a5,0(a1)
	slliw	a5,a5,1
	slliw	a6,a5,24
	sraiw	a6,a6,24
	andi	a4,a5,0xff
	ble	a6,zero,.L664
	addiw	a3,a4,-1
	srli	a5,a0,2
	andi	a3,a3,0xff
	li	a2,11
	andi	a5,a5,1
	bleu	a3,a2,.L659
	beq	a5,zero,.L665
	lw	a7,0(a0)
	li	t1,1
.L660:
	subw	a4,a4,a5
	andi	a4,a4,0xff
	slli	a5,a5,2
	srli	a1,a4,1
	add	a5,a0,a5
	slli	a1,a1,3
	add	a1,a1,a5
	li	a3,0
.L661:
	ld	a2,0(a5)
	addi	a5,a5,8
	or	a3,a3,a2
	bne	a5,a1,.L661
	srli	a5,a3,32
	or	a3,a3,a5
	or	a3,a3,a7
	andi	a5,a4,1
	sext.w	a3,a3
	beq	a5,zero,.L662
	andi	a5,a4,-2
	addw	a5,a5,t1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	slli	a4,a5,2
	add	a4,a0,a4
	andi	a5,a5,0xff
	lw	a2,0(a4)
	addiw	a4,a5,1
	slliw	a4,a4,24
	sraiw	a4,a4,24
	or	a3,a2,a3
	ble	a6,a4,.L662
.L663:
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,2
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a2,0(a4)
	addiw	a4,a5,3
	slliw	a1,a4,24
	or	a3,a2,a3
	sraiw	a1,a1,24
	sext.w	a3,a3
	andi	a4,a4,0xff
	ble	a6,a1,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,4
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,5
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,6
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,7
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,8
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,9
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a1,0(a4)
	addiw	a4,a5,10
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a6,a2,.L662
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a2,0(a4)
	addiw	a5,a5,11
	slliw	a4,a5,24
	sraiw	a4,a4,24
	or	a3,a2,a3
	andi	a5,a5,0xff
	ble	a6,a4,.L662
	slli	a5,a5,2
	add	a5,a0,a5
	lw	a5,0(a5)
	or	a3,a5,a3
.L662:
	seqz	a0,a3
	ret
.L665:
	li	a7,0
	li	t1,0
	j	.L660
.L664:
	li	a0,1
	ret
.L659:
	lw	a3,0(a0)
	li	a4,1
	li	a5,0
	j	.L663
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
	bne	a5,zero,.L674
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
.L674:
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
	addi	s1,sp,40
	mv	a3,s4
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
	ble	s4,zero,.L675
	andi	a2,s4,0xff
	slli	a2,a2,2
	mv	a1,s2
	mv	a0,s3
	call	memcpy@plt
.L675:
	ld	a4, 104(sp)
	ld	a5, 0(s9)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L679
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
.L679:
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
	addi	sp,sp,-400
	.cfi_def_cfa_offset 400
	sd	s0,384(sp)
	sd	s1,376(sp)
	sd	s2,368(sp)
	sd	s3,360(sp)
	sd	s10,304(sp)
	sd	ra,392(sp)
	sd	s4,352(sp)
	sd	s5,344(sp)
	sd	s6,336(sp)
	sd	s7,328(sp)
	sd	s8,320(sp)
	sd	s9,312(sp)
	sd	s11,296(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 26, -96
	.cfi_offset 1, -8
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 27, -104
	lb	s7,0(a5)
	la	s1,__stack_chk_guard
	mv	s0,a5
	slli	s2,s7,2
	ld	a5, 0(s1)
	sd	a5, 280(sp)
	li	a5, 0
	sd	a0,40(sp)
	sd	a1,16(sp)
	sd	s2,24(sp)
	mv	s3,a2
	mv	s1,a3
	mv	s10,a4
	ble	s7,zero,.L681
	andi	s5,s7,0xff
	addi	a5,sp,120
	slli	s5,s5,2
	mv	a2,s5
	mv	a0,a5
	mv	s4,a1
	sd	a5,8(sp)
	call	memcpy@plt
	add	a5,s4,s2
	addi	s6,sp,184
	mv	a2,s5
	mv	a1,a5
	mv	a0,s6
	sd	a5,32(sp)
	call	memcpy@plt
	beq	s1,zero,.L711
	addi	s4,sp,216
	mv	a2,s5
	mv	a1,s1
	mv	a0,s4
	call	memcpy@plt
.L686:
	ld	a1,8(sp)
	addi	s1,sp,88
	mv	a2,s5
	mv	a0,s1
	call	memmove@plt
	addi	s2,sp,152
	mv	a2,s5
	mv	a1,s6
	mv	a0,s2
	call	memmove@plt
.L684:
	ld	s5,8(sp)
	mv	a3,s0
	mv	a2,s4
	mv	a0,s5
	mv	a1,s6
	call	apply_z
	ld	a5,168(s0)
	mv	a0,s5
	mv	a3,s0
	mv	a2,s4
	mv	a1,s6
	addiw	s10,s10,-2
	jalr	a5
	slliw	s10,s10,16
	mv	a3,s0
	mv	a2,s4
	mv	a1,s2
	mv	a0,s1
	sraiw	s10,s10,16
	call	apply_z
	li	s5,1
	ble	s10,zero,.L690
.L687:
	srai	a5,s10,5
	slli	a5,a5,2
	add	a5,s3,a5
	lw	s6,0(a5)
	sllw	a5,s5,s10
	mv	a4,s0
	and	s6,s6,a5
	sext.w	s6,s6
	snez	s11,s6
	seqz	s6,s6
	slli	s11,s11,5
	slli	s6,s6,5
	add	s8,s1,s11
	add	s9,s1,s6
	add	s11,s2,s11
	add	s6,s2,s6
	mv	a3,s6
	mv	a2,s9
	mv	a1,s11
	mv	a0,s8
	call	XYcZ_addC
	mv	a4,s0
	mv	a3,s11
	mv	a2,s8
	mv	a1,s6
	mv	a0,s9
	addiw	s10,s10,-1
	call	XYcZ_add
	slli	a5,s10,48
	srli	a5,a5,48
	slliw	s10,s10,16
	sraiw	s10,s10,16
	bne	a5,zero,.L687
.L690:
	lw	s5,0(s3)
	mv	a4,s0
	addi	s3,sp,56
	andi	s6,s5,1
	mv	s5,s6
	xori	s6,s6,1
	slli	s5,s5,5
	slli	s6,s6,5
	add	s10,s1,s5
	add	s11,s1,s6
	add	s5,s2,s5
	add	s6,s2,s6
	mv	a3,s6
	mv	a2,s11
	mv	a1,s5
	mv	a0,s10
	call	XYcZ_addC
	ld	a1,8(sp)
	addi	a5,s0,4
	mv	a4,s7
	mv	a3,a5
	mv	a2,s1
	mv	a0,s3
	mv	s9,a5
	call	uECC_vli_modSub
	lb	a3,0(s0)
	mv	a2,s5
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s4
	mv	a0,s3
	jalr	a5
	lb	a3,0(s0)
	ld	a2,16(sp)
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s4
	mv	a0,s3
	jalr	a5
	ble	s7,zero,.L712
	andi	s8,s7,0xff
	addiw	a5,s8,-1
	andi	a5,a5,0xff
	li	a4,2
	bleu	a5,a4,.L698
	srli	a2,s8,1
	slli	a2,a2,3
	mv	a5,s3
	add	a2,s3,a2
	li	a4,0
.L692:
	ld	a3,0(a5)
	addi	a5,a5,8
	or	a4,a4,a3
	bne	a5,a2,.L692
	srli	a5,a4,32
	or	a4,a4,a5
	andi	a5,s7,1
	sext.w	a4,a4
	beq	a5,zero,.L693
	andi	a5,s7,-2
.L691:
	slli	a3,a5,2
	addi	a2,sp,48
	addi	a3,a3,240
	add	a3,a3,a2
	andi	a5,a5,0xff
	lw	a1,-232(a3)
	addiw	a3,a5,1
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a4,a1,a4
	andi	a3,a3,0xff
	ble	s7,a2,.L693
	slli	a3,a3,2
	addi	a2,sp,48
	addi	a3,a3,240
	add	a3,a3,a2
	lw	a3,-232(a3)
	addiw	a5,a5,2
	slliw	a2,a5,24
	or	a4,a3,a4
	sraiw	a2,a2,24
	sext.w	a4,a4
	andi	a5,a5,0xff
	ble	s7,a2,.L693
	slli	a5,a5,2
	addi	a5,a5,240
	addi	a3,sp,48
	add	a5,a5,a3
	lw	a5,-232(a5)
	or	a4,a5,a4
.L693:
	beq	a4,zero,.L695
	mv	a3,s7
	mv	a2,s9
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modInv.part.0
	slli	s8,s8,2
.L696:
	lb	a3,0(s0)
	ld	a2,32(sp)
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s4
	mv	a0,s3
	jalr	a5
	lb	a3,0(s0)
	mv	a2,s10
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s4
	mv	a0,s3
	jalr	a5
	mv	a4,s0
	mv	a3,s5
	mv	a2,s10
	mv	a1,s6
	mv	a0,s11
	call	XYcZ_add
	mv	a3,s0
	mv	a2,s3
	mv	a1,s2
	mv	a0,s1
	call	apply_z
	ld	s0,40(sp)
	mv	a2,s8
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	ld	a4,24(sp)
	mv	a2,s8
	mv	a1,s2
	add	a0,s0,a4
	call	memcpy@plt
.L680:
	la	a5,__stack_chk_guard
	ld	a4, 280(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L713
	ld	ra,392(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,384(sp)
	.cfi_restore 8
	ld	s1,376(sp)
	.cfi_restore 9
	ld	s2,368(sp)
	.cfi_restore 18
	ld	s3,360(sp)
	.cfi_restore 19
	ld	s4,352(sp)
	.cfi_restore 20
	ld	s5,344(sp)
	.cfi_restore 21
	ld	s6,336(sp)
	.cfi_restore 22
	ld	s7,328(sp)
	.cfi_restore 23
	ld	s8,320(sp)
	.cfi_restore 24
	ld	s9,312(sp)
	.cfi_restore 25
	ld	s10,304(sp)
	.cfi_restore 26
	ld	s11,296(sp)
	.cfi_restore 27
	addi	sp,sp,400
	.cfi_def_cfa_offset 0
	jr	ra
.L695:
	.cfi_restore_state
	slli	s8,s8,2
	mv	a2,s8
	li	a1,0
	mv	a0,s3
	call	memset@plt
	j	.L696
.L711:
	addi	s4,sp,216
	mv	a2,s5
	li	a1,0
	mv	a0,s4
	call	memset@plt
	li	a5,1
	sw	a5,216(sp)
	j	.L686
.L681:
	mv	a4,s2
	bne	a3,zero,.L710
	li	a5,1
	sw	a5,216(sp)
.L710:
	addi	a5,sp,120
	sd	a5,8(sp)
	ld	a5,16(sp)
	addi	s6,sp,184
	addi	s4,sp,216
	add	a5,a5,a4
	sd	a5,32(sp)
	addi	s1,sp,88
	addi	s2,sp,152
	j	.L684
.L712:
	lb	a3,0(s0)
	ld	a2,32(sp)
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s4
	mv	a0,s3
	jalr	a5
	lb	a3,0(s0)
	mv	a2,s10
	mv	a1,s3
	mv	a0,s4
	call	uECC_vli_mult
	ld	a5,184(s0)
	mv	a1,s4
	mv	a0,s3
	jalr	a5
	mv	a3,s5
	mv	a2,s10
	mv	a1,s6
	mv	a0,s11
	mv	a4,s0
	call	XYcZ_add
	mv	a3,s0
	mv	a2,s3
	mv	a1,s2
	mv	a0,s1
	call	apply_z
	j	.L680
.L698:
	li	a4,0
	li	a5,0
	j	.L691
.L713:
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
	ble	s2,zero,.L736
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
.L721:
	lw	a7,0(a4)
	lw	a5,0(t3)
	addi	a4,a4,4
	li	a6,0
	addw	a5,a5,a7
	addw	t4,a5,a0
	mv	a5,t4
	sgtu	t5,a7,t4
	bne	a7,t4,.L720
	mv	a6,a0
.L720:
	or	a6,a6,t5
	sw	a5,0(t1)
	sext.w	a0,a6
	addi	t3,t3,4
	addi	t1,t1,4
	bne	t0,a4,.L721
	beq	a0,zero,.L737
	li	a0,1
.L723:
	andi	t4,t6,0xff
	slli	t4,t4,2
	addi	a5,a1,4
	mv	a6,s0
	add	t4,t4,a5
	li	t1,0
.L726:
	lw	a3,0(a1)
	lw	a5,0(a6)
	addi	a1,a1,4
	li	a4,0
	addw	a5,a5,a3
	addw	a7,a5,t1
	mv	a5,a7
	sgtu	t3,a3,a7
	bne	a3,a7,.L725
	mv	a4,t1
.L725:
	or	a4,a4,t3
	sw	a5,0(a2)
	sext.w	t1,a4
	addi	a6,a6,4
	addi	a2,a2,4
	bne	t4,a1,.L726
.L733:
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
.L737:
	.cfi_restore_state
	slli	a5,s2,5
	ble	a5,t2,.L723
.L716:
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
	bgt	s2,zero,.L723
	j	.L733
.L736:
	slli	a5,s2,5
	li	a0,0
	ble	a5,t2,.L733
	j	.L716
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
	sd	s1,104(sp)
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	mv	a3,a2
	addi	a1,sp,24
	sd	s0,112(sp)
	sd	s2,96(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a0
	mv	s2,a2
	mv	a0,a5
	addi	a2,sp,56
	ld	a5, 0(s1)
	sd	a5, 88(sp)
	li	a5, 0
	sd	ra,120(sp)
	.cfi_offset 1, -8
	sd	a1,8(sp)
	sd	a2,16(sp)
	call	regularize_k
	sext.w	a1,a0
	seqz	a1,a1
	lhu	a4,2(s2)
	slli	a1,a1,3
	addi	a5,a1,96
	add	a1,a5,sp
	ld	a2,-88(a1)
	addiw	a4,a4,1
	slliw	a4,a4,16
	mv	a5,s2
	mv	a0,s0
	sraiw	a4,a4,16
	li	a3,0
	addi	a1,s2,68
	call	EccPoint_mult
	lbu	a5,0(s2)
	slliw	a5,a5,1
	slliw	a0,a5,24
	sraiw	a0,a0,24
	ble	a0,zero,.L746
	andi	a4,a5,0xff
	addiw	a3,a4,-1
	srli	a5,s0,2
	andi	a3,a3,0xff
	li	a2,11
	andi	a5,a5,1
	bleu	a3,a2,.L740
	beq	a5,zero,.L747
	lw	a6,0(s0)
	li	a7,1
.L741:
	subw	a4,a4,a5
	andi	a4,a4,0xff
	slli	a5,a5,2
	srli	a1,a4,1
	add	a5,s0,a5
	slli	a1,a1,3
	add	a1,a1,a5
	li	a3,0
.L742:
	ld	a2,0(a5)
	addi	a5,a5,8
	or	a3,a3,a2
	bne	a5,a1,.L742
	srli	a5,a3,32
	or	a3,a3,a5
	or	a3,a3,a6
	andi	a5,a4,1
	sext.w	a3,a3
	beq	a5,zero,.L743
	andi	a5,a4,-2
	addw	a5,a5,a7
	slliw	a5,a5,24
	sraiw	a5,a5,24
	slli	a4,a5,2
	add	a4,s0,a4
	andi	a5,a5,0xff
	lw	a2,0(a4)
	addiw	a4,a5,1
	slliw	a4,a4,24
	sraiw	a4,a4,24
	or	a3,a2,a3
	ble	a0,a4,.L743
.L744:
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,2
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a2,0(a4)
	addiw	a4,a5,3
	slliw	a1,a4,24
	or	a3,a2,a3
	sraiw	a1,a1,24
	sext.w	a3,a3
	andi	a4,a4,0xff
	ble	a0,a1,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,4
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,5
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,6
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,7
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,8
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,9
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a1,0(a4)
	addiw	a4,a5,10
	slliw	a2,a4,24
	sraiw	a2,a2,24
	or	a3,a1,a3
	andi	a4,a4,0xff
	ble	a0,a2,.L743
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a2,0(a4)
	addiw	a5,a5,11
	slliw	a4,a5,24
	sraiw	a4,a4,24
	or	a3,a2,a3
	andi	a5,a5,0xff
	ble	a0,a4,.L743
	slli	a5,a5,2
	add	a5,s0,a5
	lw	a5,0(a5)
	or	a3,a5,a3
.L743:
	snez	a0,a3
.L739:
	ld	a4, 88(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L754
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
.L747:
	.cfi_restore_state
	li	a6,0
	li	a7,0
	j	.L741
.L746:
	li	a0,0
	j	.L739
.L740:
	lw	a3,0(s0)
	li	a4,1
	li	a5,0
	j	.L744
.L754:
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
	ble	a1,zero,.L755
	addiw	a7,a1,-1
	li	a4,0
	li	a5,0
.L757:
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
	blt	a4,a1,.L757
.L755:
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
	ble	a4,zero,.L764
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a5,a5,1
	slli	a2,a5,2
	li	a1,0
	call	memset@plt
.L764:
	ble	s0,zero,.L760
	addiw	a2,s0,-1
	li	a4,0
	li	a5,0
.L765:
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
	blt	a4,s0,.L765
.L760:
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
	andi	t5,a2,0xff
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	addiw	a6,t5,-1
	la	a4,__stack_chk_guard
	ld	a5, 0(a4)
	sd	a5, 104(sp)
	li	a5, 0
	slliw	a4,a6,24
	sd	s4,176(sp)
	sd	s6,160(sp)
	sd	s7,152(sp)
	sd	ra,216(sp)
	sd	s2,192(sp)
	sraiw	a4,a4,24
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	mv	s7,a2
	mv	s6,a0
	andi	s4,a6,0xff
	blt	a4,zero,.L793
	slli	a3,s4,2
	add	a3,a1,a3
	li	a0,-1
	j	.L770
.L771:
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a3,a3,-4
	beq	a5,a0,.L769
	mv	a4,a5
.L770:
	lw	a2,0(a3)
	andi	a5,a4,0xff
	beq	a2,zero,.L771
	addiw	a5,a5,1
	slliw	a4,a5,24
	sraiw	a4,a4,24
.L772:
	slli	a5,a4,2
	add	a5,a1,a5
	lw	a5,-4(a5)
	li	a3,0
	beq	a5,zero,.L774
.L775:
	srliw	a5,a5,1
	addiw	a3,a3,1
	bne	a5,zero,.L775
	slli	a3,a3,48
	srli	a3,a3,48
.L774:
	addiw	a5,a4,-1
	slliw	a5,a5,5
	addw	a5,a5,a3
	slli	a3,a5,48
	srli	a3,a3,48
.L773:
	lla	s2,.LANCHOR0
	ld	a5,0(s2)
	beq	a5,zero,.L776
	srli	t4,s6,2
	andi	t4,t4,1
	sd	s0,208(sp)
	.cfi_offset 8, -16
	subw	s0,t5,t4
	andi	s0,s0,0xff
	sd	s5,168(sp)
	slliw	a4,s7,5
	.cfi_offset 21, -56
	andi	s5,s0,-2
	subw	a4,a4,a3
	sd	s1,200(sp)
	or	a3,t4,s5
	.cfi_offset 9, -24
	li	s1,-1
	srlw	s1,s1,a4
	slliw	a4,a3,24
	sd	s8,144(sp)
	sd	s9,136(sp)
	sd	s11,120(sp)
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 27, -104
	slli	s9,s7,2
	srli	s8,s0,1
	sraiw	a4,a4,24
	slli	t6,t4,2
	srli	s11,t5,1
	add	t6,s6,t6
	sd	s3,184(sp)
	addi	a2,s9,-4
	sd	s9,0(sp)
	slli	s8,s8,3
	.cfi_offset 19, -40
	addi	s3,sp,72
	slli	s11,s11,3
	sd	a4,24(sp)
	andi	a4,s7,-2
	add	s5,s6,a2
	add	s9,a1,s9
	add	s8,s8,t6
	add	s11,s11,s3
	andi	s0,s0,1
	sd	a4,56(sp)
	sd	a1,32(sp)
	andi	a4,s7,254
	ld	a1,0(sp)
	sd	a4,40(sp)
	mv	a4,s0
	mv	s0,s9
	mv	s9,s8
	mv	s8,s11
	mv	s11,s5
	mv	s5,s6
	sd	s10,128(sp)
	mv	a0,s5
	mv	s6,s7
	.cfi_offset 26, -96
	li	s10,64
	sd	t5,48(sp)
	sd	t4,8(sp)
	sd	t6,16(sp)
	mv	s7,a4
	jalr	a5
	beq	a0,zero,.L821
.L823:
	lw	a5,0(s11)
	and	a5,a5,s1
	sw	a5,0(s11)
	ble	s6,zero,.L783
	li	a5,11
	bleu	s4,a5,.L796
	ld	a5,8(sp)
	li	a1,0
	beq	a5,zero,.L780
	lw	a1,0(s5)
.L780:
	ld	a5,16(sp)
	li	a4,0
.L781:
	ld	a3,0(a5)
	addi	a5,a5,8
	or	a4,a4,a3
	bne	a5,s9,.L781
	srli	a5,a4,32
	or	a5,a5,a4
	or	a5,a5,a1
	sext.w	a5,a5
	beq	s7,zero,.L782
	ld	a4,24(sp)
.L779:
	slli	a3,a4,2
	add	a3,s5,a3
	andi	a4,a4,0xff
	lw	a0,0(a3)
	addiw	a3,a4,1
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a1,0(a3)
	addiw	a3,a4,2
	slliw	a0,a3,24
	or	a5,a1,a5
	sraiw	a0,a0,24
	sext.w	a5,a5
	andi	a3,a3,0xff
	ble	s6,a0,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,3
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,4
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,5
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,6
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,7
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,8
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,9
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a0,0(a3)
	addiw	a3,a4,10
	slliw	a1,a3,24
	sraiw	a1,a1,24
	or	a5,a0,a5
	andi	a3,a3,0xff
	ble	s6,a1,.L782
	slli	a3,a3,2
	add	a3,s5,a3
	lw	a1,0(a3)
	addiw	a4,a4,11
	slliw	a3,a4,24
	sraiw	a3,a3,24
	or	a5,a1,a5
	andi	a4,a4,0xff
	ble	s6,a3,.L782
	slli	a4,a4,2
	add	a4,s5,a4
	lw	a4,0(a4)
	or	a5,a4,a5
.L782:
	beq	a5,zero,.L783
	ld	a1,32(sp)
	mv	t6,s3
	mv	a0,s5
	li	a5,0
.L786:
	lw	a4,0(a1)
	lw	a6,0(a0)
	li	a2,0
	subw	a3,a4,a5
	subw	a6,a3,a6
	mv	a3,a6
	bne	a4,a6,.L785
	mv	a2,a5
.L785:
	sltu	a4,a4,a6
	or	a2,a2,a4
	sw	a3,0(t6)
	addi	a1,a1,4
	sext.w	a5,a2
	addi	a0,a0,4
	addi	t6,t6,4
	bne	a1,s0,.L786
	li	a4,2
	snez	a5,a5
	bleu	s4,a4,.L798
	mv	a4,s3
	li	a3,0
.L788:
	ld	a2,0(a4)
	addi	a4,a4,8
	or	a3,a3,a2
	bne	a4,s8,.L788
	srli	a4,a3,32
	or	a4,a4,a3
	ld	a2,40(sp)
	ld	a3,48(sp)
	sext.w	a4,a4
	beq	a3,a2,.L789
	ld	a3,56(sp)
.L787:
	slli	a1,a3,2
	addi	a2,a1,48
	addi	a1,sp,64
	add	a1,a2,a1
	andi	a3,a3,0xff
	lw	t6,-40(a1)
	addiw	a1,a3,1
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a4,t6,a4
	andi	a1,a1,0xff
	ble	s6,a0,.L789
	slli	a1,a1,2
	addi	a2,a1,48
	addi	a1,sp,64
	add	a1,a2,a1
	lw	a1,-40(a1)
	addiw	a3,a3,2
	slliw	a0,a3,24
	or	a4,a1,a4
	sraiw	a0,a0,24
	sext.w	a4,a4
	andi	a3,a3,0xff
	ble	s6,a0,.L789
	slli	a3,a3,2
	addi	a3,a3,48
	addi	a2,sp,64
	add	a3,a3,a2
	lw	a3,-40(a3)
	or	a4,a3,a4
.L789:
	snez	a4,a4
	slliw	a5,a5,1
	subw	a5,a4,a5
	andi	a5,a5,0xff
	li	a4,1
	beq	a5,a4,.L822
.L783:
	addiw	s10,s10,-1
	beq	s10,zero,.L821
	ld	a5,0(s2)
	ld	a1,0(sp)
	mv	a0,s5
	jalr	a5
	bne	a0,zero,.L823
.L821:
	ld	s0,208(sp)
	.cfi_restore 8
	ld	s1,200(sp)
	.cfi_restore 9
	ld	s3,184(sp)
	.cfi_restore 19
	ld	s5,168(sp)
	.cfi_restore 21
	ld	s8,144(sp)
	.cfi_restore 24
	ld	s9,136(sp)
	.cfi_restore 25
	ld	s10,128(sp)
	.cfi_restore 26
	ld	s11,120(sp)
	.cfi_restore 27
.L776:
	li	a0,0
.L790:
	la	a5,__stack_chk_guard
	ld	a4, 104(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L824
	ld	ra,216(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s2,192(sp)
	.cfi_restore 18
	ld	s4,176(sp)
	.cfi_restore 20
	ld	s6,160(sp)
	.cfi_restore 22
	ld	s7,152(sp)
	.cfi_restore 23
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
.L793:
	.cfi_restore_state
	mv	a4,a2
.L769:
	li	a3,0
	beq	a4,zero,.L773
	j	.L772
.L796:
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	li	a5,0
	li	a4,0
	j	.L779
.L798:
	li	a4,0
	li	a3,0
	j	.L787
.L822:
	ld	s0,208(sp)
	.cfi_restore 8
	ld	s1,200(sp)
	.cfi_restore 9
	ld	s3,184(sp)
	.cfi_restore 19
	ld	s5,168(sp)
	.cfi_restore 21
	ld	s8,144(sp)
	.cfi_restore 24
	ld	s9,136(sp)
	.cfi_restore 25
	ld	s10,128(sp)
	.cfi_restore 26
	ld	s11,120(sp)
	.cfi_restore 27
	li	a0,1
	j	.L790
.L824:
	sd	s0,208(sp)
	sd	s1,200(sp)
	sd	s3,184(sp)
	sd	s5,168(sp)
	sd	s8,144(sp)
	sd	s9,136(sp)
	sd	s10,128(sp)
	sd	s11,120(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 21, -56
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
	sd	ra,168(sp)
	lb	a3,0(a1)
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	la	s3,__stack_chk_guard
	ld	a2, 0(s3)
	sd	a2, 104(sp)
	li	a2, 0
	andi	a5,a3,0xff
	slliw	a4,a5,1
	slliw	a7,a4,24
	sraiw	a7,a7,24
	ble	a7,zero,.L838
	sd	s5,120(sp)
	.cfi_offset 21, -56
	mv	s5,a1
	andi	a1,a4,0xff
	addiw	a2,a1,-1
	srli	a4,a0,2
	sd	s4,128(sp)
	sd	s0,160(sp)
	.cfi_offset 20, -48
	.cfi_offset 8, -16
	mv	s4,a0
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s6,112(sp)
	andi	a2,a2,0xff
	li	a0,11
	andi	a4,a4,1
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 22, -64
	bleu	a2,a0,.L827
	beq	a4,zero,.L839
	lw	t1,0(s4)
	li	t3,1
.L828:
	subw	a1,a1,a4
	andi	a1,a1,0xff
	slli	a4,a4,2
	srli	a6,a1,1
	add	a4,s4,a4
	slli	a6,a6,3
	add	a6,a6,a4
	li	a2,0
.L829:
	ld	a0,0(a4)
	addi	a4,a4,8
	or	a2,a2,a0
	bne	a4,a6,.L829
	srli	a4,a2,32
	or	a2,a2,a4
	or	a2,a2,t1
	andi	a4,a1,1
	sext.w	a2,a2
	beq	a4,zero,.L830
	andi	a4,a1,-2
	addw	a4,a4,t3
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slli	a1,a4,2
	add	a1,s4,a1
	andi	a4,a4,0xff
	lw	a0,0(a1)
	addiw	a1,a4,1
	slliw	a1,a1,24
	sraiw	a1,a1,24
	or	a2,a0,a2
	ble	a7,a1,.L830
.L836:
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,2
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a0,0(a1)
	addiw	a1,a4,3
	slliw	a6,a1,24
	or	a2,a0,a2
	sraiw	a6,a6,24
	sext.w	a2,a2
	andi	a1,a1,0xff
	ble	a7,a6,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,4
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,5
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,6
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,7
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,8
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,9
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a6,0(a1)
	addiw	a1,a4,10
	slliw	a0,a1,24
	sraiw	a0,a0,24
	or	a2,a6,a2
	andi	a1,a1,0xff
	ble	a7,a0,.L830
	slli	a1,a1,2
	add	a1,s4,a1
	lw	a0,0(a1)
	addiw	a4,a4,11
	slliw	a1,a4,24
	sraiw	a1,a1,24
	or	a2,a0,a2
	andi	a4,a4,0xff
	ble	a7,a1,.L830
	slli	a4,a4,2
	add	a4,s4,a4
	lw	a4,0(a4)
	or	a2,a4,a2
.L830:
	beq	a2,zero,.L840
	addiw	a5,a5,-1
	slliw	s0,a5,24
	sraiw	s0,s0,24
	andi	a4,a5,0xff
	blt	s0,zero,.L843
	slli	s6,a4,2
	add	a6,s5,s6
	add	a0,s4,s6
	mv	a1,a6
	mv	a5,s0
	li	t1,-1
	j	.L832
.L855:
	bltu	a2,a7,.L843
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a1,a1,-4
	addi	a0,a0,-4
	beq	a5,t1,.L843
.L832:
	lw	a2,4(a1)
	lw	a7,0(a0)
	bleu	a2,a7,.L855
	add	a4,a3,a4
	slli	a4,a4,2
	slli	a2,a3,2
	add	a4,s4,a4
	mv	a5,s0
	li	a7,-1
	j	.L834
.L856:
	bltu	a0,a1,.L843
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a6,a6,-4
	addi	a4,a4,-4
	beq	a5,a7,.L843
.L834:
	lw	a0,4(a6)
	lw	a1,0(a4)
	bleu	a0,a1,.L856
	add	a2,s4,a2
	addi	s1,sp,40
	mv	a1,a2
	mv	a0,s1
	call	uECC_vli_mult
	ld	a5,184(s5)
	addi	s2,sp,8
	mv	a1,s1
	mv	a0,s2
	jalr	a5
	ld	a5,176(s5)
	mv	a2,s5
	mv	a1,s4
	mv	a0,s1
	jalr	a5
	add	a0,s2,s6
	add	a1,s1,s6
	li	a4,0
	li	a2,-1
.L835:
	lw	a5,0(a0)
	lw	a3,0(a1)
	addiw	s0,s0,-1
	slliw	s0,s0,24
	xor	a5,a5,a3
	sraiw	s0,s0,24
	or	a4,a5,a4
	addi	a0,a0,-4
	addi	a1,a1,-4
	bne	s0,a2,.L835
	bne	a4,zero,.L844
	li	a0,0
.L854:
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
	ld	s6,112(sp)
	.cfi_restore 22
.L826:
	ld	a4, 104(sp)
	ld	a5, 0(s3)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L857
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s3,136(sp)
	.cfi_restore 19
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.L843:
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
	j	.L854
.L839:
	li	t1,0
	li	t3,0
	j	.L828
.L838:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	li	a0,-1
	j	.L826
.L827:
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	lw	a2,0(s4)
	li	a1,1
	li	a4,0
	j	.L836
.L844:
	li	a0,-3
	j	.L854
.L840:
	li	a0,-1
	j	.L854
.L857:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
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
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	s0,128(sp)
	sd	s3,104(sp)
	sd	s5,88(sp)
	sd	ra,136(sp)
	sd	s2,112(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	lb	s2,1(a1)
	la	s0,__stack_chk_guard
	mv	s3,a1
	addiw	a5,s2,3
	sraiw	s5,a5,31
	srliw	s5,s5,30
	addw	s5,s5,a5
	ld	a5, 0(s0)
	sd	a5, 72(sp)
	li	a5, 0
	ble	s2,zero,.L865
	sraiw	s5,s5,2
	addi	a6,sp,8
	andi	s5,s5,0xff
	sd	s1,120(sp)
	slli	a2,s5,2
	.cfi_offset 9, -24
	mv	s1,a0
	li	a1,0
	mv	a0,a6
	sd	s4,96(sp)
	.cfi_offset 20, -48
	call	memset@plt
	mv	a6,a0
	addiw	a0,s2,-1
	mv	s4,a0
	li	a4,0
	li	a5,0
.L864:
	subw	a5,a0,a5
	srliw	a3,a5,2
	add	a2,s1,a4
	slli	a3,a3,2
	lbu	a1,0(a2)
	add	a3,a6,a3
	lw	a2,0(a3)
	andi	a5,a5,3
	slliw	a5,a5,3
	sllw	a5,a1,a5
	addiw	a4,a4,1
	or	a5,a2,a5
	slliw	a4,a4,24
	sraiw	a4,a4,24
	sw	a5,0(a3)
	mv	a5,a4
	bgt	s2,a4,.L864
	lb	a5,0(s3)
	li	a1,0
	slli	a2,s5,2
	slli	a5,a5,2
	add	a6,a6,a5
	mv	a0,a6
	call	memset@plt
	mv	a6,a0
	li	a7,1
	add	a0,s1,s2
	sext.w	a1,s4
	li	a5,0
	subw	a7,a7,a0
.L866:
	subw	a5,a1,a5
	srliw	a4,a5,2
	slli	a4,a4,2
	lbu	a2,0(a0)
	add	a4,a6,a4
	lw	a3,0(a4)
	andi	a5,a5,3
	slliw	a5,a5,3
	sllw	a2,a2,a5
	addw	a5,a7,a0
	or	a3,a3,a2
	slliw	a5,a5,24
	sw	a3,0(a4)
	sraiw	a5,a5,24
	addi	a0,a0,1
	bgt	s2,a5,.L866
	ld	s1,120(sp)
	.cfi_restore 9
	ld	s4,96(sp)
	.cfi_restore 20
.L865:
	lw	a4,68(sp)
	lw	a5,128(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a4,64(sp)
	lw	a5,124(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a5,60(sp)
	lw	a4,120(s3)
	bltu	a4,a5,.L862
	bgtu	a4,a5,.L862
	lw	a5,56(sp)
	lw	a4,116(s3)
	bltu	a4,a5,.L862
	bgtu	a4,a5,.L862
	lw	a5,52(sp)
	lw	a4,112(s3)
	bltu	a4,a5,.L862
	bgtu	a4,a5,.L862
	lw	a5,48(sp)
	lw	a4,108(s3)
	bltu	a4,a5,.L862
	bgtu	a4,a5,.L862
	lw	a5,44(sp)
	lw	a4,104(s3)
	bltu	a4,a5,.L862
	bgtu	a4,a5,.L862
	lw	a5,40(sp)
	lw	a4,100(s3)
	bltu	a4,a5,.L862
	bgtu	a4,a5,.L862
	lw	a5,36(sp)
	lw	a4,96(s3)
	bltu	a4,a5,.L862
	bgtu	a4,a5,.L862
	lw	a4,32(sp)
	lw	a5,92(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a4,28(sp)
	lw	a5,88(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a4,24(sp)
	lw	a5,84(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a4,20(sp)
	lw	a5,80(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a4,16(sp)
	lw	a5,76(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a4,12(sp)
	lw	a5,72(s3)
	bgtu	a4,a5,.L862
	bltu	a4,a5,.L862
	lw	a4,8(sp)
	lw	a5,68(s3)
	bgtu	a4,a5,.L862
	li	a0,-4
	bgeu	a4,a5,.L867
.L862:
	mv	a1,s3
	addi	a0,sp,8
	call	uECC_valid_point
.L867:
	ld	a4, 72(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L874
	ld	ra,136(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	ld	s2,112(sp)
	.cfi_restore 18
	ld	s3,104(sp)
	.cfi_restore 19
	ld	s5,88(sp)
	.cfi_restore 21
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
.L874:
	.cfi_restore_state
	sd	s1,120(sp)
	sd	s4,96(sp)
	.cfi_offset 9, -24
	.cfi_offset 20, -48
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
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	s3,216(sp)
	.cfi_offset 19, -40
	lh	s3,2(a2)
	sd	s6,192(sp)
	sd	s1,232(sp)
	addiw	a4,s3,7
	sraiw	a5,a4,31
	srliw	a5,a5,29
	addw	a5,a5,a4
	.cfi_offset 22, -64
	.cfi_offset 9, -24
	sraiw	s6,a5,3
	addiw	a4,s6,3
	sraiw	a5,a4,31
	srliw	a5,a5,30
	addw	a5,a5,a4
	la	s1,__stack_chk_guard
	sraiw	a5,a5,2
	ld	a4, 0(s1)
	sd	a4, 184(sp)
	li	a4, 0
	slliw	a4,a5,24
	sd	s0,240(sp)
	sd	s2,224(sp)
	sd	s4,208(sp)
	sd	s5,200(sp)
	sd	ra,248(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 1, -8
	sraiw	a4,a4,24
	mv	s2,a2
	mv	s4,s6
	mv	s5,a0
	mv	s0,a1
	ble	a4,zero,.L879
	addiw	a2,a5,-1
	andi	a2,a2,0xff
	addi	a2,a2,1
	slli	a2,a2,2
	li	a1,0
	addi	a0,sp,24
	call	memset@plt
.L879:
	ble	s3,zero,.L878
	addiw	a5,s4,-1
	li	a6,0
	li	a3,0
	addi	a0,sp,24
.L882:
	subw	a3,a5,a3
	srliw	a7,a3,2
	add	a4,s5,a6
	slli	a7,a7,2
	add	a7,a0,a7
	lbu	a1,0(a4)
	lw	t1,0(a7)
	andi	a3,a3,3
	slliw	a3,a3,3
	sllw	a3,a1,a3
	addiw	a6,a6,1
	or	a3,t1,a3
	slliw	a6,a6,24
	sraiw	a6,a6,24
	sw	a3,0(a7)
	mv	a3,a6
	bgt	s6,a6,.L882
.L878:
	addiw	a5,s3,31
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a4,a4,a5
	sraiw	a4,a4,5
	slliw	t5,a4,24
	sraiw	t5,t5,24
	ble	t5,zero,.L883
	andi	a4,a4,0xff
	addiw	t6,a4,-1
	andi	t6,t6,0xff
	li	a5,2
	bleu	t6,a5,.L901
	srli	a2,a4,1
	addi	a5,sp,24
	slli	a2,a2,3
	add	a2,a2,a5
	li	a3,0
.L885:
	ld	a1,0(a5)
	addi	a5,a5,8
	or	a3,a3,a1
	bne	a2,a5,.L885
	srli	a5,a3,32
	or	a3,a5,a3
	andi	a5,a4,1
	sext.w	a1,a3
	beq	a5,zero,.L886
	andi	a5,a4,-2
	slliw	a5,a5,24
	sraiw	a5,a5,24
.L884:
	slli	a2,a5,2
	addi	a3,a2,192
	add	a2,a3,sp
	andi	a5,a5,0xff
	lw	a0,-168(a2)
	addiw	a3,a5,1
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a1,a0,a1
	andi	a3,a3,0xff
	ble	t5,a2,.L886
	slli	a3,a3,2
	addi	a3,a3,192
	add	a3,a3,sp
	lw	a2,-168(a3)
	addiw	a5,a5,2
	slliw	a0,a5,24
	or	a3,a2,a1
	sraiw	a0,a0,24
	sext.w	a1,a3
	andi	a5,a5,0xff
	ble	t5,a0,.L886
	slli	a5,a5,2
	addi	a5,a5,192
	add	a5,a5,sp
	lw	a5,-168(a5)
	or	a1,a5,a1
.L886:
	beq	a1,zero,.L883
	addi	s4,sp,120
	addi	a0,sp,24
	slli	t0,t6,2
	addi	a3,sp,28
	addi	a7,s2,36
	mv	a5,a0
	mv	t4,s4
	add	t0,t0,a3
	mv	a2,s4
	li	t3,0
.L889:
	lw	a3,0(a7)
	lw	t1,0(a5)
	li	a6,0
	subw	a1,a3,t3
	subw	t1,a1,t1
	mv	a1,t1
	bne	a3,t1,.L888
	mv	a6,t3
.L888:
	sltu	a3,a3,t1
	or	a6,a6,a3
	sw	a1,0(a2)
	addi	a5,a5,4
	sext.w	t3,a6
	addi	a7,a7,4
	addi	a2,a2,4
	bne	t0,a5,.L889
	li	a5,2
	snez	t3,t3
	bleu	t6,a5,.L902
	srli	a2,a4,1
	slli	a2,a2,3
	add	a2,s4,a2
	li	a3,0
.L891:
	ld	a5,0(t4)
	addi	t4,t4,8
	or	a3,a3,a5
	bne	a2,t4,.L891
	srli	a5,a3,32
	or	a5,a5,a3
	andi	a3,a4,1
	sext.w	a5,a5
	beq	a3,zero,.L892
	andi	a4,a4,-2
	slliw	a4,a4,24
	sraiw	a4,a4,24
.L890:
	slli	a3,a4,2
	addi	a3,a3,192
	add	a3,a3,sp
	andi	a4,a4,0xff
	lw	a1,-72(a3)
	addiw	a3,a4,1
	slliw	a2,a3,24
	sraiw	a2,a2,24
	or	a5,a1,a5
	andi	a3,a3,0xff
	ble	t5,a2,.L892
	slli	a3,a3,2
	addi	a3,a3,192
	add	a3,a3,sp
	lw	a3,-72(a3)
	addiw	a4,a4,2
	slliw	a2,a4,24
	or	a5,a3,a5
	sraiw	a2,a2,24
	sext.w	a5,a5
	andi	a4,a4,0xff
	ble	t5,a2,.L892
	slli	a4,a4,2
	addi	a4,a4,192
	add	a4,a4,sp
	lw	a4,-72(a4)
	or	a5,a4,a5
.L892:
	snez	a5,a5
	slliw	t3,t3,1
	subw	a5,a5,t3
	andi	a5,a5,0xff
	li	a4,1
	beq	a5,a4,.L924
.L883:
	li	a0,0
.L896:
	ld	a4, 184(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L925
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
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
.L924:
	.cfi_restore_state
	addi	a2,sp,88
	addi	a1,sp,56
	mv	a3,s2
	sd	a1,8(sp)
	sd	a2,16(sp)
	call	regularize_k
	sext.w	a5,a0
	seqz	a5,a5
	slli	a5,a5,3
	addi	a5,a5,192
	add	a5,a5,sp
	ld	a2,-184(a5)
	addiw	a4,s3,1
	slliw	a4,a4,16
	mv	a5,s2
	sraiw	a4,a4,16
	li	a3,0
	addi	a1,s2,68
	mv	a0,s4
	call	EccPoint_mult
	lbu	a5,0(s2)
	slliw	a5,a5,1
	slliw	a4,a5,24
	sraiw	a4,a4,24
	andi	a5,a5,0xff
	ble	a4,zero,.L883
	slli	a5,a5,2
	add	a5,s4,a5
	li	a4,0
.L894:
	ld	a3,0(s4)
	addi	s4,s4,8
	or	a4,a4,a3
	bne	s4,a5,.L894
	srli	a5,a4,32
	or	a5,a5,a4
	sext.w	a5,a5
	beq	a5,zero,.L883
	lb	a6,1(s2)
	ble	a6,zero,.L898
	li	a0,1
	addiw	a1,a6,-1
	mv	a3,s0
	li	a5,0
	subw	a0,a0,s0
.L897:
	subw	a5,a1,a5
	srliw	a4,a5,2
	slli	a4,a4,2
	addi	a4,a4,192
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
	bgt	a6,a5,.L897
	lb	a2,1(s2)
	lb	a6,0(s2)
	ble	a2,zero,.L898
	add	s0,s0,a2
	li	a1,1
	addiw	a0,a2,-1
	li	a5,0
	subw	a1,a1,s0
.L899:
	subw	a5,a0,a5
	srliw	a4,a5,2
	add	a4,a4,a6
	slli	a4,a4,2
	addi	a4,a4,192
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
	bgt	a2,a5,.L899
.L898:
	li	a0,1
	j	.L896
.L901:
	li	a1,0
	li	a5,0
	j	.L884
.L902:
	li	a5,0
	li	a4,0
	j	.L890
.L925:
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
