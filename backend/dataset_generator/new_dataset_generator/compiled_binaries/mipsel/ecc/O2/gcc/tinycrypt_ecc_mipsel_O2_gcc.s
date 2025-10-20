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
	.ent	uECC_vli_mult
	.type	uECC_vli_mult, @function
uECC_vli_mult:
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$18,12($sp)
	sw	$17,8($sp)
	blez	$7,$L13
	sw	$16,4($sp)

	move	$24,$0
	move	$11,$0
	move	$2,$0
	move	$16,$4
$L3:
	move	$13,$2
	move	$3,$0
	move	$2,$11
	move	$11,$0
	seb	$25,$24
$L6:
	subu	$8,$24,$3
	sll	$9,$3,2
	sll	$8,$8,2
	addu	$9,$5,$9
	addu	$8,$6,$8
	addiu	$3,$3,1
	lw	$9,0($9)
	li	$12,1			# 0x1
	lw	$8,0($8)
	seb	$3,$3
	slt	$14,$25,$3
	multu	$8,$9
	mflo	$8
	mfhi	$9
	addu	$10,$8,$13
	addu	$13,$9,$2
	sltu	$2,$10,$8
	addu	$2,$2,$13
	sltu	$15,$2,$9
	bne	$15,$0,$L4
	move	$13,$10

	beq	$2,$9,$L20
	nop

	move	$12,$0
$L4:
$L22:
	beq	$14,$0,$L6
	addu	$11,$11,$12

	addiu	$24,$24,1
	sw	$10,0($16)
	bne	$7,$24,$L3
	addiu	$16,$16,4

$L2:
	sll	$16,$7,1
	addiu	$16,$16,-1
	slt	$3,$7,$16
	beq	$3,$0,$L7
	move	$12,$7

	li	$25,1			# 0x1
	andi	$17,$7,0x00ff
	move	$24,$7
$L12:
	seb	$10,$25
	slt	$3,$10,$7
	beq	$3,$0,$L14
	subu	$15,$17,$25

	subu	$12,$12,$10
	andi	$15,$15,0x00ff
	addu	$15,$15,$10
	sll	$12,$12,2
	sll	$10,$10,2
	sll	$15,$15,2
	move	$14,$2
	addu	$10,$5,$10
	move	$2,$11
	addu	$12,$6,$12
	addu	$15,$5,$15
	move	$11,$0
$L11:
	lw	$8,0($10)
	li	$13,1			# 0x1
	lw	$3,0($12)
	addiu	$10,$10,4
	addiu	$12,$12,-4
	multu	$8,$3
	mflo	$8
	mfhi	$9
	addu	$3,$8,$14
	addu	$14,$9,$2
	sltu	$2,$3,$8
	addu	$2,$2,$14
	sltu	$18,$2,$9
	bne	$18,$0,$L9
	move	$14,$3

	beq	$2,$9,$L21
	sltu	$3,$3,$8

	move	$13,$0
$L9:
$L23:
	bne	$15,$10,$L11
	addu	$11,$11,$13

	sll	$3,$24,2
	addiu	$24,$24,1
	addu	$3,$4,$3
	seb	$24,$24
	addiu	$25,$25,1
	slt	$8,$24,$16
	sw	$14,0($3)
	move	$12,$24
	bne	$8,$0,$L12
	andi	$25,$25,0x00ff

$L7:
	sll	$7,$7,3
$L24:
	lw	$18,12($sp)
	lw	$17,8($sp)
	addu	$4,$4,$7
	lw	$16,4($sp)
	sw	$2,-4($4)
	jr	$31
	addiu	$sp,$sp,16

$L20:
	sltu	$8,$10,$8
	bne	$8,$0,$L4
	nop

	.option	pic0
	b	$L22
	.option	pic2
	move	$12,$0

$L21:
	bne	$3,$0,$L9
	nop

	.option	pic0
	b	$L23
	.option	pic2
	move	$13,$0

$L14:
	sll	$3,$24,2
	addiu	$24,$24,1
	addu	$3,$4,$3
	seb	$24,$24
	addiu	$25,$25,1
	move	$14,$2
	slt	$8,$24,$16
	sw	$14,0($3)
	move	$2,$11
	move	$12,$24
	move	$11,$0
	bne	$8,$0,$L12
	andi	$25,$25,0x00ff

	.option	pic0
	b	$L24
	.option	pic2
	sll	$7,$7,3

$L13:
	move	$11,$0
	.option	pic0
	b	$L2
	.option	pic2
	move	$2,$0

	.set	macro
	.set	reorder
	.end	uECC_vli_mult
	.size	uECC_vli_mult, .-uECC_vli_mult
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
	addiu	$7,$5,32
	sw	$31,68($sp)
	move	$2,$5
	lw	$11,%got(__stack_chk_guard)($28)
	move	$3,$4
	.cprestore	16
	lw	$6,0($11)
	sw	$6,60($sp)
$L26:
	lw	$6,0($2)
	addiu	$2,$2,4
	addiu	$3,$3,4
	bne	$2,$7,$L26
	sw	$6,-4($3)

	lw	$10,48($5)
	addiu	$6,$sp,28
	lw	$7,52($5)
	addiu	$8,$sp,60
	lw	$3,56($5)
	move	$13,$0
	lw	$2,60($5)
	move	$9,$6
	lw	$12,44($5)
	sw	$0,36($sp)
	sw	$0,32($sp)
	sw	$0,28($sp)
	sw	$12,40($sp)
	sw	$10,44($sp)
	sw	$7,48($sp)
	sw	$3,52($sp)
	sw	$2,56($sp)
$L27:
	lw	$2,0($9)
	addiu	$9,$9,4
	sll	$7,$2,1
	addu	$7,$7,$13
	xor	$3,$2,$7
	sw	$7,-4($9)
	sltu	$3,$3,1
	and	$3,$3,$13
	sltu	$2,$7,$2
	bne	$8,$9,$L27
	or	$13,$3,$2

	addiu	$9,$4,32
	move	$3,$0
	move	$14,$6
	move	$10,$4
$L28:
	lw	$7,0($10)
	addiu	$10,$10,4
	lw	$2,0($14)
	addiu	$14,$14,4
	addu	$2,$7,$2
	addu	$2,$2,$3
	xor	$12,$7,$2
	sw	$2,-4($10)
	sltu	$12,$12,1
	and	$3,$12,$3
	sltu	$7,$2,$7
	bne	$9,$10,$L28
	or	$3,$3,$7

	addu	$10,$3,$13
	lw	$14,52($5)
	lw	$13,56($5)
	move	$7,$0
	lw	$2,60($5)
	move	$12,$6
	lw	$3,48($5)
	sw	$14,44($sp)
	sw	$13,48($sp)
	sw	$3,40($sp)
	sw	$2,52($sp)
	sw	$0,56($sp)
$L29:
	lw	$2,0($12)
	addiu	$12,$12,4
	sll	$3,$2,1
	addu	$3,$3,$7
	xor	$13,$2,$3
	sw	$3,-4($12)
	sltu	$13,$13,1
	and	$7,$13,$7
	sltu	$2,$3,$2
	bne	$8,$12,$L29
	or	$7,$7,$2

	addu	$10,$10,$7
	move	$7,$0
	move	$13,$6
	move	$8,$4
$L30:
	lw	$3,0($8)
	addiu	$8,$8,4
	lw	$2,0($13)
	addiu	$13,$13,4
	addu	$2,$3,$2
	addu	$2,$2,$7
	xor	$12,$3,$2
	sw	$2,-4($8)
	sltu	$12,$12,1
	and	$7,$12,$7
	sltu	$3,$2,$3
	bne	$9,$8,$L30
	or	$7,$7,$3

	lw	$14,36($5)
	addu	$10,$10,$7
	lw	$12,40($5)
	move	$7,$0
	lw	$15,32($5)
	move	$13,$6
	lw	$2,60($5)
	move	$8,$4
	lw	$3,56($5)
	sw	$15,28($sp)
	sw	$14,32($sp)
	sw	$12,36($sp)
	sw	$0,48($sp)
	sw	$0,44($sp)
	sw	$0,40($sp)
	sw	$3,52($sp)
	sw	$2,56($sp)
$L31:
	lw	$3,0($8)
	addiu	$8,$8,4
	lw	$2,0($13)
	addiu	$13,$13,4
	addu	$2,$3,$2
	addu	$2,$2,$7
	xor	$12,$3,$2
	sw	$2,-4($8)
	sltu	$12,$12,1
	and	$7,$12,$7
	sltu	$3,$2,$3
	bne	$9,$8,$L31
	or	$7,$7,$3

	lw	$2,52($5)
	addu	$10,$10,$7
	lw	$3,32($5)
	move	$7,$0
	lw	$25,40($5)
	move	$13,$6
	lw	$24,44($5)
	move	$8,$4
	lw	$14,56($5)
	lw	$12,60($5)
	lw	$15,36($5)
	sw	$25,32($sp)
	sw	$24,36($sp)
	sw	$15,28($sp)
	sw	$2,40($sp)
	sw	$14,44($sp)
	sw	$12,48($sp)
	sw	$2,52($sp)
	sw	$3,56($sp)
$L32:
	lw	$3,0($8)
	addiu	$8,$8,4
	lw	$2,0($13)
	addiu	$13,$13,4
	addu	$2,$3,$2
	addu	$2,$2,$7
	xor	$12,$3,$2
	sw	$2,-4($8)
	sltu	$12,$12,1
	and	$7,$12,$7
	sltu	$3,$2,$3
	bne	$9,$8,$L32
	or	$7,$7,$3

	lw	$14,48($5)
	addu	$10,$10,$7
	lw	$12,52($5)
	move	$7,$0
	lw	$15,44($5)
	move	$13,$6
	lw	$2,40($5)
	move	$8,$4
	lw	$3,32($5)
	sw	$15,28($sp)
	sw	$14,32($sp)
	sw	$12,36($sp)
	sw	$0,48($sp)
	sw	$0,44($sp)
	sw	$0,40($sp)
	sw	$3,52($sp)
	sw	$2,56($sp)
$L33:
	lw	$2,0($8)
	addiu	$8,$8,4
	lw	$12,0($13)
	addiu	$13,$13,4
	subu	$3,$2,$7
	subu	$3,$3,$12
	xor	$12,$2,$3
	sw	$3,-4($8)
	sltu	$12,$12,1
	and	$7,$12,$7
	sltu	$2,$2,$3
	bne	$9,$8,$L33
	or	$7,$7,$2

	lw	$15,52($5)
	subu	$10,$10,$7
	lw	$14,56($5)
	move	$7,$0
	lw	$12,60($5)
	move	$13,$6
	lw	$24,48($5)
	move	$8,$4
	lw	$2,44($5)
	lw	$3,36($5)
	sw	$24,28($sp)
	sw	$15,32($sp)
	sw	$14,36($sp)
	sw	$12,40($sp)
	sw	$3,52($sp)
	sw	$2,56($sp)
$L34:
	lw	$2,0($8)
	addiu	$8,$8,4
	lw	$12,0($13)
	addiu	$13,$13,4
	subu	$3,$2,$7
	subu	$3,$3,$12
	xor	$12,$2,$3
	sw	$3,-4($8)
	sltu	$12,$12,1
	and	$7,$12,$7
	sltu	$2,$2,$3
	bne	$9,$8,$L34
	or	$7,$7,$2

	lw	$14,32($5)
	subu	$10,$10,$7
	lw	$12,36($5)
	move	$7,$0
	lw	$3,40($5)
	move	$13,$6
	lw	$25,56($5)
	move	$8,$4
	lw	$15,60($5)
	lw	$24,52($5)
	lw	$2,48($5)
	sw	$25,32($sp)
	sw	$24,28($sp)
	sw	$15,36($sp)
	sw	$14,40($sp)
	sw	$12,44($sp)
	sw	$3,48($sp)
	sw	$0,52($sp)
	sw	$2,56($sp)
$L35:
	lw	$2,0($8)
	addiu	$8,$8,4
	lw	$12,0($13)
	addiu	$13,$13,4
	subu	$3,$2,$7
	subu	$3,$3,$12
	xor	$12,$2,$3
	sw	$3,-4($8)
	sltu	$12,$12,1
	and	$7,$12,$7
	sltu	$2,$2,$3
	bne	$8,$9,$L35
	or	$7,$7,$2

	lw	$14,60($5)
	subu	$10,$10,$7
	lw	$15,56($5)
	move	$7,$0
	lw	$13,36($5)
	move	$8,$4
	lw	$12,40($5)
	lw	$3,44($5)
	lw	$2,52($5)
	sw	$15,28($sp)
	sw	$14,32($sp)
	sw	$0,36($sp)
	sw	$13,40($sp)
	sw	$12,44($sp)
	sw	$3,48($sp)
	sw	$2,56($sp)
$L36:
	lw	$2,0($8)
	addiu	$8,$8,4
	lw	$5,0($6)
	addiu	$6,$6,4
	subu	$3,$2,$7
	subu	$3,$3,$5
	xor	$5,$2,$3
	sw	$3,-4($8)
	sltu	$5,$5,1
	and	$7,$5,$7
	sltu	$2,$2,$3
	bne	$8,$9,$L36
	or	$7,$7,$2

	lui	$12,%hi(curve_secp256r1)
	subu	$10,$10,$7
	bltz	$10,$L39
	addiu	$12,$12,%lo(curve_secp256r1)

	lui	$13,%hi(curve_secp256r1+32)
	addiu	$14,$4,28
	addiu	$13,$13,%lo(curve_secp256r1+32)
$L37:
	bne	$10,$0,$L41
	move	$3,$13

	.option	pic0
	b	$L43
	.option	pic2
	move	$5,$14

$L63:
	bne	$2,$0,$L41
	addiu	$3,$3,-4

	beq	$12,$3,$L41
	addiu	$5,$5,-4

$L43:
	lw	$2,0($3)
	lw	$6,0($5)
	sltu	$7,$6,$2
	beq	$7,$0,$L63
	sltu	$2,$2,$6

$L25:
	lw	$3,60($sp)
	lw	$2,0($11)
	bne	$3,$2,$L64
	lw	$31,68($sp)

	jr	$31
	addiu	$sp,$sp,72

$L65:
	beq	$10,$0,$L25
	nop

$L39:
	move	$5,$0
	move	$8,$12
	move	$6,$4
$L38:
	lw	$3,0($6)
	addiu	$6,$6,4
	lw	$2,4($8)
	addiu	$8,$8,4
	addu	$2,$3,$2
	addu	$2,$2,$5
	xor	$7,$3,$2
	sw	$2,-4($6)
	sltu	$7,$7,1
	and	$5,$7,$5
	sltu	$3,$2,$3
	bne	$6,$9,$L38
	or	$5,$5,$3

	.option	pic0
	b	$L65
	.option	pic2
	addu	$10,$10,$5

$L41:
	move	$5,$0
	move	$8,$12
	move	$6,$4
$L40:
	lw	$2,0($6)
	addiu	$6,$6,4
	lw	$7,4($8)
	addiu	$8,$8,4
	subu	$3,$2,$5
	subu	$3,$3,$7
	xor	$7,$2,$3
	sw	$3,-4($6)
	sltu	$7,$7,1
	and	$5,$7,$5
	sltu	$2,$2,$3
	bne	$9,$6,$L40
	or	$5,$5,$2

	.option	pic0
	b	$L37
	.option	pic2
	subu	$10,$10,$5

$L64:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	vli_modInv_update
	.type	vli_modInv_update, @function
vli_modInv_update:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$7,0($4)
	sll	$10,$6,2
	andi	$7,$7,0x1
	bne	$7,$0,$L83
	addu	$2,$4,$10

	sltu	$3,$4,$2
	beq	$3,$0,$L85
	nop

$L71:
	move	$6,$0
$L75:
	lw	$5,-4($2)
	addiu	$2,$2,-4
	srl	$3,$5,1
	or	$3,$3,$6
	sw	$3,0($2)
	sltu	$3,$4,$2
	bne	$3,$0,$L75
	sll	$6,$5,31

$L74:
	beq	$7,$0,$L85
	addiu	$10,$10,-4

	li	$3,-2147483648			# 0xffffffff80000000
	addu	$4,$4,$10
	lw	$2,0($4)
	or	$2,$2,$3
	jr	$31
	sw	$2,0($4)

$L83:
	blez	$6,$L68
	move	$8,$4

	move	$7,$0
$L69:
	lw	$6,0($8)
	addiu	$8,$8,4
	lw	$3,0($5)
	addiu	$5,$5,4
	addu	$3,$6,$3
	addu	$3,$3,$7
	xor	$9,$6,$3
	sw	$3,-4($8)
	sltu	$9,$9,1
	and	$7,$9,$7
	sltu	$6,$3,$6
	bne	$2,$8,$L69
	or	$7,$7,$6

	sltu	$3,$4,$2
	bne	$3,$0,$L71
	nop

	.option	pic0
	b	$L74
	nop

	.option	pic2
$L68:
	sltu	$3,$4,$2
	bne	$3,$0,$L71
	move	$7,$0

$L85:
	jr	$31
	nop

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
	lh	$3,2($4)
	addiu	$2,$3,7
	bgez	$2,$L89
	nop

	addiu	$2,$3,14
$L89:
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
	blez	$5,$L96
	lui	$28,%hi(__gnu_local_gp)

	andi	$5,$5,0x00ff
	addiu	$28,$28,%lo(__gnu_local_gp)
	sll	$6,$5,2
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jr	$25
	move	$5,$0

$L96:
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
	blez	$5,$L100
	sll	$5,$5,2

	move	$2,$0
	addu	$5,$4,$5
$L99:
	lw	$3,0($4)
	addiu	$4,$4,4
	bne	$5,$4,$L99
	or	$2,$2,$3

	jr	$31
	sltu	$2,$2,1

$L100:
	jr	$31
	li	$2,1			# 0x1

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
	addiu	$3,$5,-1
	seb	$6,$3
	bltz	$6,$L111
	andi	$3,$3,0x00ff

	sll	$3,$3,2
	li	$8,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L105
	.option	pic2
	addu	$3,$4,$3

$L106:
	beq	$2,$8,$L104
	nop

	move	$6,$2
$L105:
	lw	$7,0($3)
	andi	$5,$6,0x00ff
	addiu	$2,$5,-1
	addiu	$3,$3,-4
	beq	$7,$0,$L106
	seb	$2,$2

	addiu	$5,$5,1
	seb	$6,$5
$L107:
	sll	$2,$6,2
	addu	$4,$4,$2
	lw	$2,-4($4)
	beq	$2,$0,$L113
	move	$3,$0

$L110:
	srl	$2,$2,1
	bne	$2,$0,$L110
	addiu	$3,$3,1

	andi	$2,$3,0xffff
$L109:
	addiu	$6,$6,-1
	sll	$6,$6,5
	addu	$2,$2,$6
	jr	$31
	seh	$2,$2

$L111:
	move	$6,$5
$L104:
	bne	$6,$0,$L107
	move	$2,$0

	jr	$31
	nop

$L113:
	.option	pic0
	b	$L109
	.option	pic2
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
	blez	$6,$L119
	sll	$6,$6,2

	addu	$3,$5,$6
$L117:
	lw	$2,0($5)
	addiu	$5,$5,4
	addiu	$4,$4,4
	bne	$5,$3,$L117
	sw	$2,-4($4)

$L119:
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
	seb	$2,$6
	bltz	$2,$L123
	andi	$6,$6,0x00ff

	sll	$6,$6,2
	li	$8,-1			# 0xffffffffffffffff
	addu	$4,$4,$6
	.option	pic0
	b	$L122
	.option	pic2
	addu	$5,$5,$6

$L127:
	bne	$3,$0,$L125
	nop

	beq	$2,$8,$L123
	nop

$L122:
	lw	$3,0($4)
	addiu	$2,$2,-1
	lw	$6,0($5)
	addiu	$4,$4,-4
	addiu	$5,$5,-4
	seb	$2,$2
	sltu	$7,$6,$3
	beq	$7,$0,$L127
	sltu	$3,$3,$6

	jr	$31
	li	$2,1			# 0x1

$L123:
	jr	$31
	move	$2,$0

$L125:
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
	seb	$3,$6
	bltz	$3,$L131
	andi	$6,$6,0x00ff

	sll	$6,$6,2
	move	$2,$0
	addu	$4,$4,$6
	addu	$5,$5,$6
	li	$8,-1			# 0xffffffffffffffff
$L130:
	lw	$6,0($4)
	addiu	$3,$3,-1
	lw	$7,0($5)
	addiu	$4,$4,-4
	seb	$3,$3
	addiu	$5,$5,-4
	xor	$6,$6,$7
	bne	$3,$8,$L130
	or	$2,$2,$6

	jr	$31
	sltu	$2,$0,$2

$L131:
	jr	$31
	move	$2,$0

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
	blez	$7,$L137
	sll	$7,$7,2

	move	$3,$0
	move	$2,$0
$L136:
	addu	$8,$5,$3
	addu	$9,$6,$3
	addu	$11,$4,$3
	lw	$8,0($8)
	addiu	$3,$3,4
	lw	$10,0($9)
	subu	$9,$8,$2
	subu	$9,$9,$10
	xor	$10,$8,$9
	sw	$9,0($11)
	sltu	$10,$10,1
	and	$2,$10,$2
	sltu	$8,$8,$9
	bne	$7,$3,$L136
	or	$2,$2,$8

	jr	$31
	nop

$L137:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	uECC_vli_sub
	.size	uECC_vli_sub, .-uECC_vli_sub
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
	sw	$31,68($sp)
	lw	$11,%got(__stack_chk_guard)($28)
	.cprestore	16
	lw	$2,0($11)
	sw	$2,60($sp)
	blez	$6,$L144
	sll	$6,$6,2

	addiu	$8,$sp,28
	addu	$12,$4,$6
	move	$2,$0
	move	$10,$8
$L141:
	lw	$3,0($4)
	addiu	$10,$10,4
	lw	$9,0($5)
	addiu	$4,$4,4
	addiu	$5,$5,4
	subu	$7,$3,$2
	subu	$7,$7,$9
	xor	$9,$3,$7
	sw	$7,-4($10)
	sltu	$9,$9,1
	and	$2,$9,$2
	sltu	$3,$3,$7
	bne	$12,$4,$L141
	or	$2,$2,$3

	addu	$4,$6,$8
	move	$3,$0
$L142:
	lw	$5,0($8)
	addiu	$8,$8,4
	bne	$4,$8,$L142
	or	$3,$3,$5

	sll	$2,$2,1
	sltu	$3,$0,$3
	subu	$2,$3,$2
$L140:
	lw	$4,60($sp)
	lw	$3,0($11)
	bne	$4,$3,$L148
	lw	$31,68($sp)

	jr	$31
	addiu	$sp,$sp,72

$L144:
	.option	pic0
	b	$L140
	.option	pic2
	move	$2,$0

$L148:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$11,16($sp)
	blez	$11,$L150
	sll	$12,$11,2

	move	$3,$0
	move	$9,$0
$L151:
	addu	$8,$5,$3
	addu	$2,$6,$3
	addu	$13,$4,$3
	lw	$8,0($8)
	addiu	$3,$3,4
	lw	$2,0($2)
	addu	$2,$8,$2
	addu	$2,$2,$9
	xor	$10,$8,$2
	sw	$2,0($13)
	sltu	$10,$10,1
	and	$9,$10,$9
	sltu	$8,$2,$8
	bne	$12,$3,$L151
	or	$9,$9,$8

	bne	$9,$0,$L152
	addiu	$2,$11,-1

	seb	$2,$2
	sll	$5,$2,2
$L166:
	li	$10,-1			# 0xffffffffffffffff
	addu	$6,$7,$5
	.option	pic0
	b	$L156
	.option	pic2
	addu	$5,$4,$5

$L164:
	bne	$3,$0,$L155
	nop

	beq	$2,$10,$L155
	nop

$L156:
	lw	$3,0($6)
	addiu	$2,$2,-1
	lw	$8,0($5)
	addiu	$6,$6,-4
	addiu	$5,$5,-4
	seb	$2,$2
	sltu	$9,$8,$3
	beq	$9,$0,$L164
	sltu	$3,$3,$8

$L167:
	jr	$31
	nop

$L155:
	blez	$11,$L167
	sll	$12,$11,2

$L152:
	addu	$12,$4,$12
	move	$5,$0
$L157:
	lw	$2,0($4)
	addiu	$4,$4,4
	lw	$6,0($7)
	addiu	$7,$7,4
	subu	$3,$2,$5
	subu	$3,$3,$6
	xor	$6,$2,$3
	sw	$3,-4($4)
	sltu	$6,$6,1
	and	$5,$6,$5
	sltu	$2,$2,$3
	bne	$4,$12,$L157
	or	$5,$5,$2

	jr	$31
	nop

$L150:
	addiu	$2,$11,-1
	seb	$2,$2
	bltz	$2,$L167
	li	$2,127			# 0x7f

	.option	pic0
	b	$L166
	.option	pic2
	sll	$5,$2,2

	.set	macro
	.set	reorder
	.end	uECC_vli_modAdd
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.align	2
	.globl	x_side_default
	.set	nomips16
	.set	nomicromips
	.ent	x_side_default
	.type	x_side_default, @function
x_side_default:
	.frame	$sp,168,$31		# vars= 104, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-168
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$2,3			# 0x3
	sw	$18,144($sp)
	sw	$20,152($sp)
	move	$20,$6
	sw	$31,164($sp)
	move	$6,$5
	sw	$22,160($sp)
	move	$22,$5
	sw	$19,148($sp)
	addiu	$19,$20,4
	sw	$17,140($sp)
	addiu	$17,$sp,68
	sw	$16,136($sp)
	move	$16,$4
	.cprestore	24
	move	$4,$17
	sw	$21,156($sp)
	sw	$2,36($sp)
	lw	$18,%got(__stack_chk_guard)($28)
	lb	$21,0($20)
	sw	$0,40($sp)
	sw	$0,44($sp)
	sw	$0,48($sp)
	move	$7,$21
	sw	$0,52($sp)
	sw	$0,56($sp)
	sw	$0,60($sp)
	sw	$0,64($sp)
	lw	$2,0($18)
	sw	$2,132($sp)
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	move	$5,$17
	lw	$25,172($20)
	jalr	$25
	move	$4,$16

	blez	$21,$L169
	sll	$5,$21,2

	addiu	$9,$sp,36
	addu	$5,$5,$16
	move	$7,$0
	move	$6,$16
	move	$4,$16
$L170:
	lw	$2,0($4)
	addiu	$4,$4,4
	lw	$8,0($9)
	addiu	$9,$9,4
	subu	$3,$2,$7
	subu	$3,$3,$8
	xor	$8,$2,$3
	sw	$3,-4($4)
	sltu	$8,$8,1
	and	$7,$8,$7
	sltu	$2,$2,$3
	bne	$5,$4,$L170
	or	$7,$7,$2

	bne	$7,$0,$L179
	move	$4,$0

$L169:
	lb	$7,0($20)
$L181:
	move	$6,$22
	move	$5,$16
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($20)
	jalr	$25
	move	$4,$16

	addiu	$6,$20,132
	sw	$21,16($sp)
	move	$7,$19
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$16

	lw	$3,132($sp)
	lw	$2,0($18)
	bne	$3,$2,$L180
	lw	$28,24($sp)

	lw	$31,164($sp)
	lw	$22,160($sp)
	lw	$21,156($sp)
	lw	$20,152($sp)
	lw	$19,148($sp)
	lw	$18,144($sp)
	lw	$17,140($sp)
	lw	$16,136($sp)
	jr	$31
	addiu	$sp,$sp,168

$L179:
	move	$8,$19
$L171:
	lw	$3,0($6)
	addiu	$6,$6,4
	lw	$2,0($8)
	addiu	$8,$8,4
	addu	$2,$3,$2
	addu	$2,$2,$4
	xor	$7,$3,$2
	sw	$2,-4($6)
	sltu	$7,$7,1
	and	$4,$7,$4
	sltu	$3,$2,$3
	bne	$5,$6,$L171
	or	$4,$4,$3

	.option	pic0
	b	$L181
	.option	pic2
	lb	$7,0($20)

$L180:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	x_side_default
	.size	x_side_default, .-x_side_default
	.align	2
	.globl	uECC_vli_modSub
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$12,16($sp)
	blez	$12,$L192
	sll	$12,$12,2

	move	$2,$0
	move	$9,$0
$L184:
	addu	$3,$5,$2
	addu	$8,$6,$2
	addu	$11,$4,$2
	lw	$3,0($3)
	addiu	$2,$2,4
	lw	$10,0($8)
	subu	$8,$3,$9
	subu	$8,$8,$10
	xor	$10,$3,$8
	sw	$8,0($11)
	sltu	$10,$10,1
	and	$9,$10,$9
	sltu	$3,$3,$8
	bne	$12,$2,$L184
	or	$9,$9,$3

	beq	$9,$0,$L192
	addu	$12,$4,$12

	move	$5,$0
$L185:
	lw	$3,0($4)
	addiu	$4,$4,4
	lw	$2,0($7)
	addiu	$7,$7,4
	addu	$2,$3,$2
	addu	$2,$2,$5
	xor	$6,$3,$2
	sw	$2,-4($4)
	sltu	$6,$6,1
	and	$5,$6,$5
	sltu	$3,$2,$3
	bne	$12,$4,$L185
	or	$5,$5,$3

$L192:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modSub
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.align	2
	.globl	double_jacobian_default
	.set	nomips16
	.set	nomicromips
	.ent	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
	.frame	$sp,224,$31		# vars= 152, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-224
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,216($sp)
	sw	$31,220($sp)
	sw	$23,212($sp)
	sw	$22,208($sp)
	sw	$21,204($sp)
	sw	$20,200($sp)
	sw	$19,196($sp)
	sw	$18,192($sp)
	sw	$17,188($sp)
	sw	$16,184($sp)
	.cprestore	24
	lw	$fp,%got(__stack_chk_guard)($28)
	lb	$18,0($7)
	lw	$2,0($fp)
	sw	$2,180($sp)
	blez	$18,$L193
	sll	$21,$18,2

	move	$3,$0
	addu	$8,$21,$6
	move	$20,$7
	move	$17,$4
	move	$19,$5
	move	$16,$6
	move	$10,$6
	move	$2,$6
$L195:
	lw	$4,0($2)
	addiu	$2,$2,4
	bne	$8,$2,$L195
	or	$3,$3,$4

	sw	$10,44($sp)
	beq	$3,$0,$L193
	sw	$8,40($sp)

	addiu	$22,$sp,116
	move	$7,$18
	move	$6,$19
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$22

	addiu	$23,$sp,52
	addiu	$2,$sp,84
	lw	$25,172($20)
	move	$4,$23
	sw	$2,36($sp)
	jalr	$25
	move	$5,$22

	move	$6,$23
	lb	$7,0($20)
	move	$5,$17
	move	$4,$22
	sw	$23,32($sp)
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	addiu	$23,$20,4

	move	$5,$22
	lw	$25,172($20)
	jalr	$25
	lw	$4,36($sp)

	move	$4,$22
	lw	$6,32($sp)
	lb	$7,0($20)
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$5,$6

	move	$5,$22
	lw	$25,172($20)
	jalr	$25
	lw	$4,32($sp)

	move	$6,$16
	lb	$7,0($20)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$22

	move	$5,$22
	lw	$25,172($20)
	jalr	$25
	move	$4,$19

	move	$6,$16
	lb	$7,0($20)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$22

	move	$5,$22
	lw	$25,172($20)
	jalr	$25
	move	$4,$16

	move	$7,$23
	move	$6,$16
	sw	$18,16($sp)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$17

	move	$7,$23
	move	$6,$16
	sw	$18,16($sp)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$16

	move	$7,$23
	move	$6,$16
	sw	$18,16($sp)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$16

	move	$6,$16
	lb	$7,0($20)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$22

	move	$5,$22
	lw	$25,172($20)
	jalr	$25
	move	$4,$17

	move	$7,$23
	move	$6,$17
	sw	$18,16($sp)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$16

	move	$6,$16
	move	$5,$17
	sw	$18,16($sp)
	move	$7,$23
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$17

	addu	$6,$17,$21
	lw	$5,0($17)
	lw	$8,40($sp)
	andi	$5,$5,0x1
	beq	$5,$0,$L197
	lw	$10,44($sp)

	move	$7,$0
	move	$5,$17
	move	$12,$23
$L198:
	lw	$3,0($5)
	addiu	$5,$5,4
	lw	$2,0($12)
	addiu	$12,$12,4
	addu	$2,$3,$2
	addu	$2,$2,$7
	xor	$4,$3,$2
	sw	$2,-4($5)
	sltu	$4,$4,1
	and	$4,$4,$7
	sltu	$3,$2,$3
	bne	$6,$5,$L198
	or	$7,$4,$3

	sltu	$2,$17,$6
	beq	$2,$0,$L202
	move	$5,$0

	move	$2,$6
$L201:
	lw	$4,-4($2)
	addiu	$2,$2,-4
	srl	$3,$4,1
	or	$3,$3,$5
	sw	$3,0($2)
	sltu	$3,$17,$2
	bne	$3,$0,$L201
	sll	$5,$4,31

$L202:
	addiu	$2,$21,-4
	sll	$7,$7,31
	addu	$2,$17,$2
	lw	$3,0($2)
	or	$3,$3,$7
	sw	$3,0($2)
$L200:
	lb	$7,0($20)
$L218:
	move	$6,$17
	move	$5,$17
	sw	$10,44($sp)
	move	$4,$22
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	sw	$8,40($sp)

	move	$5,$22
	lw	$25,172($20)
	jalr	$25
	move	$4,$16

	move	$7,$23
	lw	$13,36($sp)
	move	$5,$16
	move	$4,$16
	sw	$18,16($sp)
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$13

	move	$6,$13
	move	$7,$23
	sw	$18,16($sp)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$16

	move	$5,$13
	move	$4,$13
	sw	$18,16($sp)
	move	$7,$23
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$16

	move	$6,$13
	lb	$7,0($20)
	move	$5,$17
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$22

	move	$5,$22
	lw	$25,172($20)
	jalr	$25
	move	$4,$17

	move	$7,$23
	lw	$4,32($sp)
	move	$5,$17
	sw	$18,16($sp)
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$4

	move	$6,$16
	lw	$28,24($sp)
	lw	$10,44($sp)
	lw	$8,40($sp)
$L206:
	lw	$2,0($6)
	addiu	$6,$6,4
	addiu	$17,$17,4
	bne	$8,$6,$L206
	sw	$2,-4($17)

	addu	$11,$21,$19
	move	$2,$19
$L207:
	lw	$3,0($2)
	addiu	$2,$2,4
	addiu	$10,$10,4
	bne	$2,$11,$L207
	sw	$3,-4($10)

	lw	$25,%call16(memcpy)($28)
	andi	$6,$18,0x00ff
	lw	$5,32($sp)
	sll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$19

	lw	$28,24($sp)
$L193:
	lw	$3,180($sp)
	lw	$2,0($fp)
	bne	$3,$2,$L217
	lw	$31,220($sp)

	lw	$fp,216($sp)
	lw	$23,212($sp)
	lw	$22,208($sp)
	lw	$21,204($sp)
	lw	$20,200($sp)
	lw	$19,196($sp)
	lw	$18,192($sp)
	lw	$17,188($sp)
	lw	$16,184($sp)
	jr	$31
	addiu	$sp,$sp,224

$L197:
	sltu	$3,$17,$6
	beq	$3,$0,$L200
	move	$2,$6

$L204:
	lw	$4,-4($2)
	addiu	$2,$2,-4
	srl	$3,$4,1
	or	$3,$3,$5
	sw	$3,0($2)
	sltu	$3,$17,$2
	bne	$3,$0,$L204
	sll	$5,$4,31

	.option	pic0
	b	$L218
	.option	pic2
	lb	$7,0($20)

$L217:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	double_jacobian_default
	.size	double_jacobian_default, .-double_jacobian_default
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	XYcZ_addC
	.type	XYcZ_addC, @function
XYcZ_addC:
	.frame	$sp,256,$31		# vars= 184, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-256
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,216($sp)
	.cprestore	24
	sw	$31,252($sp)
	sw	$fp,248($sp)
	move	$fp,$5
	sw	$23,244($sp)
	move	$23,$7
	sw	$22,240($sp)
	move	$22,$6
	sw	$21,236($sp)
	move	$6,$4
	sw	$20,232($sp)
	move	$5,$22
	sw	$19,228($sp)
	addiu	$19,$sp,52
	sw	$17,220($sp)
	move	$20,$4
	sw	$18,224($sp)
	move	$4,$19
	lw	$16,272($sp)
	addiu	$17,$sp,148
	lw	$2,%got(__stack_chk_guard)($28)
	addiu	$21,$16,4
	lb	$18,0($16)
	sw	$2,44($sp)
	move	$7,$21
	lw	$2,0($2)
	sw	$18,16($sp)
	sw	$2,212($sp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	move	$6,$19
	lb	$7,0($16)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	addiu	$2,$sp,116
	lw	$25,172($16)
	move	$5,$17
	sw	$2,36($sp)
	jalr	$25
	move	$4,$19

	move	$6,$19
	lb	$7,0($16)
	move	$5,$20
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$4,$20
	lw	$25,172($16)
	jalr	$25
	move	$5,$17

	move	$6,$19
	lb	$7,0($16)
	move	$5,$22
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$4,$22
	lw	$25,172($16)
	jalr	$25
	move	$5,$17

	move	$5,$23
	move	$7,$21
	sw	$18,16($sp)
	move	$6,$fp
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$19

	move	$5,$23
	move	$4,$23
	sw	$18,16($sp)
	move	$7,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$fp

	move	$6,$20
	sw	$20,40($sp)
	addiu	$20,$sp,84
	move	$5,$22
	sw	$18,16($sp)
	move	$7,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$20

	move	$6,$20
	lb	$7,0($16)
	move	$5,$fp
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$fp

	move	$6,$22
	lw	$5,40($sp)
	move	$7,$21
	move	$4,$20
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	sw	$18,16($sp)

	move	$6,$23
	lb	$7,0($16)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$4,$22
	lw	$25,172($16)
	jalr	$25
	move	$5,$17

	move	$5,$22
	move	$4,$22
	sw	$18,16($sp)
	move	$7,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$20

	move	$6,$22
	lw	$13,36($sp)
	move	$7,$21
	lw	$22,40($sp)
	sw	$18,16($sp)
	move	$4,$13
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$5,$22

	move	$6,$13
	lb	$7,0($16)
	move	$5,$23
	move	$4,$17
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	sw	$13,36($sp)

	move	$4,$23
	lw	$25,172($16)
	jalr	$25
	move	$5,$17

	move	$5,$23
	move	$4,$23
	sw	$18,16($sp)
	move	$7,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$fp

	move	$6,$19
	lb	$7,0($16)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$23,36($sp)
	lw	$25,172($16)
	jalr	$25
	move	$4,$23

	move	$7,$21
	move	$6,$20
	sw	$18,16($sp)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$23

	move	$7,$21
	move	$6,$22
	sw	$18,16($sp)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$20

	move	$6,$19
	lb	$7,0($16)
	move	$5,$20
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$20

	move	$7,$21
	sw	$18,16($sp)
	move	$6,$fp
	move	$5,$20
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$fp

	blez	$18,$L219
	lw	$28,24($sp)

	lw	$25,%call16(memcpy)($28)
	andi	$6,$18,0x00ff
	sll	$6,$6,2
	move	$5,$23
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$22

	lw	$28,24($sp)
$L219:
	lw	$2,44($sp)
	lw	$3,212($sp)
	lw	$2,0($2)
	bne	$3,$2,$L223
	lw	$31,252($sp)

	lw	$fp,248($sp)
	lw	$23,244($sp)
	lw	$22,240($sp)
	lw	$21,236($sp)
	lw	$20,232($sp)
	lw	$19,228($sp)
	lw	$18,224($sp)
	lw	$17,220($sp)
	lw	$16,216($sp)
	jr	$31
	addiu	$sp,$sp,256

$L223:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	XYcZ_addC
	.size	XYcZ_addC, .-XYcZ_addC
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
	sw	$17,172($sp)
	lw	$17,%got(__stack_chk_guard)($28)
	sw	$20,184($sp)
	move	$20,$5
	sw	$19,180($sp)
	move	$5,$7
	sw	$16,168($sp)
	move	$19,$7
	lw	$2,0($17)
	move	$16,$4
	move	$4,$6
	sw	$21,188($sp)
	sw	$18,176($sp)
	move	$21,$6
	sw	$2,164($sp)
	addiu	$2,$sp,100
	.cprestore	16
	sw	$31,204($sp)
	sw	$fp,200($sp)
	sw	$23,196($sp)
	sw	$22,192($sp)
	sw	$2,28($sp)
	.option	pic0
	jal	uECC_vli_numBits
	.option	pic2
	sw	$20,32($sp)

	sll	$3,$19,6
	subu	$3,$3,$2
	seh	$18,$3
	bltz	$18,$L264
	lw	$28,16($sp)

	move	$2,$18
$L225:
	li	$fp,-2147483648			# 0xffffffff80000000
	sra	$2,$2,5
	addiu	$fp,$fp,31
	and	$fp,$18,$fp
	bgez	$fp,$L226
	seb	$23,$2

	addiu	$fp,$fp,-1
	li	$3,-32			# 0xffffffffffffffe0
	or	$fp,$fp,$3
	addiu	$fp,$fp,1
$L226:
	blez	$23,$L230
	seh	$fp,$fp

	addiu	$6,$2,-1
	lw	$25,%call16(memset)($28)
	move	$5,$0
	andi	$6,$6,0x00ff
	addiu	$6,$6,1
	addiu	$4,$sp,36
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$6,$6,2

	lw	$28,16($sp)
$L230:
	blez	$fp,$L265
	nop

	beq	$19,$0,$L250
	li	$7,32			# 0x20

	addiu	$22,$sp,36
	sll	$2,$23,2
	sll	$11,$19,2
	addu	$2,$22,$2
	subu	$7,$7,$fp
	addu	$8,$21,$11
	move	$6,$0
	move	$4,$21
$L232:
	lw	$5,0($4)
	addiu	$2,$2,4
	addiu	$4,$4,4
	sll	$3,$5,$fp
	or	$3,$3,$6
	sw	$3,-4($2)
	bne	$8,$4,$L232
	srl	$6,$5,$7

$L233:
	move	$2,$19
$L231:
	sll	$2,$2,2
	addiu	$10,$19,-1
	addu	$6,$22,$2
	sll	$10,$10,2
	addu	$15,$6,$2
	subu	$2,$6,$2
	sll	$8,$19,1
	addiu	$5,$2,-4
	addiu	$2,$10,168
	addiu	$25,$6,-4
	addu	$10,$2,$sp
	addiu	$2,$11,168
	li	$9,1			# 0x1
	li	$24,1			# 0x1
	addu	$14,$2,$sp
	li	$13,-1			# 0xffffffffffffffff
	sltu	$12,$6,$15
	sltu	$7,$22,$6
$L236:
	blez	$19,$L247
	move	$4,$0

	subu	$2,$24,$9
	sll	$4,$9,2
	sll	$2,$2,2
	addiu	$3,$4,168
	addiu	$2,$2,168
	addu	$4,$3,$sp
	addu	$2,$2,$sp
	move	$3,$0
	lw	$21,-140($4)
	move	$4,$0
	lw	$20,-140($2)
	move	$2,$0
$L238:
	sll	$2,$2,2
	sll	$22,$3,2
	addiu	$2,$2,168
	addu	$23,$21,$22
	addu	$2,$2,$sp
	lw	$23,0($23)
	lw	$2,-132($2)
	addu	$2,$4,$2
	subu	$2,$23,$2
	beq	$2,$23,$L237
	nop

	sltu	$4,$23,$2
$L237:
	addiu	$3,$3,1
	addu	$22,$20,$22
	seb	$3,$3
	slt	$23,$3,$8
	sw	$2,0($22)
	bne	$23,$0,$L238
	move	$2,$3

$L247:
	xor	$4,$9,$4
	beq	$7,$0,$L242
	sltu	$9,$4,1

	move	$20,$0
	move	$2,$25
$L239:
	lw	$4,0($2)
	addiu	$2,$2,-4
	srl	$3,$4,1
	or	$3,$3,$20
	sw	$3,4($2)
	bne	$2,$5,$L239
	sll	$20,$4,31

$L242:
	lw	$2,-132($14)
	lw	$3,-132($10)
	sll	$2,$2,31
	or	$2,$2,$3
	beq	$12,$0,$L241
	sw	$2,-132($10)

	move	$20,$0
	move	$2,$15
$L244:
	lw	$4,-4($2)
	addiu	$2,$2,-4
	srl	$3,$4,1
	or	$3,$3,$20
	sw	$3,0($2)
	sltu	$3,$6,$2
	bne	$3,$0,$L244
	sll	$20,$4,31

$L241:
	addiu	$18,$18,-1
	seh	$18,$18
	bne	$18,$13,$L236
	sll	$2,$9,2

	addiu	$2,$2,168
	addu	$2,$2,$sp
	blez	$19,$L224
	lw	$20,-140($2)

	addu	$11,$20,$11
$L267:
	move	$5,$20
$L248:
	lw	$2,0($5)
	addiu	$5,$5,4
	addiu	$16,$16,4
	bne	$5,$11,$L248
	sw	$2,-4($16)

$L224:
	lw	$3,164($sp)
	lw	$2,0($17)
	bne	$3,$2,$L266
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

$L264:
	.option	pic0
	b	$L225
	.option	pic2
	addiu	$2,$18,31

$L265:
	blez	$19,$L234
	sll	$4,$23,2

	addiu	$22,$sp,36
	lw	$25,%call16(memcpy)($28)
	andi	$6,$19,0x00ff
	sll	$6,$6,2
	addu	$4,$22,$4
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$5,$21

	sll	$11,$19,2
	bgez	$18,$L233
	lw	$28,16($sp)

	.option	pic0
	b	$L267
	.option	pic2
	addu	$11,$20,$11

$L250:
	move	$2,$0
	addiu	$22,$sp,36
	.option	pic0
	b	$L231
	.option	pic2
	move	$11,$0

$L234:
	bltz	$18,$L224
	addiu	$22,$sp,36

	.option	pic0
	b	$L233
	.option	pic2
	sll	$11,$19,2

$L266:
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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,108($sp)
	sw	$20,112($sp)
	sw	$16,96($sp)
	addiu	$16,$sp,28
	lw	$19,%got(__stack_chk_guard)($28)
	lb	$20,136($sp)
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
	bne	$3,$2,$L271
	lw	$28,16($sp)

	lw	$31,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

$L271:
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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,112($sp)
	.cprestore	16
	sw	$31,116($sp)
	sw	$18,108($sp)
	move	$18,$4
	sw	$17,104($sp)
	addiu	$17,$sp,28
	sw	$16,100($sp)
	move	$16,$7
	lw	$19,%got(__stack_chk_guard)($28)
	move	$4,$17
	lb	$7,0($7)
	lw	$2,0($19)
	sw	$2,92($sp)
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$18

	lw	$3,92($sp)
	lw	$2,0($19)
	bne	$3,$2,$L275
	lw	$28,16($sp)

	lw	$31,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	jr	$31
	addiu	$sp,$sp,120

$L275:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modMult_fast
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.align	2
	.globl	uECC_vli_modInv
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
	.frame	$sp,240,$31		# vars= 176, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-240
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,236($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$fp,232($sp)
	sw	$23,228($sp)
	sw	$2,60($sp)
	sw	$22,224($sp)
	sw	$21,220($sp)
	sw	$20,216($sp)
	sw	$19,212($sp)
	sw	$18,208($sp)
	sw	$17,204($sp)
	sw	$16,200($sp)
	.cprestore	16
	sw	$4,44($sp)
	lw	$2,0($2)
	sw	$2,196($sp)
	blez	$7,$L276
	sll	$23,$7,2

	move	$18,$6
	move	$3,$0
	addu	$6,$23,$5
	move	$16,$7
	move	$2,$5
$L279:
	lw	$4,0($2)
	addiu	$2,$2,4
	bne	$6,$2,$L279
	or	$3,$3,$4

	beq	$3,$0,$L342
	andi	$2,$16,0x00ff

	lw	$25,%call16(memcpy)($28)
	addiu	$11,$2,-1
	sll	$17,$2,2
	addiu	$20,$sp,68
	andi	$11,$11,0x00ff
	sw	$17,56($sp)
	sw	$11,28($sp)
	move	$6,$17
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$20

	addiu	$21,$sp,100
	lw	$28,16($sp)
	move	$6,$17
	move	$5,$18
	move	$4,$21
	move	$19,$17
	lw	$25,%call16(memcpy)($28)
	addiu	$17,$sp,132
	addu	$22,$20,$23
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	li	$fp,-1			# 0xffffffffffffffff

	move	$5,$0
	lw	$28,16($sp)
	move	$6,$19
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$17

	addiu	$14,$sp,164
	lw	$28,16($sp)
	li	$2,1			# 0x1
	move	$5,$0
	move	$6,$19
	sw	$2,132($sp)
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$14

	addu	$13,$21,$23
	lw	$11,28($sp)
	move	$14,$2
	addiu	$3,$13,-4
	lw	$28,16($sp)
	li	$7,-4			# 0xfffffffffffffffc
	sll	$2,$11,2
	sw	$3,52($sp)
	addiu	$3,$22,-4
	addu	$24,$20,$2
	addu	$15,$21,$2
	sw	$3,32($sp)
	addu	$3,$14,$2
	addu	$2,$17,$2
	subu	$7,$7,$23
	sw	$3,40($sp)
	sw	$2,36($sp)
	sltu	$2,$21,$13
	addu	$12,$14,$23
	sw	$2,48($sp)
	addu	$25,$13,$7
	sltu	$2,$20,$22
	addu	$19,$22,$7
	sw	$2,28($sp)
	addu	$23,$17,$23
	seb	$11,$11
$L282:
	move	$7,$15
	move	$4,$24
	.option	pic0
	b	$L308
	.option	pic2
	move	$3,$11

$L344:
	bne	$2,$0,$L319
	addiu	$4,$4,-4

	addiu	$3,$3,-1
	seb	$3,$3
	beq	$3,$fp,$L343
	addiu	$7,$7,-4

$L308:
	lw	$2,0($4)
	lw	$5,0($7)
	sltu	$6,$5,$2
	beq	$6,$0,$L344
	sltu	$2,$2,$5

	lw	$2,68($sp)
	andi	$2,$2,0x1
	beq	$2,$0,$L345
	li	$3,1			# 0x1

$L337:
	lw	$2,100($sp)
	andi	$2,$2,0x1
	beq	$2,$0,$L346
	nop

	li	$2,1			# 0x1
	bne	$3,$2,$L315
	move	$7,$21

	move	$2,$0
	move	$6,$20
$L292:
	lw	$3,0($6)
	addiu	$6,$6,4
	lw	$5,0($7)
	addiu	$7,$7,4
	subu	$4,$3,$2
	subu	$4,$4,$5
	xor	$5,$3,$4
	sw	$4,-4($6)
	sltu	$5,$5,1
	and	$2,$5,$2
	sltu	$3,$3,$4
	bne	$22,$6,$L292
	or	$2,$2,$3

	lw	$2,28($sp)
	beq	$2,$0,$L295
	move	$2,$0

	lw	$4,32($sp)
	move	$5,$2
$L293:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$19,$L293
	sll	$5,$3,31

$L295:
	lw	$6,40($sp)
	move	$3,$11
	.option	pic0
	b	$L294
	.option	pic2
	lw	$5,36($sp)

$L347:
	sltu	$2,$2,$4
	bne	$2,$0,$L297
	addiu	$3,$3,-1

	addiu	$5,$5,-4
	seb	$3,$3
	beq	$3,$fp,$L296
	addiu	$6,$6,-4

$L294:
	lw	$2,0($5)
	lw	$4,0($6)
	sltu	$7,$4,$2
	beq	$7,$0,$L347
	nop

$L296:
	move	$2,$0
$L349:
	move	$7,$14
	move	$6,$17
$L298:
	lw	$3,0($6)
	addiu	$6,$6,4
	lw	$5,0($7)
	addiu	$7,$7,4
	subu	$4,$3,$2
	subu	$4,$4,$5
	xor	$5,$3,$4
	sw	$4,-4($6)
	sltu	$5,$5,1
	and	$2,$5,$2
	sltu	$3,$3,$4
	bne	$6,$23,$L298
	or	$2,$2,$3

$L284:
	move	$6,$16
	move	$5,$18
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$17

	.option	pic0
	b	$L282
	.option	pic2
	lw	$28,16($sp)

$L319:
	lw	$2,68($sp)
	andi	$2,$2,0x1
	bne	$2,$0,$L337
	li	$3,-1			# 0xffffffffffffffff

$L345:
	lw	$3,28($sp)
	beq	$3,$0,$L284
	lw	$4,32($sp)

	move	$5,$2
$L283:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$19,$L283
	sll	$5,$3,31

	move	$6,$16
	move	$5,$18
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$17

	.option	pic0
	b	$L282
	.option	pic2
	lw	$28,16($sp)

$L343:
	lw	$2,56($sp)
	li	$6,4			# 0x4
	slt	$16,$0,$16
	lw	$25,%call16(memcpy)($28)
	lw	$4,44($sp)
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	movn	$6,$2,$16

	lw	$28,16($sp)
$L276:
	lw	$2,60($sp)
	lw	$3,196($sp)
	lw	$2,0($2)
	bne	$3,$2,$L341
	lw	$31,236($sp)

	lw	$fp,232($sp)
	lw	$23,228($sp)
	lw	$22,224($sp)
	lw	$21,220($sp)
	lw	$20,216($sp)
	lw	$19,212($sp)
	lw	$18,208($sp)
	lw	$17,204($sp)
	lw	$16,200($sp)
	jr	$31
	addiu	$sp,$sp,240

$L346:
	lw	$3,48($sp)
	beq	$3,$0,$L289
	lw	$4,52($sp)

	move	$5,$2
$L288:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$25,$L288
	sll	$5,$3,31

$L289:
	move	$6,$16
	move	$5,$18
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$14

	.option	pic0
	b	$L282
	.option	pic2
	lw	$28,16($sp)

$L315:
	move	$2,$0
	move	$7,$20
	move	$6,$21
$L291:
	lw	$3,0($6)
	addiu	$6,$6,4
	lw	$5,0($7)
	addiu	$7,$7,4
	subu	$4,$3,$2
	subu	$4,$4,$5
	xor	$5,$3,$4
	sw	$4,-4($6)
	sltu	$5,$5,1
	and	$2,$5,$2
	sltu	$3,$3,$4
	bne	$13,$6,$L291
	or	$2,$2,$3

	lw	$2,48($sp)
	beq	$2,$0,$L302
	move	$2,$0

	lw	$4,52($sp)
	move	$5,$2
$L300:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$25,$L300
	sll	$5,$3,31

$L302:
	lw	$5,36($sp)
	move	$3,$11
	.option	pic0
	b	$L301
	.option	pic2
	lw	$4,40($sp)

$L348:
	sltu	$2,$2,$6
	bne	$2,$0,$L304
	addiu	$3,$3,-1

	addiu	$4,$4,-4
	seb	$3,$3
	beq	$3,$fp,$L303
	addiu	$5,$5,-4

$L301:
	lw	$2,0($4)
	lw	$6,0($5)
	sltu	$7,$6,$2
	beq	$7,$0,$L348
	nop

$L303:
	move	$2,$0
$L350:
	move	$7,$17
	move	$6,$14
$L305:
	lw	$3,0($6)
	addiu	$6,$6,4
	lw	$5,0($7)
	addiu	$7,$7,4
	subu	$4,$3,$2
	subu	$4,$4,$5
	xor	$5,$3,$4
	sw	$4,-4($6)
	sltu	$5,$5,1
	and	$2,$5,$2
	sltu	$3,$3,$4
	bne	$12,$6,$L305
	or	$2,$2,$3

	move	$6,$16
	move	$5,$18
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$14

	.option	pic0
	b	$L282
	.option	pic2
	lw	$28,16($sp)

$L297:
	move	$2,$0
	move	$7,$18
	move	$6,$17
$L299:
	lw	$4,0($6)
	addiu	$6,$6,4
	lw	$3,0($7)
	addiu	$7,$7,4
	addu	$3,$4,$3
	addu	$3,$3,$2
	xor	$5,$4,$3
	sw	$3,-4($6)
	sltu	$5,$5,1
	and	$2,$5,$2
	sltu	$4,$3,$4
	bne	$23,$6,$L299
	or	$2,$2,$4

	.option	pic0
	b	$L349
	.option	pic2
	move	$2,$0

$L304:
	move	$2,$0
	move	$7,$18
	move	$6,$14
$L306:
	lw	$4,0($6)
	addiu	$6,$6,4
	lw	$3,0($7)
	addiu	$7,$7,4
	addu	$3,$4,$3
	addu	$3,$3,$2
	xor	$5,$4,$3
	sw	$3,-4($6)
	sltu	$5,$5,1
	and	$2,$5,$2
	sltu	$4,$3,$4
	bne	$6,$12,$L306
	or	$2,$2,$4

	.option	pic0
	b	$L350
	.option	pic2
	move	$2,$0

$L342:
	lw	$2,60($sp)
	andi	$6,$16,0x00ff
	lw	$3,196($sp)
	sll	$6,$6,2
	lw	$2,0($2)
	bne	$3,$2,$L341
	lw	$4,44($sp)

	move	$5,$0
	lw	$31,236($sp)
	lw	$fp,232($sp)
	lw	$23,228($sp)
	lw	$22,224($sp)
	lw	$21,220($sp)
	lw	$20,216($sp)
	lw	$19,212($sp)
	lw	$18,208($sp)
	lw	$17,204($sp)
	lw	$16,200($sp)
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jr	$25
	addiu	$sp,$sp,240

$L341:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($5)
	sll	$2,$2,1
	seb	$3,$2
	blez	$3,$L355
	andi	$2,$2,0x00ff

	addiu	$2,$2,-1
	addiu	$5,$4,4
	andi	$3,$2,0x00ff
	sll	$3,$3,2
	move	$2,$0
	addu	$3,$3,$5
$L354:
	lw	$5,0($4)
	addiu	$4,$4,4
	bne	$3,$4,$L354
	or	$2,$2,$5

	jr	$31
	sltu	$2,$2,1

$L355:
	jr	$31
	li	$2,1			# 0x1

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
	.frame	$sp,160,$31		# vars= 104, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-160
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,152($sp)
	.cprestore	16
	sw	$31,156($sp)
	sw	$21,148($sp)
	move	$21,$4
	sw	$20,144($sp)
	move	$20,$6
	sw	$19,140($sp)
	move	$19,$5
	sw	$18,136($sp)
	move	$5,$6
	sw	$17,132($sp)
	addiu	$17,$sp,60
	sw	$16,128($sp)
	move	$16,$7
	lw	$22,%got(__stack_chk_guard)($28)
	move	$4,$17
	lb	$7,0($7)
	addiu	$18,$sp,28
	lw	$2,0($22)
	sw	$2,124($sp)
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$18

	move	$6,$18
	lb	$7,0($16)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$21

	move	$6,$20
	lb	$7,0($16)
	move	$5,$18
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$18

	move	$5,$19
	lb	$7,0($16)
	move	$4,$17
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$6,$18

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	lw	$3,124($sp)
	lw	$2,0($22)
	bne	$3,$2,$L360
	lw	$28,16($sp)

	lw	$31,156($sp)
	lw	$22,152($sp)
	lw	$21,148($sp)
	lw	$20,144($sp)
	lw	$19,140($sp)
	lw	$18,136($sp)
	lw	$17,132($sp)
	lw	$16,128($sp)
	jr	$31
	addiu	$sp,$sp,160

$L360:
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
	.frame	$sp,184,$31		# vars= 112, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-184
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,144($sp)
	.cprestore	24
	sw	$31,180($sp)
	sw	$fp,176($sp)
	move	$fp,$5
	sw	$23,172($sp)
	sw	$22,168($sp)
	move	$22,$4
	sw	$21,164($sp)
	move	$21,$7
	sw	$19,156($sp)
	move	$19,$6
	sw	$18,152($sp)
	addiu	$18,$sp,44
	sw	$17,148($sp)
	move	$6,$4
	sw	$20,160($sp)
	move	$5,$19
	lw	$16,200($sp)
	move	$4,$18
	lw	$2,%got(__stack_chk_guard)($28)
	addiu	$17,$sp,76
	addiu	$23,$16,4
	lb	$20,0($16)
	sw	$2,36($sp)
	move	$7,$23
	lw	$2,0($2)
	sw	$20,16($sp)
	sw	$2,140($sp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	move	$6,$18
	lb	$7,0($16)
	move	$5,$18
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$18

	move	$6,$18
	lb	$7,0($16)
	move	$5,$22
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$22

	move	$6,$18
	lb	$7,0($16)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	move	$7,$23
	move	$6,$fp
	sw	$20,16($sp)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$21

	move	$6,$21
	lb	$7,0($16)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$18

	move	$7,$23
	move	$6,$22
	sw	$20,16($sp)
	move	$5,$18
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$18

	move	$7,$23
	move	$6,$19
	sw	$20,16($sp)
	move	$5,$18
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$18

	move	$7,$23
	move	$6,$22
	sw	$20,16($sp)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$19

	move	$6,$19
	lb	$7,0($16)
	move	$5,$fp
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$fp

	move	$7,$23
	move	$6,$18
	sw	$20,16($sp)
	move	$5,$22
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$19

	move	$6,$19
	lb	$7,0($16)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	move	$5,$17
	lw	$25,172($16)
	jalr	$25
	move	$4,$21

	move	$7,$23
	sw	$20,16($sp)
	move	$6,$fp
	move	$5,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$21

	blez	$20,$L361
	lw	$28,24($sp)

	lw	$25,%call16(memcpy)($28)
	andi	$6,$20,0x00ff
	sll	$6,$6,2
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$19

	lw	$28,24($sp)
$L361:
	lw	$2,36($sp)
	lw	$3,140($sp)
	lw	$2,0($2)
	bne	$3,$2,$L365
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

$L365:
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
	.frame	$sp,344,$31		# vars= 272, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-344
	lui	$28,%hi(__gnu_local_gp)
	sw	$16,304($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,312($sp)
	sw	$17,308($sp)
	move	$17,$7
	sw	$31,340($sp)
	sw	$fp,336($sp)
	sw	$23,332($sp)
	sw	$22,328($sp)
	sw	$21,324($sp)
	sw	$20,320($sp)
	sw	$19,316($sp)
	.cprestore	24
	lw	$16,364($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$4,68($sp)
	sw	$5,52($sp)
	sw	$2,56($sp)
	lb	$3,0($16)
	lw	$2,0($2)
	sw	$6,32($sp)
	sll	$4,$3,2
	sw	$3,44($sp)
	sw	$2,300($sp)
	addu	$18,$5,$4
	sw	$4,64($sp)
	blez	$3,$L367
	sw	$18,48($sp)

	andi	$2,$3,0x00ff
	lw	$25,%call16(memcpy)($28)
	sll	$22,$2,2
	addiu	$2,$sp,140
	move	$6,$22
	move	$4,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sw	$2,36($sp)

	addiu	$fp,$sp,204
	lw	$28,24($sp)
	move	$6,$22
	move	$5,$18
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$fp

	beq	$17,$0,$L385
	lw	$28,24($sp)

	lw	$25,%call16(memcpy)($28)
	addiu	$2,$sp,236
	move	$6,$22
	sw	$2,40($sp)
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$2

	lw	$28,24($sp)
$L372:
	lw	$25,%call16(memmove)($28)
	addiu	$17,$sp,108
	lw	$5,36($sp)
	move	$6,$22
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	addiu	$18,$sp,172

	move	$6,$22
	lw	$28,24($sp)
	move	$5,$fp
	lw	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$18

$L370:
	lw	$19,40($sp)
	move	$7,$16
	lw	$20,36($sp)
	move	$5,$fp
	li	$23,1			# 0x1
	move	$6,$19
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$20

	move	$7,$16
	lw	$25,164($16)
	move	$6,$19
	move	$5,$fp
	jalr	$25
	move	$4,$20

	move	$7,$16
	move	$6,$19
	move	$5,$18
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$17

	lh	$2,360($sp)
	addiu	$2,$2,-2
	seh	$22,$2
	blez	$22,$L387
	lw	$2,32($sp)

$L373:
	sra	$3,$22,5
	lw	$2,32($sp)
	sw	$16,16($sp)
	sll	$fp,$23,$22
	sll	$3,$3,2
	addu	$3,$2,$3
	lw	$3,0($3)
	and	$fp,$fp,$3
	sltu	$fp,$fp,1
	subu	$5,$23,$fp
	sll	$fp,$fp,5
	sll	$5,$5,5
	addu	$19,$17,$fp
	addu	$20,$17,$5
	addu	$21,$18,$5
	addu	$fp,$18,$fp
	move	$6,$19
	move	$7,$fp
	move	$5,$21
	.option	pic0
	jal	XYcZ_addC
	.option	pic2
	move	$4,$20

	move	$7,$21
	sw	$16,16($sp)
	move	$6,$20
	move	$5,$fp
	.option	pic0
	jal	XYcZ_add
	.option	pic2
	move	$4,$19

	addiu	$2,$22,-1
	andi	$3,$2,0xffff
	bne	$3,$0,$L373
	seh	$22,$2

	lw	$2,32($sp)
$L387:
	addiu	$22,$sp,76
	addiu	$19,$16,4
	move	$23,$19
	lw	$21,0($2)
	sw	$16,16($sp)
	nor	$2,$0,$21
	andi	$2,$2,0x1
	andi	$21,$21,0x1
	sll	$21,$21,5
	sll	$2,$2,5
	addu	$fp,$17,$21
	addu	$3,$17,$2
	addu	$21,$18,$21
	addu	$2,$18,$2
	sw	$3,60($sp)
	move	$6,$3
	move	$7,$2
	sw	$2,32($sp)
	move	$5,$21
	.option	pic0
	jal	XYcZ_addC
	.option	pic2
	move	$4,$fp

	move	$7,$19
	lw	$20,44($sp)
	move	$6,$17
	lw	$5,36($sp)
	move	$4,$22
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	sw	$20,16($sp)

	move	$6,$21
	lw	$19,40($sp)
	move	$5,$22
	lb	$7,0($16)
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$19

	move	$5,$19
	lw	$25,172($16)
	jalr	$25
	move	$4,$22

	move	$5,$22
	lw	$6,52($sp)
	move	$4,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	lb	$7,0($16)

	move	$5,$19
	lw	$25,172($16)
	jalr	$25
	move	$4,$22

	move	$7,$20
	move	$6,$23
	move	$5,$22
	.option	pic0
	jal	uECC_vli_modInv
	.option	pic2
	move	$4,$22

	move	$5,$22
	lw	$6,48($sp)
	move	$4,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	lb	$7,0($16)

	move	$5,$19
	lw	$25,172($16)
	jalr	$25
	move	$4,$22

	move	$6,$fp
	lb	$7,0($16)
	move	$5,$22
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$19

	move	$5,$19
	lw	$25,172($16)
	jalr	$25
	move	$4,$22

	move	$7,$21
	lw	$2,32($sp)
	move	$6,$fp
	lw	$3,60($sp)
	sw	$16,16($sp)
	move	$5,$2
	.option	pic0
	jal	XYcZ_add
	.option	pic2
	move	$4,$3

	move	$7,$16
	move	$6,$22
	move	$5,$18
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$17

	blez	$20,$L366
	lw	$28,24($sp)

	lbu	$20,44($sp)
	move	$5,$17
	lw	$16,68($sp)
	lw	$25,%call16(memcpy)($28)
	sll	$20,$20,2
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$6,$20

	move	$6,$20
	lw	$28,24($sp)
	move	$5,$18
	lw	$3,64($sp)
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	addu	$4,$16,$3

	lw	$28,24($sp)
$L366:
	lw	$2,56($sp)
	lw	$3,300($sp)
	lw	$2,0($2)
	bne	$3,$2,$L386
	lw	$31,340($sp)

	lw	$fp,336($sp)
	lw	$23,332($sp)
	lw	$22,328($sp)
	lw	$21,324($sp)
	lw	$20,320($sp)
	lw	$19,316($sp)
	lw	$18,312($sp)
	lw	$17,308($sp)
	lw	$16,304($sp)
	jr	$31
	addiu	$sp,$sp,344

$L385:
	lw	$25,%call16(memset)($28)
	addiu	$2,$sp,236
	move	$5,$0
	sw	$2,40($sp)
	move	$6,$22
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$2

	li	$2,1			# 0x1
	lw	$28,24($sp)
	.option	pic0
	b	$L372
	.option	pic2
	sw	$2,236($sp)

$L367:
	addiu	$2,$sp,140
	addiu	$fp,$sp,204
	bne	$7,$0,$L384
	sw	$2,36($sp)

	li	$2,1			# 0x1
	sw	$2,236($sp)
$L384:
	addiu	$2,$sp,236
	addiu	$17,$sp,108
	addiu	$18,$sp,172
	.option	pic0
	b	$L370
	.option	pic2
	sw	$2,40($sp)

$L386:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lh	$15,2($7)
	addiu	$2,$15,31
	bgez	$2,$L404
	sra	$24,$2,5

	addiu	$2,$15,62
	sra	$24,$2,5
$L404:
	seb	$25,$24
	blez	$25,$L402
	addiu	$13,$24,-1

	addiu	$2,$4,4
	andi	$14,$13,0x00ff
	sll	$14,$14,2
	addiu	$10,$7,36
	addu	$14,$14,$2
	move	$2,$0
	move	$12,$10
	move	$11,$5
$L394:
	lw	$8,0($4)
	addiu	$11,$11,4
	lw	$3,0($12)
	addiu	$4,$4,4
	addiu	$12,$12,4
	addu	$3,$8,$3
	addu	$3,$3,$2
	xor	$9,$8,$3
	sw	$3,-4($11)
	sltu	$9,$9,1
	and	$9,$9,$2
	sltu	$8,$3,$8
	bne	$14,$4,$L394
	or	$2,$9,$8

	beq	$2,$0,$L403
	sll	$3,$25,5

$L396:
	andi	$11,$13,0x00ff
$L405:
	sll	$11,$11,2
	addiu	$3,$5,4
	move	$7,$0
	addu	$11,$11,$3
	move	$9,$10
$L397:
	lw	$4,0($5)
	addiu	$6,$6,4
	lw	$3,0($9)
	addiu	$5,$5,4
	addiu	$9,$9,4
	addu	$3,$4,$3
	addu	$3,$3,$7
	xor	$8,$4,$3
	sw	$3,-4($6)
	sltu	$8,$8,1
	and	$7,$8,$7
	sltu	$4,$3,$4
	bne	$5,$11,$L397
	or	$7,$7,$4

$L408:
	jr	$31
	nop

$L403:
	slt	$3,$15,$3
	beq	$3,$0,$L405
	andi	$11,$13,0x00ff

	sra	$3,$15,5
$L406:
	li	$2,1			# 0x1
	sll	$3,$3,2
	sll	$2,$2,$15
	addu	$3,$5,$3
	lw	$3,0($3)
	and	$2,$2,$3
	blez	$25,$L408
	sltu	$2,$0,$2

	addiu	$10,$7,36
	.option	pic0
	b	$L396
	.option	pic2
	addiu	$13,$24,-1

$L402:
	sll	$2,$25,5
	slt	$2,$15,$2
	bne	$2,$0,$L406
	sra	$3,$15,5

	jr	$31
	nop

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
	addiu	$2,$sp,44
	sw	$18,120($sp)
	move	$3,$5
	lw	$18,%got(__stack_chk_guard)($28)
	move	$5,$2
	sw	$17,116($sp)
	move	$17,$6
	addiu	$6,$sp,76
	sw	$16,112($sp)
	move	$7,$17
	.cprestore	24
	sw	$31,124($sp)
	move	$16,$4
	sw	$6,40($sp)
	move	$4,$3
	sw	$2,36($sp)
	lw	$8,0($18)
	sw	$8,108($sp)
	.option	pic0
	jal	regularize_k
	nop

	.option	pic2
	move	$7,$0
	sltu	$2,$2,1
	lhu	$3,2($17)
	sll	$2,$2,2
	sw	$17,20($sp)
	addiu	$5,$17,68
	addiu	$2,$2,112
	addiu	$3,$3,1
	addu	$2,$2,$sp
	seh	$3,$3
	sw	$3,16($sp)
	move	$4,$16
	.option	pic0
	jal	EccPoint_mult
	.option	pic2
	lw	$6,-76($2)

	lbu	$2,0($17)
	sll	$2,$2,1
	seb	$3,$2
	blez	$3,$L413
	lw	$28,24($sp)

	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	addiu	$5,$16,4
	andi	$3,$2,0x00ff
	sll	$3,$3,2
	move	$2,$0
	addu	$3,$3,$5
	move	$4,$16
$L411:
	lw	$5,0($4)
	addiu	$4,$4,4
	bne	$3,$4,$L411
	or	$2,$2,$5

	sltu	$2,$0,$2
$L409:
	lw	$4,108($sp)
	lw	$3,0($18)
	bne	$4,$3,$L416
	lw	$31,124($sp)

	lw	$18,120($sp)
	lw	$17,116($sp)
	lw	$16,112($sp)
	jr	$31
	addiu	$sp,$sp,128

$L413:
	.option	pic0
	b	$L409
	.option	pic2
	move	$2,$0

$L416:
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
	blez	$5,$L422
	addiu	$12,$5,-1

	move	$3,$0
	move	$2,$0
	li	$11,-4			# 0xfffffffffffffffc
$L419:
	subu	$2,$12,$2
	addiu	$8,$3,1
	and	$7,$2,$11
	addu	$7,$6,$7
	sll	$10,$2,3
	addu	$9,$4,$3
	lw	$7,0($7)
	seb	$3,$8
	slt	$8,$3,$5
	move	$2,$3
	srl	$7,$7,$10
	bne	$8,$0,$L419
	sb	$7,0($9)

$L422:
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
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$2,$6,3
	sw	$17,32($sp)
	move	$17,$5
	sw	$16,28($sp)
	move	$16,$6
	sw	$31,36($sp)
	bgez	$2,$L424
	.cprestore	16

	addiu	$2,$6,6
$L424:
	sra	$2,$2,2
	seb	$3,$2
	blez	$3,$L428
	addiu	$2,$2,-1

	lw	$25,%call16(memset)($28)
	move	$5,$0
	andi	$6,$2,0x00ff
	addiu	$6,$6,1
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$6,$6,2

	move	$4,$2
$L428:
	blez	$16,$L432
	lw	$31,36($sp)

	addiu	$6,$16,-1
	move	$2,$0
	move	$3,$0
	li	$5,-4			# 0xfffffffffffffffc
$L429:
	subu	$3,$6,$3
	addu	$8,$17,$2
	and	$7,$3,$5
	addu	$7,$4,$7
	lbu	$9,0($8)
	sll	$3,$3,3
	addiu	$2,$2,1
	lw	$8,0($7)
	sll	$3,$9,$3
	seb	$2,$2
	or	$3,$8,$3
	slt	$8,$2,$16
	sw	$3,0($7)
	bne	$8,$0,$L429
	move	$3,$2

	lw	$31,36($sp)
$L432:
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

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
	.frame	$sp,120,$31		# vars= 56, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$9,$5
	sw	$20,96($sp)
	lui	$20,%hi(g_rng_function)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$16,80($sp)
	move	$16,$4
	sw	$5,32($sp)
	move	$4,$9
	sw	$2,36($sp)
	move	$5,$6
	sw	$18,88($sp)
	move	$18,$6
	.cprestore	16
	sw	$31,116($sp)
	sw	$fp,112($sp)
	sw	$23,108($sp)
	sw	$22,104($sp)
	sw	$21,100($sp)
	sw	$19,92($sp)
	sw	$17,84($sp)
	lw	$2,0($2)
	sw	$2,76($sp)
	.option	pic0
	jal	uECC_vli_numBits
	nop

	.option	pic2
	lw	$25,%lo(g_rng_function)($20)
	beq	$25,$0,$L434
	lw	$28,16($sp)

	sll	$3,$18,2
	addiu	$4,$sp,44
	sw	$3,24($sp)
	subu	$2,$0,$2
	sw	$4,28($sp)
	addiu	$10,$3,-4
	lw	$5,24($sp)
	li	$19,-1			# 0xffffffffffffffff
	addu	$23,$3,$4
	move	$4,$16
	addu	$21,$16,$10
	srl	$19,$19,$2
	addu	$17,$3,$16
	jalr	$25
	addu	$22,$9,$3

	lw	$28,16($sp)
	beq	$2,$0,$L434
	li	$fp,64			# 0x40

$L459:
	lw	$2,0($21)
	and	$2,$2,$19
	blez	$18,$L437
	sw	$2,0($21)

	move	$3,$0
	move	$2,$16
$L435:
	lw	$4,0($2)
	addiu	$2,$2,4
	bne	$17,$2,$L435
	or	$3,$3,$4

	beq	$3,$0,$L437
	move	$11,$0

	lw	$13,28($sp)
	lw	$5,32($sp)
	move	$12,$16
$L438:
	lw	$2,0($5)
	addiu	$13,$13,4
	lw	$3,0($12)
	addiu	$5,$5,4
	addiu	$12,$12,4
	subu	$4,$2,$11
	subu	$4,$4,$3
	xor	$3,$2,$4
	sw	$4,-4($13)
	sltu	$3,$3,1
	and	$3,$3,$11
	sltu	$2,$2,$4
	bne	$22,$5,$L438
	or	$11,$3,$2

	lw	$2,28($sp)
	move	$3,$0
$L439:
	lw	$4,0($2)
	addiu	$2,$2,4
	bne	$2,$23,$L439
	or	$3,$3,$4

	sll	$11,$11,1
	sltu	$2,$0,$3
	subu	$2,$2,$11
	li	$3,1			# 0x1
	andi	$2,$2,0x00ff
	beq	$2,$3,$L433
	li	$2,1			# 0x1

$L437:
	addiu	$fp,$fp,-1
	beq	$fp,$0,$L434
	lw	$25,%lo(g_rng_function)($20)

	move	$4,$16
	jalr	$25
	lw	$5,24($sp)

	bne	$2,$0,$L459
	lw	$28,16($sp)

$L434:
	move	$2,$0
$L433:
	lw	$3,36($sp)
	lw	$4,76($sp)
	lw	$3,0($3)
	bne	$4,$3,$L460
	lw	$31,116($sp)

	lw	$fp,112($sp)
	lw	$23,108($sp)
	lw	$22,104($sp)
	lw	$21,100($sp)
	lw	$20,96($sp)
	lw	$19,92($sp)
	lw	$18,88($sp)
	lw	$17,84($sp)
	lw	$16,80($sp)
	jr	$31
	addiu	$sp,$sp,120

$L460:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

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
	.frame	$sp,160,$31		# vars= 104, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-160
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,144($sp)
	sw	$19,140($sp)
	sw	$31,156($sp)
	sw	$22,152($sp)
	sw	$21,148($sp)
	sw	$18,136($sp)
	sw	$17,132($sp)
	sw	$16,128($sp)
	.cprestore	16
	lw	$19,%got(__stack_chk_guard)($28)
	lb	$7,0($5)
	lw	$3,0($19)
	andi	$20,$7,0x00ff
	sll	$2,$20,1
	sw	$3,124($sp)
	seb	$3,$2
	blez	$3,$L471
	move	$22,$4

	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	move	$21,$5
	andi	$3,$2,0x00ff
	addiu	$5,$4,4
	sll	$3,$3,2
	addu	$3,$3,$5
	move	$4,$0
	move	$2,$22
$L463:
	lw	$5,0($2)
	addiu	$2,$2,4
	bne	$2,$3,$L463
	or	$4,$4,$5

	beq	$4,$0,$L471
	addiu	$20,$20,-1

	seb	$16,$20
	bltz	$16,$L474
	andi	$20,$20,0x00ff

	sll	$20,$20,2
	li	$5,-1			# 0xffffffffffffffff
	addu	$8,$21,$20
	addu	$11,$22,$20
	move	$10,$8
	.option	pic0
	b	$L465
	.option	pic2
	move	$3,$16

$L481:
	bne	$2,$0,$L474
	addiu	$3,$3,-1

	addiu	$10,$10,-4
	seb	$3,$3
	beq	$3,$5,$L474
	addiu	$11,$11,-4

$L465:
	lw	$2,4($10)
	lw	$9,0($11)
	sltu	$4,$9,$2
	beq	$4,$0,$L481
	sltu	$2,$2,$9

	sll	$6,$7,2
	li	$10,-1			# 0xffffffffffffffff
	addu	$6,$22,$6
	move	$3,$16
	.option	pic0
	b	$L467
	.option	pic2
	addu	$5,$6,$20

$L482:
	bne	$2,$0,$L474
	addiu	$3,$3,-1

	addiu	$8,$8,-4
	seb	$3,$3
	beq	$3,$10,$L474
	addiu	$5,$5,-4

$L467:
	lw	$2,4($8)
	lw	$4,0($5)
	sltu	$9,$4,$2
	beq	$9,$0,$L482
	sltu	$2,$2,$4

	addiu	$17,$sp,60
	move	$5,$6
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	addiu	$18,$sp,28
	lw	$25,172($21)
	move	$5,$17
	jalr	$25
	move	$4,$18

	move	$5,$22
	lw	$25,168($21)
	move	$4,$17
	jalr	$25
	move	$6,$21

	addu	$4,$18,$20
	lw	$28,16($sp)
	addu	$5,$17,$20
	move	$3,$0
	li	$7,-1			# 0xffffffffffffffff
$L468:
	lw	$2,0($4)
	addiu	$16,$16,-1
	lw	$6,0($5)
	addiu	$4,$4,-4
	seb	$16,$16
	addiu	$5,$5,-4
	xor	$2,$2,$6
	bne	$16,$7,$L468
	or	$3,$3,$2

	li	$2,-3			# 0xfffffffffffffffd
	movz	$2,$0,$3
$L461:
	lw	$4,124($sp)
	lw	$3,0($19)
	bne	$4,$3,$L483
	lw	$31,156($sp)

	lw	$22,152($sp)
	lw	$21,148($sp)
	lw	$20,144($sp)
	lw	$19,140($sp)
	lw	$18,136($sp)
	lw	$17,132($sp)
	lw	$16,128($sp)
	jr	$31
	addiu	$sp,$sp,160

$L474:
	.option	pic0
	b	$L461
	.option	pic2
	li	$2,-2			# 0xfffffffffffffffe

$L471:
	.option	pic0
	b	$L461
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L483:
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
	.frame	$sp,120,$31		# vars= 72, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,100($sp)
	.cprestore	16
	sw	$31,116($sp)
	sw	$19,108($sp)
	move	$19,$4
	sw	$18,104($sp)
	move	$18,$5
	sw	$16,96($sp)
	addiu	$16,$sp,28
	sw	$20,112($sp)
	lw	$17,%got(__stack_chk_guard)($28)
	lb	$20,1($5)
	move	$5,$4
	move	$4,$16
	lw	$2,0($17)
	move	$6,$20
	sw	$2,92($sp)
	.option	pic0
	jal	uECC_vli_bytesToNative
	nop

	.option	pic2
	addu	$5,$19,$20
	lb	$4,0($18)
	move	$6,$20
	sll	$4,$4,2
	.option	pic0
	jal	uECC_vli_bytesToNative
	.option	pic2
	addu	$4,$16,$4

	addiu	$3,$sp,88
	lw	$28,16($sp)
	.option	pic0
	b	$L486
	.option	pic2
	addiu	$4,$18,128

$L492:
	bne	$2,$0,$L485
	addiu	$2,$3,-4

	beq	$16,$3,$L491
	addiu	$4,$4,-4

	move	$3,$2
$L486:
	lw	$2,0($3)
	lw	$6,0($4)
	sltu	$7,$6,$2
	beq	$7,$0,$L492
	sltu	$2,$2,$6

$L485:
	move	$5,$18
	.option	pic0
	jal	uECC_valid_point
	.option	pic2
	move	$4,$16

	lw	$28,16($sp)
$L484:
	lw	$4,92($sp)
	lw	$3,0($17)
	bne	$4,$3,$L493
	lw	$31,116($sp)

	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

$L491:
	.option	pic0
	b	$L484
	.option	pic2
	li	$2,-4			# 0xfffffffffffffffc

$L493:
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
	.frame	$sp,152,$31		# vars= 104, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-152
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,140($sp)
	sw	$17,132($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lh	$17,2($6)
	sw	$18,136($sp)
	move	$18,$6
	sw	$16,128($sp)
	move	$16,$5
	sw	$31,148($sp)
	addiu	$6,$17,7
	sw	$20,144($sp)
	.cprestore	16
	lw	$2,0($19)
	sw	$2,124($sp)
	bgez	$6,$L524
	addiu	$20,$sp,28

	addiu	$6,$17,14
$L524:
	sra	$6,$6,3
	move	$5,$4
	.option	pic0
	jal	uECC_vli_bytesToNative
	.option	pic2
	move	$4,$20

	addiu	$2,$17,31
	bgez	$2,$L496
	lw	$28,16($sp)

	addiu	$2,$17,62
$L496:
	sra	$2,$2,5
	seb	$3,$2
	blez	$3,$L500
	addiu	$2,$2,-1

	addiu	$11,$sp,32
	andi	$9,$2,0x00ff
	sll	$9,$9,2
	move	$3,$0
	addu	$11,$11,$9
	move	$5,$20
	move	$2,$20
$L499:
	lw	$4,0($2)
	addiu	$2,$2,4
	bne	$11,$2,$L499
	or	$3,$3,$4

	beq	$3,$0,$L500
	addiu	$4,$sp,60

	addiu	$10,$18,36
	move	$7,$0
	move	$12,$4
	move	$6,$4
$L501:
	lw	$2,0($10)
	addiu	$6,$6,4
	lw	$8,0($5)
	addiu	$5,$5,4
	addiu	$10,$10,4
	subu	$3,$2,$7
	subu	$3,$3,$8
	xor	$8,$2,$3
	sw	$3,-4($6)
	sltu	$8,$8,1
	and	$7,$8,$7
	sltu	$2,$2,$3
	bne	$11,$5,$L501
	or	$7,$7,$2

	addiu	$2,$4,4
	move	$3,$0
	.option	pic0
	b	$L502
	.option	pic2
	addu	$9,$2,$9

$L521:
	addiu	$2,$2,4
$L502:
	lw	$5,0($12)
	move	$12,$2
	bne	$9,$2,$L521
	or	$3,$3,$5

	sll	$7,$7,1
	sltu	$17,$0,$3
	subu	$17,$17,$7
	li	$2,1			# 0x1
	andi	$17,$17,0x00ff
	beq	$17,$2,$L522
	move	$6,$18

$L500:
	move	$2,$0
$L494:
	lw	$4,124($sp)
	lw	$3,0($19)
	bne	$4,$3,$L523
	lw	$31,148($sp)

	lw	$20,144($sp)
	lw	$19,140($sp)
	lw	$18,136($sp)
	lw	$17,132($sp)
	lw	$16,128($sp)
	jr	$31
	addiu	$sp,$sp,152

$L522:
	.option	pic0
	jal	EccPoint_compute_public_key
	.option	pic2
	move	$5,$20

	beq	$2,$0,$L500
	lw	$28,16($sp)

	lb	$7,1($18)
	blez	$7,$L505
	move	$3,$16

	addiu	$9,$7,-1
	move	$2,$0
	li	$8,-4			# 0xfffffffffffffffc
	subu	$17,$17,$16
$L504:
	subu	$2,$9,$2
	addu	$5,$17,$3
	and	$4,$2,$8
	addiu	$4,$4,128
	sll	$6,$2,3
	addu	$4,$4,$sp
	addiu	$3,$3,1
	seb	$2,$5
	lw	$4,-68($4)
	slt	$5,$2,$7
	srl	$4,$4,$6
	bne	$5,$0,$L504
	sb	$4,-1($3)

	lb	$6,0($18)
	lb	$7,1($18)
	blez	$7,$L505
	sll	$6,$6,2

	addu	$16,$16,$7
	addiu	$3,$6,128
	li	$8,1			# 0x1
	addiu	$10,$7,-1
	move	$2,$0
	addu	$6,$3,$sp
	li	$9,-4			# 0xfffffffffffffffc
	subu	$8,$8,$16
$L506:
	subu	$2,$10,$2
	addu	$4,$8,$16
	and	$3,$2,$9
	addu	$3,$6,$3
	sll	$5,$2,3
	addiu	$16,$16,1
	lw	$3,-68($3)
	seb	$2,$4
	slt	$4,$2,$7
	srl	$3,$3,$5
	bne	$4,$0,$L506
	sb	$3,-1($16)

$L505:
	.option	pic0
	b	$L494
	.option	pic2
	li	$2,1			# 0x1

$L523:
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
