	.file	1 "tinycrypt_ecc.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_rshift1
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$5,$5,2
	addu	$5,$4,$5
	sltu	$2,$4,$5
	beq	$2,$0,$L5
	move	$6,$0

$L3:
	lw	$3,-4($5)
	srl	$2,$3,1
	or	$2,$2,$6
	sw	$2,-4($5)
	addiu	$5,$5,-4
	sltu	$2,$4,$5
	bne	$2,$0,$L3
	sll	$6,$3,31

$L5:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_rshift1
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_mult
	.type	uECC_vli_mult, @function
uECC_vli_mult:
	.frame	$sp,24,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x001f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	blez	$7,$L19
	sw	$16,4($sp)

	move	$25,$4
	move	$16,$7
	move	$13,$0
	move	$2,$0
	move	$11,$0
	move	$24,$0
	.option	pic0
	b	$L8
	.option	pic2
	li	$15,1			# 0x1

$L10:
	move	$10,$24
$L9:
$L26:
	addiu	$3,$3,1
	seb	$3,$3
	slt	$8,$14,$3
	bne	$8,$0,$L12
	addu	$12,$12,$10

$L11:
	subu	$8,$13,$3
	sll	$8,$8,2
	addu	$8,$6,$8
	lw	$9,0($8)
	sll	$8,$3,2
	addu	$8,$5,$8
	lw	$8,0($8)
	multu	$9,$8
	mflo	$8
	mfhi	$9
	addu	$11,$8,$11
	sltu	$10,$11,$8
	addu	$2,$9,$2
	addu	$2,$10,$2
	sltu	$17,$2,$9
	bne	$17,$0,$L9
	move	$10,$15

	bne	$9,$2,$L10
	sltu	$8,$11,$8

	bne	$8,$0,$L9
	nop

	.option	pic0
	b	$L26
	.option	pic2
	move	$10,$24

$L12:
	sw	$11,0($25)
	addiu	$13,$13,1
	beq	$13,$16,$L7
	addiu	$25,$25,4

	move	$11,$2
	move	$2,$12
$L8:
	seb	$14,$13
	bltz	$14,$L12
	move	$12,$0

	move	$12,$0
	.option	pic0
	b	$L11
	.option	pic2
	move	$3,$24

$L19:
	move	$12,$0
	move	$2,$0
$L7:
	sll	$18,$7,1
	addiu	$18,$18,-1
	slt	$3,$7,$18
	beq	$3,$0,$L13
	move	$13,$7

	move	$25,$7
	li	$16,1			# 0x1
	andi	$19,$7,0x00ff
	li	$24,1			# 0x1
	.option	pic0
	b	$L18
	.option	pic2
	move	$17,$0

$L16:
	move	$3,$17
$L15:
	addu	$12,$12,$3
	addiu	$11,$11,4
	beq	$15,$11,$L14
	addiu	$13,$13,-4

$L17:
	lw	$8,0($11)
	lw	$3,0($13)
	multu	$8,$3
	mflo	$8
	mfhi	$9
	addu	$10,$8,$10
	sltu	$3,$10,$8
	addu	$2,$9,$2
	addu	$2,$3,$2
	sltu	$14,$2,$9
	bne	$14,$0,$L15
	move	$3,$24

	bne	$9,$2,$L16
	sltu	$8,$10,$8

	bne	$8,$0,$L15
	nop

	.option	pic0
	b	$L15
	.option	pic2
	move	$3,$17

$L21:
	move	$10,$2
	move	$2,$12
	move	$12,$0
$L14:
	sll	$3,$25,2
	addu	$3,$4,$3
	sw	$10,0($3)
	addiu	$25,$25,1
	seb	$25,$25
	move	$13,$25
	addiu	$16,$16,1
	slt	$3,$25,$18
	beq	$3,$0,$L13
	andi	$16,$16,0x00ff

$L18:
	seb	$3,$16
	slt	$8,$3,$7
	beq	$8,$0,$L21
	sll	$11,$3,2

	addu	$11,$5,$11
	subu	$13,$13,$3
	sll	$13,$13,2
	addu	$13,$6,$13
	subu	$15,$19,$16
	andi	$15,$15,0x00ff
	addu	$15,$15,$3
	sll	$15,$15,2
	addu	$15,$5,$15
	move	$10,$2
	move	$2,$12
	.option	pic0
	b	$L17
	.option	pic2
	move	$12,$0

$L13:
	sll	$7,$7,3
	addu	$4,$4,$7
	sw	$2,-4($4)
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	uECC_vli_mult
	.size	uECC_vli_mult, .-uECC_vli_mult
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_add
	.type	uECC_vli_add, @function
uECC_vli_add:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$7,$L30
	sll	$7,$7,2

	move	$8,$0
	move	$2,$0
$L29:
	addu	$3,$5,$8
	lw	$9,0($3)
	addu	$3,$6,$8
	lw	$3,0($3)
	addu	$3,$9,$3
	addu	$3,$3,$2
	xor	$10,$9,$3
	sltu	$10,$10,1
	mul	$2,$10,$2
	sltu	$9,$3,$9
	or	$2,$2,$9
	addu	$9,$4,$8
	addiu	$8,$8,4
	bne	$8,$7,$L29
	sw	$3,0($9)

	jr	$31
	nop

$L30:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	uECC_vli_add
	.size	uECC_vli_add, .-uECC_vli_add
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	vli_modInv_update
	.type	vli_modInv_update, @function
vli_modInv_update:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$17,$4
	lw	$2,0($4)
	andi	$2,$2,0x1
	bne	$2,$0,$L36
	move	$16,$6

	move	$5,$6
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	.option	pic0
	b	$L37
	.option	pic2
	lw	$31,36($sp)

$L36:
	move	$7,$6
	move	$6,$5
	move	$5,$4
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	move	$18,$2
	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	beq	$18,$0,$L32
	li	$2,1073676288			# 0x3fff0000

	ori	$2,$2,0xffff
	addu	$16,$16,$2
	sll	$16,$16,2
	addu	$4,$17,$16
	lw	$2,0($4)
	li	$3,-2147483648			# 0xffffffff80000000
	or	$2,$2,$3
	sw	$2,0($4)
$L32:
	lw	$31,36($sp)
$L37:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	vli_modInv_update
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.globl	uECC_set_rng
	.set	nomips16
	.set	nomicromips
	.ent	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(g_rng_function)
	jr	$31
	sw	$4,%lo(g_rng_function)($2)

	.set	macro
	.set	reorder
	.end	uECC_set_rng
	.size	uECC_set_rng, .-uECC_set_rng
	.align	2
	.globl	uECC_get_rng
	.set	nomips16
	.set	nomicromips
	.ent	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(g_rng_function)
	jr	$31
	lw	$2,%lo(g_rng_function)($2)

	.set	macro
	.set	reorder
	.end	uECC_get_rng
	.size	uECC_get_rng, .-uECC_get_rng
	.align	2
	.globl	uECC_curve_private_key_size
	.set	nomips16
	.set	nomicromips
	.ent	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lh	$2,2($4)
	addiu	$2,$2,7
	bltz	$2,$L42
	nop

$L41:
	jr	$31
	sra	$2,$2,3

$L42:
	.option	pic0
	b	$L41
	.option	pic2
	addiu	$2,$2,7

	.set	macro
	.set	reorder
	.end	uECC_curve_private_key_size
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.align	2
	.globl	uECC_curve_public_key_size
	.set	nomips16
	.set	nomicromips
	.ent	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,1($4)
	jr	$31
	sll	$2,$2,1

	.set	macro
	.set	reorder
	.end	uECC_curve_public_key_size
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.align	2
	.globl	uECC_vli_clear
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$5,$L48
	move	$2,$4

	sll	$5,$5,2
	addu	$4,$4,$5
$L46:
	sw	$0,0($2)
	addiu	$2,$2,4
	bne	$2,$4,$L46
	nop

$L48:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_clear
	.size	uECC_vli_clear, .-uECC_vli_clear
	.align	2
	.globl	uECC_vli_isZero
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$5,$L52
	move	$3,$4

	sll	$5,$5,2
	addu	$4,$4,$5
	move	$2,$0
$L51:
	lw	$5,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L51
	or	$2,$2,$5

$L50:
	jr	$31
	sltu	$2,$2,1

$L52:
	.option	pic0
	b	$L50
	.option	pic2
	move	$2,$0

	.set	macro
	.set	reorder
	.end	uECC_vli_isZero
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.align	2
	.globl	uECC_vli_testBit
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sra	$2,$5,5
	sll	$2,$2,2
	addu	$4,$4,$2
	li	$2,1			# 0x1
	sll	$2,$2,$5
	lw	$3,0($4)
	jr	$31
	and	$2,$2,$3

	.set	macro
	.set	reorder
	.end	uECC_vli_testBit
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.align	2
	.globl	uECC_vli_numBits
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$5,$5,-1
	seb	$5,$5
	bltz	$5,$L56
	nop

	sll	$2,$5,2
	addu	$2,$4,$2
$L57:
	lw	$3,0($2)
	bne	$3,$0,$L56
	nop

	addiu	$5,$5,-1
	seb	$5,$5
	bgez	$5,$L57
	addiu	$2,$2,-4

$L56:
	addiu	$5,$5,1
	seb	$5,$5
	beq	$5,$0,$L62
	nop

	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$5,$2
	sll	$2,$2,2
	addu	$4,$4,$2
	lw	$2,0($4)
	beq	$2,$0,$L63
	nop

	move	$3,$0
$L61:
	srl	$2,$2,1
	bne	$2,$0,$L61
	addiu	$3,$3,1

$L60:
	addiu	$2,$5,-1
	sll	$2,$2,5
	addu	$2,$2,$3
	jr	$31
	seh	$2,$2

$L63:
	.option	pic0
	b	$L60
	.option	pic2
	move	$3,$2

$L62:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	uECC_vli_numBits
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.align	2
	.globl	uECC_vli_set
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$6,$L69
	move	$2,$5

	sll	$6,$6,2
	addu	$5,$5,$6
$L67:
	lw	$3,0($2)
	sw	$3,0($4)
	addiu	$2,$2,4
	bne	$2,$5,$L67
	addiu	$4,$4,4

$L69:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_set
	.size	uECC_vli_set, .-uECC_vli_set
	.align	2
	.globl	uECC_vli_cmp_unsafe
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$6,$6,-1
	seb	$6,$6
	bltz	$6,$L73
	nop

	sll	$2,$6,2
	addu	$4,$4,$2
	addu	$5,$5,$2
$L72:
	lw	$2,0($4)
	lw	$3,0($5)
	sltu	$7,$3,$2
	bne	$7,$0,$L74
	nop

	sltu	$2,$2,$3
	bne	$2,$0,$L75
	addiu	$6,$6,-1

	seb	$6,$6
	addiu	$4,$4,-4
	bgez	$6,$L72
	addiu	$5,$5,-4

	jr	$31
	nop

$L73:
	jr	$31
	move	$2,$0

$L74:
	jr	$31
	li	$2,1			# 0x1

$L75:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	uECC_vli_cmp_unsafe
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.align	2
	.globl	uECC_vli_equal
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$6,$6,-1
	seb	$6,$6
	bltz	$6,$L82
	move	$2,$0

	sll	$2,$6,2
	addu	$4,$4,$2
	addu	$5,$5,$2
	move	$2,$0
$L79:
	lw	$3,0($4)
	lw	$7,0($5)
	xor	$3,$3,$7
	or	$2,$2,$3
	addiu	$6,$6,-1
	seb	$6,$6
	addiu	$4,$4,-4
	bgez	$6,$L79
	addiu	$5,$5,-4

$L78:
$L82:
	jr	$31
	sltu	$2,$0,$2

	.set	macro
	.set	reorder
	.end	uECC_vli_equal
	.size	uECC_vli_equal, .-uECC_vli_equal
	.align	2
	.globl	cond_set
	.set	nomips16
	.set	nomicromips
	.ent	cond_set
	.type	cond_set, @function
cond_set:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$6,1
	mul	$2,$2,$5
	mul	$4,$4,$6
	jr	$31
	or	$2,$2,$4

	.set	macro
	.set	reorder
	.end	cond_set
	.size	cond_set, .-cond_set
	.align	2
	.globl	uECC_vli_sub
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$7,$L87
	sll	$7,$7,2

	move	$3,$0
	move	$2,$0
$L86:
	addu	$8,$5,$3
	lw	$9,0($8)
	subu	$8,$9,$2
	addu	$10,$6,$3
	lw	$10,0($10)
	subu	$8,$8,$10
	xor	$10,$9,$8
	sltu	$10,$10,1
	mul	$2,$10,$2
	sltu	$9,$9,$8
	or	$2,$2,$9
	addu	$9,$4,$3
	addiu	$3,$3,4
	bne	$7,$3,$L86
	sw	$8,0($9)

	jr	$31
	nop

$L87:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	uECC_vli_sub
	.size	uECC_vli_sub, .-uECC_vli_sub
	.align	2
	.globl	vli_mmod_fast_secp256r1
	.set	nomips16
	.set	nomicromips
	.ent	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
	.frame	$sp,88,$31		# vars= 40, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$19,80($sp)
	sw	$18,76($sp)
	sw	$17,72($sp)
	sw	$16,68($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$18,$4
	move	$17,$5
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,60($sp)
	li	$6,8			# 0x8
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($sp)
	sw	$0,36($sp)
	sw	$0,32($sp)
	sw	$0,28($sp)
	lw	$2,44($17)
	sw	$2,40($sp)
	lw	$2,48($17)
	sw	$2,44($sp)
	lw	$2,52($17)
	sw	$2,48($sp)
	lw	$2,56($17)
	sw	$2,52($sp)
	lw	$2,60($17)
	sw	$2,56($sp)
	li	$7,8			# 0x8
	addiu	$19,$sp,28
	move	$6,$19
	move	$5,$19
	move	$4,$19
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$16,$2
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	addu	$16,$16,$2
	lw	$2,48($17)
	sw	$2,40($sp)
	lw	$2,52($17)
	sw	$2,44($sp)
	lw	$2,56($17)
	sw	$2,48($sp)
	lw	$2,60($17)
	sw	$2,52($sp)
	sw	$0,56($sp)
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$19
	move	$4,$19
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	addu	$16,$16,$2
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	addu	$16,$16,$2
	lw	$2,32($17)
	sw	$2,28($sp)
	lw	$2,36($17)
	sw	$2,32($sp)
	lw	$2,40($17)
	sw	$2,36($sp)
	sw	$0,48($sp)
	sw	$0,44($sp)
	sw	$0,40($sp)
	lw	$2,56($17)
	sw	$2,52($sp)
	lw	$2,60($17)
	sw	$2,56($sp)
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	addu	$16,$16,$2
	lw	$2,36($17)
	sw	$2,28($sp)
	lw	$2,40($17)
	sw	$2,32($sp)
	lw	$2,44($17)
	sw	$2,36($sp)
	lw	$2,52($17)
	sw	$2,40($sp)
	lw	$3,56($17)
	sw	$3,44($sp)
	lw	$3,60($17)
	sw	$3,48($sp)
	sw	$2,52($sp)
	lw	$2,32($17)
	sw	$2,56($sp)
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	addu	$16,$16,$2
	lw	$2,44($17)
	sw	$2,28($sp)
	lw	$2,48($17)
	sw	$2,32($sp)
	lw	$2,52($17)
	sw	$2,36($sp)
	sw	$0,48($sp)
	sw	$0,44($sp)
	sw	$0,40($sp)
	lw	$2,32($17)
	sw	$2,52($sp)
	lw	$2,40($17)
	sw	$2,56($sp)
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	subu	$16,$16,$2
	lw	$2,48($17)
	sw	$2,28($sp)
	lw	$2,52($17)
	sw	$2,32($sp)
	lw	$2,56($17)
	sw	$2,36($sp)
	lw	$2,60($17)
	sw	$2,40($sp)
	lw	$2,36($17)
	sw	$2,52($sp)
	lw	$2,44($17)
	sw	$2,56($sp)
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	subu	$16,$16,$2
	lw	$2,52($17)
	sw	$2,28($sp)
	lw	$2,56($17)
	sw	$2,32($sp)
	lw	$2,60($17)
	sw	$2,36($sp)
	lw	$2,32($17)
	sw	$2,40($sp)
	lw	$2,36($17)
	sw	$2,44($sp)
	lw	$2,40($17)
	sw	$2,48($sp)
	sw	$0,52($sp)
	lw	$2,48($17)
	sw	$2,56($sp)
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	subu	$16,$16,$2
	lw	$2,56($17)
	sw	$2,28($sp)
	lw	$2,60($17)
	sw	$2,32($sp)
	sw	$0,36($sp)
	lw	$2,36($17)
	sw	$2,40($sp)
	lw	$2,40($17)
	sw	$2,44($sp)
	lw	$2,44($17)
	sw	$2,48($sp)
	lw	$2,52($17)
	sw	$2,56($sp)
	li	$7,8			# 0x8
	move	$6,$19
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	subu	$16,$16,$2
	bltz	$16,$L97
	lui	$17,%hi(curve_secp256r1+4)

	addiu	$17,$17,%lo(curve_secp256r1+4)
	.option	pic0
	b	$L90
	.option	pic2
	li	$19,1			# 0x1

$L97:
	addiu	$17,$17,%lo(curve_secp256r1+4)
	li	$7,8			# 0x8
$L100:
	move	$6,$17
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	addu	$16,$16,$2
	bltz	$16,$L100
	li	$7,8			# 0x8

	.option	pic0
	b	$L89
	nop

	.option	pic2
$L93:
	li	$7,8			# 0x8
$L101:
	move	$6,$17
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	subu	$16,$16,$2
$L90:
	bne	$16,$0,$L93
	li	$6,8			# 0x8

	move	$5,$18
	move	$4,$17
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($sp)
	bne	$2,$19,$L101
	li	$7,8			# 0x8

$L89:
	lw	$3,60($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L99
	lw	$31,84($sp)

	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	jr	$31
	addiu	$sp,$sp,88

$L99:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.globl	uECC_vli_cmp
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
	.frame	$sp,88,$31		# vars= 40, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$19,80($sp)
	sw	$18,76($sp)
	sw	$17,72($sp)
	sw	$16,68($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$19,$6
	lw	$18,%got(__stack_chk_guard)($28)
	lw	$2,0($18)
	sw	$2,60($sp)
	move	$7,$6
	move	$6,$5
	move	$5,$4
	addiu	$17,$sp,28
	move	$4,$17
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$16,$2
	move	$5,$19
	move	$4,$17
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,16($sp)
	sltu	$2,$2,1
	sltu	$16,$0,$16
	sll	$16,$16,1
	subu	$2,$2,$16
	lw	$4,60($sp)
	lw	$3,0($18)
	bne	$4,$3,$L105
	lw	$31,84($sp)

	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	jr	$31
	addiu	$sp,$sp,88

$L105:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_cmp
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.align	2
	.globl	uECC_vli_modAdd
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$16,$4
	move	$17,$7
	lb	$18,56($sp)
	move	$7,$18
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	bne	$2,$0,$L107
	move	$6,$18

	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	li	$3,1			# 0x1
	beq	$2,$3,$L110
	lw	$31,36($sp)

$L107:
	move	$7,$18
	move	$6,$17
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$31,36($sp)
$L110:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	uECC_vli_modAdd
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	2
	.globl	uECC_vli_modSub
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$16,$4
	move	$17,$7
	lb	$18,56($sp)
	move	$7,$18
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	bne	$2,$0,$L114
	move	$7,$18

	lw	$31,36($sp)
$L115:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

$L114:
	move	$6,$17
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	.option	pic0
	b	$L115
	.option	pic2
	lw	$31,36($sp)

	.set	macro
	.set	reorder
	.end	uECC_vli_modSub
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.globl	uECC_vli_mmod
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
	.frame	$sp,216,$31		# vars= 152, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-216
	sw	$31,212($sp)
	sw	$fp,208($sp)
	sw	$23,204($sp)
	sw	$22,200($sp)
	sw	$21,196($sp)
	sw	$20,192($sp)
	sw	$19,188($sp)
	sw	$18,184($sp)
	sw	$17,180($sp)
	sw	$16,176($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($sp)
	move	$18,$6
	move	$19,$7
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,172($sp)
	addiu	$2,$sp,108
	sw	$2,36($sp)
	sw	$5,40($sp)
	move	$5,$7
	move	$4,$6
	.option	pic0
	jal	uECC_vli_numBits
	nop

	.option	pic2
	lw	$28,16($sp)
	sll	$3,$19,6
	subu	$3,$3,$2
	seh	$17,$3
	bltz	$17,$L133
	move	$2,$17

$L117:
	sra	$2,$2,5
	li	$16,-2147483648			# 0xffffffff80000000
	addiu	$16,$16,31
	and	$16,$17,$16
	bltz	$16,$L134
	seb	$20,$2

$L118:
	seb	$16,$16
	move	$5,$20
	addiu	$4,$sp,44
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($sp)
	blez	$16,$L119
	move	$6,$19

	beq	$19,$0,$L120
	move	$2,$18

	sll	$20,$20,2
	addiu	$4,$sp,44
	addu	$4,$4,$20
	sll	$8,$19,2
	addu	$8,$18,$8
	move	$6,$0
	li	$7,32			# 0x20
	subu	$7,$7,$16
$L121:
	lw	$5,0($2)
	sll	$3,$5,$16
	or	$3,$3,$6
	sw	$3,0($4)
	srl	$6,$5,$7
	addiu	$2,$2,4
	bne	$2,$8,$L121
	addiu	$4,$4,4

$L120:
	bltz	$17,$L129
	move	$23,$19

	sll	$16,$19,1
	sll	$2,$19,2
	addiu	$3,$sp,44
	addu	$2,$3,$2
	sw	$2,24($sp)
	li	$18,1			# 0x1
	li	$fp,1			# 0x1
	move	$22,$3
	addiu	$20,$19,-1
	sll	$20,$20,2
	addiu	$2,$20,168
	addiu	$3,$sp,8
	addu	$20,$2,$3
	sll	$21,$19,2
	addiu	$2,$21,168
	.option	pic0
	b	$L123
	.option	pic2
	addu	$21,$2,$3

$L133:
	.option	pic0
	b	$L117
	.option	pic2
	addiu	$2,$17,31

$L134:
	addiu	$16,$16,-1
	li	$2,-32			# 0xffffffffffffffe0
	or	$16,$16,$2
	.option	pic0
	b	$L118
	.option	pic2
	addiu	$16,$16,1

$L119:
	sll	$20,$20,2
	move	$5,$18
	addiu	$4,$sp,44
	addu	$4,$4,$20
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L120
	nop

	.option	pic2
$L135:
	sltu	$6,$5,$2
	addu	$4,$7,$4
$L137:
	sw	$2,0($4)
	addiu	$3,$3,1
	seb	$3,$3
	slt	$4,$3,$16
	beq	$4,$0,$L127
	move	$2,$3

$L125:
	sll	$4,$3,2
	addu	$5,$8,$4
	lw	$5,0($5)
	sll	$2,$2,2
	addiu	$2,$2,168
	addiu	$9,$sp,8
	addu	$2,$2,$9
	lw	$2,-132($2)
	addu	$2,$6,$2
	subu	$2,$5,$2
	bne	$5,$2,$L135
	nop

	.option	pic0
	b	$L137
	.option	pic2
	addu	$4,$7,$4

$L127:
	xor	$6,$18,$6
	sltu	$18,$6,1
	move	$5,$19
	move	$4,$22
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$2,-132($21)
	sll	$2,$2,31
	lw	$3,-132($20)
	or	$2,$2,$3
	sw	$2,-132($20)
	move	$5,$19
	lw	$4,24($sp)
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($sp)
	addiu	$17,$17,-1
	seh	$17,$17
	li	$2,-1			# 0xffffffffffffffff
	beq	$17,$2,$L138
	sll	$2,$18,2

$L123:
	blez	$23,$L127
	move	$6,$0

	sll	$2,$18,2
	addiu	$2,$2,168
	addiu	$3,$sp,8
	addu	$2,$2,$3
	lw	$8,-140($2)
	subu	$2,$fp,$18
	sll	$2,$2,2
	addiu	$2,$2,168
	addu	$2,$2,$3
	lw	$7,-140($2)
	move	$3,$0
	move	$6,$0
	.option	pic0
	b	$L125
	.option	pic2
	move	$2,$0

$L129:
	li	$18,1			# 0x1
	sll	$2,$18,2
$L138:
	addiu	$2,$2,168
	addiu	$3,$sp,8
	addu	$2,$2,$3
	move	$6,$19
	lw	$5,-140($2)
	lw	$4,28($sp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$3,172($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L136
	lw	$31,212($sp)

	lw	$fp,208($sp)
	lw	$23,204($sp)
	lw	$22,200($sp)
	lw	$21,196($sp)
	lw	$20,192($sp)
	lw	$19,188($sp)
	lw	$18,184($sp)
	lw	$17,180($sp)
	lw	$16,176($sp)
	jr	$31
	addiu	$sp,$sp,216

$L136:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_mmod
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.align	2
	.globl	uECC_vli_modMult
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
	.frame	$sp,120,$31		# vars= 72, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$20,112($sp)
	sw	$19,108($sp)
	sw	$18,104($sp)
	sw	$17,100($sp)
	sw	$16,96($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$17,$4
	move	$18,$7
	lb	$20,136($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lw	$2,0($19)
	sw	$2,92($sp)
	move	$7,$20
	addiu	$16,$sp,28
	move	$4,$16
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$7,$20
	move	$6,$18
	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	uECC_vli_mmod
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$3,92($sp)
	lw	$2,0($19)
	bne	$3,$2,$L142
	lw	$31,116($sp)

	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

$L142:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modMult
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.align	2
	.globl	uECC_vli_modMult_fast
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
	.frame	$sp,120,$31		# vars= 72, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$18,$4
	move	$17,$7
	lw	$19,%got(__stack_chk_guard)($28)
	lw	$2,0($19)
	sw	$2,92($sp)
	lb	$7,0($7)
	addiu	$16,$sp,28
	move	$4,$16
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$25,172($17)
	move	$5,$16
	move	$4,$18
	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$3,92($sp)
	lw	$2,0($19)
	bne	$3,$2,$L146
	lw	$31,116($sp)

	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	jr	$31
	addiu	$sp,$sp,120

$L146:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modMult_fast
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modSquare_fast
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	move	$7,$6
	move	$6,$5
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	uECC_vli_modSquare_fast
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.align	2
	.globl	double_jacobian_default
	.set	nomips16
	.set	nomicromips
	.ent	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
	.frame	$sp,136,$31		# vars= 72, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-136
	sw	$31,132($sp)
	sw	$22,128($sp)
	sw	$21,124($sp)
	sw	$20,120($sp)
	sw	$19,116($sp)
	sw	$18,112($sp)
	sw	$17,108($sp)
	sw	$16,104($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$17,$4
	move	$20,$5
	move	$16,$6
	move	$19,$7
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,100($sp)
	lb	$18,0($7)
	move	$5,$18
	move	$4,$6
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,24($sp)
	beq	$2,$0,$L155
	move	$6,$19

$L149:
	lw	$3,100($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L156
	lw	$31,132($sp)

	lw	$22,128($sp)
	lw	$21,124($sp)
	lw	$20,120($sp)
	lw	$19,116($sp)
	lw	$18,112($sp)
	lw	$17,108($sp)
	lw	$16,104($sp)
	jr	$31
	addiu	$sp,$sp,136

$L155:
	move	$5,$20
	addiu	$21,$sp,36
	move	$4,$21
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	move	$6,$21
	move	$5,$17
	addiu	$4,$sp,68
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$19
	move	$5,$21
	move	$4,$21
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	move	$6,$16
	move	$5,$20
	move	$4,$20
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$19
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	addiu	$21,$19,4
	sw	$18,16($sp)
	move	$7,$21
	move	$6,$16
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	move	$6,$16
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	move	$6,$16
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	move	$6,$16
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	move	$6,$17
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	move	$6,$16
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$5,$0
	move	$4,$17
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	lw	$28,24($sp)
	beq	$2,$0,$L151
	move	$5,$18

	move	$7,$18
	move	$6,$21
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$22,$2
	move	$5,$18
	move	$4,$17
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,24($sp)
	li	$3,1073676288			# 0x3fff0000
	ori	$3,$3,0xffff
	addu	$3,$18,$3
	sll	$3,$3,2
	addu	$3,$17,$3
	sll	$22,$22,31
	lw	$2,0($3)
	or	$2,$2,$22
	sw	$2,0($3)
	move	$6,$19
$L157:
	move	$5,$17
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	addiu	$22,$sp,68
	move	$6,$22
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	move	$6,$22
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	move	$6,$16
	move	$5,$22
	move	$4,$22
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	move	$6,$22
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$18,16($sp)
	move	$7,$21
	addiu	$19,$sp,36
	move	$6,$19
	move	$5,$17
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$18
	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$18
	move	$5,$20
	move	$4,$16
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$18
	move	$5,$19
	move	$4,$20
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	.option	pic0
	b	$L149
	nop

	.option	pic2
$L151:
	move	$4,$17
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,24($sp)
	.option	pic0
	b	$L157
	.option	pic2
	move	$6,$19

$L156:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	double_jacobian_default
	.size	double_jacobian_default, .-double_jacobian_default
	.align	2
	.globl	x_side_default
	.set	nomips16
	.set	nomicromips
	.ent	x_side_default
	.type	x_side_default, @function
x_side_default:
	.frame	$sp,104,$31		# vars= 40, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	sw	$21,96($sp)
	sw	$20,92($sp)
	sw	$19,88($sp)
	sw	$18,84($sp)
	sw	$17,80($sp)
	sw	$16,76($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$16,$4
	move	$18,$5
	move	$17,$6
	lw	$19,%got(__stack_chk_guard)($28)
	lw	$2,0($19)
	sw	$2,68($sp)
	sw	$0,40($sp)
	sw	$0,44($sp)
	sw	$0,48($sp)
	sw	$0,52($sp)
	sw	$0,56($sp)
	sw	$0,60($sp)
	sw	$0,64($sp)
	li	$2,3			# 0x3
	sw	$2,36($sp)
	lb	$21,0($6)
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	addiu	$20,$17,4
	sw	$21,16($sp)
	move	$7,$20
	addiu	$6,$sp,36
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$17
	move	$6,$18
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$21,16($sp)
	move	$7,$20
	addiu	$6,$17,132
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$3,68($sp)
	lw	$2,0($19)
	bne	$3,$2,$L161
	lw	$31,100($sp)

	lw	$21,96($sp)
	lw	$20,92($sp)
	lw	$19,88($sp)
	lw	$18,84($sp)
	lw	$17,80($sp)
	lw	$16,76($sp)
	jr	$31
	addiu	$sp,$sp,104

$L161:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	x_side_default
	.size	x_side_default, .-x_side_default
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	XYcZ_addC
	.type	XYcZ_addC, @function
XYcZ_addC:
	.frame	$sp,184,$31		# vars= 112, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-184
	sw	$31,180($sp)
	sw	$fp,176($sp)
	sw	$23,172($sp)
	sw	$22,168($sp)
	sw	$21,164($sp)
	sw	$20,160($sp)
	sw	$19,156($sp)
	sw	$18,152($sp)
	sw	$17,148($sp)
	sw	$16,144($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$20,$4
	move	$fp,$5
	move	$19,$6
	move	$23,$7
	lw	$22,200($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$2,36($sp)
	lw	$2,0($2)
	sw	$2,140($sp)
	lb	$16,0($22)
	addiu	$18,$22,4
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$4
	move	$5,$19
	addiu	$21,$sp,44
	move	$4,$21
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$22
	move	$5,$21
	move	$4,$21
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$22
	move	$6,$21
	move	$5,$20
	move	$4,$20
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$22
	move	$6,$21
	move	$5,$19
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$fp
	move	$5,$23
	move	$4,$21
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$fp
	move	$5,$23
	move	$4,$23
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$20
	move	$5,$19
	addiu	$17,$sp,76
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$22
	move	$6,$17
	move	$5,$fp
	move	$4,$fp
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$19
	move	$5,$20
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modAdd
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$22
	move	$5,$23
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$17
	move	$5,$19
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$19
	move	$5,$20
	addiu	$19,$sp,108
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$22
	move	$6,$19
	move	$5,$23
	move	$4,$23
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$fp
	move	$5,$23
	move	$4,$23
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$22
	move	$5,$21
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$17
	move	$5,$19
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$20
	move	$5,$19
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$22
	move	$6,$21
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$16,16($sp)
	move	$7,$18
	move	$6,$fp
	move	$5,$17
	move	$4,$fp
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$16
	move	$5,$19
	move	$4,$20
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$3,140($sp)
	lw	$2,36($sp)
	lw	$2,0($2)
	bne	$3,$2,$L165
	lw	$31,180($sp)

	lw	$fp,176($sp)
	lw	$23,172($sp)
	lw	$22,168($sp)
	lw	$21,164($sp)
	lw	$20,160($sp)
	lw	$19,156($sp)
	lw	$18,152($sp)
	lw	$17,148($sp)
	lw	$16,144($sp)
	jr	$31
	addiu	$sp,$sp,184

$L165:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	XYcZ_addC
	.size	XYcZ_addC, .-XYcZ_addC
	.align	2
	.globl	uECC_vli_modInv
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
	.frame	$sp,192,$31		# vars= 136, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-192
	sw	$31,188($sp)
	sw	$22,184($sp)
	sw	$21,180($sp)
	sw	$20,176($sp)
	sw	$19,172($sp)
	sw	$18,168($sp)
	sw	$17,164($sp)
	sw	$16,160($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$22,$4
	move	$17,$5
	move	$20,$6
	move	$16,$7
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,156($sp)
	move	$5,$7
	move	$4,$17
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,16($sp)
	bne	$2,$0,$L179
	move	$6,$16

	move	$5,$17
	addiu	$4,$sp,28
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$20
	addiu	$4,$sp,60
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$5,$16
	addiu	$4,$sp,92
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($sp)
	li	$2,1			# 0x1
	sw	$2,92($sp)
	move	$5,$16
	addiu	$4,$sp,124
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($sp)
	addiu	$18,$sp,60
	addiu	$17,$sp,28
	addiu	$19,$sp,92
	.option	pic0
	b	$L169
	.option	pic2
	addiu	$21,$sp,124

$L179:
	move	$5,$16
	move	$4,$22
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L166
	nop

	.option	pic2
$L181:
	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$20
	move	$4,$19
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($sp)
$L169:
	move	$6,$16
$L186:
	move	$5,$18
	move	$4,$17
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($sp)
	beq	$2,$0,$L180
	lw	$3,28($sp)

	andi	$3,$3,0x1
	beq	$3,$0,$L181
	lw	$3,60($sp)

	andi	$3,$3,0x1
	beq	$3,$0,$L182
	move	$5,$16

	blez	$2,$L173
	move	$7,$16

	move	$6,$18
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$21
	move	$4,$19
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($sp)
	bltz	$2,$L183
	move	$7,$16

$L187:
	move	$6,$21
	move	$5,$19
	move	$4,$19
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$20
	move	$4,$19
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L186
	.option	pic2
	move	$6,$16

$L182:
	move	$4,$18
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$20
	move	$4,$21
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L186
	.option	pic2
	move	$6,$16

$L183:
	move	$6,$20
	addiu	$4,$sp,92
	move	$5,$4
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L187
	.option	pic2
	move	$7,$16

$L173:
	move	$6,$17
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$5,$16
	move	$4,$18
	.option	pic0
	jal	uECC_vli_rshift1
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$19
	move	$4,$21
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($sp)
	bltz	$2,$L184
	move	$7,$16

$L188:
	move	$6,$19
	move	$5,$21
	move	$4,$21
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$16
	move	$5,$20
	move	$4,$21
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L186
	.option	pic2
	move	$6,$16

$L184:
	move	$6,$20
	addiu	$4,$sp,124
	move	$5,$4
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L188
	.option	pic2
	move	$7,$16

$L180:
	move	$6,$16
	addiu	$5,$sp,92
	move	$4,$22
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,16($sp)
$L166:
	lw	$3,156($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L185
	lw	$31,188($sp)

	lw	$22,184($sp)
	lw	$21,180($sp)
	lw	$20,176($sp)
	lw	$19,172($sp)
	lw	$18,168($sp)
	lw	$17,164($sp)
	lw	$16,160($sp)
	jr	$31
	addiu	$sp,$sp,192

$L185:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modInv
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.align	2
	.globl	uECC_secp256r1
	.set	nomips16
	.set	nomicromips
	.ent	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(curve_secp256r1)
	jr	$31
	addiu	$2,$2,%lo(curve_secp256r1)

	.set	macro
	.set	reorder
	.end	uECC_secp256r1
	.size	uECC_secp256r1, .-uECC_secp256r1
	.align	2
	.globl	EccPoint_isZero
	.set	nomips16
	.set	nomicromips
	.ent	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lbu	$5,0($5)
	sll	$5,$5,1
	seb	$5,$5
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	EccPoint_isZero
	.size	EccPoint_isZero, .-EccPoint_isZero
	.align	2
	.globl	apply_z
	.set	nomips16
	.set	nomicromips
	.ent	apply_z
	.type	apply_z, @function
apply_z:
	.frame	$sp,96,$31		# vars= 40, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$21,88($sp)
	sw	$20,84($sp)
	sw	$19,80($sp)
	sw	$18,76($sp)
	sw	$17,72($sp)
	sw	$16,68($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$20,$4
	move	$18,$5
	move	$19,$6
	move	$17,$7
	lw	$21,%got(__stack_chk_guard)($28)
	lw	$2,0($21)
	sw	$2,60($sp)
	move	$6,$7
	move	$5,$19
	addiu	$16,$sp,28
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$7,$17
	move	$6,$16
	move	$5,$20
	move	$4,$20
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$7,$17
	move	$6,$19
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$7,$17
	move	$6,$16
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$3,60($sp)
	lw	$2,0($21)
	bne	$3,$2,$L195
	lw	$31,92($sp)

	lw	$21,88($sp)
	lw	$20,84($sp)
	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	jr	$31
	addiu	$sp,$sp,96

$L195:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	apply_z
	.size	apply_z, .-apply_z
	.align	2
	.globl	XYcZ_add
	.set	nomips16
	.set	nomicromips
	.ent	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
	.frame	$sp,112,$31		# vars= 40, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	sw	$23,100($sp)
	sw	$22,96($sp)
	sw	$21,92($sp)
	sw	$20,88($sp)
	sw	$19,84($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$21,$4
	move	$23,$5
	move	$17,$6
	move	$18,$7
	lw	$20,128($sp)
	lw	$fp,%got(__stack_chk_guard)($28)
	lw	$2,0($fp)
	sw	$2,68($sp)
	lb	$19,0($20)
	addiu	$22,$20,4
	sw	$19,16($sp)
	move	$7,$22
	move	$6,$4
	move	$5,$17
	addiu	$16,$sp,36
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$20
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$20
	move	$6,$16
	move	$5,$21
	move	$4,$21
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$20
	move	$6,$16
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$22
	move	$6,$23
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$20
	move	$5,$18
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$22
	move	$6,$21
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$22
	move	$6,$17
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$22
	move	$6,$21
	move	$5,$17
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$20
	move	$6,$17
	move	$5,$23
	move	$4,$23
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$22
	move	$6,$16
	move	$5,$21
	move	$4,$17
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$20
	move	$6,$17
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$22
	move	$6,$23
	move	$5,$18
	move	$4,$18
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$19
	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$3,68($sp)
	lw	$2,0($fp)
	bne	$3,$2,$L199
	lw	$31,108($sp)

	lw	$fp,104($sp)
	lw	$23,100($sp)
	lw	$22,96($sp)
	lw	$21,92($sp)
	lw	$20,88($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	jr	$31
	addiu	$sp,$sp,112

$L199:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	XYcZ_add
	.size	XYcZ_add, .-XYcZ_add
	.align	2
	.globl	EccPoint_mult
	.set	nomips16
	.set	nomicromips
	.ent	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
	.frame	$sp,264,$31		# vars= 192, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-264
	sw	$31,260($sp)
	sw	$fp,256($sp)
	sw	$23,252($sp)
	sw	$22,248($sp)
	sw	$21,244($sp)
	sw	$20,240($sp)
	sw	$19,236($sp)
	sw	$18,232($sp)
	sw	$17,228($sp)
	sw	$16,224($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,48($sp)
	move	$18,$5
	sw	$5,52($sp)
	sw	$6,32($sp)
	move	$16,$7
	lw	$19,284($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,220($sp)
	lb	$6,0($19)
	move	$17,$6
	sw	$6,36($sp)
	addiu	$4,$sp,124
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$17
	sll	$2,$17,2
	sw	$2,40($sp)
	addu	$2,$18,$2
	sw	$2,44($sp)
	move	$5,$2
	addiu	$4,$sp,188
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	beq	$16,$0,$L201
	lb	$18,0($19)

	move	$6,$18
	move	$5,$16
	addiu	$4,$sp,60
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
$L202:
	move	$6,$18
	addiu	$16,$sp,124
	move	$5,$16
	addiu	$17,$sp,92
	move	$4,$17
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$18
	addiu	$20,$sp,188
	move	$5,$20
	addiu	$18,$sp,156
	move	$4,$18
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	addiu	$21,$sp,60
	move	$6,$21
	move	$5,$20
	move	$4,$16
	.option	pic0
	jal	apply_z
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$25,164($19)
	move	$7,$19
	move	$6,$21
	move	$5,$20
	move	$4,$16
	jalr	$25
	nop

	lw	$28,24($sp)
	move	$7,$19
	move	$6,$21
	move	$5,$18
	move	$4,$17
	.option	pic0
	jal	apply_z
	nop

	.option	pic2
	lw	$28,24($sp)
	lh	$18,280($sp)
	addiu	$18,$18,-2
	seh	$18,$18
	blez	$18,$L203
	li	$fp,1			# 0x1

	move	$23,$17
	addiu	$22,$sp,156
	move	$5,$18
$L209:
	lw	$4,32($sp)
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	lw	$28,24($sp)
	sltu	$16,$2,1
	subu	$17,$fp,$16
	sll	$17,$17,5
	addu	$21,$23,$17
	addu	$17,$22,$17
	sll	$16,$16,5
	addu	$20,$23,$16
	addu	$16,$22,$16
	sw	$19,16($sp)
	move	$7,$16
	move	$6,$20
	move	$5,$17
	move	$4,$21
	.option	pic0
	jal	XYcZ_addC
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$17
	move	$6,$21
	move	$5,$16
	move	$4,$20
	.option	pic0
	jal	XYcZ_add
	nop

	.option	pic2
	lw	$28,24($sp)
	addiu	$18,$18,-1
	seh	$18,$18
	bne	$18,$0,$L209
	move	$5,$18

$L203:
	move	$5,$0
	lw	$4,32($sp)
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	lw	$28,24($sp)
	sltu	$3,$2,1
	sltu	$17,$0,$2
	sll	$17,$17,5
	addiu	$18,$sp,92
	addu	$21,$18,$17
	addiu	$20,$sp,156
	addu	$17,$20,$17
	sll	$2,$3,5
	addu	$fp,$18,$2
	addu	$23,$20,$2
	sw	$19,16($sp)
	move	$7,$23
	move	$6,$fp
	move	$5,$17
	move	$4,$21
	.option	pic0
	jal	XYcZ_addC
	nop

	.option	pic2
	lw	$28,24($sp)
	addiu	$22,$19,4
	lw	$16,36($sp)
	sw	$16,16($sp)
	move	$7,$22
	move	$6,$18
	addiu	$5,$sp,124
	addiu	$16,$sp,60
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	move	$6,$17
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	lw	$6,52($sp)
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$7,36($sp)
	move	$6,$22
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modInv
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	lw	$6,44($sp)
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	move	$6,$21
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	nop

	.option	pic2
	lw	$28,24($sp)
	sw	$19,16($sp)
	move	$7,$17
	move	$6,$21
	move	$5,$23
	move	$4,$fp
	.option	pic0
	jal	XYcZ_add
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$7,$19
	move	$6,$16
	move	$5,$20
	move	$4,$18
	.option	pic0
	jal	apply_z
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$16,36($sp)
	move	$6,$16
	move	$5,$18
	lw	$17,48($sp)
	move	$4,$17
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$6,$16
	move	$5,$20
	lw	$3,40($sp)
	addu	$4,$17,$3
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$3,220($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L208
	lw	$31,260($sp)

	lw	$fp,256($sp)
	lw	$23,252($sp)
	lw	$22,248($sp)
	lw	$21,244($sp)
	lw	$20,240($sp)
	lw	$19,236($sp)
	lw	$18,232($sp)
	lw	$17,228($sp)
	lw	$16,224($sp)
	jr	$31
	addiu	$sp,$sp,264

$L201:
	move	$5,$18
	addiu	$4,$sp,60
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	lw	$28,24($sp)
	li	$2,1			# 0x1
	.option	pic0
	b	$L202
	.option	pic2
	sw	$2,60($sp)

$L208:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	EccPoint_mult
	.size	EccPoint_mult, .-EccPoint_mult
	.align	2
	.globl	regularize_k
	.set	nomips16
	.set	nomicromips
	.ent	regularize_k
	.type	regularize_k, @function
regularize_k:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$18,$5
	lh	$20,2($7)
	addiu	$2,$20,31
	bltz	$2,$L216
	move	$19,$6

$L211:
	sra	$2,$2,5
	seb	$17,$2
	addiu	$16,$7,36
	move	$7,$17
	move	$6,$16
	move	$5,$4
	move	$4,$18
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	bne	$2,$0,$L213
	sll	$2,$17,5

	slt	$2,$20,$2
	beq	$2,$0,$L214
	move	$5,$20

	move	$4,$18
	.option	pic0
	jal	uECC_vli_testBit
	nop

	.option	pic2
	.option	pic0
	b	$L212
	.option	pic2
	sltu	$20,$0,$2

$L216:
	.option	pic0
	b	$L211
	.option	pic2
	addiu	$2,$2,31

$L213:
	li	$20,1			# 0x1
$L212:
	move	$7,$17
	move	$6,$16
	move	$5,$18
	move	$4,$19
	.option	pic0
	jal	uECC_vli_add
	nop

	.option	pic2
	move	$2,$20
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,48

$L214:
	.option	pic0
	b	$L212
	.option	pic2
	move	$20,$0

	.set	macro
	.set	reorder
	.end	regularize_k
	.size	regularize_k, .-regularize_k
	.align	2
	.globl	EccPoint_compute_public_key
	.set	nomips16
	.set	nomicromips
	.ent	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
	.frame	$sp,128,$31		# vars= 80, regs= 4/0, args= 24, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-128
	sw	$31,124($sp)
	sw	$18,120($sp)
	sw	$17,116($sp)
	sw	$16,112($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$17,$4
	move	$4,$5
	move	$16,$6
	lw	$18,%got(__stack_chk_guard)($28)
	lw	$2,0($18)
	sw	$2,108($sp)
	addiu	$5,$sp,44
	sw	$5,36($sp)
	addiu	$6,$sp,76
	sw	$6,40($sp)
	move	$7,$16
	.option	pic0
	jal	regularize_k
	nop

	.option	pic2
	lw	$28,24($sp)
	sltu	$2,$2,1
	sll	$2,$2,2
	addiu	$2,$2,112
	addu	$2,$2,$sp
	sw	$16,20($sp)
	lhu	$3,2($16)
	addiu	$3,$3,1
	seh	$3,$3
	sw	$3,16($sp)
	move	$7,$0
	lw	$6,-76($2)
	addiu	$5,$16,68
	move	$4,$17
	.option	pic0
	jal	EccPoint_mult
	nop

	.option	pic2
	lw	$28,24($sp)
	move	$5,$16
	move	$4,$17
	.option	pic0
	jal	EccPoint_isZero
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$4,108($sp)
	lw	$3,0($18)
	bne	$4,$3,$L220
	sltu	$2,$2,1

	lw	$31,124($sp)
	lw	$18,120($sp)
	lw	$17,116($sp)
	lw	$16,112($sp)
	jr	$31
	addiu	$sp,$sp,128

$L220:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	EccPoint_compute_public_key
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.align	2
	.globl	uECC_vli_nativeToBytes
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$5,$L225
	move	$2,$0

	move	$3,$0
	addiu	$10,$5,-1
	li	$9,-4			# 0xfffffffffffffffc
$L223:
	subu	$3,$10,$3
	addu	$8,$4,$2
	and	$7,$3,$9
	addu	$7,$6,$7
	sll	$3,$3,3
	lw	$7,0($7)
	srl	$3,$7,$3
	sb	$3,0($8)
	addiu	$2,$2,1
	seb	$2,$2
	slt	$7,$2,$5
	bne	$7,$0,$L223
	move	$3,$2

$L225:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_nativeToBytes
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.align	2
	.globl	uECC_vli_bytesToNative
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$17,$4
	move	$18,$5
	addiu	$5,$6,3
	bltz	$5,$L232
	move	$16,$6

$L227:
	sra	$5,$5,2
	seb	$5,$5
	move	$4,$17
	.option	pic0
	jal	uECC_vli_clear
	nop

	.option	pic2
	blez	$16,$L233
	lw	$31,36($sp)

	move	$2,$0
	move	$3,$0
	addiu	$6,$16,-1
	li	$5,-4			# 0xfffffffffffffffc
$L229:
	subu	$3,$6,$3
	and	$7,$3,$5
	addu	$7,$17,$7
	addu	$4,$18,$2
	lbu	$4,0($4)
	sll	$3,$3,3
	sll	$4,$4,$3
	lw	$3,0($7)
	or	$3,$3,$4
	sw	$3,0($7)
	addiu	$2,$2,1
	seb	$2,$2
	slt	$4,$2,$16
	bne	$4,$0,$L229
	move	$3,$2

	lw	$31,36($sp)
$L233:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

$L232:
	.option	pic0
	b	$L227
	.option	pic2
	addiu	$5,$5,3

	.set	macro
	.set	reorder
	.end	uECC_vli_bytesToNative
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.align	2
	.globl	uECC_generate_random_int
	.set	nomips16
	.set	nomicromips
	.ent	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
	.frame	$sp,64,$31		# vars= 0, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$17,$4
	move	$23,$5
	move	$19,$6
	move	$5,$6
	move	$4,$23
	.option	pic0
	jal	uECC_vli_numBits
	nop

	.option	pic2
	lui	$3,%hi(g_rng_function)
	lw	$3,%lo(g_rng_function)($3)
	beq	$3,$0,$L238
	sll	$21,$19,2

	addiu	$18,$21,-4
	addu	$18,$17,$18
	subu	$2,$0,$2
	li	$20,-1			# 0xffffffffffffffff
	srl	$20,$20,$2
	li	$16,64			# 0x40
	lui	$22,%hi(g_rng_function)
	.option	pic0
	b	$L237
	.option	pic2
	li	$fp,1			# 0x1

$L236:
	addiu	$16,$16,-1
$L244:
	beq	$16,$0,$L243
	move	$2,$0

$L237:
	lw	$25,%lo(g_rng_function)($22)
	move	$5,$21
	move	$4,$17
	jalr	$25
	nop

	beq	$2,$0,$L234
	move	$5,$19

	lw	$2,0($18)
	and	$2,$2,$20
	sw	$2,0($18)
	move	$4,$17
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	bne	$2,$0,$L236
	move	$6,$19

	move	$5,$17
	move	$4,$23
	.option	pic0
	jal	uECC_vli_cmp
	nop

	.option	pic2
	bne	$2,$fp,$L244
	addiu	$16,$16,-1

	li	$2,1			# 0x1
$L234:
$L243:
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,64

$L238:
	.option	pic0
	b	$L234
	.option	pic2
	move	$2,$0

	.set	macro
	.set	reorder
	.end	uECC_generate_random_int
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.align	2
	.globl	uECC_valid_point
	.set	nomips16
	.set	nomicromips
	.ent	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
	.frame	$sp,120,$31		# vars= 72, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$20,112($sp)
	sw	$19,108($sp)
	sw	$18,104($sp)
	sw	$17,100($sp)
	sw	$16,96($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$17,$4
	move	$16,$5
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,92($sp)
	lb	$18,0($5)
	.option	pic0
	jal	EccPoint_isZero
	nop

	.option	pic2
	lw	$28,16($sp)
	bne	$2,$0,$L248
	addiu	$20,$16,4

	move	$6,$18
	move	$5,$17
	move	$4,$20
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($sp)
	li	$3,1			# 0x1
	bne	$2,$3,$L249
	sll	$19,$18,2

	addu	$19,$17,$19
	move	$6,$18
	move	$5,$19
	move	$4,$20
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($sp)
	li	$3,1			# 0x1
	bne	$2,$3,$L250
	move	$6,$16

	move	$5,$19
	addiu	$19,$sp,28
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$25,168($16)
	move	$6,$16
	move	$5,$17
	addiu	$16,$sp,60
	move	$4,$16
	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$18
	move	$5,$16
	move	$4,$19
	.option	pic0
	jal	uECC_vli_equal
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$4,$2
	li	$3,-3			# 0xfffffffffffffffd
	move	$2,$3
	movz	$2,$0,$4
$L245:
	lw	$4,92($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L253
	lw	$31,116($sp)

	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

$L248:
	.option	pic0
	b	$L245
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L249:
	.option	pic0
	b	$L245
	.option	pic2
	li	$2,-2			# 0xfffffffffffffffe

$L250:
	.option	pic0
	b	$L245
	.option	pic2
	li	$2,-2			# 0xfffffffffffffffe

$L253:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_valid_point
	.size	uECC_valid_point, .-uECC_valid_point
	.align	2
	.globl	uECC_valid_public_key
	.set	nomips16
	.set	nomicromips
	.ent	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
	.frame	$sp,120,$31		# vars= 72, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$18,$4
	move	$16,$5
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,92($sp)
	lb	$19,1($5)
	move	$6,$19
	move	$5,$4
	addiu	$17,$sp,28
	move	$4,$17
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	lw	$28,16($sp)
	lb	$4,0($16)
	sll	$4,$4,2
	move	$6,$19
	addu	$5,$18,$19
	addu	$4,$17,$4
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	lw	$28,16($sp)
	li	$6,16			# 0x10
	addiu	$5,$16,68
	move	$4,$17
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	nop

	.option	pic2
	lw	$28,16($sp)
	beq	$2,$0,$L257
	move	$5,$16

	move	$4,$17
	.option	pic0
	jal	uECC_valid_point
	nop

	.option	pic2
	lw	$28,16($sp)
$L254:
	lw	$4,92($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L259
	lw	$31,116($sp)

	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	jr	$31
	addiu	$sp,$sp,120

$L257:
	.option	pic0
	b	$L254
	.option	pic2
	li	$2,-4			# 0xfffffffffffffffc

$L259:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_valid_public_key
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.align	2
	.globl	uECC_compute_public_key
	.set	nomips16
	.set	nomicromips
	.ent	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
	.frame	$sp,144,$31		# vars= 104, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-144
	sw	$31,140($sp)
	sw	$18,136($sp)
	sw	$17,132($sp)
	sw	$16,128($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$18,$5
	move	$17,$6
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,124($sp)
	lh	$16,2($6)
	addiu	$6,$16,7
	bltz	$6,$L269
	nop

$L261:
	sra	$6,$6,3
	move	$5,$4
	addiu	$4,$sp,28
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	lw	$28,16($sp)
	addiu	$2,$16,31
	bltz	$2,$L270
	nop

$L262:
	sra	$2,$2,5
	seb	$16,$2
	move	$5,$16
	addiu	$4,$sp,28
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	lw	$28,16($sp)
	bne	$2,$0,$L265
	move	$6,$16

	addiu	$5,$sp,28
	addiu	$4,$17,36
	.option	pic0
	jal	uECC_vli_cmp
	nop

	.option	pic2
	lw	$28,16($sp)
	li	$3,1			# 0x1
	beq	$2,$3,$L271
	move	$2,$0

$L260:
	lw	$4,124($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L272
	lw	$31,140($sp)

	lw	$18,136($sp)
	lw	$17,132($sp)
	lw	$16,128($sp)
	jr	$31
	addiu	$sp,$sp,144

$L269:
	.option	pic0
	b	$L261
	.option	pic2
	addiu	$6,$6,7

$L270:
	.option	pic0
	b	$L262
	.option	pic2
	addiu	$2,$2,31

$L271:
	move	$6,$17
	addiu	$5,$sp,28
	addiu	$4,$sp,60
	.option	pic0
	jal	EccPoint_compute_public_key
	nop

	.option	pic2
	lw	$28,16($sp)
	bne	$2,$0,$L273
	move	$4,$18

	.option	pic0
	b	$L260
	.option	pic2
	move	$2,$0

$L273:
	addiu	$16,$sp,60
	move	$6,$16
	lb	$5,1($17)
	.option	pic0
	jal	uECC_vli_nativeToBytes
	nop

	.option	pic2
	lw	$28,16($sp)
	lb	$5,1($17)
	lb	$6,0($17)
	sll	$6,$6,2
	addu	$6,$16,$6
	addu	$4,$18,$5
	.option	pic0
	jal	uECC_vli_nativeToBytes
	nop

	.option	pic2
	lw	$28,16($sp)
	.option	pic0
	b	$L260
	.option	pic2
	li	$2,1			# 0x1

$L265:
	.option	pic0
	b	$L260
	.option	pic2
	move	$2,$0

$L272:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_compute_public_key
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.data.rel,"aw"
	.align	2
	.type	g_rng_function, @object
	.size	g_rng_function, 4
g_rng_function:
	.word	default_CSPRNG
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 176
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
	.word	double_jacobian_default
	.word	x_side_default
	.word	vli_mmod_fast_secp256r1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
