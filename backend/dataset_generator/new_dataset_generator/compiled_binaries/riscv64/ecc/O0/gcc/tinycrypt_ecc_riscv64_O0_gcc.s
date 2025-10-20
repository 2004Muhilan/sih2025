	.file	"tinycrypt_ecc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.data.rel.ro.local,"aw"
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
	.section	.data.rel,"aw"
	.align	3
	.type	g_rng_function, @object
	.size	g_rng_function, 8
g_rng_function:
	.dword	default_CSPRNG
	.text
	.align	1
	.globl	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	lla	a5,g_rng_function
	ld	a4,-24(s0)
	sd	a4,0(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	uECC_set_rng, .-uECC_set_rng
	.align	1
	.globl	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a5,g_rng_function
	ld	a5,0(a5)
	mv	a0,a5
	ld	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	uECC_get_rng, .-uECC_get_rng
	.align	1
	.globl	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	lh	a5,2(a5)
	addiw	a5,a5,7
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,29
	addw	a5,a4,a5
	sraiw	a5,a5,3
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	1
	.globl	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	lb	a5,1(a5)
	slliw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	1
	.globl	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sb	a5,-41(s0)
	sb	zero,-17(s0)
	j	.L9
.L10:
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	sw	zero,0(a5)
	lbu	a5,-17(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-17(s0)
.L9:
	lbu	a5,-17(s0)
	mv	a4,a5
	lbu	a5,-41(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a4,a5,.L10
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	1
	.globl	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sb	a5,-41(s0)
	sw	zero,-20(s0)
	sb	zero,-21(s0)
	j	.L12
.L13:
	lb	a5,-21(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	lbu	a5,-21(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-21(s0)
.L12:
	lbu	a5,-21(s0)
	mv	a4,a5
	lbu	a5,-41(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a4,a5,.L13
	lw	a5,-20(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	1
	.globl	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sh	a5,-26(s0)
	lh	a5,-26(s0)
	sraiw	a5,a5,5
	slliw	a5,a5,16
	sraiw	a5,a5,16
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lhu	a5,-26(s0)
	sext.w	a5,a5
	andi	a5,a5,31
	sext.w	a5,a5
	mv	a3,a5
	li	a5,1
	sllw	a5,a5,a3
	sext.w	a5,a5
	and	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	1
	.type	vli_numDigits, @function
vli_numDigits:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sb	a5,-41(s0)
	lbu	a5,-41(s0)
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-17(s0)
	j	.L18
.L20:
	lbu	a5,-17(s0)
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-17(s0)
.L18:
	lbu	a5,-17(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a5,zero,.L19
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L20
.L19:
	lbu	a5,-17(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	slliw	a5,a5,24
	sraiw	a5,a5,24
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	vli_numDigits, .-vli_numDigits
	.align	1
	.globl	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sb	a5,-41(s0)
	lb	a5,-41(s0)
	mv	a1,a5
	ld	a0,-40(s0)
	call	vli_numDigits
	mv	a5,a0
	sb	a5,-25(s0)
	lbu	a5,-25(s0)
	andi	a5,a5,0xff
	bne	a5,zero,.L23
	li	a5,0
	j	.L24
.L23:
	lb	a5,-25(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L25
.L26:
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L25:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L26
	lb	a5,-25(s0)
	slli	a5,a5,48
	srli	a5,a5,48
	addiw	a5,a5,-1
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a5,a5,5
	slli	a4,a5,48
	srli	a4,a4,48
	lw	a5,-24(s0)
	slli	a5,a5,48
	srli	a5,a5,48
	addw	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a5,a5,16
	sraiw	a5,a5,16
.L24:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	1
	.globl	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sb	a5,-49(s0)
	sb	zero,-17(s0)
	j	.L28
.L29:
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a4,a4,a5
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lbu	a5,-17(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-17(s0)
.L28:
	lbu	a5,-17(s0)
	mv	a4,a5
	lbu	a5,-49(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a4,a5,.L29
	nop
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	uECC_vli_set, .-uECC_vli_set
	.align	1
	.globl	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sb	a5,-49(s0)
	lbu	a5,-49(s0)
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-17(s0)
	j	.L31
.L35:
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bleu	a4,a5,.L32
	li	a5,1
	j	.L33
.L32:
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lb	a5,-17(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bgeu	a4,a5,.L34
	li	a5,-1
	j	.L33
.L34:
	lbu	a5,-17(s0)
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-17(s0)
.L31:
	lbu	a5,-17(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	bge	a5,zero,.L35
	li	a5,0
.L33:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	1
	.globl	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sb	a5,-49(s0)
	sw	zero,-20(s0)
	lbu	a5,-49(s0)
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-21(s0)
	j	.L37
.L38:
	lb	a5,-21(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lb	a5,-21(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	lbu	a5,-21(s0)
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,-21(s0)
.L37:
	lbu	a5,-21(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	bge	a5,zero,.L38
	lw	a5,-20(s0)
	sext.w	a5,a5
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	1
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-20(s0)
	mv	a5,a3
	sw	a5,-24(s0)
	mv	a5,a4
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	lw	a3,-24(s0)
	mulw	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	cond_set, .-cond_set
	.align	1
	.globl	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	mv	a5,a3
	sb	a5,-57(s0)
	sw	zero,-28(s0)
	sb	zero,-29(s0)
	j	.L43
.L44:
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	subw	a5,a5,a4
	sw	a5,-24(s0)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sext.w	a5,a5
	sgtu	a5,a5,a4
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sext.w	a5,a5
	sub	a5,a5,a4
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	a3,a5
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	cond_set
	mv	a5,a0
	sw	a5,-28(s0)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lbu	a5,-29(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-29(s0)
.L43:
	lbu	a5,-29(s0)
	mv	a4,a5
	lbu	a5,-57(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a4,a5,.L44
	lw	a5,-28(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	1
	.type	uECC_vli_add, @function
uECC_vli_add:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	mv	a5,a3
	sb	a5,-57(s0)
	sw	zero,-28(s0)
	sb	zero,-29(s0)
	j	.L47
.L48:
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sext.w	a5,a5
	sltu	a5,a5,a4
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sext.w	a5,a5
	sub	a5,a5,a4
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	a3,a5
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	cond_set
	mv	a5,a0
	sw	a5,-28(s0)
	lb	a5,-29(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lbu	a5,-29(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-29(s0)
.L47:
	lbu	a5,-29(s0)
	mv	a4,a5
	lbu	a5,-57(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a4,a5,.L48
	lw	a5,-28(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	uECC_vli_add, .-uECC_vli_add
	.align	1
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	mv	a5,a2
	sb	a5,-81(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lb	a4,-81(s0)
	addi	a5,s0,-56
	mv	a3,a4
	ld	a2,-80(s0)
	ld	a1,-72(s0)
	mv	a0,a5
	call	uECC_vli_sub
	mv	a5,a0
	sext.w	a5,a5
	snez	a5,a5
	andi	a5,a5,0xff
	sw	a5,-64(s0)
	lb	a4,-81(s0)
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_isZero
	mv	a5,a0
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a5,-64(s0)
	andi	a5,a5,0xff
	slliw	a5,a5,1
	andi	a5,a5,0xff
	subw	a5,a4,a5
	andi	a5,a5,0xff
	slliw	a5,a5,24
	sraiw	a5,a5,24
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L52
	call	__stack_chk_fail@plt
.L52:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	1
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sb	a5,-41(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	sw	zero,-32(s0)
	lb	a5,-41(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	sd	a5,-40(s0)
	j	.L54
.L55:
	ld	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	srliw	a5,a5,1
	sext.w	a5,a5
	lw	a4,-32(s0)
	or	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	slliw	a5,a5,31
	sw	a5,-32(s0)
.L54:
	ld	a5,-40(s0)
	addi	a4,a5,-4
	sd	a4,-40(s0)
	ld	a4,-24(s0)
	bltu	a4,a5,.L55
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	1
	.type	muladd, @function
muladd:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a2,-48(s0)
	sd	a3,-56(s0)
	sd	a4,-64(s0)
	sw	a5,-36(s0)
	mv	a5,a1
	sw	a5,-40(s0)
	lwu	a4,-36(s0)
	lwu	a5,-40(s0)
	mul	a5,a4,a5
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a4,a5,32
	ld	a5,-48(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	or	a5,a4,a5
	sd	a5,-24(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-64(s0)
	lw	a4,0(a5)
	ld	a3,-24(s0)
	ld	a5,-32(s0)
	sltu	a5,a3,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-64(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	srli	a5,a5,32
	sext.w	a4,a5
	ld	a5,-56(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	sext.w	a4,a5
	ld	a5,-48(s0)
	sw	a4,0(a5)
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	muladd, .-muladd
	.align	1
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB18:
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
	sd	a2,-72(s0)
	mv	a5,a3
	sb	a5,-73(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sb	zero,-37(s0)
	j	.L58
.L61:
	sb	zero,-38(s0)
	j	.L59
.L60:
	lb	a5,-38(s0)
	slli	a5,a5,2
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a0,0(a5)
	lb	a5,-37(s0)
	sext.w	a4,a5
	lb	a5,-38(s0)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,s0,-28
	addi	a3,s0,-32
	addi	a2,s0,-36
	mv	a1,a5
	call	muladd
	lbu	a5,-38(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-38(s0)
.L59:
	lbu	a5,-38(s0)
	mv	a4,a5
	lbu	a5,-37(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	ble	a4,a5,.L60
	lb	a5,-37(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	lbu	a5,-37(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-37(s0)
.L58:
	lbu	a5,-37(s0)
	mv	a4,a5
	lbu	a5,-73(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a4,a5,.L61
	lbu	a5,-73(s0)
	sb	a5,-37(s0)
	j	.L62
.L65:
	lbu	a4,-37(s0)
	lbu	a5,-73(s0)
	subw	a5,a4,a5
	andi	a5,a5,0xff
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-38(s0)
	j	.L63
.L64:
	lb	a5,-38(s0)
	slli	a5,a5,2
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a0,0(a5)
	lb	a5,-37(s0)
	sext.w	a4,a5
	lb	a5,-38(s0)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,s0,-28
	addi	a3,s0,-32
	addi	a2,s0,-36
	mv	a1,a5
	call	muladd
	lbu	a5,-38(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-38(s0)
.L63:
	lbu	a5,-38(s0)
	mv	a4,a5
	lbu	a5,-73(s0)
	slliw	a4,a4,24
	sraiw	a4,a4,24
	slliw	a5,a5,24
	sraiw	a5,a5,24
	blt	a4,a5,.L64
	lb	a5,-37(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	lbu	a5,-37(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-37(s0)
.L62:
	lb	a5,-37(s0)
	sext.w	a4,a5
	lb	a5,-73(s0)
	sext.w	a5,a5
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	blt	a4,a5,.L65
	lb	a5,-73(s0)
	sext.w	a5,a5
	slliw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L66
	call	__stack_chk_fail@plt
.L66:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	1
	.globl	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	mv	a5,a4
	sb	a5,-65(s0)
	lb	a5,-65(s0)
	mv	a3,a5
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	uECC_vli_add
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L68
	lb	a5,-65(s0)
	mv	a2,a5
	ld	a1,-40(s0)
	ld	a0,-64(s0)
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L70
.L68:
	lb	a5,-65(s0)
	mv	a3,a5
	ld	a2,-64(s0)
	ld	a1,-40(s0)
	ld	a0,-40(s0)
	call	uECC_vli_sub
.L70:
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	1
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	mv	a5,a4
	sb	a5,-65(s0)
	lb	a5,-65(s0)
	mv	a3,a5
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	uECC_vli_sub
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	beq	a5,zero,.L73
	lb	a5,-65(s0)
	mv	a3,a5
	ld	a2,-64(s0)
	ld	a1,-40(s0)
	ld	a0,-40(s0)
	call	uECC_vli_add
.L73:
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	1
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)
	sd	s0,224(sp)
	sd	s1,216(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sd	a0,-216(s0)
	sd	a1,-224(s0)
	sd	a2,-232(s0)
	mv	a5,a3
	sb	a5,-233(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	addi	a5,s0,-104
	sd	a5,-184(s0)
	ld	a5,-224(s0)
	sd	a5,-176(s0)
	lb	a5,-233(s0)
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a5,a5,6
	slli	s1,a5,48
	srli	s1,s1,48
	lb	a5,-233(s0)
	mv	a1,a5
	ld	a0,-232(s0)
	call	uECC_vli_numBits
	mv	a5,a0
	slli	a5,a5,48
	srli	a5,a5,48
	subw	a5,s1,a5
	slli	a5,a5,48
	srli	a5,a5,48
	sh	a5,-202(s0)
	lh	a5,-202(s0)
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	slliw	a5,a5,16
	sraiw	a5,a5,16
	sb	a5,-204(s0)
	lh	a4,-202(s0)
	sraiw	a5,a4,31
	srliw	a5,a5,27
	addw	a4,a4,a5
	andi	a4,a4,31
	subw	a5,a4,a5
	slliw	a5,a5,16
	sraiw	a5,a5,16
	sb	a5,-203(s0)
	sw	zero,-196(s0)
	lb	a4,-204(s0)
	addi	a5,s0,-168
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_clear
	lbu	a5,-203(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	ble	a5,zero,.L75
	sw	zero,-200(s0)
	j	.L76
.L77:
	lwu	a5,-200(s0)
	slli	a5,a5,2
	ld	a4,-232(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lb	a4,-203(s0)
	sext.w	a4,a4
	sllw	a5,a5,a4
	sext.w	a4,a5
	lb	a5,-204(s0)
	sext.w	a5,a5
	lw	a3,-200(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	lw	a3,-196(s0)
	or	a4,a3,a4
	sext.w	a4,a4
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	a4,-136(a5)
	lwu	a5,-200(s0)
	slli	a5,a5,2
	ld	a4,-232(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lb	a4,-203(s0)
	sext.w	a4,a4
	li	a3,32
	subw	a4,a3,a4
	sext.w	a4,a4
	srlw	a5,a5,a4
	sw	a5,-196(s0)
	lw	a5,-200(s0)
	addiw	a5,a5,1
	sw	a5,-200(s0)
.L76:
	lb	a5,-233(s0)
	sext.w	a4,a5
	lw	a5,-200(s0)
	sext.w	a5,a5
	bltu	a5,a4,.L77
	j	.L78
.L75:
	lb	a5,-204(s0)
	slli	a5,a5,2
	addi	a4,s0,-168
	add	a5,a4,a5
	lb	a4,-233(s0)
	mv	a2,a4
	ld	a1,-232(s0)
	mv	a0,a5
	call	uECC_vli_set
.L78:
	li	a5,1
	sw	a5,-200(s0)
	j	.L79
.L83:
	sw	zero,-192(s0)
	sb	zero,-205(s0)
	j	.L80
.L82:
	lwu	a5,-200(s0)
	slli	a5,a5,3
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a4,-152(a5)
	lb	a5,-205(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lb	a5,-205(s0)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-136(a5)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-192(s0)
	subw	a5,a5,a4
	sw	a5,-188(s0)
	lwu	a5,-200(s0)
	slli	a5,a5,3
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a4,-152(a5)
	lb	a5,-205(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-188(s0)
	sext.w	a5,a5
	beq	a5,a4,.L81
	lwu	a5,-200(s0)
	slli	a5,a5,3
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a4,-152(a5)
	lb	a5,-205(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-188(s0)
	sext.w	a5,a5
	sgtu	a5,a5,a4
	andi	a5,a5,0xff
	sw	a5,-192(s0)
.L81:
	li	a5,1
	lw	a4,-200(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,3
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a4,-152(a5)
	lb	a5,-205(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-188(s0)
	sw	a4,0(a5)
	lbu	a5,-205(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-205(s0)
.L80:
	lb	a5,-205(s0)
	sext.w	a4,a5
	lb	a5,-233(s0)
	sext.w	a5,a5
	slliw	a5,a5,1
	sext.w	a5,a5
	blt	a4,a5,.L82
	lw	a5,-200(s0)
	mv	a4,a5
	lw	a5,-192(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-200(s0)
	lb	a4,-233(s0)
	addi	a5,s0,-168
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_rshift1
	lb	a5,-233(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a3,-136(a5)
	lb	a5,-233(s0)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-136(a5)
	slliw	a5,a5,31
	sext.w	a4,a5
	lb	a5,-233(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	or	a4,a3,a4
	sext.w	a4,a4
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	a4,-136(a5)
	lb	a5,-233(s0)
	slli	a5,a5,2
	addi	a4,s0,-168
	add	a5,a4,a5
	lb	a4,-233(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_rshift1
	lhu	a5,-202(s0)
	addiw	a5,a5,-1
	slli	a5,a5,48
	srli	a5,a5,48
	sh	a5,-202(s0)
.L79:
	lh	a5,-202(s0)
	sext.w	a5,a5
	bge	a5,zero,.L83
	lwu	a5,-200(s0)
	slli	a5,a5,3
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-152(a5)
	lb	a4,-233(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-216(s0)
	call	uECC_vli_set
	nop
	la	a5,__stack_chk_guard
	ld	a4, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L84
	call	__stack_chk_fail@plt
.L84:
	ld	ra,232(sp)
	.cfi_restore 1
	ld	s0,224(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	ld	s1,216(sp)
	.cfi_restore 9
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	1
	.globl	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	sd	a2,-120(s0)
	sd	a3,-128(s0)
	mv	a5,a4
	sb	a5,-129(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lb	a4,-129(s0)
	addi	a5,s0,-88
	mv	a3,a4
	ld	a2,-120(s0)
	ld	a1,-112(s0)
	mv	a0,a5
	call	uECC_vli_mult
	lb	a4,-129(s0)
	addi	a5,s0,-88
	mv	a3,a4
	ld	a2,-128(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	uECC_vli_mmod
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L86
	call	__stack_chk_fail@plt
.L86:
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	1
	.globl	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
.LFB23:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	sd	a2,-120(s0)
	sd	a3,-128(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-128(s0)
	lb	a4,0(a5)
	addi	a5,s0,-88
	mv	a3,a4
	ld	a2,-120(s0)
	ld	a1,-112(s0)
	mv	a0,a5
	call	uECC_vli_mult
	ld	a5,-128(s0)
	ld	a5,184(a5)
	addi	a4,s0,-88
	mv	a1,a4
	ld	a0,-104(s0)
	jalr	a5
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L88
	call	__stack_chk_fail@plt
.L88:
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	1
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
.LFB24:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	ld	a3,-40(s0)
	ld	a2,-32(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	uECC_vli_modMult_fast
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	1
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB25:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sb	a5,-49(s0)
	sw	zero,-20(s0)
	ld	a5,-40(s0)
	lw	a5,0(a5)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L91
	lb	a5,-49(s0)
	mv	a3,a5
	ld	a2,-48(s0)
	ld	a1,-40(s0)
	ld	a0,-40(s0)
	call	uECC_vli_add
	mv	a5,a0
	sw	a5,-20(s0)
.L91:
	lb	a5,-49(s0)
	mv	a1,a5
	ld	a0,-40(s0)
	call	uECC_vli_rshift1
	lw	a5,-20(s0)
	sext.w	a5,a5
	beq	a5,zero,.L93
	lb	a5,-49(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lb	a5,-49(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	li	a4,-2147483648
	or	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
.L93:
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	vli_modInv_update, .-vli_modInv_update
	.align	1
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sd	a0,-168(s0)
	sd	a1,-176(s0)
	sd	a2,-184(s0)
	mv	a5,a3
	sb	a5,-185(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lb	a5,-185(s0)
	mv	a1,a5
	ld	a0,-176(s0)
	call	uECC_vli_isZero
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L95
	lb	a5,-185(s0)
	mv	a1,a5
	ld	a0,-168(s0)
	call	uECC_vli_clear
	j	.L94
.L95:
	lb	a4,-185(s0)
	addi	a5,s0,-152
	mv	a2,a4
	ld	a1,-176(s0)
	mv	a0,a5
	call	uECC_vli_set
	lb	a4,-185(s0)
	addi	a5,s0,-120
	mv	a2,a4
	ld	a1,-184(s0)
	mv	a0,a5
	call	uECC_vli_set
	lb	a4,-185(s0)
	addi	a5,s0,-88
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_clear
	li	a5,1
	sw	a5,-88(s0)
	lb	a4,-185(s0)
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_clear
	j	.L97
.L104:
	lw	a5,-152(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L98
	lb	a4,-185(s0)
	addi	a5,s0,-152
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_rshift1
	lb	a4,-185(s0)
	addi	a5,s0,-88
	mv	a2,a4
	ld	a1,-184(s0)
	mv	a0,a5
	call	vli_modInv_update
	j	.L97
.L98:
	lw	a5,-120(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L100
	lb	a4,-185(s0)
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_rshift1
	lb	a4,-185(s0)
	addi	a5,s0,-56
	mv	a2,a4
	ld	a1,-184(s0)
	mv	a0,a5
	call	vli_modInv_update
	j	.L97
.L100:
	lbu	a5,-153(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	ble	a5,zero,.L101
	lb	a3,-185(s0)
	addi	a2,s0,-120
	addi	a4,s0,-152
	addi	a5,s0,-152
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_sub
	lb	a4,-185(s0)
	addi	a5,s0,-152
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_rshift1
	lb	a3,-185(s0)
	addi	a4,s0,-56
	addi	a5,s0,-88
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	bge	a5,zero,.L102
	lb	a3,-185(s0)
	addi	a4,s0,-88
	addi	a5,s0,-88
	ld	a2,-184(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_add
.L102:
	lb	a3,-185(s0)
	addi	a2,s0,-56
	addi	a4,s0,-88
	addi	a5,s0,-88
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_sub
	lb	a4,-185(s0)
	addi	a5,s0,-88
	mv	a2,a4
	ld	a1,-184(s0)
	mv	a0,a5
	call	vli_modInv_update
	j	.L97
.L101:
	lb	a3,-185(s0)
	addi	a2,s0,-152
	addi	a4,s0,-120
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_sub
	lb	a4,-185(s0)
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_rshift1
	lb	a3,-185(s0)
	addi	a4,s0,-88
	addi	a5,s0,-56
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	bge	a5,zero,.L103
	lb	a3,-185(s0)
	addi	a4,s0,-56
	addi	a5,s0,-56
	ld	a2,-184(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_add
.L103:
	lb	a3,-185(s0)
	addi	a2,s0,-88
	addi	a4,s0,-56
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_sub
	lb	a4,-185(s0)
	addi	a5,s0,-56
	mv	a2,a4
	ld	a1,-184(s0)
	mv	a0,a5
	call	vli_modInv_update
.L97:
	lb	a3,-185(s0)
	addi	a4,s0,-120
	addi	a5,s0,-152
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	sb	a5,-153(s0)
	lbu	a5,-153(s0)
	andi	a5,a5,0xff
	bne	a5,zero,.L104
	lb	a4,-185(s0)
	addi	a5,s0,-88
	mv	a2,a4
	mv	a1,a5
	ld	a0,-168(s0)
	call	uECC_vli_set
.L94:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L105
	call	__stack_chk_fail@plt
.L105:
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	1
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB27:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	sd	a2,-120(s0)
	sd	a3,-128(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-128(s0)
	lbu	a5,0(a5)
	sb	a5,-93(s0)
	lb	a5,-93(s0)
	mv	a1,a5
	ld	a0,-120(s0)
	call	uECC_vli_isZero
	mv	a5,a0
	sext.w	a5,a5
	bne	a5,zero,.L112
	addi	a5,s0,-88
	ld	a2,-128(s0)
	ld	a1,-112(s0)
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	addi	a4,s0,-88
	addi	a5,s0,-56
	ld	a3,-128(s0)
	mv	a2,a4
	ld	a1,-104(s0)
	mv	a0,a5
	call	uECC_vli_modMult_fast
	addi	a4,s0,-88
	addi	a5,s0,-88
	ld	a2,-128(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	ld	a3,-128(s0)
	ld	a2,-120(s0)
	ld	a1,-112(s0)
	ld	a0,-112(s0)
	call	uECC_vli_modMult_fast
	ld	a2,-128(s0)
	ld	a1,-120(s0)
	ld	a0,-120(s0)
	call	uECC_vli_modSquare_fast
	ld	a5,-128(s0)
	addi	a5,a5,4
	lb	a4,-93(s0)
	mv	a3,a5
	ld	a2,-120(s0)
	ld	a1,-104(s0)
	ld	a0,-104(s0)
	call	uECC_vli_modAdd
	ld	a5,-128(s0)
	addi	a5,a5,4
	lb	a4,-93(s0)
	mv	a3,a5
	ld	a2,-120(s0)
	ld	a1,-120(s0)
	ld	a0,-120(s0)
	call	uECC_vli_modAdd
	ld	a5,-128(s0)
	addi	a5,a5,4
	lb	a4,-93(s0)
	mv	a3,a5
	ld	a2,-120(s0)
	ld	a1,-104(s0)
	ld	a0,-120(s0)
	call	uECC_vli_modSub
	ld	a3,-128(s0)
	ld	a2,-120(s0)
	ld	a1,-104(s0)
	ld	a0,-104(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-128(s0)
	addi	a5,a5,4
	lb	a4,-93(s0)
	mv	a3,a5
	ld	a2,-104(s0)
	ld	a1,-104(s0)
	ld	a0,-120(s0)
	call	uECC_vli_modAdd
	ld	a5,-128(s0)
	addi	a5,a5,4
	lb	a4,-93(s0)
	mv	a3,a5
	ld	a2,-120(s0)
	ld	a1,-104(s0)
	ld	a0,-104(s0)
	call	uECC_vli_modAdd
	li	a1,0
	ld	a0,-104(s0)
	call	uECC_vli_testBit
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L109
	ld	a5,-128(s0)
	addi	a5,a5,4
	lb	a4,-93(s0)
	mv	a3,a4
	mv	a2,a5
	ld	a1,-104(s0)
	ld	a0,-104(s0)
	call	uECC_vli_add
	mv	a5,a0
	sw	a5,-92(s0)
	lb	a5,-93(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	uECC_vli_rshift1
	lb	a5,-93(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-92(s0)
	slliw	a5,a5,31
	sext.w	a2,a5
	lb	a5,-93(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-104(s0)
	add	a5,a4,a5
	mv	a4,a2
	or	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	j	.L110
.L109:
	lb	a5,-93(s0)
	mv	a1,a5
	ld	a0,-104(s0)
	call	uECC_vli_rshift1
.L110:
	ld	a2,-128(s0)
	ld	a1,-104(s0)
	ld	a0,-120(s0)
	call	uECC_vli_modSquare_fast
	ld	a5,-128(s0)
	addi	a3,a5,4
	lb	a4,-93(s0)
	addi	a5,s0,-56
	mv	a2,a5
	ld	a1,-120(s0)
	ld	a0,-120(s0)
	call	uECC_vli_modSub
	ld	a5,-128(s0)
	addi	a3,a5,4
	lb	a4,-93(s0)
	addi	a5,s0,-56
	mv	a2,a5
	ld	a1,-120(s0)
	ld	a0,-120(s0)
	call	uECC_vli_modSub
	ld	a5,-128(s0)
	addi	a3,a5,4
	lb	a4,-93(s0)
	addi	a1,s0,-56
	addi	a5,s0,-56
	ld	a2,-120(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	addi	a5,s0,-56
	ld	a3,-128(s0)
	mv	a2,a5
	ld	a1,-104(s0)
	ld	a0,-104(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-128(s0)
	addi	a3,a5,4
	lb	a4,-93(s0)
	addi	a2,s0,-88
	addi	a5,s0,-88
	ld	a1,-104(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	lb	a5,-93(s0)
	mv	a2,a5
	ld	a1,-120(s0)
	ld	a0,-104(s0)
	call	uECC_vli_set
	lb	a5,-93(s0)
	mv	a2,a5
	ld	a1,-112(s0)
	ld	a0,-120(s0)
	call	uECC_vli_set
	lb	a4,-93(s0)
	addi	a5,s0,-88
	mv	a2,a4
	mv	a1,a5
	ld	a0,-112(s0)
	call	uECC_vli_set
	j	.L106
.L112:
	nop
.L106:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L111
	call	__stack_chk_fail@plt
.L111:
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	double_jacobian_default, .-double_jacobian_default
	.align	1
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB28:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-56(s0)
	sd	zero,-48(s0)
	sd	zero,-40(s0)
	sd	zero,-32(s0)
	li	a5,3
	sw	a5,-56(s0)
	ld	a5,-88(s0)
	lbu	a5,0(a5)
	sb	a5,-57(s0)
	ld	a2,-88(s0)
	ld	a1,-80(s0)
	ld	a0,-72(s0)
	call	uECC_vli_modSquare_fast
	ld	a5,-88(s0)
	addi	a3,a5,4
	lb	a4,-57(s0)
	addi	a5,s0,-56
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_modSub
	ld	a3,-88(s0)
	ld	a2,-80(s0)
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-88(s0)
	addi	a2,a5,132
	ld	a5,-88(s0)
	addi	a5,a5,4
	lb	a4,-57(s0)
	mv	a3,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_modAdd
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L114
	call	__stack_chk_fail@plt
.L114:
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	x_side_default, .-x_side_default
	.align	1
	.globl	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a5,curve_secp256r1
	mv	a0,a5
	ld	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	1
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a2,8
	ld	a1,-80(s0)
	ld	a0,-72(s0)
	call	uECC_vli_set
	sw	zero,-48(s0)
	lw	a5,-48(s0)
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	sw	a5,-56(s0)
	ld	a5,-80(s0)
	lw	a5,44(a5)
	sw	a5,-44(s0)
	ld	a5,-80(s0)
	lw	a5,48(a5)
	sw	a5,-40(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-36(s0)
	ld	a5,-80(s0)
	lw	a5,56(a5)
	sw	a5,-32(s0)
	ld	a5,-80(s0)
	lw	a5,60(a5)
	sw	a5,-28(s0)
	addi	a2,s0,-56
	addi	a4,s0,-56
	addi	a5,s0,-56
	li	a3,8
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a5,a5
	sw	a5,-60(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-60(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a5,48(a5)
	sw	a5,-44(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-40(s0)
	ld	a5,-80(s0)
	lw	a5,56(a5)
	sw	a5,-36(s0)
	ld	a5,-80(s0)
	lw	a5,60(a5)
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	addi	a2,s0,-56
	addi	a4,s0,-56
	addi	a5,s0,-56
	li	a3,8
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-60(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-60(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a5,32(a5)
	sw	a5,-56(s0)
	ld	a5,-80(s0)
	lw	a5,36(a5)
	sw	a5,-52(s0)
	ld	a5,-80(s0)
	lw	a5,40(a5)
	sw	a5,-48(s0)
	sw	zero,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-44(s0)
	ld	a5,-80(s0)
	lw	a5,56(a5)
	sw	a5,-32(s0)
	ld	a5,-80(s0)
	lw	a5,60(a5)
	sw	a5,-28(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-60(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a5,36(a5)
	sw	a5,-56(s0)
	ld	a5,-80(s0)
	lw	a5,40(a5)
	sw	a5,-52(s0)
	ld	a5,-80(s0)
	lw	a5,44(a5)
	sw	a5,-48(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-44(s0)
	ld	a5,-80(s0)
	lw	a5,56(a5)
	sw	a5,-40(s0)
	ld	a5,-80(s0)
	lw	a5,60(a5)
	sw	a5,-36(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-32(s0)
	ld	a5,-80(s0)
	lw	a5,32(a5)
	sw	a5,-28(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-60(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a5,44(a5)
	sw	a5,-56(s0)
	ld	a5,-80(s0)
	lw	a5,48(a5)
	sw	a5,-52(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-48(s0)
	sw	zero,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-44(s0)
	ld	a5,-80(s0)
	lw	a5,32(a5)
	sw	a5,-32(s0)
	ld	a5,-80(s0)
	lw	a5,40(a5)
	sw	a5,-28(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_sub
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-60(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a5,48(a5)
	sw	a5,-56(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-52(s0)
	ld	a5,-80(s0)
	lw	a5,56(a5)
	sw	a5,-48(s0)
	ld	a5,-80(s0)
	lw	a5,60(a5)
	sw	a5,-44(s0)
	sw	zero,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	ld	a5,-80(s0)
	lw	a5,36(a5)
	sw	a5,-32(s0)
	ld	a5,-80(s0)
	lw	a5,44(a5)
	sw	a5,-28(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_sub
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-60(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-56(s0)
	ld	a5,-80(s0)
	lw	a5,56(a5)
	sw	a5,-52(s0)
	ld	a5,-80(s0)
	lw	a5,60(a5)
	sw	a5,-48(s0)
	ld	a5,-80(s0)
	lw	a5,32(a5)
	sw	a5,-44(s0)
	ld	a5,-80(s0)
	lw	a5,36(a5)
	sw	a5,-40(s0)
	ld	a5,-80(s0)
	lw	a5,40(a5)
	sw	a5,-36(s0)
	sw	zero,-32(s0)
	ld	a5,-80(s0)
	lw	a5,48(a5)
	sw	a5,-28(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_sub
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-60(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	ld	a5,-80(s0)
	lw	a5,56(a5)
	sw	a5,-56(s0)
	ld	a5,-80(s0)
	lw	a5,60(a5)
	sw	a5,-52(s0)
	sw	zero,-48(s0)
	ld	a5,-80(s0)
	lw	a5,36(a5)
	sw	a5,-44(s0)
	ld	a5,-80(s0)
	lw	a5,40(a5)
	sw	a5,-40(s0)
	ld	a5,-80(s0)
	lw	a5,44(a5)
	sw	a5,-36(s0)
	sw	zero,-32(s0)
	ld	a5,-80(s0)
	lw	a5,52(a5)
	sw	a5,-28(s0)
	addi	a5,s0,-56
	li	a3,8
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_sub
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-60(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	bge	a5,zero,.L121
.L119:
	li	a3,8
	lla	a2,curve_secp256r1+4
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-60(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	blt	a5,zero,.L119
	j	.L124
.L122:
	li	a3,8
	lla	a2,curve_secp256r1+4
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_sub
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-60(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-60(s0)
.L121:
	lw	a5,-60(s0)
	sext.w	a5,a5
	bne	a5,zero,.L122
	li	a2,8
	ld	a1,-72(s0)
	lla	a0,curve_secp256r1+4
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L122
.L124:
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L123
	call	__stack_chk_fail@plt
.L123:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	1
	.globl	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
.LFB31:
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
	sd	a1,-32(s0)
	ld	a5,-32(s0)
	lb	a5,0(a5)
	andi	a5,a5,0xff
	slliw	a5,a5,1
	andi	a5,a5,0xff
	slliw	a5,a5,24
	sraiw	a5,a5,24
	mv	a1,a5
	ld	a0,-24(s0)
	call	uECC_vli_isZero
	mv	a5,a0
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	1
	.globl	apply_z
	.type	apply_z, @function
apply_z:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-56
	ld	a2,-96(s0)
	ld	a1,-88(s0)
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	addi	a5,s0,-56
	ld	a3,-96(s0)
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_modMult_fast
	addi	a4,s0,-56
	addi	a5,s0,-56
	ld	a3,-96(s0)
	ld	a2,-88(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modMult_fast
	addi	a5,s0,-56
	ld	a3,-96(s0)
	mv	a2,a5
	ld	a1,-80(s0)
	ld	a0,-80(s0)
	call	uECC_vli_modMult_fast
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L128
	call	__stack_chk_fail@plt
.L128:
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	apply_z, .-apply_z
	.align	1
	.type	XYcZ_initial_double, @function
XYcZ_initial_double:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	sd	a4,-104(s0)
	sd	a5,-112(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-112(s0)
	lbu	a5,0(a5)
	sb	a5,-57(s0)
	ld	a5,-104(s0)
	beq	a5,zero,.L130
	lb	a4,-57(s0)
	addi	a5,s0,-56
	mv	a2,a4
	ld	a1,-104(s0)
	mv	a0,a5
	call	uECC_vli_set
	j	.L131
.L130:
	lb	a4,-57(s0)
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_clear
	li	a5,1
	sw	a5,-56(s0)
.L131:
	lb	a5,-57(s0)
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-88(s0)
	call	uECC_vli_set
	lb	a5,-57(s0)
	mv	a2,a5
	ld	a1,-80(s0)
	ld	a0,-96(s0)
	call	uECC_vli_set
	addi	a5,s0,-56
	ld	a3,-112(s0)
	mv	a2,a5
	ld	a1,-80(s0)
	ld	a0,-72(s0)
	call	apply_z
	ld	a5,-112(s0)
	ld	a5,168(a5)
	addi	a4,s0,-56
	ld	a3,-112(s0)
	mv	a2,a4
	ld	a1,-80(s0)
	ld	a0,-72(s0)
	jalr	a5
	addi	a5,s0,-56
	ld	a3,-112(s0)
	mv	a2,a5
	ld	a1,-96(s0)
	ld	a0,-88(s0)
	call	apply_z
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L132
	call	__stack_chk_fail@plt
.L132:
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	XYcZ_initial_double, .-XYcZ_initial_double
	.align	1
	.globl	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	sd	a4,-104(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-104(s0)
	lbu	a5,0(a5)
	sb	a5,-57(s0)
	ld	a5,-104(s0)
	addi	a3,a5,4
	lb	a4,-57(s0)
	addi	a5,s0,-56
	ld	a2,-72(s0)
	ld	a1,-88(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	addi	a4,s0,-56
	addi	a5,s0,-56
	ld	a2,-104(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	addi	a5,s0,-56
	ld	a3,-104(s0)
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-72(s0)
	call	uECC_vli_modMult_fast
	addi	a5,s0,-56
	ld	a3,-104(s0)
	mv	a2,a5
	ld	a1,-88(s0)
	ld	a0,-88(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-104(s0)
	addi	a5,a5,4
	lb	a4,-57(s0)
	mv	a3,a5
	ld	a2,-80(s0)
	ld	a1,-96(s0)
	ld	a0,-96(s0)
	call	uECC_vli_modSub
	addi	a5,s0,-56
	ld	a2,-104(s0)
	ld	a1,-96(s0)
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	ld	a5,-104(s0)
	addi	a3,a5,4
	lb	a4,-57(s0)
	addi	a1,s0,-56
	addi	a5,s0,-56
	ld	a2,-72(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	ld	a5,-104(s0)
	addi	a3,a5,4
	lb	a4,-57(s0)
	addi	a1,s0,-56
	addi	a5,s0,-56
	ld	a2,-88(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	ld	a5,-104(s0)
	addi	a5,a5,4
	lb	a4,-57(s0)
	mv	a3,a5
	ld	a2,-72(s0)
	ld	a1,-88(s0)
	ld	a0,-88(s0)
	call	uECC_vli_modSub
	ld	a3,-104(s0)
	ld	a2,-88(s0)
	ld	a1,-80(s0)
	ld	a0,-80(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-104(s0)
	addi	a3,a5,4
	lb	a4,-57(s0)
	addi	a5,s0,-56
	mv	a2,a5
	ld	a1,-72(s0)
	ld	a0,-88(s0)
	call	uECC_vli_modSub
	ld	a3,-104(s0)
	ld	a2,-88(s0)
	ld	a1,-96(s0)
	ld	a0,-96(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-104(s0)
	addi	a5,a5,4
	lb	a4,-57(s0)
	mv	a3,a5
	ld	a2,-80(s0)
	ld	a1,-96(s0)
	ld	a0,-96(s0)
	call	uECC_vli_modSub
	lb	a4,-57(s0)
	addi	a5,s0,-56
	mv	a2,a4
	mv	a1,a5
	ld	a0,-88(s0)
	call	uECC_vli_set
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L134
	call	__stack_chk_fail@plt
.L134:
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	XYcZ_add, .-XYcZ_add
	.align	1
	.type	XYcZ_addC, @function
XYcZ_addC:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	sd	a1,-144(s0)
	sd	a2,-152(s0)
	sd	a3,-160(s0)
	sd	a4,-168(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-168(s0)
	lbu	a5,0(a5)
	sb	a5,-121(s0)
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a5,s0,-120
	ld	a2,-136(s0)
	ld	a1,-152(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	addi	a4,s0,-120
	addi	a5,s0,-120
	ld	a2,-168(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	addi	a5,s0,-120
	ld	a3,-168(s0)
	mv	a2,a5
	ld	a1,-136(s0)
	ld	a0,-136(s0)
	call	uECC_vli_modMult_fast
	addi	a5,s0,-120
	ld	a3,-168(s0)
	mv	a2,a5
	ld	a1,-152(s0)
	ld	a0,-152(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a5,s0,-120
	ld	a2,-144(s0)
	ld	a1,-160(s0)
	mv	a0,a5
	call	uECC_vli_modAdd
	ld	a5,-168(s0)
	addi	a5,a5,4
	lb	a4,-121(s0)
	mv	a3,a5
	ld	a2,-144(s0)
	ld	a1,-160(s0)
	ld	a0,-160(s0)
	call	uECC_vli_modSub
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a5,s0,-88
	ld	a2,-136(s0)
	ld	a1,-152(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	addi	a5,s0,-88
	ld	a3,-168(s0)
	mv	a2,a5
	ld	a1,-144(s0)
	ld	a0,-144(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a5,s0,-88
	ld	a2,-152(s0)
	ld	a1,-136(s0)
	mv	a0,a5
	call	uECC_vli_modAdd
	ld	a2,-168(s0)
	ld	a1,-160(s0)
	ld	a0,-152(s0)
	call	uECC_vli_modSquare_fast
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a5,s0,-88
	mv	a2,a5
	ld	a1,-152(s0)
	ld	a0,-152(s0)
	call	uECC_vli_modSub
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a5,s0,-56
	ld	a2,-152(s0)
	ld	a1,-136(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	addi	a5,s0,-56
	ld	a3,-168(s0)
	mv	a2,a5
	ld	a1,-160(s0)
	ld	a0,-160(s0)
	call	uECC_vli_modMult_fast
	ld	a5,-168(s0)
	addi	a5,a5,4
	lb	a4,-121(s0)
	mv	a3,a5
	ld	a2,-144(s0)
	ld	a1,-160(s0)
	ld	a0,-160(s0)
	call	uECC_vli_modSub
	addi	a4,s0,-120
	addi	a5,s0,-56
	ld	a2,-168(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a2,s0,-88
	addi	a1,s0,-56
	addi	a5,s0,-56
	mv	a0,a5
	call	uECC_vli_modSub
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a1,s0,-56
	addi	a5,s0,-88
	ld	a2,-136(s0)
	mv	a0,a5
	call	uECC_vli_modSub
	addi	a2,s0,-120
	addi	a4,s0,-88
	addi	a5,s0,-88
	ld	a3,-168(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modMult_fast
	ld	a5,-168(s0)
	addi	a3,a5,4
	lb	a4,-121(s0)
	addi	a5,s0,-88
	ld	a2,-144(s0)
	mv	a1,a5
	ld	a0,-144(s0)
	call	uECC_vli_modSub
	lb	a4,-121(s0)
	addi	a5,s0,-56
	mv	a2,a4
	mv	a1,a5
	ld	a0,-136(s0)
	call	uECC_vli_set
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L136
	call	__stack_chk_fail@plt
.L136:
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s0,160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	XYcZ_addC, .-XYcZ_addC
	.align	1
	.globl	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sd	ra,232(sp)
	sd	s0,224(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sd	a0,-200(s0)
	sd	a1,-208(s0)
	sd	a2,-216(s0)
	sd	a3,-224(s0)
	sd	a5,-240(s0)
	mv	a5,a4
	sh	a5,-226(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-240(s0)
	lbu	a5,0(a5)
	sb	a5,-191(s0)
	lb	a4,-191(s0)
	addi	a5,s0,-152
	addi	a5,a5,32
	mv	a2,a4
	ld	a1,-208(s0)
	mv	a0,a5
	call	uECC_vli_set
	lb	a5,-191(s0)
	slli	a5,a5,2
	ld	a4,-208(s0)
	add	a4,a4,a5
	lb	a3,-191(s0)
	addi	a5,s0,-88
	addi	a5,a5,32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set
	addi	a3,s0,-88
	addi	a2,s0,-152
	addi	a5,s0,-88
	addi	a1,a5,32
	addi	a5,s0,-152
	addi	a0,a5,32
	ld	a5,-240(s0)
	ld	a4,-224(s0)
	call	XYcZ_initial_double
	lhu	a5,-226(s0)
	addiw	a5,a5,-2
	slli	a5,a5,48
	srli	a5,a5,48
	sh	a5,-190(s0)
	j	.L138
.L139:
	lh	a5,-190(s0)
	mv	a1,a5
	ld	a0,-216(s0)
	call	uECC_vli_testBit
	mv	a5,a0
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-188(s0)
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-152
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a0,a4,a5
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-88
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a1,a4,a5
	addi	a4,s0,-152
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a2,a4,a5
	addi	a4,s0,-88
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a4,-240(s0)
	mv	a3,a5
	call	XYcZ_addC
	addi	a4,s0,-152
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a0,a4,a5
	addi	a4,s0,-88
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a1,a4,a5
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-152
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a2,a4,a5
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-88
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a4,-240(s0)
	mv	a3,a5
	call	XYcZ_add
	lhu	a5,-190(s0)
	addiw	a5,a5,-1
	slli	a5,a5,48
	srli	a5,a5,48
	sh	a5,-190(s0)
.L138:
	lh	a5,-190(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L139
	li	a1,0
	ld	a0,-216(s0)
	call	uECC_vli_testBit
	mv	a5,a0
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-188(s0)
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-152
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a0,a4,a5
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-88
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a1,a4,a5
	addi	a4,s0,-152
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a2,a4,a5
	addi	a4,s0,-88
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a4,-240(s0)
	mv	a3,a5
	call	XYcZ_addC
	ld	a5,-240(s0)
	addi	a3,a5,4
	lb	a4,-191(s0)
	addi	a2,s0,-152
	addi	a5,s0,-152
	addi	a1,a5,32
	addi	a5,s0,-184
	mv	a0,a5
	call	uECC_vli_modSub
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-88
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a2,a4,a5
	addi	a4,s0,-184
	addi	a5,s0,-184
	ld	a3,-240(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modMult_fast
	addi	a4,s0,-184
	addi	a5,s0,-184
	ld	a3,-240(s0)
	ld	a2,-208(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modMult_fast
	ld	a5,-240(s0)
	addi	a2,a5,4
	lb	a3,-191(s0)
	addi	a4,s0,-184
	addi	a5,s0,-184
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modInv
	lb	a5,-191(s0)
	slli	a5,a5,2
	ld	a4,-208(s0)
	add	a2,a4,a5
	addi	a4,s0,-184
	addi	a5,s0,-184
	ld	a3,-240(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modMult_fast
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-152
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a2,a4,a5
	addi	a4,s0,-184
	addi	a5,s0,-184
	ld	a3,-240(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modMult_fast
	addi	a4,s0,-152
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a0,a4,a5
	addi	a4,s0,-88
	lwu	a5,-188(s0)
	slli	a5,a5,5
	add	a1,a4,a5
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-152
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a2,a4,a5
	li	a5,1
	lw	a4,-188(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addi	a4,s0,-88
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a4,-240(s0)
	mv	a3,a5
	call	XYcZ_add
	addi	a2,s0,-184
	addi	a4,s0,-88
	addi	a5,s0,-152
	ld	a3,-240(s0)
	mv	a1,a4
	mv	a0,a5
	call	apply_z
	lb	a4,-191(s0)
	addi	a5,s0,-152
	mv	a2,a4
	mv	a1,a5
	ld	a0,-200(s0)
	call	uECC_vli_set
	lb	a5,-191(s0)
	slli	a5,a5,2
	ld	a4,-200(s0)
	add	a5,a4,a5
	lb	a3,-191(s0)
	addi	a4,s0,-88
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_set
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L140
	call	__stack_chk_fail@plt
.L140:
	ld	ra,232(sp)
	.cfi_restore 1
	ld	s0,224(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	EccPoint_mult, .-EccPoint_mult
	.align	1
	.globl	regularize_k
	.type	regularize_k, @function
regularize_k:
.LFB37:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	ld	a5,-64(s0)
	lh	a5,2(a5)
	addiw	a5,a5,31
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	sext.w	a5,a5
	sb	a5,-23(s0)
	ld	a5,-64(s0)
	lhu	a5,2(a5)
	sh	a5,-22(s0)
	ld	a5,-64(s0)
	addi	a5,a5,36
	lb	a4,-23(s0)
	mv	a3,a4
	mv	a2,a5
	ld	a1,-40(s0)
	ld	a0,-48(s0)
	call	uECC_vli_add
	mv	a5,a0
	sext.w	a5,a5
	bne	a5,zero,.L142
	lh	a5,-22(s0)
	sext.w	a4,a5
	lb	a5,-23(s0)
	sext.w	a5,a5
	slliw	a5,a5,5
	sext.w	a5,a5
	bge	a4,a5,.L143
	lh	a5,-22(s0)
	mv	a1,a5
	ld	a0,-48(s0)
	call	uECC_vli_testBit
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L143
.L142:
	li	a5,1
	j	.L144
.L143:
	li	a5,0
.L144:
	sw	a5,-20(s0)
	ld	a5,-64(s0)
	addi	a5,a5,36
	lb	a4,-23(s0)
	mv	a3,a4
	mv	a2,a5
	ld	a1,-48(s0)
	ld	a0,-56(s0)
	call	uECC_vli_add
	lw	a5,-20(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	regularize_k, .-regularize_k
	.align	1
	.globl	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-120(s0)
	sd	a1,-128(s0)
	sd	a2,-136(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-88
	sd	a5,-104(s0)
	addi	a5,s0,-56
	sd	a5,-96(s0)
	addi	a4,s0,-56
	addi	a5,s0,-88
	ld	a3,-136(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-128(s0)
	call	regularize_k
	mv	a5,a0
	sw	a5,-108(s0)
	ld	a5,-136(s0)
	addi	a1,a5,68
	lw	a5,-108(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a2,-88(a5)
	ld	a5,-136(s0)
	lh	a5,2(a5)
	slli	a5,a5,48
	srli	a5,a5,48
	addiw	a5,a5,1
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a4,a5,16
	sraiw	a4,a4,16
	ld	a5,-136(s0)
	li	a3,0
	ld	a0,-120(s0)
	call	EccPoint_mult
	ld	a1,-136(s0)
	ld	a0,-120(s0)
	call	EccPoint_isZero
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L147
	li	a5,0
	j	.L149
.L147:
	li	a5,1
.L149:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L150
	call	__stack_chk_fail@plt
.L150:
	mv	a0,a4
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	1
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	sb	zero,-21(s0)
	j	.L152
.L153:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lb	a5,-21(s0)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,2
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	andi	a4,a4,3
	sext.w	a4,a4
	slliw	a4,a4,3
	sext.w	a4,a4
	srlw	a5,a5,a4
	sext.w	a3,a5
	lb	a5,-21(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	mv	a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lbu	a5,-21(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-21(s0)
.L152:
	lb	a5,-21(s0)
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L153
	nop
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	1
	.globl	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	addiw	a5,a5,3
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,30
	addw	a5,a4,a5
	sraiw	a5,a5,2
	sext.w	a5,a5
	slliw	a5,a5,24
	sraiw	a5,a5,24
	mv	a1,a5
	ld	a0,-40(s0)
	call	uECC_vli_clear
	sb	zero,-21(s0)
	j	.L155
.L156:
	lw	a5,-52(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lb	a5,-21(s0)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,2
	sext.w	a3,a5
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a1,0(a5)
	lb	a5,-21(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-20(s0)
	andi	a4,a4,3
	sext.w	a4,a4
	slliw	a4,a4,3
	sext.w	a4,a4
	sllw	a5,a5,a4
	sext.w	a2,a5
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	mv	a3,a1
	mv	a4,a2
	or	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lbu	a5,-21(s0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-21(s0)
.L155:
	lb	a5,-21(s0)
	sext.w	a4,a5
	lw	a5,-52(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L156
	nop
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	1
	.globl	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sb	a5,-49(s0)
	li	a5,-1
	sw	a5,-20(s0)
	lb	a5,-49(s0)
	mv	a1,a5
	ld	a0,-48(s0)
	call	uECC_vli_numBits
	mv	a5,a0
	sh	a5,-26(s0)
	lla	a5,g_rng_function
	ld	a5,0(a5)
	bne	a5,zero,.L158
	li	a5,0
	j	.L159
.L158:
	sw	zero,-24(s0)
	j	.L160
.L163:
	lla	a5,g_rng_function
	ld	a5,0(a5)
	lb	a4,-49(s0)
	sext.w	a4,a4
	slliw	a4,a4,2
	sext.w	a4,a4
	sext.w	a4,a4
	mv	a1,a4
	ld	a0,-40(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L161
	li	a5,0
	j	.L159
.L161:
	lb	a5,-49(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lb	a5,-49(s0)
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a5,a5,5
	slli	a4,a5,48
	srli	a4,a4,48
	lhu	a5,-26(s0)
	subw	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a5,a5,16
	sraiw	a5,a5,16
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sext.w	a2,a5
	lb	a5,-49(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	mv	a4,a2
	and	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lb	a5,-49(s0)
	mv	a1,a5
	ld	a0,-40(s0)
	call	uECC_vli_isZero
	mv	a5,a0
	sext.w	a5,a5
	bne	a5,zero,.L162
	lb	a5,-49(s0)
	mv	a2,a5
	ld	a1,-40(s0)
	ld	a0,-48(s0)
	call	uECC_vli_cmp
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L162
	li	a5,1
	j	.L159
.L162:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L160:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,63
	bleu	a4,a5,.L163
	li	a5,0
.L159:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	1
	.globl	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-112(s0)
	lbu	a5,0(a5)
	sb	a5,-89(s0)
	ld	a1,-112(s0)
	ld	a0,-104(s0)
	call	EccPoint_isZero
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L165
	li	a5,-1
	j	.L170
.L165:
	ld	a5,-112(s0)
	addi	a5,a5,4
	lb	a4,-89(s0)
	mv	a2,a4
	ld	a1,-104(s0)
	mv	a0,a5
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L167
	ld	a5,-112(s0)
	addi	a3,a5,4
	lb	a5,-89(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lb	a4,-89(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L168
.L167:
	li	a5,-2
	j	.L170
.L168:
	lb	a5,-89(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a4,a4,a5
	addi	a5,s0,-88
	ld	a2,-112(s0)
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_modSquare_fast
	ld	a5,-112(s0)
	ld	a5,176(a5)
	addi	a4,s0,-56
	ld	a2,-112(s0)
	ld	a1,-104(s0)
	mv	a0,a4
	jalr	a5
	lb	a3,-89(s0)
	addi	a4,s0,-56
	addi	a5,s0,-88
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_equal
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L169
	li	a5,-3
	j	.L170
.L169:
	li	a5,0
.L170:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L171
	call	__stack_chk_fail@plt
.L171:
	mv	a0,a4
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	uECC_valid_point, .-uECC_valid_point
	.align	1
	.globl	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
.LFB43:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-112(s0)
	lb	a5,1(a5)
	mv	a4,a5
	addi	a5,s0,-88
	mv	a2,a4
	ld	a1,-104(s0)
	mv	a0,a5
	call	uECC_vli_bytesToNative
	ld	a5,-112(s0)
	lb	a5,0(a5)
	slli	a5,a5,2
	addi	a4,s0,-88
	add	a4,a4,a5
	ld	a5,-112(s0)
	lb	a5,1(a5)
	mv	a3,a5
	ld	a5,-104(s0)
	add	a3,a5,a3
	ld	a5,-112(s0)
	lb	a5,1(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	uECC_vli_bytesToNative
	ld	a5,-112(s0)
	addi	a4,a5,68
	addi	a5,s0,-88
	li	a2,16
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_cmp_unsafe
	mv	a5,a0
	bne	a5,zero,.L173
	li	a5,-4
	j	.L175
.L173:
	addi	a5,s0,-88
	ld	a1,-112(s0)
	mv	a0,a5
	call	uECC_valid_point
	mv	a5,a0
.L175:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L176
	call	__stack_chk_fail@plt
.L176:
	mv	a0,a4
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	1
	.globl	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
.LFB44:
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
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-152(s0)
	lh	a5,2(a5)
	addiw	a5,a5,7
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,29
	addw	a5,a4,a5
	sraiw	a5,a5,3
	sext.w	a4,a5
	addi	a5,s0,-120
	mv	a2,a4
	ld	a1,-136(s0)
	mv	a0,a5
	call	uECC_vli_bytesToNative
	ld	a5,-152(s0)
	lh	a5,2(a5)
	addiw	a5,a5,31
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	sext.w	a5,a5
	slliw	a4,a5,24
	sraiw	a4,a4,24
	addi	a5,s0,-120
	mv	a1,a4
	mv	a0,a5
	call	uECC_vli_isZero
	mv	a5,a0
	sext.w	a5,a5
	beq	a5,zero,.L178
	li	a5,0
	j	.L182
.L178:
	ld	a5,-152(s0)
	addi	a3,a5,36
	ld	a5,-152(s0)
	lh	a5,2(a5)
	addiw	a5,a5,31
	sext.w	a5,a5
	sraiw	a4,a5,31
	srliw	a4,a4,27
	addw	a5,a4,a5
	sraiw	a5,a5,5
	sext.w	a5,a5
	slliw	a4,a5,24
	sraiw	a4,a4,24
	addi	a5,s0,-120
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	uECC_vli_cmp
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L180
	li	a5,0
	j	.L182
.L180:
	addi	a4,s0,-120
	addi	a5,s0,-88
	ld	a2,-152(s0)
	mv	a1,a4
	mv	a0,a5
	call	EccPoint_compute_public_key
	mv	a5,a0
	sext.w	a5,a5
	bne	a5,zero,.L181
	li	a5,0
	j	.L182
.L181:
	ld	a5,-152(s0)
	lb	a5,1(a5)
	mv	a4,a5
	addi	a5,s0,-88
	mv	a2,a5
	mv	a1,a4
	ld	a0,-144(s0)
	call	uECC_vli_nativeToBytes
	ld	a5,-152(s0)
	lb	a5,1(a5)
	mv	a4,a5
	ld	a5,-144(s0)
	add	a3,a5,a4
	ld	a5,-152(s0)
	lb	a5,1(a5)
	mv	a1,a5
	ld	a5,-152(s0)
	lb	a5,0(a5)
	slli	a5,a5,2
	addi	a4,s0,-88
	add	a5,a4,a5
	mv	a2,a5
	mv	a0,a3
	call	uECC_vli_nativeToBytes
	li	a5,1
.L182:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L183
	call	__stack_chk_fail@plt
.L183:
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
.LFE44:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
