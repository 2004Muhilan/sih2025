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
	.ent	uECC_vli_add
	.type	uECC_vli_add, @function
uECC_vli_add:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$9,$0
	move	$8,$0
	move	$2,$0
$L2:
	slt	$3,$8,$7
	bne	$3,$0,$L3
	addu	$3,$5,$9

	jr	$31
	nop

$L3:
	addiu	$8,$8,1
	lw	$10,0($3)
	addu	$3,$6,$9
	seb	$8,$8
	lw	$3,0($3)
	addu	$3,$10,$3
	addu	$3,$3,$2
	xor	$11,$10,$3
	sltu	$11,$11,1
	sltu	$10,$3,$10
	and	$2,$11,$2
	or	$2,$2,$10
	addu	$10,$4,$9
	addiu	$9,$9,4
	.option	pic0
	b	$L2
	.option	pic2
	sw	$3,0($10)

	.set	macro
	.set	reorder
	.end	uECC_vli_add
	.size	uECC_vli_add, .-uECC_vli_add
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
	move	$3,$0
	addu	$5,$4,$5
$L7:
	sltu	$2,$4,$5
	bne	$2,$0,$L8
	nop

	jr	$31
	nop

$L8:
	lw	$6,-4($5)
	addiu	$5,$5,-4
	srl	$2,$6,1
	or	$2,$2,$3
	sw	$2,0($5)
	.option	pic0
	b	$L7
	.option	pic2
	sll	$3,$6,31

	.set	macro
	.set	reorder
	.end	uECC_vli_rshift1
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	vli_modInv_update
	.type	vli_modInv_update, @function
vli_modInv_update:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	andi	$2,$2,0x1
	bne	$2,$0,$L10
	move	$7,$6

	.option	pic0
	j	uECC_vli_rshift1
	.option	pic2
	move	$5,$6

$L10:
	addiu	$sp,$sp,-32
	move	$6,$5
	sw	$31,28($sp)
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$5,$4

	move	$5,$7
	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$8,$2

	beq	$8,$0,$L9
	sll	$7,$7,2

	li	$3,-2147483648			# 0xffffffff80000000
	addiu	$7,$7,-4
	addu	$12,$4,$7
	lw	$2,0($12)
	or	$2,$2,$3
	sw	$2,0($12)
$L9:
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	vli_modInv_update
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_mult
	.type	uECC_vli_mult, @function
uECC_vli_mult:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$9,$0
	move	$3,$0
	move	$2,$0
$L18:
	seb	$24,$9
	slt	$8,$24,$7
	bne	$8,$0,$L22
	sll	$10,$9,2

	sll	$13,$7,1
	li	$12,1			# 0x1
	addiu	$13,$13,-1
	addiu	$24,$7,-1
$L31:
	addu	$8,$12,$24
	seb	$8,$8
	slt	$9,$8,$13
	bne	$9,$0,$L33
	nop

	sll	$7,$7,3
	addu	$4,$4,$7
	jr	$31
	sw	$2,-4($4)

$L22:
	move	$11,$0
	addu	$15,$6,$10
	move	$14,$0
$L21:
	sll	$8,$11,2
	addu	$8,$5,$8
	lw	$12,0($8)
	lw	$8,0($15)
	multu	$12,$8
	mflo	$13
	mfhi	$12
	addu	$2,$13,$2
	addu	$3,$12,$3
	sltu	$8,$2,$13
	addu	$3,$8,$3
	sltu	$25,$3,$12
	bne	$25,$0,$L19
	li	$8,1			# 0x1

	bne	$3,$12,$L20
	sltu	$12,$2,$13

	bne	$12,$0,$L19
	nop

$L20:
	move	$8,$0
$L19:
	addiu	$11,$11,1
	addu	$14,$14,$8
	seb	$8,$11
	slt	$8,$24,$8
	beq	$8,$0,$L21
	addiu	$15,$15,-4

	addu	$10,$4,$10
	addiu	$9,$9,1
	sw	$2,0($10)
	move	$2,$3
	.option	pic0
	b	$L18
	.option	pic2
	move	$3,$14

$L28:
	move	$9,$3
	sll	$25,$8,2
	move	$3,$0
	seb	$11,$12
$L24:
	seb	$10,$11
	slt	$10,$10,$7
	bne	$10,$0,$L27
	nop

	sll	$8,$8,2
	addiu	$12,$12,1
	addu	$8,$4,$8
	andi	$12,$12,0x00ff
	sw	$2,0($8)
	addu	$8,$12,$24
	move	$2,$9
	seb	$8,$8
	slt	$9,$8,$13
	bne	$9,$0,$L28
	lw	$16,4($sp)

	sll	$7,$7,3
	addu	$4,$4,$7
	sw	$2,-4($4)
	jr	$31
	addiu	$sp,$sp,8

$L33:
	seb	$11,$12
	seb	$10,$11
	slt	$10,$10,$7
	move	$9,$3
	sll	$25,$8,2
	bne	$10,$0,$L35
	move	$3,$0

	sll	$8,$8,2
	addiu	$12,$12,1
	addu	$8,$4,$8
	andi	$12,$12,0x00ff
	sw	$2,0($8)
	.option	pic0
	b	$L31
	.option	pic2
	move	$2,$9

$L35:
	addiu	$sp,$sp,-8
	sw	$16,4($sp)
$L27:
	sll	$10,$11,2
	subu	$14,$25,$10
	addu	$10,$5,$10
	addu	$14,$6,$14
	lw	$10,0($10)
	lw	$14,0($14)
	multu	$14,$10
	mflo	$15
	mfhi	$14
	addu	$2,$15,$2
	addu	$9,$14,$9
	sltu	$10,$2,$15
	addu	$9,$10,$9
	sltu	$16,$9,$14
	bne	$16,$0,$L25
	li	$10,1			# 0x1

	bne	$9,$14,$L26
	sltu	$14,$2,$15

	bne	$14,$0,$L25
	nop

$L26:
	move	$10,$0
$L25:
	addu	$3,$3,$10
	.option	pic0
	b	$L24
	.option	pic2
	addiu	$11,$11,1

	.set	macro
	.set	reorder
	.end	uECC_vli_mult
	.size	uECC_vli_mult, .-uECC_vli_mult
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
	addiu	$3,$2,7
	addiu	$2,$2,14
	slt	$4,$3,0
	movz	$2,$3,$4
	jr	$31
	sra	$2,$2,3

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
	lui	$28,%hi(__gnu_local_gp)
	move	$6,$0
	bltz	$5,$L41
	addiu	$28,$28,%lo(__gnu_local_gp)

	move	$6,$5
$L41:
	seb	$6,$6
	lw	$25,%call16(memset)($28)
	sll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memset
1:	jr	$25
	move	$5,$0

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
	move	$3,$0
	move	$2,$0
$L45:
	seb	$6,$3
	slt	$6,$6,$5
	bne	$6,$0,$L46
	sll	$6,$3,2

	jr	$31
	sltu	$2,$2,1

$L46:
	addiu	$3,$3,1
	addu	$6,$4,$6
	lw	$6,0($6)
	.option	pic0
	b	$L45
	.option	pic2
	or	$2,$2,$6

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
	lw	$3,0($4)
	sll	$2,$2,$5
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
$L50:
	seb	$2,$5
	bltz	$2,$L49
	nop

	addiu	$3,$5,-1
	sll	$2,$3,2
	addu	$2,$4,$2
	lw	$2,4($2)
	beq	$2,$0,$L54
	nop

$L49:
	addiu	$5,$5,1
	seb	$5,$5
	beq	$5,$0,$L56
	move	$2,$0

	sll	$2,$5,2
	move	$3,$0
	addu	$4,$4,$2
	lw	$2,-4($4)
$L52:
	bne	$2,$0,$L53
	nop

	addiu	$2,$5,-1
	sll	$2,$2,5
	addu	$2,$2,$3
	seh	$2,$2
$L56:
	jr	$31
	nop

$L54:
	.option	pic0
	b	$L50
	.option	pic2
	move	$5,$3

$L53:
	srl	$2,$2,1
	.option	pic0
	b	$L52
	.option	pic2
	addiu	$3,$3,1

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
	move	$2,$0
$L58:
	seb	$3,$2
	slt	$3,$3,$6
	bne	$3,$0,$L59
	sll	$3,$2,2

	jr	$31
	nop

$L59:
	addiu	$2,$2,1
	addu	$7,$5,$3
	addu	$3,$4,$3
	lw	$7,0($7)
	.option	pic0
	b	$L58
	.option	pic2
	sw	$7,0($3)

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
$L63:
	seb	$2,$6
	bgez	$2,$L65
	sll	$3,$6,2

	jr	$31
	move	$2,$0

$L65:
	addu	$2,$4,$3
	addu	$3,$5,$3
	lw	$2,0($2)
	lw	$3,0($3)
	sltu	$7,$3,$2
	bne	$7,$0,$L66
	nop

	sltu	$2,$2,$3
	beq	$2,$0,$L63
	addiu	$6,$6,-1

	jr	$31
	li	$2,-1			# 0xffffffffffffffff

$L66:
	jr	$31
	li	$2,1			# 0x1

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
	move	$2,$0
	seb	$6,$6
$L69:
	seb	$3,$6
	bgez	$3,$L70
	sll	$3,$6,2

	jr	$31
	sltu	$2,$0,$2

$L70:
	addiu	$6,$6,-1
	addu	$7,$4,$3
	addu	$3,$5,$3
	lw	$7,0($7)
	lw	$3,0($3)
	xor	$3,$7,$3
	.option	pic0
	b	$L69
	.option	pic2
	or	$2,$2,$3

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
	move	$8,$0
	move	$3,$0
	move	$2,$0
$L73:
	slt	$9,$3,$7
	bne	$9,$0,$L74
	addu	$9,$5,$8

	jr	$31
	nop

$L74:
	addu	$11,$6,$8
	addiu	$3,$3,1
	lw	$10,0($9)
	lw	$11,0($11)
	seb	$3,$3
	subu	$9,$10,$2
	subu	$9,$9,$11
	xor	$11,$10,$9
	sltu	$11,$11,1
	sltu	$10,$10,$9
	and	$2,$11,$2
	or	$2,$2,$10
	addu	$10,$4,$8
	addiu	$8,$8,4
	.option	pic0
	b	$L73
	.option	pic2
	sw	$9,0($10)

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
	.frame	$sp,72,$31		# vars= 40, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$6,8			# 0x8
	sw	$31,68($sp)
	move	$12,$5
	lw	$15,%got(__stack_chk_guard)($28)
	move	$14,$4
	.cprestore	16
	lw	$2,0($15)
	sw	$2,60($sp)
	.option	pic0
	jal	uECC_vli_set
	nop

	.option	pic2
	addiu	$6,$sp,28
	lw	$2,44($5)
	li	$7,8			# 0x8
	move	$4,$6
	sw	$0,36($sp)
	sw	$0,32($sp)
	sw	$2,40($sp)
	lw	$2,48($5)
	sw	$0,28($sp)
	sw	$2,44($sp)
	lw	$2,52($5)
	sw	$2,48($sp)
	lw	$2,56($5)
	sw	$2,52($sp)
	lw	$2,60($5)
	move	$5,$6
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	sw	$2,56($sp)

	move	$5,$14
	move	$4,$14
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$13,$2

	addu	$13,$13,$2
	lw	$2,48($12)
	move	$5,$6
	sw	$0,56($sp)
	move	$4,$6
	sw	$2,40($sp)
	lw	$2,52($12)
	sw	$2,44($sp)
	lw	$2,56($12)
	sw	$2,48($sp)
	lw	$2,60($12)
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	sw	$2,52($sp)

	move	$5,$14
	move	$4,$14
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	addu	$13,$13,$2

	sw	$0,48($sp)
	addu	$13,$13,$2
	lw	$2,32($12)
	sw	$0,44($sp)
	sw	$0,40($sp)
	sw	$2,28($sp)
	lw	$2,36($12)
	sw	$2,32($sp)
	lw	$2,40($12)
	sw	$2,36($sp)
	lw	$2,56($12)
	sw	$2,52($sp)
	lw	$2,60($12)
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	sw	$2,56($sp)

	addu	$13,$13,$2
	lw	$2,36($12)
	lw	$3,56($12)
	sw	$2,28($sp)
	lw	$2,40($12)
	sw	$3,44($sp)
	lw	$3,60($12)
	sw	$2,32($sp)
	lw	$2,44($12)
	sw	$3,48($sp)
	sw	$2,36($sp)
	lw	$2,52($12)
	sw	$2,40($sp)
	sw	$2,52($sp)
	lw	$2,32($12)
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	sw	$2,56($sp)

	addu	$13,$13,$2
	lw	$2,44($12)
	sw	$0,48($sp)
	sw	$0,44($sp)
	sw	$2,28($sp)
	lw	$2,48($12)
	sw	$0,40($sp)
	sw	$2,32($sp)
	lw	$2,52($12)
	sw	$2,36($sp)
	lw	$2,32($12)
	sw	$2,52($sp)
	lw	$2,40($12)
	.option	pic0
	jal	uECC_vli_sub
	.option	pic2
	sw	$2,56($sp)

	subu	$13,$13,$2
	lw	$2,48($12)
	sw	$2,28($sp)
	lw	$2,52($12)
	sw	$2,32($sp)
	lw	$2,56($12)
	sw	$2,36($sp)
	lw	$2,60($12)
	sw	$2,40($sp)
	lw	$2,36($12)
	sw	$2,52($sp)
	lw	$2,44($12)
	.option	pic0
	jal	uECC_vli_sub
	.option	pic2
	sw	$2,56($sp)

	subu	$13,$13,$2
	lw	$2,52($12)
	sw	$0,52($sp)
	sw	$2,28($sp)
	lw	$2,56($12)
	sw	$2,32($sp)
	lw	$2,60($12)
	sw	$2,36($sp)
	lw	$2,32($12)
	sw	$2,40($sp)
	lw	$2,36($12)
	sw	$2,44($sp)
	lw	$2,40($12)
	sw	$2,48($sp)
	lw	$2,48($12)
	.option	pic0
	jal	uECC_vli_sub
	.option	pic2
	sw	$2,56($sp)

	subu	$13,$13,$2
	lw	$2,56($12)
	sw	$0,36($sp)
	sw	$2,28($sp)
	lw	$2,60($12)
	sw	$2,32($sp)
	lw	$2,36($12)
	sw	$2,40($sp)
	lw	$2,40($12)
	sw	$2,44($sp)
	lw	$2,44($12)
	sw	$2,48($sp)
	lw	$2,52($12)
	.option	pic0
	jal	uECC_vli_sub
	.option	pic2
	sw	$2,56($sp)

	subu	$12,$13,$2
	bltz	$12,$L85
	lui	$13,%hi(curve_secp256r1+4)

	addiu	$13,$13,%lo(curve_secp256r1+4)
	li	$24,1			# 0x1
$L78:
	bne	$12,$0,$L80
	li	$6,8			# 0x8

	move	$5,$14
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	move	$4,$13

	beq	$2,$24,$L77
	lw	$28,16($sp)

$L80:
	li	$7,8			# 0x8
	move	$6,$13
	move	$5,$14
	.option	pic0
	jal	uECC_vli_sub
	.option	pic2
	move	$4,$14

	.option	pic0
	b	$L78
	.option	pic2
	subu	$12,$12,$2

$L85:
	addiu	$6,$13,%lo(curve_secp256r1+4)
$L79:
	li	$7,8			# 0x8
	move	$5,$14
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$4,$14

	addu	$12,$12,$2
	bltz	$12,$L79
	lw	$28,16($sp)

$L77:
	lw	$3,60($sp)
	lw	$2,0($15)
	beq	$3,$2,$L82
	lw	$31,68($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L82:
	jr	$31
	addiu	$sp,$sp,72

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
	.frame	$sp,72,$31		# vars= 40, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$7,$6
	move	$6,$5
	.cprestore	16
	lw	$12,%got(__stack_chk_guard)($28)
	move	$5,$4
	addiu	$4,$sp,28
	sw	$31,68($sp)
	lw	$2,0($12)
	sw	$2,60($sp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	move	$5,$7
	.option	pic0
	jal	uECC_vli_isZero
	.option	pic2
	move	$8,$2

	lw	$4,60($sp)
	sltu	$8,$0,$8
	lw	$3,0($12)
	sll	$8,$8,1
	sltu	$2,$2,1
	lw	$28,16($sp)
	beq	$4,$3,$L88
	subu	$2,$2,$8

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L88:
	lw	$31,68($sp)
	jr	$31
	addiu	$sp,$sp,72

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	move	$13,$7
	move	$12,$4
	lb	$14,51($sp)
	sw	$31,28($sp)
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$7,$14

	bne	$2,$0,$L91
	move	$5,$4

	move	$6,$14
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	move	$4,$13

	li	$3,1			# 0x1
	beq	$2,$3,$L90
	lw	$31,28($sp)

$L91:
	lw	$31,28($sp)
	addiu	$sp,$sp,32
	move	$7,$14
	move	$6,$13
	move	$5,$12
	.option	pic0
	j	uECC_vli_sub
	.option	pic2
	move	$4,$12

$L90:
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	move	$13,$7
	lb	$7,51($sp)
	sw	$31,28($sp)
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	beq	$2,$0,$L94
	lw	$31,28($sp)

	addiu	$sp,$sp,32
	move	$6,$13
	.option	pic0
	j	uECC_vli_add
	.option	pic2
	move	$5,$4

$L94:
	jr	$31
	addiu	$sp,$sp,32

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
	.frame	$sp,208,$31		# vars= 144, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-208
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,180($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	sw	$18,176($sp)
	move	$18,$4
	sw	$17,172($sp)
	move	$4,$6
	sll	$17,$7,6
	sw	$5,32($sp)
	lw	$2,0($19)
	move	$5,$7
	sw	$31,204($sp)
	sw	$fp,200($sp)
	move	$fp,$6
	sw	$2,164($sp)
	addiu	$2,$sp,100
	sw	$23,196($sp)
	li	$23,32			# 0x20
	sw	$22,192($sp)
	sw	$21,188($sp)
	addiu	$21,$sp,36
	sw	$20,184($sp)
	move	$20,$7
	sw	$16,168($sp)
	.cprestore	16
	.option	pic0
	jal	uECC_vli_numBits
	.option	pic2
	sw	$2,28($sp)

	move	$4,$21
	subu	$17,$17,$2
	seh	$17,$17
	teq	$23,$0,7
	div	$0,$17,$23
	addiu	$16,$17,31
	slt	$2,$17,0
	movz	$16,$17,$2
	sra	$16,$16,5
	seb	$16,$16
	move	$5,$16
	.option	pic0
	jal	uECC_vli_clear
	.option	pic2
	mfhi	$22

	seh	$22,$22
	blez	$22,$L98
	sll	$3,$16,2

	addu	$3,$21,$3
	move	$5,$0
	move	$2,$0
	subu	$23,$23,$22
$L99:
	sltu	$4,$2,$20
	bne	$4,$0,$L100
	sll	$4,$2,2

	addiu	$8,$20,-1
$L109:
	sll	$9,$20,2
	sll	$8,$8,2
	sll	$11,$20,1
	addiu	$2,$8,168
	addu	$10,$21,$9
	li	$7,1			# 0x1
	li	$12,1			# 0x1
	addu	$8,$2,$sp
$L102:
	bgez	$17,$L107
	sll	$6,$7,2

	sll	$7,$7,2
	move	$6,$20
	addiu	$2,$7,168
	move	$4,$18
	addu	$7,$2,$sp
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	lw	$5,-140($7)

	lw	$3,164($sp)
	lw	$2,0($19)
	beq	$3,$2,$L106
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L100:
	addiu	$3,$3,4
	addu	$4,$fp,$4
	addiu	$2,$2,1
	lw	$6,0($4)
	sll	$4,$6,$22
	or	$4,$4,$5
	sw	$4,-4($3)
	.option	pic0
	b	$L99
	.option	pic2
	srl	$5,$6,$23

$L98:
	addu	$4,$21,$3
	move	$6,$20
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$5,$fp

	.option	pic0
	b	$L109
	.option	pic2
	addiu	$8,$20,-1

$L104:
	lw	$2,-140($6)
	addu	$2,$2,$14
	lw	$13,0($2)
	addiu	$2,$14,168
	addu	$2,$2,$sp
	lw	$2,-132($2)
	addu	$2,$4,$2
	subu	$2,$13,$2
	beq	$13,$2,$L103
	nop

	sltu	$4,$13,$2
$L103:
	lw	$13,-140($5)
	addiu	$3,$3,1
	seb	$3,$3
	addu	$13,$13,$14
	sw	$2,0($13)
$L105:
	slt	$2,$3,$11
	bne	$2,$0,$L104
	sll	$14,$3,2

	xor	$4,$7,$4
	move	$5,$20
	xori	$7,$4,0x1
	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$4,$21

	addiu	$2,$9,168
	lw	$3,-132($8)
	addiu	$17,$17,-1
	addu	$2,$2,$sp
	move	$5,$20
	move	$4,$10
	lw	$2,-132($2)
	seh	$17,$17
	sll	$2,$2,31
	or	$2,$2,$3
	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	sw	$2,-132($8)

	.option	pic0
	b	$L102
	nop

	.option	pic2
$L107:
	subu	$5,$12,$7
	addiu	$2,$6,168
	sll	$5,$5,2
	addu	$6,$2,$sp
	addiu	$2,$5,168
	move	$3,$0
	move	$4,$0
	.option	pic0
	b	$L105
	.option	pic2
	addu	$5,$2,$sp

$L106:
	lw	$31,204($sp)
	lw	$fp,200($sp)
	lw	$23,196($sp)
	lw	$22,192($sp)
	lw	$21,188($sp)
	lw	$20,184($sp)
	lw	$19,180($sp)
	lw	$18,176($sp)
	lw	$17,172($sp)
	lw	$16,168($sp)
	jr	$31
	addiu	$sp,$sp,208

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,108($sp)
	sw	$20,112($sp)
	sw	$16,96($sp)
	addiu	$16,$sp,28
	lw	$19,%got(__stack_chk_guard)($28)
	lb	$20,139($sp)
	sw	$18,104($sp)
	move	$18,$7
	sw	$17,100($sp)
	move	$17,$4
	.cprestore	16
	move	$7,$20
	sw	$31,116($sp)
	move	$4,$16
	lw	$2,0($19)
	sw	$2,92($sp)
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	move	$7,$20
	move	$6,$18
	move	$5,$16
	.option	pic0
	jal	uECC_vli_mmod
	.option	pic2
	move	$4,$17

	lw	$3,92($sp)
	lw	$2,0($19)
	beq	$3,$2,$L111
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L111:
	lw	$31,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,112($sp)
	.cprestore	16
	sw	$31,116($sp)
	sw	$18,108($sp)
	move	$18,$4
	sw	$17,104($sp)
	move	$17,$7
	sw	$16,100($sp)
	addiu	$16,$sp,28
	lw	$19,%got(__stack_chk_guard)($28)
	lb	$7,0($7)
	move	$4,$16
	lw	$2,0($19)
	sw	$2,92($sp)
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	move	$5,$16
	lw	$25,172($17)
	jalr	$25
	move	$4,$18

	lw	$3,92($sp)
	lw	$2,0($19)
	beq	$3,$2,$L114
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L114:
	lw	$31,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	jr	$31
	addiu	$sp,$sp,120

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$7,$6
	.option	pic0
	j	uECC_vli_modMult_fast
	.option	pic2
	move	$6,$5

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
	.frame	$sp,144,$31		# vars= 72, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-144
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,136($sp)
	sw	$21,124($sp)
	move	$21,$5
	sw	$17,108($sp)
	move	$17,$4
	sw	$16,104($sp)
	move	$4,$6
	.cprestore	24
	move	$16,$6
	sw	$31,140($sp)
	sw	$23,132($sp)
	sw	$22,128($sp)
	sw	$20,120($sp)
	sw	$19,116($sp)
	sw	$18,112($sp)
	lw	$fp,%got(__stack_chk_guard)($28)
	lb	$18,0($7)
	lw	$2,0($fp)
	move	$5,$18
	sw	$2,100($sp)
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	bne	$2,$0,$L117
	lw	$28,24($sp)

	addiu	$22,$sp,36
	addiu	$23,$sp,68
	move	$19,$7
	move	$6,$7
	move	$5,$21
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$4,$22

	move	$7,$19
	move	$6,$22
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$23

	move	$6,$19
	move	$5,$22
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$4,$22

	addiu	$20,$19,4
	move	$7,$19
	move	$6,$16
	move	$5,$21
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$21

	move	$6,$19
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$4,$16

	move	$7,$20
	move	$6,$16
	sw	$18,16($sp)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$17

	move	$7,$20
	move	$6,$16
	sw	$18,16($sp)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$16

	move	$7,$20
	move	$6,$16
	sw	$18,16($sp)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$16

	move	$7,$19
	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$17

	move	$7,$20
	move	$6,$17
	sw	$18,16($sp)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$16

	move	$7,$20
	sw	$18,16($sp)
	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$17

	lw	$2,0($17)
	andi	$2,$2,0x1
	beq	$2,$0,$L119
	move	$7,$18

	move	$6,$20
	move	$5,$17
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$4,$17

	move	$5,$18
	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$7,$2

	sll	$3,$18,2
	sll	$7,$7,31
	addiu	$3,$3,-4
	addu	$3,$17,$3
	lw	$2,0($3)
	or	$2,$2,$7
	sw	$2,0($3)
	move	$6,$19
$L123:
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$4,$16

	move	$4,$16
	move	$7,$20
	sw	$18,16($sp)
	move	$6,$23
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$5,$16

	move	$7,$20
	move	$6,$23
	sw	$18,16($sp)
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$5,$16

	move	$7,$20
	move	$6,$16
	sw	$18,16($sp)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$23

	move	$7,$19
	move	$6,$23
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$17

	move	$7,$20
	move	$6,$22
	sw	$18,16($sp)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$22

	move	$6,$18
	move	$5,$16
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$17

	move	$5,$21
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$16

	move	$5,$22
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$21

	lw	$28,24($sp)
$L117:
	lw	$3,100($sp)
	lw	$2,0($fp)
	beq	$3,$2,$L121
	lw	$31,140($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L119:
	move	$5,$18
	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$4,$17

	.option	pic0
	b	$L123
	.option	pic2
	move	$6,$19

$L121:
	lw	$fp,136($sp)
	lw	$23,132($sp)
	lw	$22,128($sp)
	lw	$21,124($sp)
	lw	$20,120($sp)
	lw	$19,116($sp)
	lw	$18,112($sp)
	lw	$17,108($sp)
	lw	$16,104($sp)
	jr	$31
	addiu	$sp,$sp,144

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-104
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,88($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	.cprestore	24
	sw	$31,100($sp)
	sw	$20,92($sp)
	sw	$18,84($sp)
	move	$18,$5
	sw	$17,80($sp)
	move	$17,$6
	sw	$16,76($sp)
	addiu	$20,$17,4
	sw	$21,96($sp)
	move	$16,$4
	lw	$2,0($19)
	lb	$21,0($6)
	sw	$0,40($sp)
	sw	$2,68($sp)
	li	$2,3			# 0x3
	sw	$0,44($sp)
	sw	$2,36($sp)
	sw	$0,48($sp)
	sw	$0,52($sp)
	sw	$0,56($sp)
	sw	$0,60($sp)
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	sw	$0,64($sp)

	addiu	$6,$sp,36
	move	$4,$16
	sw	$21,16($sp)
	move	$7,$20
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$5,$16

	move	$7,$17
	move	$6,$18
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$5,$16

	addiu	$6,$17,132
	sw	$21,16($sp)
	move	$7,$20
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$16

	lw	$3,68($sp)
	lw	$2,0($19)
	beq	$3,$2,$L125
	lw	$28,24($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L125:
	lw	$31,100($sp)
	lw	$21,96($sp)
	lw	$20,92($sp)
	lw	$19,88($sp)
	lw	$18,84($sp)
	lw	$17,80($sp)
	lw	$16,76($sp)
	jr	$31
	addiu	$sp,$sp,104

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-184
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,160($sp)
	.cprestore	24
	sw	$31,180($sp)
	sw	$fp,176($sp)
	move	$fp,$5
	sw	$23,172($sp)
	move	$23,$7
	sw	$22,168($sp)
	addiu	$22,$sp,44
	sw	$21,164($sp)
	move	$21,$6
	sw	$19,156($sp)
	move	$6,$4
	sw	$18,152($sp)
	move	$5,$21
	sw	$17,148($sp)
	move	$18,$4
	sw	$16,144($sp)
	move	$4,$22
	lw	$20,200($sp)
	addiu	$19,$sp,76
	lw	$2,%got(__stack_chk_guard)($28)
	addiu	$17,$20,4
	lb	$16,0($20)
	lw	$3,0($2)
	move	$7,$17
	sw	$2,36($sp)
	sw	$16,16($sp)
	sw	$3,140($sp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	move	$6,$20
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$5,$22

	move	$7,$20
	move	$6,$22
	move	$5,$18
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$18

	move	$5,$21
	move	$4,$21
	move	$7,$20
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$6,$22

	move	$7,$17
	move	$6,$fp
	sw	$16,16($sp)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$22

	move	$7,$17
	move	$6,$fp
	sw	$16,16($sp)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$23

	move	$5,$21
	move	$7,$17
	sw	$16,16($sp)
	move	$6,$18
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$19

	move	$7,$20
	move	$6,$19
	move	$5,$fp
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$fp

	move	$7,$17
	move	$6,$21
	sw	$16,16($sp)
	move	$5,$18
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$19

	move	$4,$21
	move	$6,$20
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$5,$23

	move	$5,$21
	move	$4,$21
	sw	$16,16($sp)
	move	$7,$17
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$19

	move	$6,$21
	addiu	$21,$sp,108
	sw	$16,16($sp)
	move	$7,$17
	move	$5,$18
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$21

	move	$7,$20
	move	$6,$21
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$23

	move	$7,$17
	move	$6,$fp
	sw	$16,16($sp)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$23

	move	$6,$20
	move	$5,$22
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$4,$21

	move	$7,$17
	move	$6,$19
	sw	$16,16($sp)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$21

	move	$4,$19
	move	$7,$17
	sw	$16,16($sp)
	move	$6,$18
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$5,$21

	move	$7,$20
	move	$6,$22
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$5,$19

	move	$7,$17
	move	$6,$fp
	sw	$16,16($sp)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$fp

	move	$6,$16
	move	$5,$21
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$18

	lw	$2,36($sp)
	lw	$3,140($sp)
	lw	$28,24($sp)
	lw	$2,0($2)
	beq	$3,$2,$L128
	lw	$31,180($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L128:
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
	.frame	$sp,200,$31		# vars= 136, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-200
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,192($sp)
	lw	$23,%got(__stack_chk_guard)($28)
	sw	$21,184($sp)
	move	$21,$4
	move	$4,$5
	sw	$18,172($sp)
	move	$5,$7
	.cprestore	16
	sw	$31,196($sp)
	move	$18,$6
	sw	$22,188($sp)
	sw	$20,180($sp)
	sw	$19,176($sp)
	sw	$17,168($sp)
	sw	$16,164($sp)
	lw	$2,0($23)
	sw	$2,156($sp)
	.option	pic0
	jal	uECC_vli_isZero
	nop

	.option	pic2
	beq	$2,$0,$L131
	lw	$28,16($sp)

	lw	$3,156($sp)
	lw	$2,0($23)
	beq	$3,$2,$L132
	lw	$31,196($sp)

$L146:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L132:
	move	$4,$21
	lw	$23,192($sp)
	lw	$22,188($sp)
	lw	$21,184($sp)
	lw	$20,180($sp)
	lw	$19,176($sp)
	lw	$18,172($sp)
	lw	$17,168($sp)
	lw	$16,164($sp)
	.option	pic0
	j	uECC_vli_clear
	.option	pic2
	addiu	$sp,$sp,200

$L131:
	addiu	$22,$sp,28
	addiu	$20,$sp,60
	move	$6,$7
	move	$5,$4
	addiu	$17,$sp,92
	move	$4,$22
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$16,$7

	move	$5,$18
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$20

	addiu	$19,$sp,124
	move	$5,$16
	.option	pic0
	jal	uECC_vli_clear
	.option	pic2
	move	$4,$17

	li	$2,1			# 0x1
	move	$5,$16
	move	$4,$19
	.option	pic0
	jal	uECC_vli_clear
	.option	pic2
	sw	$2,92($sp)

	move	$6,$16
$L147:
	move	$5,$20
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	move	$4,$22

	bne	$2,$0,$L140
	lw	$3,28($sp)

	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$21

	lw	$3,156($sp)
	lw	$2,0($23)
	bne	$3,$2,$L146
	lw	$28,16($sp)

	lw	$31,196($sp)
	lw	$23,192($sp)
	lw	$22,188($sp)
	lw	$21,184($sp)
	lw	$20,180($sp)
	lw	$19,176($sp)
	lw	$18,172($sp)
	lw	$17,168($sp)
	lw	$16,164($sp)
	jr	$31
	addiu	$sp,$sp,200

$L140:
	andi	$3,$3,0x1
	bne	$3,$0,$L134
	lw	$3,60($sp)

	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$5,$16

	move	$6,$16
	move	$5,$18
	move	$4,$17
$L143:
	.option	pic0
	jal	vli_modInv_update
	nop

	.option	pic2
	.option	pic0
	b	$L147
	.option	pic2
	move	$6,$16

$L134:
	andi	$3,$3,0x1
	bne	$3,$0,$L136
	nop

	move	$5,$16
	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$4,$20

	move	$6,$16
	move	$5,$18
	.option	pic0
	b	$L143
	.option	pic2
	move	$4,$19

$L136:
	blez	$2,$L137
	move	$7,$16

	move	$6,$20
	.option	pic0
	jal	uECC_vli_sub
	.option	pic2
	move	$5,$22

	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$5,$16

	move	$6,$16
	move	$5,$19
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	move	$4,$17

	bgez	$2,$L148
	move	$7,$16

	move	$6,$18
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$5,$17

	move	$7,$16
$L148:
	move	$6,$19
	move	$5,$17
	move	$4,$17
$L144:
	.option	pic0
	jal	uECC_vli_sub
	nop

	.option	pic2
	move	$6,$16
	.option	pic0
	b	$L143
	.option	pic2
	move	$5,$18

$L137:
	move	$6,$22
	.option	pic0
	jal	uECC_vli_sub
	.option	pic2
	move	$4,$20

	.option	pic0
	jal	uECC_vli_rshift1
	.option	pic2
	move	$5,$16

	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	move	$4,$19

	bgez	$2,$L139
	nop

	move	$7,$16
	move	$6,$18
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$5,$19

$L139:
	move	$7,$16
	move	$6,$17
	move	$5,$19
	.option	pic0
	b	$L144
	.option	pic2
	move	$4,$19

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$5,0($5)
	sll	$5,$5,1
	.option	pic0
	j	uECC_vli_isZero
	.option	pic2
	seb	$5,$5

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-96
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,88($sp)
	sw	$16,68($sp)
	addiu	$16,$sp,28
	lw	$21,%got(__stack_chk_guard)($28)
	sw	$18,76($sp)
	move	$18,$6
	sw	$20,84($sp)
	move	$6,$7
	move	$20,$4
	sw	$19,80($sp)
	sw	$17,72($sp)
	move	$19,$5
	.cprestore	16
	move	$17,$7
	sw	$31,92($sp)
	move	$5,$18
	lw	$2,0($21)
	move	$4,$16
	sw	$2,60($sp)
	.option	pic0
	jal	uECC_vli_modSquare_fast
	nop

	.option	pic2
	move	$7,$17
	move	$6,$16
	move	$5,$20
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$20

	move	$7,$17
	move	$6,$18
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$16

	move	$7,$17
	move	$6,$16
	move	$5,$19
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$19

	lw	$3,60($sp)
	lw	$2,0($21)
	beq	$3,$2,$L152
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L152:
	lw	$31,92($sp)
	lw	$21,88($sp)
	lw	$20,84($sp)
	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	jr	$31
	addiu	$sp,$sp,96

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-112
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,88($sp)
	sw	$fp,104($sp)
	.cprestore	24
	sw	$31,108($sp)
	sw	$23,100($sp)
	move	$23,$5
	sw	$22,96($sp)
	sw	$21,92($sp)
	move	$21,$4
	sw	$19,84($sp)
	move	$19,$7
	sw	$17,76($sp)
	addiu	$17,$sp,36
	sw	$16,72($sp)
	move	$16,$6
	sw	$18,80($sp)
	move	$6,$4
	lw	$20,128($sp)
	move	$4,$17
	lw	$fp,%got(__stack_chk_guard)($28)
	move	$5,$16
	addiu	$22,$20,4
	lb	$18,0($20)
	lw	$2,0($fp)
	move	$7,$22
	sw	$18,16($sp)
	sw	$2,68($sp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	move	$6,$20
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$5,$17

	move	$7,$20
	move	$6,$17
	move	$5,$21
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$21

	move	$7,$20
	move	$6,$17
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$16

	move	$7,$22
	move	$6,$23
	sw	$18,16($sp)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$19

	move	$6,$20
	move	$5,$19
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$4,$17

	move	$4,$17
	move	$7,$22
	sw	$18,16($sp)
	move	$6,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$5,$17

	move	$7,$22
	move	$6,$16
	sw	$18,16($sp)
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$5,$17

	move	$7,$22
	move	$6,$21
	sw	$18,16($sp)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$16

	move	$7,$20
	move	$6,$16
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$23

	move	$7,$22
	move	$6,$17
	sw	$18,16($sp)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$16

	move	$7,$20
	move	$6,$16
	move	$5,$19
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$19

	move	$7,$22
	move	$6,$23
	sw	$18,16($sp)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$19

	move	$6,$18
	move	$5,$17
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$16

	lw	$3,68($sp)
	lw	$2,0($fp)
	beq	$3,$2,$L155
	lw	$28,24($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L155:
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
	.frame	$sp,280,$31		# vars= 208, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-280
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$8,$7
	sw	$22,264($sp)
	sw	$17,244($sp)
	lw	$22,%got(__stack_chk_guard)($28)
	lw	$17,300($sp)
	sw	$31,276($sp)
	sw	$fp,272($sp)
	move	$fp,$6
	sw	$23,268($sp)
	sw	$20,256($sp)
	addiu	$20,$sp,204
	sw	$16,240($sp)
	addiu	$16,$sp,76
	.cprestore	24
	sw	$21,260($sp)
	sw	$19,252($sp)
	sw	$18,248($sp)
	lw	$2,0($22)
	lb	$21,0($17)
	sw	$4,44($sp)
	sw	$2,236($sp)
	addiu	$2,$sp,140
	move	$6,$21
	sw	$5,48($sp)
	move	$4,$2
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	sw	$2,36($sp)

	sll	$23,$21,2
	lw	$2,48($sp)
	move	$4,$20
	addu	$2,$2,$23
	move	$5,$2
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	sw	$2,40($sp)

	beq	$8,$0,$L158
	move	$5,$8

	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$16

$L159:
	lw	$5,36($sp)
	addiu	$18,$sp,108
	addiu	$19,$sp,172
	move	$6,$21
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$18

	move	$5,$20
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$4,$19

	move	$7,$17
	lw	$4,36($sp)
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$6,$16

	move	$5,$20
	lw	$25,164($17)
	move	$7,$17
	lw	$4,36($sp)
	move	$6,$16
	jalr	$25
	li	$20,1			# 0x1

	move	$7,$17
	move	$6,$16
	move	$5,$19
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$18

	lh	$3,298($sp)
	addiu	$3,$3,-2
	seh	$3,$3
$L160:
	bgtz	$3,$L161
	nop

	lw	$2,0($fp)
	sw	$17,16($sp)
	andi	$20,$2,0x1
	nor	$2,$0,$2
	andi	$2,$2,0x1
	sll	$20,$20,5
	sll	$2,$2,5
	addu	$fp,$18,$20
	addu	$3,$18,$2
	addu	$20,$19,$20
	addu	$2,$19,$2
	sw	$3,56($sp)
	move	$6,$3
	move	$7,$2
	sw	$2,60($sp)
	move	$5,$20
	.option	pic0
	jal	XYcZ_addC
	.option	pic2
	move	$4,$fp

	addiu	$8,$17,4
	lw	$5,36($sp)
	move	$4,$16
	move	$7,$8
	sw	$21,16($sp)
	move	$6,$18
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	sw	$8,52($sp)

	move	$7,$17
	move	$6,$20
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$5,$16

	move	$7,$17
	lw	$6,48($sp)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$16

	move	$7,$21
	lw	$8,52($sp)
	move	$5,$16
	move	$4,$16
	.option	pic0
	jal	uECC_vli_modInv
	.option	pic2
	move	$6,$8

	move	$7,$17
	lw	$6,40($sp)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$16

	move	$7,$17
	move	$6,$fp
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modMult_fast
	.option	pic2
	move	$4,$16

	move	$7,$20
	lw	$3,56($sp)
	move	$6,$fp
	lw	$2,60($sp)
	sw	$17,16($sp)
	move	$4,$3
	.option	pic0
	jal	XYcZ_add
	.option	pic2
	move	$5,$2

	move	$7,$17
	move	$6,$16
	move	$5,$19
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$18

	move	$6,$21
	lw	$4,44($sp)
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	move	$5,$18

	move	$5,$19
	lw	$2,44($sp)
	.option	pic0
	jal	uECC_vli_set
	.option	pic2
	addu	$4,$2,$23

	lw	$3,236($sp)
	lw	$2,0($22)
	beq	$3,$2,$L162
	lw	$28,24($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L158:
	move	$5,$21
	.option	pic0
	jal	uECC_vli_clear
	.option	pic2
	move	$4,$16

	li	$2,1			# 0x1
	.option	pic0
	b	$L159
	.option	pic2
	sw	$2,76($sp)

$L161:
	move	$5,$3
	sw	$3,68($sp)
	.option	pic0
	jal	uECC_vli_testBit
	.option	pic2
	move	$4,$fp

	sltu	$2,$2,1
	sw	$17,16($sp)
	subu	$5,$20,$2
	sll	$2,$2,5
	sll	$5,$5,5
	addu	$8,$18,$2
	addu	$2,$19,$2
	addu	$4,$18,$5
	sw	$8,60($sp)
	addu	$5,$19,$5
	sw	$2,64($sp)
	move	$7,$2
	sw	$4,52($sp)
	move	$6,$8
	.option	pic0
	jal	XYcZ_addC
	.option	pic2
	sw	$5,56($sp)

	lw	$5,56($sp)
	lw	$4,52($sp)
	lw	$2,64($sp)
	lw	$8,60($sp)
	move	$7,$5
	move	$6,$4
	sw	$17,16($sp)
	move	$5,$2
	.option	pic0
	jal	XYcZ_add
	.option	pic2
	move	$4,$8

	lw	$3,68($sp)
	addiu	$3,$3,-1
	.option	pic0
	b	$L160
	.option	pic2
	seh	$3,$3

$L162:
	lw	$31,276($sp)
	lw	$fp,272($sp)
	lw	$23,268($sp)
	lw	$22,264($sp)
	lw	$21,260($sp)
	lw	$20,256($sp)
	lw	$19,252($sp)
	lw	$18,248($sp)
	lw	$17,244($sp)
	lw	$16,240($sp)
	jr	$31
	addiu	$sp,$sp,280

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lh	$14,2($7)
	move	$13,$5
	move	$15,$6
	addiu	$sp,$sp,-32
	addiu	$5,$14,31
	addiu	$2,$14,62
	slt	$6,$5,0
	sw	$31,28($sp)
	movz	$2,$5,$6
	move	$3,$7
	addiu	$6,$3,36
	move	$5,$4
	move	$4,$13
	sra	$2,$2,5
	li	$12,1			# 0x1
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	seb	$7,$2

	bne	$2,$0,$L169
	move	$5,$13

	sll	$2,$7,5
	slt	$2,$14,$2
	beq	$2,$0,$L169
	move	$12,$0

	.option	pic0
	jal	uECC_vli_testBit
	.option	pic2
	move	$5,$14

	sltu	$12,$0,$2
	move	$5,$13
$L169:
	.option	pic0
	jal	uECC_vli_add
	.option	pic2
	move	$4,$15

	move	$2,$12
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-128
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,120($sp)
	lw	$18,%got(__stack_chk_guard)($28)
	sw	$17,116($sp)
	move	$17,$4
	sw	$16,112($sp)
	move	$4,$5
	move	$16,$6
	.cprestore	24
	sw	$31,124($sp)
	addiu	$5,$sp,44
	lw	$2,0($18)
	addiu	$6,$sp,76
	move	$7,$16
	sw	$5,36($sp)
	sw	$6,40($sp)
	sw	$2,108($sp)
	.option	pic0
	jal	regularize_k
	nop

	.option	pic2
	addiu	$5,$16,68
	sw	$16,20($sp)
	sltu	$2,$2,1
	lhu	$3,2($16)
	sll	$2,$2,2
	move	$7,$0
	addiu	$2,$2,112
	addiu	$3,$3,1
	addu	$2,$2,$sp
	seh	$3,$3
	sw	$3,16($sp)
	move	$4,$17
	.option	pic0
	jal	EccPoint_mult
	.option	pic2
	lw	$6,-76($2)

	move	$4,$17
	.option	pic0
	jal	EccPoint_isZero
	.option	pic2
	move	$5,$16

	lw	$4,108($sp)
	lw	$3,0($18)
	beq	$4,$3,$L171
	lw	$28,24($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L171:
	lw	$31,124($sp)
	sltu	$2,$2,1
	lw	$18,120($sp)
	lw	$17,116($sp)
	lw	$16,112($sp)
	jr	$31
	addiu	$sp,$sp,128

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
	move	$2,$0
	addiu	$8,$5,-1
	li	$9,-4			# 0xfffffffffffffffc
$L174:
	slt	$3,$2,$5
	bne	$3,$0,$L175
	subu	$3,$8,$2

	jr	$31
	nop

$L175:
	addu	$10,$4,$2
	and	$7,$3,$9
	addu	$7,$6,$7
	sll	$3,$3,3
	addiu	$2,$2,1
	lw	$7,0($7)
	seb	$2,$2
	srl	$3,$7,$3
	.option	pic0
	b	$L174
	.option	pic2
	sb	$3,0($10)

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
	addiu	$3,$6,3
	addiu	$2,$6,6
	sw	$18,32($sp)
	move	$18,$5
	slt	$5,$3,0
	sw	$16,24($sp)
	movz	$2,$3,$5
	move	$16,$6
	sw	$17,28($sp)
	move	$17,$4
	sw	$31,36($sp)
	sra	$2,$2,2
	.option	pic0
	jal	uECC_vli_clear
	.option	pic2
	seb	$5,$2

	move	$2,$0
	addiu	$7,$16,-1
	li	$8,-4			# 0xfffffffffffffffc
$L179:
	slt	$3,$2,$16
	bne	$3,$0,$L180
	subu	$6,$7,$2

	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

$L180:
	addu	$4,$18,$2
	and	$3,$6,$8
	addu	$3,$17,$3
	lbu	$5,0($4)
	sll	$6,$6,3
	addiu	$2,$2,1
	lw	$4,0($3)
	sll	$5,$5,$6
	seb	$2,$2
	or	$4,$4,$5
	.option	pic0
	b	$L179
	.option	pic2
	sw	$4,0($3)

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
	sw	$22,48($sp)
	lui	$22,%hi(g_rng_function)
	sw	$19,36($sp)
	move	$19,$5
	sw	$16,24($sp)
	move	$5,$6
	move	$16,$4
	sw	$31,60($sp)
	move	$4,$19
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$18,32($sp)
	.option	pic0
	jal	uECC_vli_numBits
	.option	pic2
	sw	$17,28($sp)

	lw	$3,%lo(g_rng_function)($22)
	beq	$3,$0,$L183
	sll	$21,$6,2

	subu	$2,$0,$2
	addiu	$18,$21,-4
	li	$23,-1			# 0xffffffffffffffff
	addu	$18,$16,$18
	srl	$23,$23,$2
	li	$20,64			# 0x40
	li	$fp,1			# 0x1
	move	$17,$6
	lw	$25,%lo(g_rng_function)($22)
$L196:
	move	$5,$21
	jalr	$25
	move	$4,$16

	beq	$2,$0,$L183
	move	$5,$17

	lw	$2,0($18)
	move	$4,$16
	and	$2,$2,$23
	.option	pic0
	jal	uECC_vli_isZero
	.option	pic2
	sw	$2,0($18)

	bne	$2,$0,$L184
	move	$6,$17

	move	$5,$16
	.option	pic0
	jal	uECC_vli_cmp
	.option	pic2
	move	$4,$19

	beq	$2,$fp,$L182
	li	$2,1			# 0x1

$L184:
	addiu	$20,$20,-1
	bne	$20,$0,$L196
	lw	$25,%lo(g_rng_function)($22)

$L183:
	move	$2,$0
$L182:
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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,112($sp)
	lw	$20,%got(__stack_chk_guard)($28)
	sw	$16,96($sp)
	move	$16,$5
	.cprestore	16
	sw	$31,116($sp)
	sw	$19,108($sp)
	sw	$18,104($sp)
	sw	$17,100($sp)
	lw	$2,0($20)
	lb	$19,0($5)
	sw	$2,92($sp)
	.option	pic0
	jal	EccPoint_isZero
	nop

	.option	pic2
	li	$3,-1			# 0xffffffffffffffff
	bne	$2,$0,$L197
	lw	$28,16($sp)

	move	$5,$4
	move	$17,$4
	addiu	$4,$16,4
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	move	$6,$19

	li	$3,-2			# 0xfffffffffffffffe
	move	$8,$2
	li	$2,1			# 0x1
	bne	$8,$2,$L197
	lw	$28,16($sp)

	sll	$5,$19,2
	move	$6,$19
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	addu	$5,$17,$5

	li	$3,-2			# 0xfffffffffffffffe
	bne	$2,$8,$L197
	lw	$28,16($sp)

	addiu	$18,$sp,28
	move	$6,$16
	.option	pic0
	jal	uECC_vli_modSquare_fast
	.option	pic2
	move	$4,$18

	move	$6,$16
	lw	$25,168($16)
	addiu	$16,$sp,60
	move	$5,$17
	jalr	$25
	move	$4,$16

	move	$6,$19
	move	$5,$16
	.option	pic0
	jal	uECC_vli_equal
	.option	pic2
	move	$4,$18

	li	$3,-3			# 0xfffffffffffffffd
	lw	$28,16($sp)
	movz	$3,$0,$2
$L197:
	lw	$4,92($sp)
	lw	$2,0($20)
	beq	$4,$2,$L199
	lw	$31,116($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L199:
	move	$2,$3
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

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
	.frame	$sp,120,$31		# vars= 72, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,108($sp)
	.cprestore	16
	sw	$31,116($sp)
	sw	$18,104($sp)
	move	$18,$4
	sw	$17,100($sp)
	addiu	$17,$sp,28
	sw	$16,96($sp)
	move	$16,$5
	sw	$20,112($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lb	$20,1($5)
	move	$5,$4
	move	$4,$17
	lw	$2,0($19)
	move	$6,$20
	sw	$2,92($sp)
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	addu	$5,$18,$20
	lb	$4,0($16)
	move	$6,$20
	sll	$4,$4,2
	.option	pic0
	jal	uECC_vli_bytesToNative
	.option	pic2
	addu	$4,$17,$4

	li	$6,16			# 0x10
	addiu	$5,$16,68
	.option	pic0
	jal	uECC_vli_cmp_unsafe
	.option	pic2
	move	$4,$17

	move	$3,$2
	lw	$28,16($sp)
	beq	$3,$0,$L205
	li	$2,-4			# 0xfffffffffffffffc

	.option	pic0
	jal	uECC_valid_point
	.option	pic2
	move	$5,$16

	lw	$28,16($sp)
$L205:
	lw	$4,92($sp)
	lw	$3,0($19)
	beq	$4,$3,$L207
	lw	$31,116($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L207:
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

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
	.frame	$sp,152,$31		# vars= 104, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-152
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,144($sp)
	sw	$16,128($sp)
	lw	$20,%got(__stack_chk_guard)($28)
	lh	$16,2($6)
	sw	$17,132($sp)
	move	$17,$6
	sw	$19,140($sp)
	addiu	$19,$sp,28
	lw	$2,0($20)
	addiu	$6,$16,14
	sw	$18,136($sp)
	move	$18,$5
	move	$5,$4
	.cprestore	16
	sw	$2,124($sp)
	addiu	$2,$16,7
	move	$4,$19
	sw	$31,148($sp)
	slt	$3,$2,0
	movz	$6,$2,$3
	.option	pic0
	jal	uECC_vli_bytesToNative
	.option	pic2
	sra	$6,$6,3

	addiu	$2,$16,31
	addiu	$16,$16,62
	slt	$3,$2,0
	movz	$16,$2,$3
	move	$4,$19
	sra	$16,$16,5
	.option	pic0
	jal	uECC_vli_isZero
	.option	pic2
	seb	$5,$16

	beq	$2,$0,$L212
	lw	$28,16($sp)

$L214:
	move	$2,$0
$L211:
	lw	$4,124($sp)
	lw	$3,0($20)
	beq	$4,$3,$L215
	lw	$31,148($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L212:
	addiu	$4,$17,36
	move	$6,$5
	.option	pic0
	jal	uECC_vli_cmp
	.option	pic2
	move	$5,$19

	li	$3,1			# 0x1
	bne	$2,$3,$L214
	lw	$28,16($sp)

	addiu	$16,$sp,60
	move	$6,$17
	move	$5,$19
	.option	pic0
	jal	EccPoint_compute_public_key
	.option	pic2
	move	$4,$16

	beq	$2,$0,$L214
	lw	$28,16($sp)

	lb	$5,1($17)
	move	$6,$16
	.option	pic0
	jal	uECC_vli_nativeToBytes
	.option	pic2
	move	$4,$18

	lb	$6,0($17)
	lb	$5,1($17)
	sll	$6,$6,2
	addu	$4,$18,$5
	.option	pic0
	jal	uECC_vli_nativeToBytes
	.option	pic2
	addu	$6,$16,$6

	li	$2,1			# 0x1
	.option	pic0
	b	$L211
	.option	pic2
	lw	$28,16($sp)

$L215:
	lw	$20,144($sp)
	lw	$19,140($sp)
	lw	$18,136($sp)
	lw	$17,132($sp)
	lw	$16,128($sp)
	jr	$31
	addiu	$sp,$sp,152

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
