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
	beq	$7,$0,$L26
	addu	$2,$4,$10

	blez	$6,$L27
	move	$8,$4

	move	$7,$0
$L28:
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
	bne	$2,$8,$L28
	or	$7,$7,$6

	sltu	$3,$4,$2
	beq	$3,$0,$L33
	nop

$L30:
	move	$6,$0
$L34:
	lw	$5,-4($2)
	addiu	$2,$2,-4
	srl	$3,$5,1
	or	$3,$3,$6
	sw	$3,0($2)
	sltu	$3,$4,$2
	bne	$3,$0,$L34
	sll	$6,$5,31

$L33:
	beq	$7,$0,$L43
	addiu	$10,$10,-4

	li	$3,-2147483648			# 0xffffffff80000000
	addu	$4,$4,$10
	lw	$2,0($4)
	or	$2,$2,$3
	jr	$31
	sw	$2,0($4)

$L26:
	sltu	$3,$4,$2
	bne	$3,$0,$L34
	move	$6,$0

$L43:
	jr	$31
	nop

$L27:
	sltu	$3,$4,$2
	bne	$3,$0,$L30
	move	$7,$0

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	vli_modInv_update
	.size	vli_modInv_update, .-vli_modInv_update
	.align	2
	.globl	vli_mmod_fast_secp256r1
	.set	nomips16
	.set	nomicromips
	.ent	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
	.frame	$sp,40,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$11,0($5)
	addiu	$sp,$sp,-40
	sw	$11,0($4)
	lw	$10,4($5)
	sw	$17,8($sp)
	sw	$18,12($sp)
	sw	$10,4($4)
	lw	$24,8($5)
	sw	$19,16($sp)
	sw	$16,4($sp)
	sw	$24,8($4)
	lw	$9,12($5)
	sw	$fp,36($sp)
	sw	$23,32($sp)
	sw	$9,12($4)
	lw	$7,16($5)
	sw	$22,28($sp)
	sw	$21,24($sp)
	sw	$7,16($4)
	lw	$6,20($5)
	sw	$20,20($sp)
	sw	$6,20($4)
	lw	$25,24($5)
	sw	$25,24($4)
	lw	$8,28($5)
	sw	$8,28($4)
	lw	$2,44($5)
	lw	$12,48($5)
	lw	$3,52($5)
	sll	$14,$2,1
	lw	$15,56($5)
	sll	$17,$12,1
	lw	$16,60($5)
	addu	$13,$14,$9
	sltu	$2,$14,$2
	addu	$17,$17,$2
	sw	$13,12($4)
	sltu	$9,$13,$9
	addu	$14,$9,$17
	xor	$18,$12,$17
	sltu	$18,$18,1
	addu	$14,$14,$7
	sll	$19,$3,1
	and	$2,$2,$18
	sw	$14,16($4)
	sltu	$12,$17,$12
	or	$12,$12,$2
	addu	$17,$19,$12
	xor	$19,$14,$7
	sltu	$19,$19,1
	xor	$18,$3,$17
	addu	$2,$17,$6
	and	$9,$9,$19
	sltu	$7,$14,$7
	or	$7,$7,$9
	sltu	$9,$18,1
	addu	$2,$2,$7
	sll	$18,$15,1
	and	$12,$12,$9
	sw	$2,20($4)
	sltu	$9,$17,$3
	or	$3,$9,$12
	addu	$12,$18,$3
	xor	$18,$2,$6
	sltu	$18,$18,1
	addu	$9,$12,$25
	xor	$17,$15,$12
	and	$7,$7,$18
	sltu	$6,$2,$6
	or	$6,$6,$7
	sltu	$17,$17,1
	addu	$9,$9,$6
	and	$3,$3,$17
	sll	$7,$16,1
	sw	$9,24($4)
	sltu	$15,$12,$15
	or	$15,$15,$3
	addu	$7,$7,$15
	xor	$3,$9,$25
	sltu	$3,$3,1
	addu	$12,$7,$8
	and	$6,$6,$3
	sltu	$3,$9,$25
	or	$3,$3,$6
	addu	$12,$12,$3
	xor	$19,$16,$7
	sw	$12,28($4)
	xor	$6,$12,$8
	lw	$fp,48($5)
	sltu	$6,$6,1
	lw	$20,52($5)
	and	$6,$3,$6
	lw	$21,56($5)
	sltu	$19,$19,1
	sll	$3,$fp,1
	lw	$18,60($5)
	sll	$22,$20,1
	addu	$17,$3,$13
	sltu	$fp,$3,$fp
	addu	$22,$22,$fp
	sw	$17,12($4)
	sltu	$23,$17,$13
	addu	$25,$23,$22
	xor	$13,$20,$22
	sltu	$13,$13,1
	addu	$25,$25,$14
	and	$13,$fp,$13
	sll	$3,$21,1
	sw	$25,16($4)
	sltu	$20,$22,$20
	or	$20,$20,$13
	addu	$3,$3,$20
	xor	$fp,$25,$14
	sltu	$fp,$fp,1
	xor	$22,$21,$3
	addu	$13,$3,$2
	and	$23,$23,$fp
	sltu	$14,$25,$14
	or	$14,$14,$23
	sltu	$23,$22,1
	addu	$13,$13,$14
	sll	$22,$18,1
	sltu	$3,$3,$21
	sw	$13,20($4)
	and	$20,$20,$23
	or	$20,$3,$20
	addu	$21,$22,$20
	xor	$3,$13,$2
	sltu	$3,$3,1
	addu	$22,$21,$9
	and	$14,$14,$3
	sltu	$3,$13,$2
	or	$3,$3,$14
	addu	$14,$22,$3
	xor	$2,$18,$21
	sltu	$2,$2,1
	sw	$14,24($4)
	xor	$22,$14,$9
	and	$20,$20,$2
	sltu	$2,$21,$18
	or	$2,$2,$20
	sltu	$18,$22,1
	and	$3,$3,$18
	addu	$2,$2,$12
	sltu	$9,$14,$9
	or	$9,$9,$3
	addu	$2,$2,$9
	and	$19,$15,$19
	sw	$2,28($4)
	sltu	$8,$12,$8
	lw	$15,32($5)
	or	$18,$8,$6
	lw	$3,36($5)
	sltu	$21,$7,$16
	lw	$22,40($5)
	xor	$20,$2,$12
	addu	$15,$11,$15
	lw	$7,56($5)
	addu	$8,$3,$10
	lw	$16,60($5)
	sltu	$3,$15,$11
	sw	$15,0($4)
	addu	$8,$8,$3
	addu	$11,$22,$24
	xor	$6,$8,$10
	sw	$8,4($4)
	sltu	$6,$6,1
	and	$6,$3,$6
	sltu	$3,$8,$10
	or	$3,$3,$6
	addu	$11,$11,$3
	addu	$10,$7,$14
	xor	$6,$11,$24
	sw	$11,8($4)
	sltu	$6,$6,1
	and	$3,$3,$6
	sltu	$6,$11,$24
	or	$6,$6,$3
	addu	$6,$6,$17
	addu	$16,$16,$2
	sltu	$7,$6,$17
	sw	$6,12($4)
	addu	$7,$7,$25
	sltu	$20,$20,1
	sltu	$3,$7,$25
	sw	$7,16($4)
	addu	$3,$3,$13
	sltu	$12,$2,$12
	sltu	$13,$3,$13
	sw	$3,20($4)
	addu	$10,$10,$13
	and	$9,$9,$20
	xor	$24,$10,$14
	sw	$10,24($4)
	sltu	$24,$24,1
	sltu	$14,$10,$14
	and	$13,$13,$24
	or	$24,$14,$13
	addu	$16,$16,$24
	or	$17,$21,$19
	sw	$16,28($4)
	or	$9,$12,$9
	lw	$14,36($5)
	addu	$17,$18,$17
	lw	$25,40($5)
	xor	$18,$16,$2
	lw	$12,44($5)
	addu	$17,$17,$9
	addu	$14,$15,$14
	lw	$20,52($5)
	lw	$22,56($5)
	sltu	$18,$18,1
	sltu	$15,$14,$15
	lw	$21,60($5)
	addu	$13,$15,$8
	lw	$19,32($5)
	addu	$9,$12,$11
	sw	$14,0($4)
	addu	$13,$13,$25
	addu	$25,$20,$6
	xor	$12,$13,$8
	sw	$13,4($4)
	sltu	$12,$12,1
	and	$15,$15,$12
	sltu	$12,$13,$8
	or	$12,$12,$15
	addu	$9,$9,$12
	addu	$8,$22,$7
	xor	$15,$9,$11
	sw	$9,8($4)
	sltu	$15,$15,1
	and	$15,$12,$15
	sltu	$12,$9,$11
	or	$12,$12,$15
	addu	$25,$25,$12
	addu	$21,$21,$3
	xor	$11,$25,$6
	sw	$25,12($4)
	sltu	$11,$11,1
	sltu	$6,$25,$6
	and	$12,$12,$11
	or	$11,$6,$12
	addu	$8,$8,$11
	addu	$20,$20,$10
	xor	$6,$8,$7
	sw	$8,16($4)
	sltu	$6,$6,1
	and	$11,$11,$6
	sltu	$7,$8,$7
	or	$7,$7,$11
	addu	$6,$21,$7
	addu	$19,$19,$16
	xor	$11,$6,$3
	sw	$6,20($4)
	sltu	$11,$11,1
	and	$11,$7,$11
	sltu	$7,$6,$3
	or	$7,$7,$11
	addu	$3,$20,$7
	and	$24,$24,$18
	xor	$11,$3,$10
	sw	$3,24($4)
	sltu	$11,$11,1
	and	$7,$7,$11
	sltu	$11,$3,$10
	or	$11,$11,$7
	addu	$10,$19,$11
	sltu	$2,$16,$2
	sw	$10,28($4)
	or	$7,$2,$24
	lw	$12,44($5)
	addu	$7,$17,$7
	lw	$18,48($5)
	xor	$15,$10,$16
	sltu	$15,$15,1
	lw	$24,52($5)
	subu	$12,$14,$12
	lw	$2,32($5)
	and	$11,$11,$15
	lw	$15,40($5)
	sltu	$17,$14,$12
	sw	$12,0($4)
	subu	$14,$13,$17
	sltu	$16,$10,$16
	subu	$14,$14,$18
	or	$16,$16,$11
	xor	$11,$14,$13
	sw	$14,4($4)
	sltu	$11,$11,1
	and	$17,$17,$11
	subu	$24,$9,$24
	sltu	$11,$13,$14
	or	$11,$11,$17
	subu	$24,$24,$11
	addu	$7,$7,$16
	xor	$13,$24,$9
	sw	$24,8($4)
	sltu	$13,$13,1
	and	$13,$11,$13
	sltu	$11,$9,$24
	or	$11,$11,$13
	subu	$13,$25,$11
	subu	$2,$3,$2
	xor	$9,$13,$25
	sw	$13,12($4)
	sltu	$9,$9,1
	and	$11,$11,$9
	sltu	$9,$25,$13
	or	$9,$9,$11
	subu	$11,$8,$9
	subu	$15,$10,$15
	xor	$25,$11,$8
	sw	$11,16($4)
	sltu	$25,$25,1
	and	$9,$9,$25
	sltu	$8,$8,$11
	or	$8,$8,$9
	subu	$16,$6,$8
	xor	$9,$16,$6
	sw	$16,20($4)
	sltu	$9,$9,1
	and	$9,$8,$9
	sltu	$8,$6,$16
	or	$8,$8,$9
	subu	$2,$2,$8
	xor	$6,$2,$3
	sw	$2,24($4)
	sltu	$6,$6,1
	and	$9,$8,$6
	sltu	$8,$3,$2
	or	$8,$8,$9
	subu	$3,$15,$8
	sw	$3,28($4)
	xor	$6,$3,$10
	lw	$15,48($5)
	sltu	$6,$6,1
	lw	$25,52($5)
	and	$9,$8,$6
	sltu	$10,$10,$3
	lw	$18,56($5)
	subu	$15,$12,$15
	lw	$19,60($5)
	or	$17,$10,$9
	lw	$8,36($5)
	sltu	$6,$12,$15
	lw	$12,44($5)
	addu	$10,$6,$25
	sw	$15,0($4)
	subu	$9,$13,$19
	subu	$10,$14,$10
	subu	$7,$7,$17
	xor	$25,$10,$14
	sw	$10,4($4)
	sltu	$25,$25,1
	and	$25,$6,$25
	sltu	$6,$14,$10
	or	$6,$6,$25
	subu	$14,$24,$6
	subu	$8,$2,$8
	subu	$14,$14,$18
	subu	$12,$3,$12
	xor	$25,$24,$14
	sw	$14,8($4)
	sltu	$25,$25,1
	and	$6,$6,$25
	sltu	$24,$24,$14
	or	$24,$24,$6
	subu	$9,$9,$24
	xor	$6,$9,$13
	sw	$9,12($4)
	sltu	$6,$6,1
	and	$24,$24,$6
	sltu	$13,$13,$9
	or	$13,$13,$24
	subu	$17,$11,$13
	xor	$6,$11,$17
	sw	$17,16($4)
	sltu	$6,$6,1
	and	$13,$13,$6
	sltu	$11,$11,$17
	or	$11,$11,$13
	subu	$25,$16,$11
	xor	$6,$25,$16
	sw	$25,20($4)
	sltu	$6,$6,1
	and	$11,$11,$6
	sltu	$6,$16,$25
	or	$6,$6,$11
	subu	$8,$8,$6
	xor	$11,$8,$2
	sw	$8,24($4)
	sltu	$11,$11,1
	and	$6,$6,$11
	sltu	$2,$2,$8
	or	$2,$2,$6
	subu	$12,$12,$2
	sw	$12,28($4)
	xor	$6,$12,$3
	lw	$13,52($5)
	sltu	$6,$6,1
	lw	$16,56($5)
	and	$2,$2,$6
	sltu	$6,$3,$12
	lw	$18,60($5)
	subu	$13,$15,$13
	lw	$24,32($5)
	or	$19,$6,$2
	lw	$3,36($5)
	sltu	$11,$15,$13
	lw	$2,40($5)
	addu	$6,$11,$16
	lw	$15,48($5)
	subu	$3,$17,$3
	sw	$13,0($4)
	subu	$6,$10,$6
	subu	$2,$25,$2
	xor	$16,$10,$6
	sw	$6,4($4)
	sltu	$16,$16,1
	sltu	$10,$10,$6
	and	$11,$11,$16
	or	$11,$10,$11
	subu	$16,$14,$11
	subu	$15,$12,$15
	subu	$16,$16,$18
	subu	$7,$7,$19
	xor	$10,$14,$16
	sw	$16,8($4)
	sltu	$10,$10,1
	and	$11,$11,$10
	sltu	$14,$14,$16
	or	$14,$14,$11
	subu	$11,$9,$14
	subu	$11,$11,$24
	xor	$10,$9,$11
	sw	$11,12($4)
	sltu	$10,$10,1
	and	$24,$14,$10
	sltu	$14,$9,$11
	or	$14,$14,$24
	subu	$3,$3,$14
	xor	$9,$17,$3
	sw	$3,16($4)
	sltu	$9,$9,1
	and	$14,$14,$9
	sltu	$10,$17,$3
	or	$10,$10,$14
	subu	$2,$2,$10
	xor	$9,$25,$2
	sw	$2,20($4)
	sltu	$9,$9,1
	and	$10,$10,$9
	sltu	$9,$25,$2
	or	$9,$9,$10
	subu	$24,$8,$9
	xor	$10,$8,$24
	sw	$24,24($4)
	sltu	$10,$10,1
	and	$10,$9,$10
	sltu	$9,$8,$24
	or	$9,$9,$10
	subu	$8,$15,$9
	sw	$8,28($4)
	xor	$10,$8,$12
	lw	$14,56($5)
	sltu	$10,$10,1
	lw	$18,60($5)
	and	$9,$9,$10
	sltu	$10,$12,$8
	lw	$15,44($5)
	subu	$14,$13,$14
	lw	$17,36($5)
	or	$9,$10,$9
	lw	$12,40($5)
	sltu	$13,$13,$14
	lw	$25,52($5)
	addu	$10,$13,$18
	sw	$14,0($4)
	subu	$7,$7,$9
	subu	$10,$6,$10
	xor	$5,$6,$10
	sw	$10,4($4)
	sltu	$5,$5,1
	and	$13,$13,$5
	sltu	$9,$6,$10
	or	$9,$9,$13
	subu	$13,$16,$9
	xor	$5,$16,$13
	sw	$13,8($4)
	sltu	$5,$5,1
	and	$9,$9,$5
	sltu	$6,$16,$13
	or	$6,$6,$9
	addu	$9,$6,$17
	subu	$9,$11,$9
	xor	$5,$11,$9
	sw	$9,12($4)
	sltu	$5,$5,1
	and	$6,$6,$5
	sltu	$5,$11,$9
	or	$5,$5,$6
	subu	$6,$3,$5
	subu	$12,$6,$12
	xor	$6,$3,$12
	sw	$12,16($4)
	sltu	$6,$6,1
	and	$5,$5,$6
	sltu	$3,$3,$12
	or	$3,$3,$5
	subu	$11,$2,$3
	subu	$11,$11,$15
	xor	$5,$2,$11
	sw	$11,20($4)
	sltu	$5,$5,1
	and	$5,$3,$5
	sltu	$3,$2,$11
	or	$3,$3,$5
	subu	$15,$24,$3
	xor	$2,$24,$15
	sw	$15,24($4)
	sltu	$2,$2,1
	and	$3,$3,$2
	sltu	$2,$24,$15
	or	$2,$2,$3
	subu	$6,$8,$2
	subu	$6,$6,$25
	xor	$3,$6,$8
	sltu	$3,$3,1
	and	$2,$2,$3
	sltu	$8,$8,$6
	or	$2,$8,$2
	subu	$7,$7,$2
	bltz	$7,$L46
	sw	$6,28($4)

	li	$9,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L45
	.option	pic2
	li	$8,1			# 0x1

$L63:
	lw	$13,4($4)
	lw	$5,0($4)
	lw	$15,8($4)
	lw	$14,12($4)
	lw	$12,16($4)
	lw	$11,20($4)
	lw	$10,24($4)
$L49:
	addiu	$3,$5,1
	addiu	$2,$13,1
	sltu	$5,$5,$3
	sw	$3,0($4)
	subu	$2,$2,$5
	addiu	$3,$15,1
	xor	$24,$2,$13
	sw	$2,4($4)
	sltu	$24,$24,1
	sltu	$2,$13,$2
	and	$5,$5,$24
	or	$5,$2,$5
	subu	$3,$3,$5
	addiu	$2,$10,-1
	xor	$13,$3,$15
	sw	$3,8($4)
	sltu	$13,$13,1
	and	$5,$5,$13
	sltu	$3,$15,$3
	or	$3,$3,$5
	subu	$5,$14,$3
	xor	$13,$5,$14
	sw	$5,12($4)
	sltu	$13,$13,1
	and	$3,$3,$13
	sltu	$5,$14,$5
	or	$5,$5,$3
	subu	$3,$12,$5
	xor	$13,$3,$12
	sw	$3,16($4)
	sltu	$13,$13,1
	sltu	$3,$12,$3
	and	$5,$5,$13
	or	$5,$3,$5
	subu	$3,$11,$5
	xor	$12,$3,$11
	sw	$3,20($4)
	sltu	$12,$12,1
	and	$5,$5,$12
	sltu	$3,$11,$3
	or	$3,$3,$5
	subu	$2,$2,$3
	xor	$5,$2,$10
	sw	$2,24($4)
	sltu	$5,$5,1
	and	$3,$3,$5
	sltu	$2,$10,$2
	or	$2,$2,$3
	subu	$3,$8,$2
	addu	$3,$3,$6
	xor	$5,$3,$6
	sw	$3,28($4)
	sltu	$5,$5,1
	sltu	$6,$6,$3
	and	$2,$2,$5
	or	$6,$6,$2
	subu	$7,$7,$6
	move	$6,$3
$L45:
	bne	$7,$0,$L63
	nop

	bne	$6,$9,$L64
	lw	$fp,36($sp)

	lw	$10,24($4)
	beq	$10,$0,$L65
	lw	$23,32($sp)

	lw	$11,20($4)
	lw	$12,16($4)
	lw	$14,12($4)
	bne	$10,$8,$L62
	lw	$15,8($4)

	bne	$11,$0,$L62
	nop

	bne	$12,$0,$L62
	nop

	bne	$14,$0,$L62
	nop

	bne	$15,$6,$L66
	lw	$22,28($sp)

	lw	$2,4($4)
	bne	$2,$6,$L67
	lw	$21,24($sp)

	lw	$13,0($4)
	bne	$13,$9,$L64
	move	$11,$0

	move	$12,$0
	move	$15,$13
	.option	pic0
	b	$L49
	.option	pic2
	move	$5,$13

$L46:
	move	$2,$14
$L68:
	addiu	$14,$14,-1
	move	$8,$10
	sltu	$2,$14,$2
	addiu	$3,$2,-1
	move	$5,$13
	addu	$10,$10,$3
	move	$3,$9
	xor	$24,$8,$10
	sltu	$24,$24,1
	and	$2,$2,$24
	sltu	$8,$10,$8
	or	$8,$8,$2
	addiu	$24,$8,-1
	move	$2,$12
	addu	$13,$13,$24
	move	$24,$11
	xor	$25,$5,$13
	sltu	$25,$25,1
	and	$8,$8,$25
	sltu	$5,$13,$5
	or	$5,$5,$8
	addu	$9,$9,$5
	move	$8,$15
	xor	$25,$3,$9
	sltu	$25,$25,1
	and	$5,$5,$25
	sltu	$3,$9,$3
	or	$3,$3,$5
	addu	$12,$12,$3
	move	$5,$6
	xor	$25,$2,$12
	sltu	$25,$25,1
	and	$3,$3,$25
	sltu	$2,$12,$2
	or	$2,$2,$3
	addu	$11,$11,$2
	xor	$3,$24,$11
	sltu	$3,$3,1
	and	$2,$2,$3
	sltu	$24,$11,$24
	or	$2,$24,$2
	addiu	$2,$2,1
	addu	$15,$15,$2
	sltu	$3,$15,$8
	addiu	$2,$3,-1
	addu	$6,$6,$2
	xor	$2,$5,$6
	sltu	$2,$2,1
	and	$3,$3,$2
	sltu	$2,$6,$5
	or	$2,$2,$3
	addu	$7,$2,$7
	bne	$7,$0,$L68
	move	$2,$14

	sw	$14,0($4)
	sw	$10,4($4)
	sw	$13,8($4)
	sw	$9,12($4)
	sw	$12,16($4)
	sw	$11,20($4)
	sw	$15,24($4)
	sw	$6,28($4)
	lw	$fp,36($sp)
$L64:
	lw	$23,32($sp)
$L65:
	lw	$22,28($sp)
$L66:
	lw	$21,24($sp)
$L67:
	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	jr	$31
	addiu	$sp,$sp,40

$L62:
	lw	$13,4($4)
	.option	pic0
	b	$L49
	.option	pic2
	lw	$5,0($4)

	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	uECC_vli_modInv.part.0
	.type	uECC_vli_modInv.part.0, @function
uECC_vli_modInv.part.0:
	.frame	$sp,240,$31		# vars= 176, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-240
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,204($sp)
	move	$17,$6
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$16,200($sp)
	move	$16,$7
	sw	$31,236($sp)
	sw	$2,52($sp)
	sw	$fp,232($sp)
	sw	$23,228($sp)
	sw	$22,224($sp)
	sw	$21,220($sp)
	sw	$20,216($sp)
	sw	$19,212($sp)
	sw	$18,208($sp)
	.cprestore	16
	sw	$4,60($sp)
	lw	$2,0($2)
	sw	$2,196($sp)
	blez	$7,$L70
	andi	$22,$7,0x00ff

	lw	$25,%call16(memcpy)($28)
	sll	$22,$22,2
	addiu	$21,$sp,68
	move	$6,$22
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$21

	addiu	$20,$sp,100
	lw	$28,16($sp)
	move	$6,$22
	move	$5,$17
	move	$4,$20
	addiu	$19,$sp,132
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	addiu	$18,$sp,164

	move	$5,$0
	lw	$28,16($sp)
	move	$6,$22
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$19

	li	$2,1			# 0x1
	lw	$28,16($sp)
	move	$5,$0
	move	$6,$22
	sw	$2,132($sp)
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$18

	lw	$28,16($sp)
$L71:
	sll	$11,$16,2
	addiu	$2,$16,-1
	addu	$25,$20,$11
	addu	$13,$21,$11
	addiu	$3,$25,-4
	seb	$12,$2
	sll	$14,$12,2
	sw	$3,40($sp)
	addiu	$3,$13,-4
	li	$7,-4			# 0xfffffffffffffffc
	sw	$3,48($sp)
	addu	$3,$18,$14
	subu	$7,$7,$11
	sw	$3,32($sp)
	addu	$3,$19,$14
	andi	$2,$2,0x00ff
	addu	$24,$21,$14
	sw	$3,28($sp)
	addu	$15,$20,$14
	sw	$2,56($sp)
	addu	$22,$18,$11
	addu	$fp,$25,$7
	addu	$14,$13,$7
	bltz	$12,$L69
	addu	$11,$19,$11

	sltu	$2,$21,$13
	sw	$2,44($sp)
	li	$23,-1			# 0xffffffffffffffff
	sltu	$2,$20,$25
	sw	$2,36($sp)
$L72:
	move	$8,$15
	move	$7,$24
	.option	pic0
	b	$L100
	.option	pic2
	move	$3,$12

$L141:
	bne	$2,$0,$L116
	addiu	$7,$7,-4

	addiu	$3,$3,-1
	seb	$3,$3
	beq	$3,$23,$L140
	addiu	$8,$8,-4

$L100:
	lw	$2,0($7)
	lw	$4,0($8)
	sltu	$5,$4,$2
	beq	$5,$0,$L141
	sltu	$2,$2,$4

	lw	$2,68($sp)
	andi	$2,$2,0x1
	beq	$2,$0,$L142
	li	$3,1			# 0x1

$L134:
	lw	$2,100($sp)
	andi	$2,$2,0x1
	beq	$2,$0,$L143
	move	$5,$2

	li	$2,1			# 0x1
	beq	$3,$2,$L80
	nop

	blez	$16,$L82
	move	$2,$0

	move	$7,$21
	move	$6,$20
$L81:
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
	bne	$25,$6,$L81
	or	$2,$2,$3

$L82:
	lw	$2,36($sp)
	beq	$2,$0,$L94
	move	$2,$0

	lw	$4,40($sp)
	move	$5,$2
$L92:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$fp,$L92
	sll	$5,$3,31

$L94:
	lw	$5,28($sp)
	move	$3,$12
	.option	pic0
	b	$L93
	.option	pic2
	lw	$4,32($sp)

$L144:
	sltu	$2,$2,$6
	bne	$2,$0,$L96
	addiu	$3,$3,-1

	addiu	$4,$4,-4
	seb	$3,$3
	beq	$3,$23,$L95
	addiu	$5,$5,-4

$L93:
	lw	$2,0($4)
	lw	$6,0($5)
	sltu	$7,$6,$2
	beq	$7,$0,$L144
	nop

$L95:
	blez	$16,$L79
	move	$2,$0

$L147:
	move	$7,$19
	move	$6,$18
$L98:
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
	bne	$22,$6,$L98
	or	$2,$2,$3

$L79:
	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$18

	.option	pic0
	b	$L72
	.option	pic2
	lw	$28,16($sp)

$L116:
	lw	$2,68($sp)
	andi	$2,$2,0x1
	bne	$2,$0,$L134
	li	$3,-1			# 0xffffffffffffffff

$L142:
	lw	$3,44($sp)
	move	$5,$2
	beq	$3,$0,$L76
	lw	$4,48($sp)

$L74:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$14,$L74
	sll	$5,$3,31

$L76:
	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$19

	.option	pic0
	b	$L72
	.option	pic2
	lw	$28,16($sp)

$L143:
	lw	$3,36($sp)
	beq	$3,$0,$L79
	lw	$4,40($sp)

$L78:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$fp,$L78
	sll	$5,$3,31

	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$18

	.option	pic0
	b	$L72
	.option	pic2
	lw	$28,16($sp)

$L80:
	blez	$16,$L83
	move	$2,$0

	move	$7,$20
	move	$6,$21
$L84:
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
	bne	$13,$6,$L84
	or	$2,$2,$3

$L83:
	lw	$2,44($sp)
	beq	$2,$0,$L87
	move	$2,$0

	lw	$4,48($sp)
	move	$5,$2
$L85:
	lw	$3,0($4)
	addiu	$4,$4,-4
	srl	$2,$3,1
	or	$2,$2,$5
	sw	$2,4($4)
	bne	$4,$14,$L85
	sll	$5,$3,31

$L87:
	lw	$5,32($sp)
	move	$3,$12
	.option	pic0
	b	$L86
	.option	pic2
	lw	$4,28($sp)

$L145:
	sltu	$2,$2,$6
	bne	$2,$0,$L89
	addiu	$3,$3,-1

	addiu	$4,$4,-4
	seb	$3,$3
	beq	$3,$23,$L88
	addiu	$5,$5,-4

$L86:
	lw	$2,0($4)
	lw	$6,0($5)
	sltu	$7,$6,$2
	beq	$7,$0,$L145
	nop

$L88:
	blez	$16,$L76
	move	$2,$0

$L148:
	move	$7,$18
	move	$6,$19
$L91:
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
	bne	$6,$11,$L91
	or	$2,$2,$3

	move	$6,$16
	move	$5,$17
	.option	pic0
	jal	vli_modInv_update
	.option	pic2
	move	$4,$19

	.option	pic0
	b	$L72
	.option	pic2
	lw	$28,16($sp)

$L140:
	blez	$16,$L69
	lw	$2,56($sp)

	move	$5,$19
	lw	$25,%call16(memcpy)($28)
	lw	$4,60($sp)
	addiu	$6,$2,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sll	$6,$6,2

	lw	$28,16($sp)
$L69:
	lw	$2,52($sp)
	lw	$3,196($sp)
	lw	$2,0($2)
	bne	$3,$2,$L146
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

$L96:
	blez	$16,$L79
	move	$2,$0

	move	$7,$17
	move	$6,$18
$L97:
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
	bne	$6,$22,$L97
	or	$2,$2,$4

	.option	pic0
	b	$L147
	.option	pic2
	move	$2,$0

$L89:
	blez	$16,$L76
	move	$2,$0

	move	$7,$17
	move	$6,$19
$L90:
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
	bne	$11,$6,$L90
	or	$2,$2,$4

	.option	pic0
	b	$L148
	.option	pic2
	move	$2,$0

$L70:
	li	$2,1			# 0x1
	addiu	$21,$sp,68
	addiu	$20,$sp,100
	sw	$2,132($sp)
	addiu	$19,$sp,132
	.option	pic0
	b	$L71
	.option	pic2
	addiu	$18,$sp,164

$L146:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	uECC_vli_modInv.part.0
	.size	uECC_vli_modInv.part.0, .-uECC_vli_modInv.part.0
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
	bgez	$2,$L152
	nop

	addiu	$2,$3,14
$L152:
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
	blez	$5,$L159
	lui	$28,%hi(__gnu_local_gp)

	andi	$5,$5,0x00ff
	addiu	$28,$28,%lo(__gnu_local_gp)
	sll	$6,$5,2
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jr	$25
	move	$5,$0

$L159:
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
	blez	$5,$L163
	sll	$5,$5,2

	move	$2,$0
	addu	$5,$4,$5
$L162:
	lw	$3,0($4)
	addiu	$4,$4,4
	bne	$5,$4,$L162
	or	$2,$2,$3

	jr	$31
	sltu	$2,$2,1

$L163:
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
	bltz	$6,$L174
	andi	$3,$3,0x00ff

	sll	$3,$3,2
	li	$8,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L168
	.option	pic2
	addu	$3,$4,$3

$L169:
	beq	$2,$8,$L167
	nop

	move	$6,$2
$L168:
	lw	$7,0($3)
	andi	$5,$6,0x00ff
	addiu	$2,$5,-1
	addiu	$3,$3,-4
	beq	$7,$0,$L169
	seb	$2,$2

	addiu	$5,$5,1
	seb	$6,$5
$L170:
	sll	$2,$6,2
	addu	$4,$4,$2
	lw	$2,-4($4)
	beq	$2,$0,$L176
	move	$3,$0

$L173:
	srl	$2,$2,1
	bne	$2,$0,$L173
	addiu	$3,$3,1

	andi	$2,$3,0xffff
$L172:
	addiu	$6,$6,-1
	sll	$6,$6,5
	addu	$2,$2,$6
	jr	$31
	seh	$2,$2

$L174:
	move	$6,$5
$L167:
	bne	$6,$0,$L170
	move	$2,$0

	jr	$31
	nop

$L176:
	.option	pic0
	b	$L172
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
	blez	$6,$L182
	sll	$6,$6,2

	addu	$3,$5,$6
$L180:
	lw	$2,0($5)
	addiu	$5,$5,4
	addiu	$4,$4,4
	bne	$5,$3,$L180
	sw	$2,-4($4)

$L182:
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
	bltz	$2,$L186
	andi	$6,$6,0x00ff

	sll	$6,$6,2
	li	$8,-1			# 0xffffffffffffffff
	addu	$4,$4,$6
	.option	pic0
	b	$L185
	.option	pic2
	addu	$5,$5,$6

$L190:
	bne	$3,$0,$L188
	nop

	beq	$2,$8,$L186
	nop

$L185:
	lw	$3,0($4)
	addiu	$2,$2,-1
	lw	$6,0($5)
	addiu	$4,$4,-4
	addiu	$5,$5,-4
	seb	$2,$2
	sltu	$7,$6,$3
	beq	$7,$0,$L190
	sltu	$3,$3,$6

	jr	$31
	li	$2,1			# 0x1

$L186:
	jr	$31
	move	$2,$0

$L188:
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
	bltz	$3,$L194
	andi	$6,$6,0x00ff

	sll	$6,$6,2
	move	$2,$0
	addu	$4,$4,$6
	addu	$5,$5,$6
	li	$8,-1			# 0xffffffffffffffff
$L193:
	lw	$6,0($4)
	addiu	$3,$3,-1
	lw	$7,0($5)
	addiu	$4,$4,-4
	seb	$3,$3
	addiu	$5,$5,-4
	xor	$6,$6,$7
	bne	$3,$8,$L193
	or	$2,$2,$6

	jr	$31
	sltu	$2,$0,$2

$L194:
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
	blez	$7,$L200
	sll	$7,$7,2

	move	$3,$0
	move	$2,$0
$L199:
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
	bne	$7,$3,$L199
	or	$2,$2,$8

	jr	$31
	nop

$L200:
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
	blez	$6,$L207
	sll	$6,$6,2

	addiu	$8,$sp,28
	addu	$12,$4,$6
	move	$2,$0
	move	$10,$8
$L204:
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
	bne	$12,$4,$L204
	or	$2,$2,$3

	addu	$4,$6,$8
	move	$3,$0
$L205:
	lw	$5,0($8)
	addiu	$8,$8,4
	bne	$4,$8,$L205
	or	$3,$3,$5

	sll	$2,$2,1
	sltu	$3,$0,$3
	subu	$2,$3,$2
$L203:
	lw	$4,60($sp)
	lw	$3,0($11)
	bne	$4,$3,$L211
	lw	$31,68($sp)

	jr	$31
	addiu	$sp,$sp,72

$L207:
	.option	pic0
	b	$L203
	.option	pic2
	move	$2,$0

$L211:
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
	lb	$12,16($sp)
	blez	$12,$L228
	sll	$11,$12,2

	move	$3,$0
	move	$9,$0
$L216:
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
	bne	$11,$3,$L216
	or	$9,$9,$8

	beq	$9,$0,$L229
	addiu	$2,$12,-1

	addu	$11,$4,$11
$L233:
	move	$5,$0
$L221:
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
	bne	$4,$11,$L221
	or	$5,$5,$2

$L234:
	jr	$31
	nop

$L229:
	seb	$2,$2
$L214:
	sll	$5,$2,2
	li	$10,-1			# 0xffffffffffffffff
	addu	$6,$7,$5
	.option	pic0
	b	$L220
	.option	pic2
	addu	$5,$4,$5

$L230:
	bne	$3,$0,$L219
	nop

	beq	$2,$10,$L219
	nop

$L220:
	lw	$3,0($6)
	addiu	$2,$2,-1
	lw	$8,0($5)
	addiu	$6,$6,-4
	addiu	$5,$5,-4
	seb	$2,$2
	sltu	$9,$8,$3
	beq	$9,$0,$L230
	sltu	$3,$3,$8

	jr	$31
	nop

$L219:
	blez	$12,$L234
	sll	$11,$12,2

	.option	pic0
	b	$L233
	.option	pic2
	addu	$11,$4,$11

$L228:
	addiu	$2,$12,-1
	seb	$2,$2
	bgez	$2,$L214
	li	$2,127			# 0x7f

	jr	$31
	nop

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$11,16($sp)
	blez	$11,$L244
	sll	$11,$11,2

	move	$2,$0
	move	$9,$0
$L237:
	addu	$3,$5,$2
	addu	$8,$6,$2
	addu	$12,$4,$2
	lw	$3,0($3)
	addiu	$2,$2,4
	lw	$10,0($8)
	subu	$8,$3,$9
	subu	$8,$8,$10
	xor	$10,$3,$8
	sw	$8,0($12)
	sltu	$10,$10,1
	and	$9,$10,$9
	sltu	$3,$3,$8
	bne	$11,$2,$L237
	or	$9,$9,$3

	beq	$9,$0,$L244
	addu	$11,$4,$11

	move	$5,$0
$L238:
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
	bne	$11,$4,$L238
	or	$5,$5,$3

$L244:
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
	blez	$18,$L245
	sll	$21,$18,2

	move	$3,$0
	addu	$8,$21,$6
	move	$20,$7
	move	$17,$4
	move	$19,$5
	move	$16,$6
	move	$10,$6
	move	$2,$6
$L247:
	lw	$4,0($2)
	addiu	$2,$2,4
	bne	$8,$2,$L247
	or	$3,$3,$4

	sw	$8,44($sp)
	beq	$3,$0,$L245
	sw	$10,40($sp)

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
	lw	$10,40($sp)
	andi	$5,$5,0x1
	beq	$5,$0,$L249
	lw	$8,44($sp)

	move	$7,$0
	move	$5,$17
	move	$12,$23
$L250:
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
	bne	$6,$5,$L250
	or	$7,$4,$3

	sltu	$2,$17,$6
	beq	$2,$0,$L254
	move	$5,$0

	move	$2,$6
$L253:
	lw	$4,-4($2)
	addiu	$2,$2,-4
	srl	$3,$4,1
	or	$3,$3,$5
	sw	$3,0($2)
	sltu	$3,$17,$2
	bne	$3,$0,$L253
	sll	$5,$4,31

$L254:
	addiu	$2,$21,-4
	sll	$7,$7,31
	addu	$2,$17,$2
	lw	$3,0($2)
	or	$3,$3,$7
	sw	$3,0($2)
$L252:
	lb	$7,0($20)
$L270:
	move	$6,$17
	move	$5,$17
	sw	$8,44($sp)
	move	$4,$22
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	sw	$10,40($sp)

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
	lw	$8,44($sp)
	lw	$10,40($sp)
$L258:
	lw	$2,0($6)
	addiu	$6,$6,4
	addiu	$17,$17,4
	bne	$8,$6,$L258
	sw	$2,-4($17)

	addu	$11,$19,$21
	move	$2,$19
$L259:
	lw	$3,0($2)
	addiu	$2,$2,4
	addiu	$10,$10,4
	bne	$2,$11,$L259
	sw	$3,-4($10)

	lw	$25,%call16(memcpy)($28)
	andi	$6,$18,0x00ff
	lw	$5,32($sp)
	sll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$19

	lw	$28,24($sp)
$L245:
	lw	$3,180($sp)
	lw	$2,0($fp)
	bne	$3,$2,$L269
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

$L249:
	sltu	$3,$17,$6
	beq	$3,$0,$L252
	move	$2,$6

$L256:
	lw	$4,-4($2)
	addiu	$2,$2,-4
	srl	$3,$4,1
	or	$3,$3,$5
	sw	$3,0($2)
	sltu	$3,$17,$2
	bne	$3,$0,$L256
	sll	$5,$4,31

	.option	pic0
	b	$L270
	.option	pic2
	lb	$7,0($20)

$L269:
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
	.frame	$sp,168,$31		# vars= 104, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-168
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$2,3			# 0x3
	sw	$21,156($sp)
	sw	$17,140($sp)
	move	$17,$6
	.cprestore	24
	move	$6,$5
	sw	$31,164($sp)
	sw	$22,160($sp)
	addiu	$22,$17,4
	sw	$19,148($sp)
	move	$19,$5
	sw	$18,144($sp)
	addiu	$18,$sp,68
	sw	$16,136($sp)
	move	$16,$4
	sw	$20,152($sp)
	move	$4,$18
	sw	$2,36($sp)
	lw	$21,%got(__stack_chk_guard)($28)
	lb	$20,0($17)
	sw	$0,40($sp)
	sw	$0,44($sp)
	sw	$0,48($sp)
	move	$7,$20
	sw	$0,52($sp)
	sw	$0,56($sp)
	sw	$0,60($sp)
	sw	$0,64($sp)
	lw	$2,0($21)
	sw	$2,132($sp)
	.option	pic0
	jal	uECC_vli_mult
	nop

	.option	pic2
	move	$5,$18
	lw	$25,172($17)
	jalr	$25
	move	$4,$16

	addiu	$6,$sp,36
	move	$7,$22
	sw	$20,16($sp)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$4,$16

	move	$6,$19
	lb	$7,0($17)
	move	$5,$16
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$18

	move	$5,$18
	lw	$25,172($17)
	jalr	$25
	move	$4,$16

	addiu	$6,$17,132
	sw	$20,16($sp)
	move	$7,$22
	move	$5,$16
	.option	pic0
	jal	uECC_vli_modAdd
	.option	pic2
	move	$4,$16

	lw	$3,132($sp)
	lw	$2,0($21)
	bne	$3,$2,$L274
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

$L274:
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
	.frame	$sp,256,$31		# vars= 184, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-256
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,220($sp)
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
	sw	$16,216($sp)
	addiu	$16,$sp,148
	sw	$18,224($sp)
	move	$20,$4
	lw	$17,272($sp)
	move	$4,$19
	lw	$2,%got(__stack_chk_guard)($28)
	addiu	$21,$17,4
	lb	$18,0($17)
	sw	$2,44($sp)
	move	$7,$21
	lw	$2,0($2)
	sw	$18,16($sp)
	sw	$2,212($sp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	move	$7,$18
	move	$6,$19
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	addiu	$2,$sp,116
	lw	$25,172($17)
	move	$5,$16
	sw	$2,36($sp)
	jalr	$25
	move	$4,$19

	move	$6,$19
	lb	$7,0($17)
	move	$5,$20
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$4,$20
	lw	$25,172($17)
	jalr	$25
	move	$5,$16

	move	$6,$19
	lb	$7,0($17)
	move	$5,$22
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$4,$22
	lw	$25,172($17)
	jalr	$25
	move	$5,$16

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
	lb	$7,0($17)
	move	$5,$fp
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
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
	lb	$7,0($17)
	move	$5,$23
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$4,$22
	lw	$25,172($17)
	jalr	$25
	move	$5,$16

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
	lb	$7,0($17)
	move	$5,$23
	move	$4,$16
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	sw	$13,36($sp)

	move	$4,$23
	lw	$25,172($17)
	jalr	$25
	move	$5,$16

	move	$5,$23
	move	$4,$23
	sw	$18,16($sp)
	move	$7,$21
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	move	$6,$fp

	move	$6,$19
	lb	$7,0($17)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$23,36($sp)
	lw	$25,172($17)
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
	lb	$7,0($17)
	move	$5,$20
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
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

	blez	$18,$L275
	lw	$28,24($sp)

	lw	$25,%call16(memcpy)($28)
	andi	$6,$18,0x00ff
	sll	$6,$6,2
	move	$5,$23
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$22

	lw	$28,24($sp)
$L275:
	lw	$2,44($sp)
	lw	$3,212($sp)
	lw	$2,0($2)
	bne	$3,$2,$L279
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

$L279:
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
	.frame	$sp,216,$31		# vars= 152, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-216
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$3,$sp,108
	sw	$19,188($sp)
	sw	$22,200($sp)
	addiu	$22,$7,-1
	lw	$19,%got(__stack_chk_guard)($28)
	sw	$17,180($sp)
	sll	$17,$7,6
	sw	$20,192($sp)
	move	$20,$5
	sw	$5,40($sp)
	seb	$5,$22
	sw	$fp,208($sp)
	andi	$17,$17,0xffff
	sw	$21,196($sp)
	andi	$fp,$22,0x00ff
	sw	$18,184($sp)
	move	$21,$6
	sw	$16,176($sp)
	move	$18,$7
	sw	$31,212($sp)
	move	$16,$4
	sw	$23,204($sp)
	.cprestore	16
	sw	$3,36($sp)
	lw	$2,0($19)
	sw	$2,172($sp)
	bltz	$5,$L313
	sll	$3,$fp,2

	li	$6,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L282
	.option	pic2
	addu	$3,$21,$3

$L283:
	addiu	$2,$2,-1
	seb	$2,$2
	beq	$2,$6,$L281
	addiu	$3,$3,-4

	move	$5,$2
$L282:
	lw	$4,0($3)
	beq	$4,$0,$L283
	andi	$2,$5,0x00ff

	addiu	$2,$2,1
	seb	$5,$2
	sll	$2,$5,2
$L362:
	addu	$2,$21,$2
	lw	$2,-4($2)
	beq	$2,$0,$L286
	move	$3,$0

$L287:
	srl	$2,$2,1
	bne	$2,$0,$L287
	addiu	$3,$3,1

	andi	$3,$3,0xffff
$L286:
	addiu	$2,$5,-1
	sll	$2,$2,5
	subu	$17,$17,$2
	subu	$17,$17,$3
	andi	$17,$17,0xffff
$L285:
	seh	$17,$17
	bgez	$17,$L288
	move	$2,$17

	addiu	$2,$17,31
$L288:
	li	$3,-2147483648			# 0xffffffff80000000
	sra	$2,$2,5
	addiu	$3,$3,31
	and	$3,$17,$3
	bgez	$3,$L289
	seb	$23,$2

	addiu	$3,$3,-1
	li	$4,-32			# 0xffffffffffffffe0
	or	$3,$3,$4
	addiu	$3,$3,1
$L289:
	blez	$23,$L293
	seh	$3,$3

	addiu	$6,$2,-1
	lw	$25,%call16(memset)($28)
	move	$5,$0
	sw	$3,28($sp)
	andi	$6,$6,0x00ff
	addiu	$6,$6,1
	addiu	$4,$sp,44
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$6,$6,2

	lw	$28,16($sp)
	lw	$3,28($sp)
$L293:
	blez	$3,$L360
	sll	$4,$23,2

	beq	$18,$0,$L315
	sll	$6,$23,2

	lw	$4,0($21)
	addiu	$5,$sp,8
	addiu	$2,$6,168
	sll	$8,$4,$3
	addu	$6,$2,$5
	li	$2,32			# 0x20
	li	$7,1			# 0x1
	subu	$2,$2,$3
	sw	$8,-132($6)
	beq	$18,$7,$L359
	srl	$5,$4,$2

	addiu	$4,$23,1
	lw	$6,4($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$6,$3
	addiu	$4,$4,168
	li	$8,2			# 0x2
	addu	$4,$4,$9
	or	$5,$7,$5
	srl	$6,$6,$2
	beq	$18,$8,$L359
	sw	$5,-132($4)

	addiu	$4,$23,2
	lw	$5,8($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,3			# 0x3
	addu	$4,$4,$9
	or	$6,$7,$6
	srl	$5,$5,$2
	beq	$18,$8,$L359
	sw	$6,-132($4)

	addiu	$4,$23,3
	lw	$6,12($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$6,$3
	addiu	$4,$4,168
	li	$8,4			# 0x4
	addu	$4,$4,$9
	or	$5,$7,$5
	srl	$6,$6,$2
	beq	$18,$8,$L359
	sw	$5,-132($4)

	addiu	$4,$23,4
	lw	$5,16($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,5			# 0x5
	addu	$4,$4,$9
	or	$6,$7,$6
	srl	$5,$5,$2
	beq	$18,$8,$L359
	sw	$6,-132($4)

	addiu	$4,$23,5
	lw	$6,20($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$6,$3
	addiu	$4,$4,168
	li	$8,6			# 0x6
	addu	$4,$4,$9
	or	$5,$7,$5
	srl	$6,$6,$2
	beq	$18,$8,$L359
	sw	$5,-132($4)

	addiu	$4,$23,6
	lw	$5,24($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,7			# 0x7
	addu	$4,$4,$9
	or	$6,$7,$6
	srl	$5,$5,$2
	beq	$18,$8,$L359
	sw	$6,-132($4)

	addiu	$4,$23,7
	lw	$6,28($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$6,$3
	addiu	$4,$4,168
	li	$8,8			# 0x8
	addu	$4,$4,$9
	or	$5,$7,$5
	srl	$6,$6,$2
	beq	$18,$8,$L359
	sw	$5,-132($4)

	addiu	$4,$23,8
	lw	$5,32($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,9			# 0x9
	addu	$4,$4,$9
	or	$7,$7,$6
	srl	$6,$5,$2
	beq	$18,$8,$L359
	sw	$7,-132($4)

	addiu	$4,$23,9
	lw	$5,36($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,10			# 0xa
	addu	$4,$4,$9
	or	$7,$7,$6
	srl	$6,$5,$2
	beq	$18,$8,$L359
	sw	$7,-132($4)

	addiu	$4,$23,10
	lw	$5,40($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,11			# 0xb
	addu	$4,$4,$9
	or	$6,$7,$6
	srl	$5,$5,$2
	beq	$18,$8,$L359
	sw	$6,-132($4)

	addiu	$4,$23,11
	lw	$6,44($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$6,$3
	addiu	$4,$4,168
	li	$8,12			# 0xc
	addu	$4,$4,$9
	or	$5,$7,$5
	srl	$6,$6,$2
	beq	$18,$8,$L359
	sw	$5,-132($4)

	addiu	$4,$23,12
	lw	$5,48($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,13			# 0xd
	addu	$4,$4,$9
	or	$7,$7,$6
	srl	$6,$5,$2
	beq	$18,$8,$L359
	sw	$7,-132($4)

	addiu	$4,$23,13
	lw	$5,52($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,14			# 0xe
	addu	$4,$4,$9
	or	$7,$7,$6
	srl	$6,$5,$2
	beq	$18,$8,$L359
	sw	$7,-132($4)

	addiu	$4,$23,14
	lw	$5,56($21)
	addiu	$9,$sp,8
	sll	$4,$4,2
	sll	$7,$5,$3
	addiu	$4,$4,168
	li	$8,15			# 0xf
	addu	$4,$4,$9
	or	$6,$7,$6
	srl	$5,$5,$2
	beq	$18,$8,$L359
	sw	$6,-132($4)

	addiu	$2,$23,15
	lw	$4,60($21)
	addiu	$23,$sp,44
	sll	$2,$2,2
	sll	$3,$4,$3
	addiu	$2,$2,168
	addiu	$4,$sp,8
	or	$3,$3,$5
	addu	$2,$2,$4
	sw	$3,-132($2)
$L295:
	move	$2,$18
$L294:
	sll	$2,$2,2
	sll	$10,$22,2
	addu	$6,$23,$2
	addiu	$3,$sp,8
	addu	$15,$6,$2
	subu	$2,$6,$2
	sll	$11,$18,2
	addiu	$4,$2,-4
	addiu	$2,$10,168
	sll	$8,$18,1
	addu	$10,$2,$3
	addiu	$2,$11,168
	addiu	$25,$6,-4
	li	$9,1			# 0x1
	li	$24,1			# 0x1
	addu	$14,$2,$3
	li	$13,-1			# 0xffffffffffffffff
	sltu	$12,$6,$15
	sltu	$7,$23,$6
$L298:
	blez	$18,$L301
	move	$5,$0

	sll	$5,$9,2
	subu	$2,$24,$9
	addiu	$3,$5,168
	sll	$2,$2,2
	addiu	$5,$sp,8
	addiu	$2,$2,168
	addu	$5,$3,$5
	addiu	$3,$sp,8
	addu	$2,$2,$3
	lw	$20,-140($5)
	move	$3,$0
	move	$5,$0
	lw	$21,-140($2)
	move	$2,$0
$L302:
	sll	$2,$2,2
	addiu	$23,$sp,8
	addiu	$2,$2,168
	sll	$22,$3,2
	addu	$2,$2,$23
	addu	$23,$20,$22
	addiu	$3,$3,1
	lw	$2,-132($2)
	addu	$22,$21,$22
	lw	$23,0($23)
	addu	$2,$5,$2
	subu	$2,$23,$2
	beq	$2,$23,$L299
	seb	$3,$3

	slt	$fp,$3,$8
	sw	$2,0($22)
	sltu	$5,$23,$2
	bne	$fp,$0,$L302
	move	$2,$3

$L301:
	xor	$5,$9,$5
$L363:
	beq	$7,$0,$L306
	sltu	$9,$5,1

	move	$20,$0
	move	$2,$25
$L303:
	lw	$5,0($2)
	addiu	$2,$2,-4
	srl	$3,$5,1
	or	$3,$3,$20
	sw	$3,4($2)
	bne	$2,$4,$L303
	sll	$20,$5,31

$L306:
	lw	$2,-132($14)
	lw	$3,-132($10)
	sll	$2,$2,31
	or	$2,$2,$3
	beq	$12,$0,$L305
	sw	$2,-132($10)

	move	$20,$0
	move	$2,$15
$L308:
	lw	$5,-4($2)
	addiu	$2,$2,-4
	srl	$3,$5,1
	or	$3,$3,$20
	sw	$3,0($2)
	sltu	$3,$6,$2
	bne	$3,$0,$L308
	sll	$20,$5,31

$L305:
	addiu	$17,$17,-1
	seh	$17,$17
	bne	$17,$13,$L298
	sll	$2,$9,2

	addiu	$3,$sp,8
	addiu	$2,$2,168
	addu	$2,$2,$3
	blez	$18,$L280
	lw	$20,-140($2)

	addu	$11,$20,$11
$L364:
	move	$5,$20
$L311:
	lw	$2,0($5)
	addiu	$5,$5,4
	addiu	$16,$16,4
	bne	$5,$11,$L311
	sw	$2,-4($16)

$L280:
	lw	$3,172($sp)
	lw	$2,0($19)
	bne	$3,$2,$L361
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

$L313:
	move	$5,$7
$L281:
	beq	$5,$0,$L285
	nop

	.option	pic0
	b	$L362
	.option	pic2
	sll	$2,$5,2

$L359:
	.option	pic0
	b	$L295
	.option	pic2
	addiu	$23,$sp,44

$L299:
	slt	$23,$3,$8
	sw	$2,0($22)
	bne	$23,$0,$L302
	move	$2,$3

	.option	pic0
	b	$L363
	.option	pic2
	xor	$5,$9,$5

$L360:
	blez	$18,$L296
	addiu	$23,$sp,44

	addiu	$6,$fp,1
	lw	$25,%call16(memcpy)($28)
	addu	$4,$23,$4
	sll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$5,$21

	sll	$11,$18,2
	bgez	$17,$L295
	lw	$28,16($sp)

	.option	pic0
	b	$L364
	.option	pic2
	addu	$11,$20,$11

$L315:
	move	$2,$0
	.option	pic0
	b	$L294
	.option	pic2
	addiu	$23,$sp,44

$L296:
	bgez	$17,$L294
	move	$2,$18

	.option	pic0
	b	$L280
	nop

	.option	pic2
$L361:
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
	bne	$3,$2,$L368
	lw	$28,16($sp)

	lw	$31,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,120

$L368:
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
	bne	$3,$2,$L372
	lw	$28,16($sp)

	lw	$31,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	jr	$31
	addiu	$sp,$sp,120

$L372:
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$7,$L382
	sll	$9,$7,2

	move	$3,$0
	addu	$9,$9,$5
	move	$2,$5
$L376:
	lw	$8,0($2)
	addiu	$2,$2,4
	bne	$9,$2,$L376
	or	$3,$3,$8

	beq	$3,$0,$L377
	lui	$28,%hi(__gnu_local_gp)

	.option	pic0
	j	uECC_vli_modInv.part.0
	nop

	.option	pic2
$L377:
	andi	$6,$7,0x00ff
	addiu	$28,$28,%lo(__gnu_local_gp)
	sll	$6,$6,2
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jr	$25
	move	$5,$0

$L382:
	jr	$31
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
	blez	$3,$L387
	andi	$2,$2,0x00ff

	addiu	$2,$2,-1
	addiu	$5,$4,4
	andi	$3,$2,0x00ff
	sll	$3,$3,2
	move	$2,$0
	addu	$3,$3,$5
$L386:
	lw	$5,0($4)
	addiu	$4,$4,4
	bne	$3,$4,$L386
	or	$2,$2,$5

	jr	$31
	sltu	$2,$2,1

$L387:
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
	bne	$3,$2,$L392
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

$L392:
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
	sw	$17,148($sp)
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
	sw	$16,144($sp)
	addiu	$16,$sp,76
	sw	$20,160($sp)
	move	$6,$4
	lw	$17,200($sp)
	move	$5,$19
	lw	$2,%got(__stack_chk_guard)($28)
	move	$4,$18
	addiu	$23,$17,4
	lb	$20,0($17)
	sw	$2,36($sp)
	move	$7,$23
	lw	$2,0($2)
	sw	$20,16($sp)
	sw	$2,140($sp)
	.option	pic0
	jal	uECC_vli_modSub
	nop

	.option	pic2
	move	$7,$20
	move	$6,$18
	move	$5,$18
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
	jalr	$25
	move	$4,$18

	move	$6,$18
	lb	$7,0($17)
	move	$5,$22
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
	jalr	$25
	move	$4,$22

	move	$6,$18
	lb	$7,0($17)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
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
	lb	$7,0($17)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
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
	lb	$7,0($17)
	move	$5,$fp
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
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
	lb	$7,0($17)
	move	$5,$21
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$16

	move	$5,$16
	lw	$25,172($17)
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

	blez	$20,$L393
	lw	$28,24($sp)

	lw	$25,%call16(memcpy)($28)
	andi	$6,$20,0x00ff
	sll	$6,$6,2
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$19

	lw	$28,24($sp)
$L393:
	lw	$2,36($sp)
	lw	$3,140($sp)
	lw	$2,0($2)
	bne	$3,$2,$L397
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

$L397:
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
	sw	$5,60($sp)
	sw	$2,64($sp)
	lb	$3,0($16)
	lw	$2,0($2)
	sw	$6,32($sp)
	sll	$4,$3,2
	sw	$3,44($sp)
	sw	$2,300($sp)
	addu	$18,$5,$4
	sw	$4,48($sp)
	blez	$3,$L399
	sw	$18,56($sp)

	andi	$23,$3,0x00ff
	lw	$25,%call16(memcpy)($28)
	addiu	$2,$sp,140
	sll	$23,$23,2
	move	$4,$2
	sw	$2,40($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$6,$23

	addiu	$21,$sp,204
	lw	$28,24($sp)
	move	$6,$23
	move	$5,$18
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$21

	beq	$17,$0,$L425
	lw	$28,24($sp)

	lw	$25,%call16(memcpy)($28)
	addiu	$2,$sp,236
	move	$6,$23
	sw	$2,36($sp)
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$2

	lw	$28,24($sp)
$L404:
	lw	$25,%call16(memmove)($28)
	addiu	$17,$sp,108
	lw	$5,40($sp)
	move	$6,$23
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	addiu	$18,$sp,172

	move	$6,$23
	lw	$28,24($sp)
	move	$5,$21
	lw	$25,%call16(memmove)($28)
	.reloc	1f,R_MIPS_JALR,memmove
1:	jalr	$25
	move	$4,$18

$L402:
	lw	$19,36($sp)
	move	$7,$16
	lw	$20,40($sp)
	move	$5,$21
	li	$fp,1			# 0x1
	move	$6,$19
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$20

	move	$7,$16
	lw	$25,164($16)
	move	$6,$19
	move	$5,$21
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
	seh	$23,$2
	blez	$23,$L429
	lw	$2,32($sp)

$L405:
	sra	$3,$23,5
	lw	$2,32($sp)
	sw	$16,16($sp)
	sll	$21,$fp,$23
	sll	$3,$3,2
	addu	$3,$2,$3
	lw	$3,0($3)
	and	$21,$21,$3
	sltu	$21,$21,1
	subu	$5,$fp,$21
	sll	$21,$21,5
	sll	$5,$5,5
	addu	$20,$17,$21
	addu	$22,$17,$5
	addu	$19,$18,$5
	addu	$21,$18,$21
	move	$6,$20
	move	$7,$21
	move	$5,$19
	.option	pic0
	jal	XYcZ_addC
	.option	pic2
	move	$4,$22

	move	$7,$19
	sw	$16,16($sp)
	move	$6,$22
	move	$5,$21
	.option	pic0
	jal	XYcZ_add
	.option	pic2
	move	$4,$20

	addiu	$2,$23,-1
	andi	$3,$2,0xffff
	bne	$3,$0,$L405
	seh	$23,$2

	lw	$2,32($sp)
$L429:
	addiu	$22,$16,4
	addiu	$19,$sp,76
	move	$23,$22
	lw	$21,0($2)
	sw	$16,16($sp)
	nor	$2,$0,$21
	andi	$2,$2,0x1
	andi	$21,$21,0x1
	sll	$21,$21,5
	sll	$2,$2,5
	addu	$3,$18,$21
	addu	$6,$17,$2
	addu	$21,$17,$21
	addu	$2,$18,$2
	sw	$6,32($sp)
	move	$5,$3
	move	$7,$2
	sw	$2,52($sp)
	move	$4,$21
	move	$20,$3
	.option	pic0
	jal	XYcZ_addC
	.option	pic2
	move	$fp,$3

	move	$7,$22
	lw	$22,44($sp)
	lw	$5,40($sp)
	move	$6,$17
	move	$4,$19
	.option	pic0
	jal	uECC_vli_modSub
	.option	pic2
	sw	$22,16($sp)

	move	$6,$20
	lw	$20,36($sp)
	move	$5,$19
	lb	$7,0($16)
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$20

	move	$5,$20
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	move	$5,$19
	lb	$7,0($16)
	move	$4,$20
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	lw	$6,60($sp)

	move	$5,$20
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	blez	$22,$L426
	lw	$28,24($sp)

	lw	$2,48($sp)
	move	$3,$0
	addu	$5,$19,$2
	move	$2,$19
$L409:
	lw	$4,0($2)
	addiu	$2,$2,4
	bne	$5,$2,$L409
	or	$3,$3,$4

	beq	$3,$0,$L412
	move	$6,$23

	lw	$20,44($sp)
	move	$5,$19
	move	$4,$19
	move	$7,$20
	.option	pic0
	jal	uECC_vli_modInv.part.0
	.option	pic2
	andi	$23,$20,0x00ff

	lw	$20,36($sp)
$L428:
	move	$5,$19
	lb	$7,0($16)
	sll	$23,$23,2
	lw	$6,56($sp)
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$20

	move	$5,$20
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	move	$6,$21
	lb	$7,0($16)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$20

	move	$5,$20
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	move	$7,$fp
	lw	$5,52($sp)
	move	$6,$21
	lw	$4,32($sp)
	.option	pic0
	jal	XYcZ_add
	.option	pic2
	sw	$16,16($sp)

	move	$7,$16
	move	$6,$19
	move	$5,$18
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$17

	move	$6,$23
	lw	$28,24($sp)
	move	$5,$17
	lw	$16,68($sp)
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$16

	move	$6,$23
	lw	$28,24($sp)
	move	$5,$18
	lw	$3,48($sp)
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	addu	$4,$16,$3

	lw	$28,24($sp)
$L398:
	lw	$2,64($sp)
	lw	$3,300($sp)
	lw	$2,0($2)
	bne	$3,$2,$L427
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

$L412:
	lbu	$23,44($sp)
	move	$5,$0
	lw	$25,%call16(memset)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$6,$23,2

	.option	pic0
	b	$L428
	.option	pic2
	lw	$20,36($sp)

$L425:
	lw	$25,%call16(memset)($28)
	addiu	$2,$sp,236
	move	$5,$0
	sw	$2,36($sp)
	move	$6,$23
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$2

	li	$2,1			# 0x1
	lw	$28,24($sp)
	.option	pic0
	b	$L404
	.option	pic2
	sw	$2,236($sp)

$L426:
	lw	$20,36($sp)
	move	$5,$19
	lb	$7,0($16)
	lw	$6,56($sp)
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$20

	move	$5,$20
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	move	$6,$21
	lb	$7,0($16)
	move	$5,$19
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$20

	move	$5,$20
	lw	$25,172($16)
	jalr	$25
	move	$4,$19

	move	$7,$fp
	lw	$5,52($sp)
	move	$6,$21
	lw	$4,32($sp)
	.option	pic0
	jal	XYcZ_add
	.option	pic2
	sw	$16,16($sp)

	move	$7,$16
	move	$6,$19
	move	$5,$18
	.option	pic0
	jal	apply_z
	.option	pic2
	move	$4,$17

	.option	pic0
	b	$L398
	.option	pic2
	lw	$28,24($sp)

$L399:
	addiu	$2,$sp,140
	addiu	$21,$sp,204
	bne	$7,$0,$L424
	sw	$2,40($sp)

	li	$2,1			# 0x1
	sw	$2,236($sp)
$L424:
	addiu	$2,$sp,236
	addiu	$17,$sp,108
	addiu	$18,$sp,172
	.option	pic0
	b	$L402
	.option	pic2
	sw	$2,36($sp)

$L427:
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
	bgez	$2,$L446
	sra	$24,$2,5

	addiu	$2,$15,62
	sra	$24,$2,5
$L446:
	seb	$25,$24
	blez	$25,$L444
	addiu	$13,$24,-1

	addiu	$2,$4,4
	andi	$14,$13,0x00ff
	sll	$14,$14,2
	addiu	$10,$7,36
	addu	$14,$14,$2
	move	$2,$0
	move	$12,$10
	move	$11,$5
$L436:
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
	bne	$14,$4,$L436
	or	$2,$9,$8

	beq	$2,$0,$L445
	sll	$3,$25,5

$L438:
	andi	$11,$13,0x00ff
$L447:
	sll	$11,$11,2
	addiu	$3,$5,4
	move	$7,$0
	addu	$11,$11,$3
	move	$9,$10
$L439:
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
	bne	$5,$11,$L439
	or	$7,$7,$4

$L450:
	jr	$31
	nop

$L445:
	slt	$3,$15,$3
	beq	$3,$0,$L447
	andi	$11,$13,0x00ff

	sra	$3,$15,5
$L448:
	li	$2,1			# 0x1
	sll	$3,$3,2
	sll	$2,$2,$15
	addu	$3,$5,$3
	lw	$3,0($3)
	and	$2,$2,$3
	blez	$25,$L450
	sltu	$2,$0,$2

	addiu	$10,$7,36
	.option	pic0
	b	$L438
	.option	pic2
	addiu	$13,$24,-1

$L444:
	sll	$2,$25,5
	slt	$2,$15,$2
	bne	$2,$0,$L448
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
	blez	$3,$L455
	lw	$28,24($sp)

	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	addiu	$5,$16,4
	andi	$3,$2,0x00ff
	sll	$3,$3,2
	move	$2,$0
	addu	$3,$3,$5
	move	$4,$16
$L453:
	lw	$5,0($4)
	addiu	$4,$4,4
	bne	$3,$4,$L453
	or	$2,$2,$5

	sltu	$2,$0,$2
$L451:
	lw	$4,108($sp)
	lw	$3,0($18)
	bne	$4,$3,$L458
	lw	$31,124($sp)

	lw	$18,120($sp)
	lw	$17,116($sp)
	lw	$16,112($sp)
	jr	$31
	addiu	$sp,$sp,128

$L455:
	.option	pic0
	b	$L451
	.option	pic2
	move	$2,$0

$L458:
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
	blez	$5,$L464
	addiu	$12,$5,-1

	move	$3,$0
	move	$2,$0
	li	$11,-4			# 0xfffffffffffffffc
$L461:
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
	bne	$8,$0,$L461
	sb	$7,0($9)

$L464:
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
	bgez	$2,$L466
	.cprestore	16

	addiu	$2,$6,6
$L466:
	sra	$2,$2,2
	seb	$3,$2
	blez	$3,$L470
	addiu	$2,$2,-1

	lw	$25,%call16(memset)($28)
	move	$5,$0
	andi	$6,$2,0x00ff
	addiu	$6,$6,1
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$6,$6,2

	move	$4,$2
$L470:
	blez	$16,$L474
	lw	$31,36($sp)

	addiu	$6,$16,-1
	move	$2,$0
	move	$3,$0
	li	$5,-4			# 0xfffffffffffffffc
$L471:
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
	bne	$8,$0,$L471
	move	$3,$2

	lw	$31,36($sp)
$L474:
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
	addiu	$2,$6,-1
	sw	$16,80($sp)
	move	$16,$6
	lw	$3,%got(__stack_chk_guard)($28)
	seb	$6,$2
	sw	$17,84($sp)
	move	$17,$4
	sw	$31,116($sp)
	sw	$3,36($sp)
	sw	$fp,112($sp)
	sw	$23,108($sp)
	sw	$22,104($sp)
	sw	$21,100($sp)
	sw	$20,96($sp)
	sw	$19,92($sp)
	sw	$18,88($sp)
	.cprestore	16
	sw	$5,32($sp)
	lw	$3,0($3)
	sw	$3,76($sp)
	bltz	$6,$L492
	andi	$3,$2,0x00ff

	sll	$3,$3,2
	li	$7,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L477
	.option	pic2
	addu	$3,$5,$3

$L478:
	addiu	$2,$2,-1
	seb	$2,$2
	beq	$2,$7,$L476
	addiu	$3,$3,-4

	move	$6,$2
$L477:
	lw	$5,0($3)
	beq	$5,$0,$L478
	andi	$2,$6,0x00ff

	addiu	$2,$2,1
	seb	$6,$2
$L479:
	lw	$3,32($sp)
	sll	$2,$6,2
	addu	$2,$3,$2
	lw	$3,-4($2)
	beq	$3,$0,$L494
	move	$2,$0

$L482:
	srl	$3,$3,1
	bne	$3,$0,$L482
	addiu	$2,$2,1

	andi	$3,$2,0xffff
$L481:
	addiu	$2,$6,-1
	sll	$2,$2,5
	addu	$2,$3,$2
	andi	$2,$2,0xffff
	lui	$19,%hi(g_rng_function)
$L514:
	lw	$25,%lo(g_rng_function)($19)
	beq	$25,$0,$L483
	sll	$3,$16,2

	subu	$2,$0,$2
	li	$18,-1			# 0xffffffffffffffff
	sw	$3,24($sp)
	addiu	$4,$sp,44
	lw	$5,24($sp)
	srl	$18,$18,$2
	lw	$2,32($sp)
	addiu	$9,$3,-4
	sw	$4,28($sp)
	addu	$22,$3,$4
	move	$4,$17
	addu	$20,$17,$9
	addu	$fp,$3,$17
	jalr	$25
	addu	$21,$2,$3

	lw	$28,16($sp)
	beq	$2,$0,$L483
	li	$23,64			# 0x40

$L512:
	lw	$2,0($20)
	and	$2,$2,$18
	blez	$16,$L486
	sw	$2,0($20)

	move	$3,$0
	move	$2,$17
$L484:
	lw	$5,0($2)
	addiu	$2,$2,4
	bne	$fp,$2,$L484
	or	$3,$3,$5

	beq	$3,$0,$L486
	move	$11,$0

	lw	$13,28($sp)
	lw	$10,32($sp)
	move	$12,$17
$L487:
	lw	$2,0($10)
	addiu	$13,$13,4
	lw	$3,0($12)
	addiu	$10,$10,4
	addiu	$12,$12,4
	subu	$5,$2,$11
	subu	$5,$5,$3
	xor	$3,$2,$5
	sw	$5,-4($13)
	sltu	$3,$3,1
	and	$3,$3,$11
	sltu	$2,$2,$5
	bne	$21,$10,$L487
	or	$11,$3,$2

	lw	$2,28($sp)
	move	$3,$0
$L488:
	lw	$5,0($2)
	addiu	$2,$2,4
	bne	$2,$22,$L488
	or	$3,$3,$5

	sll	$11,$11,1
	sltu	$2,$0,$3
	subu	$2,$2,$11
	li	$3,1			# 0x1
	andi	$2,$2,0x00ff
	beq	$2,$3,$L475
	li	$2,1			# 0x1

$L486:
	addiu	$23,$23,-1
	beq	$23,$0,$L483
	lw	$25,%lo(g_rng_function)($19)

	move	$4,$17
	jalr	$25
	lw	$5,24($sp)

	bne	$2,$0,$L512
	lw	$28,16($sp)

$L483:
	move	$2,$0
$L475:
	lw	$3,36($sp)
	lw	$4,76($sp)
	lw	$3,0($3)
	bne	$4,$3,$L513
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

$L492:
	move	$6,$16
$L476:
	bne	$6,$0,$L479
	move	$2,$0

	.option	pic0
	b	$L514
	.option	pic2
	lui	$19,%hi(g_rng_function)

$L494:
	.option	pic0
	b	$L481
	.option	pic2
	move	$3,$0

$L513:
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
	blez	$3,$L525
	move	$21,$4

	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	move	$22,$5
	andi	$3,$2,0x00ff
	addiu	$5,$4,4
	sll	$3,$3,2
	addu	$3,$3,$5
	move	$4,$0
	move	$2,$21
$L517:
	lw	$5,0($2)
	addiu	$2,$2,4
	bne	$2,$3,$L517
	or	$4,$4,$5

	beq	$4,$0,$L525
	addiu	$20,$20,-1

	seb	$16,$20
	bltz	$16,$L528
	andi	$20,$20,0x00ff

	sll	$20,$20,2
	li	$10,-1			# 0xffffffffffffffff
	addu	$9,$22,$20
	addu	$5,$21,$20
	move	$4,$9
	.option	pic0
	b	$L519
	.option	pic2
	move	$3,$16

$L535:
	bne	$2,$0,$L528
	addiu	$3,$3,-1

	addiu	$4,$4,-4
	seb	$3,$3
	beq	$3,$10,$L528
	addiu	$5,$5,-4

$L519:
	lw	$2,4($4)
	lw	$8,0($5)
	sltu	$6,$8,$2
	beq	$6,$0,$L535
	sltu	$2,$2,$8

	sll	$6,$7,2
	li	$10,-1			# 0xffffffffffffffff
	addu	$8,$6,$20
	move	$3,$16
	addu	$6,$21,$6
	.option	pic0
	b	$L521
	.option	pic2
	addu	$8,$21,$8

$L536:
	bne	$2,$0,$L528
	addiu	$3,$3,-1

	addiu	$9,$9,-4
	seb	$3,$3
	beq	$3,$10,$L528
	addiu	$8,$8,-4

$L521:
	lw	$2,4($9)
	lw	$4,0($8)
	sltu	$5,$4,$2
	beq	$5,$0,$L536
	sltu	$2,$2,$4

	addiu	$17,$sp,60
	move	$5,$6
	.option	pic0
	jal	uECC_vli_mult
	.option	pic2
	move	$4,$17

	addiu	$18,$sp,28
	lw	$25,172($22)
	move	$5,$17
	jalr	$25
	move	$4,$18

	move	$5,$21
	lw	$25,168($22)
	move	$4,$17
	jalr	$25
	move	$6,$22

	addu	$4,$18,$20
	lw	$28,16($sp)
	addu	$5,$17,$20
	move	$3,$0
	li	$7,-1			# 0xffffffffffffffff
$L522:
	lw	$2,0($4)
	addiu	$16,$16,-1
	lw	$6,0($5)
	addiu	$4,$4,-4
	seb	$16,$16
	addiu	$5,$5,-4
	xor	$2,$2,$6
	bne	$16,$7,$L522
	or	$3,$3,$2

	li	$2,-3			# 0xfffffffffffffffd
	movz	$2,$0,$3
$L515:
	lw	$4,124($sp)
	lw	$3,0($19)
	bne	$4,$3,$L537
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

$L528:
	.option	pic0
	b	$L515
	.option	pic2
	li	$2,-2			# 0xfffffffffffffffe

$L525:
	.option	pic0
	b	$L515
	.option	pic2
	li	$2,-1			# 0xffffffffffffffff

$L537:
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
	.frame	$sp,128,$31		# vars= 72, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-128
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,96($sp)
	sw	$22,120($sp)
	sw	$20,112($sp)
	move	$20,$5
	sw	$17,100($sp)
	move	$17,$4
	sw	$31,124($sp)
	sw	$21,116($sp)
	sw	$19,108($sp)
	sw	$18,104($sp)
	.cprestore	16
	lw	$16,%got(__stack_chk_guard)($28)
	lb	$18,1($5)
	lw	$2,0($16)
	addiu	$22,$18,3
	sw	$2,92($sp)
	bgez	$22,$L558
	sra	$21,$22,2

	addiu	$22,$18,6
	sra	$21,$22,2
$L558:
	blez	$18,$L548
	move	$22,$21

	lw	$25,%call16(memset)($28)
	andi	$6,$21,0xff
	addiu	$4,$sp,28
	sll	$6,$6,2
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	addiu	$19,$18,-1

	move	$3,$0
	lw	$28,16($sp)
	move	$4,$2
	li	$8,-4			# 0xfffffffffffffffc
	move	$2,$0
$L545:
	subu	$3,$19,$3
	addu	$5,$17,$2
	and	$6,$3,$8
	addu	$6,$4,$6
	lbu	$7,0($5)
	sll	$3,$3,3
	addiu	$2,$2,1
	lw	$5,0($6)
	sll	$3,$7,$3
	seb	$2,$2
	or	$3,$5,$3
	slt	$5,$2,$18
	sw	$3,0($6)
	bne	$5,$0,$L545
	move	$3,$2

	lb	$2,0($20)
	sll	$2,$2,2
	blez	$18,$L548
	addu	$4,$4,$2

	addiu	$6,$21,-1
	lw	$25,%call16(memset)($28)
	li	$2,4			# 0x4
	andi	$6,$6,0x00ff
	addiu	$6,$6,1
	slt	$22,$0,$22
	sll	$6,$6,2
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	movz	$6,$2,$22

	addu	$3,$17,$18
	li	$9,1			# 0x1
	lw	$28,16($sp)
	move	$4,$2
	li	$10,-4			# 0xfffffffffffffffc
	move	$2,$0
	subu	$9,$9,$3
$L549:
	subu	$2,$19,$2
	lbu	$8,0($3)
	addu	$7,$9,$3
	and	$6,$2,$10
	addu	$6,$4,$6
	sll	$5,$2,3
	seb	$2,$7
	lw	$7,0($6)
	sll	$8,$8,$5
	slt	$5,$2,$18
	addiu	$3,$3,1
	or	$7,$7,$8
	bne	$5,$0,$L549
	sw	$7,0($6)

$L548:
	lw	$3,88($sp)
	lw	$2,128($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$2,84($sp)

	lw	$3,124($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$2,$2,$3

	bne	$2,$0,$L543
	lw	$3,80($sp)

	lw	$2,120($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$3,76($sp)

	lw	$2,116($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$3,72($sp)

	lw	$2,112($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$3,68($sp)

	lw	$2,108($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$3,64($sp)

	lw	$2,104($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$3,60($sp)

	lw	$2,100($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$3,56($sp)

	lw	$2,96($20)
	sltu	$4,$2,$3
	bne	$4,$0,$L543
	sltu	$2,$3,$2

	bne	$2,$0,$L543
	lw	$2,52($sp)

	lw	$3,92($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$2,$2,$3

	bne	$2,$0,$L543
	lw	$2,48($sp)

	lw	$3,88($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$2,$2,$3

	bne	$2,$0,$L543
	lw	$2,44($sp)

	lw	$3,84($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$2,$2,$3

	bne	$2,$0,$L543
	lw	$2,40($sp)

	lw	$3,80($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$2,$2,$3

	bne	$2,$0,$L543
	lw	$2,36($sp)

	lw	$3,76($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$2,$2,$3

	bne	$2,$0,$L543
	lw	$2,32($sp)

	lw	$3,72($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$2,$2,$3

	bne	$2,$0,$L543
	lw	$2,28($sp)

	lw	$3,68($20)
	sltu	$4,$3,$2
	bne	$4,$0,$L543
	sltu	$3,$2,$3

	beq	$3,$0,$L538
	li	$2,-4			# 0xfffffffffffffffc

$L543:
	addiu	$4,$sp,28
	.option	pic0
	jal	uECC_valid_point
	.option	pic2
	move	$5,$20

	lw	$28,16($sp)
$L538:
	lw	$4,92($sp)
	lw	$3,0($16)
	bne	$4,$3,$L557
	lw	$31,124($sp)

	lw	$22,120($sp)
	lw	$21,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,128

$L557:
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
	.frame	$sp,240,$31		# vars= 176, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-240
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,224($sp)
	sw	$18,220($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lh	$18,2($6)
	sw	$20,228($sp)
	sw	$21,232($sp)
	move	$21,$4
	sw	$17,216($sp)
	addiu	$20,$18,7
	sw	$16,212($sp)
	move	$17,$6
	sw	$31,236($sp)
	move	$16,$5
	.cprestore	24
	lw	$2,0($19)
	sw	$2,204($sp)
	bgez	$20,$L600
	sra	$20,$20,3

	addiu	$20,$18,14
	sra	$20,$20,3
$L600:
	addiu	$2,$20,3
	bgez	$2,$L601
	sra	$2,$2,2

	addiu	$2,$20,6
	sra	$2,$2,2
$L601:
	seb	$3,$2
	blez	$3,$L565
	addiu	$2,$2,-1

	lw	$25,%call16(memset)($28)
	move	$5,$0
	andi	$6,$2,0x00ff
	addiu	$6,$6,1
	addiu	$4,$sp,44
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$6,$6,2

	lw	$28,24($sp)
$L565:
	blez	$18,$L564
	move	$2,$0

	addiu	$9,$20,-1
	move	$3,$0
	addiu	$4,$sp,44
	li	$6,-4			# 0xfffffffffffffffc
$L569:
	subu	$3,$9,$3
	addu	$5,$21,$2
	and	$7,$3,$6
	addu	$7,$4,$7
	lbu	$8,0($5)
	sll	$3,$3,3
	addiu	$2,$2,1
	lw	$5,0($7)
	sll	$3,$8,$3
	seb	$2,$2
	or	$3,$5,$3
	slt	$5,$2,$20
	sw	$3,0($7)
	bne	$5,$0,$L569
	move	$3,$2

$L564:
	addiu	$2,$18,31
	bgez	$2,$L602
	sra	$2,$2,5

	addiu	$2,$18,62
	sra	$2,$2,5
$L602:
	seb	$3,$2
	blez	$3,$L570
	addiu	$2,$2,-1

	addiu	$11,$sp,48
	andi	$8,$2,0x00ff
	sll	$8,$8,2
	addiu	$4,$sp,44
	addu	$11,$11,$8
	move	$3,$0
	move	$6,$4
	move	$2,$4
$L571:
	lw	$5,0($2)
	addiu	$2,$2,4
	bne	$11,$2,$L571
	or	$3,$3,$5

	beq	$3,$0,$L570
	addiu	$10,$17,36

	addiu	$20,$sp,140
	move	$5,$0
	move	$12,$20
	move	$9,$20
$L572:
	lw	$2,0($10)
	addiu	$9,$9,4
	lw	$7,0($6)
	addiu	$6,$6,4
	addiu	$10,$10,4
	subu	$3,$2,$5
	subu	$3,$3,$7
	xor	$7,$2,$3
	sw	$3,-4($9)
	sltu	$7,$7,1
	and	$5,$7,$5
	sltu	$2,$2,$3
	bne	$11,$6,$L572
	or	$5,$5,$2

	addiu	$2,$20,4
	move	$3,$0
	.option	pic0
	b	$L573
	.option	pic2
	addu	$8,$2,$8

$L597:
	addiu	$2,$2,4
$L573:
	lw	$6,0($12)
	move	$12,$2
	bne	$8,$2,$L597
	or	$3,$3,$6

	sll	$5,$5,1
	sltu	$3,$0,$3
	subu	$3,$3,$5
	li	$2,1			# 0x1
	andi	$3,$3,0x00ff
	beq	$3,$2,$L598
	addiu	$5,$sp,76

$L570:
	move	$2,$0
$L559:
	lw	$4,204($sp)
	lw	$3,0($19)
	bne	$4,$3,$L599
	lw	$31,236($sp)

	lw	$21,232($sp)
	lw	$20,228($sp)
	lw	$19,224($sp)
	lw	$18,220($sp)
	lw	$17,216($sp)
	lw	$16,212($sp)
	jr	$31
	addiu	$sp,$sp,240

$L598:
	addiu	$6,$sp,108
	move	$7,$17
	sw	$5,36($sp)
	sw	$6,40($sp)
	.option	pic0
	jal	regularize_k
	.option	pic2
	addiu	$18,$18,1

	move	$7,$0
	sltu	$2,$2,1
	sw	$17,20($sp)
	sll	$2,$2,2
	seh	$18,$18
	addiu	$2,$2,208
	sw	$18,16($sp)
	addiu	$5,$17,68
	addu	$2,$2,$sp
	move	$4,$20
	.option	pic0
	jal	EccPoint_mult
	.option	pic2
	lw	$6,-172($2)

	lbu	$2,0($17)
	lw	$28,24($sp)
	sll	$2,$2,1
	seb	$3,$2
	blez	$3,$L570
	andi	$2,$2,0x00ff

	addiu	$2,$2,-1
	addiu	$4,$sp,144
	andi	$2,$2,0x00ff
	sll	$2,$2,2
	move	$3,$0
	addu	$2,$2,$4
$L575:
	lw	$4,0($20)
	addiu	$20,$20,4
	bne	$2,$20,$L575
	or	$3,$3,$4

	beq	$3,$0,$L570
	nop

	lb	$7,1($17)
	blez	$7,$L579
	move	$3,$16

	li	$8,1			# 0x1
	addiu	$10,$7,-1
	move	$2,$0
	li	$9,-4			# 0xfffffffffffffffc
	subu	$8,$8,$16
$L578:
	subu	$2,$10,$2
	addu	$5,$8,$3
	and	$4,$2,$9
	addiu	$4,$4,208
	sll	$6,$2,3
	addu	$4,$4,$sp
	addiu	$3,$3,1
	seb	$2,$5
	lw	$4,-68($4)
	slt	$5,$2,$7
	srl	$4,$4,$6
	bne	$5,$0,$L578
	sb	$4,-1($3)

	lb	$6,0($17)
	lb	$7,1($17)
	blez	$7,$L579
	sll	$6,$6,2

	addu	$16,$16,$7
	addiu	$3,$6,208
	li	$8,1			# 0x1
	addiu	$10,$7,-1
	move	$2,$0
	addu	$6,$3,$sp
	li	$9,-4			# 0xfffffffffffffffc
	subu	$8,$8,$16
$L580:
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
	bne	$4,$0,$L580
	sb	$3,-1($16)

$L579:
	.option	pic0
	b	$L559
	.option	pic2
	li	$2,1			# 0x1

$L599:
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
