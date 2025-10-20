	.file	1 "aes_mix_columns.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_mix_columns
	.set	nomips16
	.set	nomicromips
	.ent	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$7,$4,16
$L26:
	lbu	$5,0($4)
	li	$11,8			# 0x8
	lbu	$8,1($4)
	move	$14,$0
	lbu	$9,2($4)
	li	$10,2			# 0x2
	lbu	$3,3($4)
	move	$2,$5
$L4:
	andi	$6,$10,0x1
	sll	$13,$2,1
	beq	$6,$0,$L2
	seb	$12,$2

	xor	$14,$2,$14
$L2:
	bgez	$12,$L3
	andi	$2,$13,0x00ff

	xori	$2,$2,0x1b
$L3:
	addiu	$11,$11,-1
	bne	$11,$0,$L4
	srl	$10,$10,1

	li	$11,8			# 0x8
	move	$15,$0
	li	$10,3			# 0x3
	move	$2,$8
$L7:
	andi	$6,$10,0x1
	sll	$13,$2,1
	beq	$6,$0,$L5
	seb	$12,$2

	xor	$15,$2,$15
$L5:
	bgez	$12,$L6
	andi	$2,$13,0x00ff

	xori	$2,$2,0x1b
$L6:
	addiu	$11,$11,-1
	bne	$11,$0,$L7
	srl	$10,$10,1

	xor	$2,$9,$3
	xor	$14,$14,$2
	xor	$15,$15,$14
	sb	$15,0($4)
	li	$11,8			# 0x8
	move	$15,$0
	li	$10,2			# 0x2
	move	$2,$8
$L10:
	andi	$6,$10,0x1
	sll	$13,$2,1
	beq	$6,$0,$L8
	seb	$12,$2

	xor	$15,$2,$15
$L8:
	bgez	$12,$L9
	andi	$2,$13,0x00ff

	xori	$2,$2,0x1b
$L9:
	addiu	$11,$11,-1
	bne	$11,$0,$L10
	srl	$10,$10,1

	li	$11,8			# 0x8
	move	$14,$0
	li	$10,3			# 0x3
	xor	$24,$5,$3
	move	$2,$9
$L13:
	andi	$6,$10,0x1
	sll	$13,$2,1
	beq	$6,$0,$L11
	seb	$12,$2

	xor	$14,$2,$14
$L11:
	bgez	$12,$L12
	andi	$2,$13,0x00ff

	xori	$2,$2,0x1b
$L12:
	addiu	$11,$11,-1
	bne	$11,$0,$L13
	srl	$10,$10,1

	xor	$2,$24,$15
	xor	$14,$14,$2
	sb	$14,1($4)
	li	$11,8			# 0x8
	move	$14,$0
	li	$10,2			# 0x2
	xor	$15,$5,$8
	move	$2,$9
$L16:
	andi	$6,$10,0x1
	sll	$13,$2,1
	beq	$6,$0,$L14
	seb	$12,$2

	xor	$14,$2,$14
$L14:
	bgez	$12,$L15
	andi	$2,$13,0x00ff

	xori	$2,$2,0x1b
$L15:
	addiu	$11,$11,-1
	bne	$11,$0,$L16
	srl	$10,$10,1

	li	$11,8			# 0x8
	move	$12,$0
	li	$10,3			# 0x3
	xor	$15,$15,$14
	move	$2,$3
$L19:
	andi	$6,$10,0x1
	sll	$14,$2,1
	beq	$6,$0,$L17
	seb	$13,$2

	xor	$12,$2,$12
	andi	$12,$12,0x00ff
$L17:
	bgez	$13,$L18
	andi	$2,$14,0x00ff

	xori	$2,$2,0x1b
$L18:
	addiu	$11,$11,-1
	bne	$11,$0,$L19
	srl	$10,$10,1

	xor	$2,$15,$12
	li	$11,8			# 0x8
	sb	$2,2($4)
	move	$13,$0
	.option	pic0
	b	$L22
	.option	pic2
	li	$10,3			# 0x3

$L33:
	addiu	$11,$11,-1
	srl	$10,$10,1
	beq	$11,$0,$L69
	move	$5,$2

$L22:
	andi	$6,$10,0x1
	sll	$2,$5,1
	beq	$6,$0,$L20
	seb	$12,$5

	xor	$13,$13,$5
$L20:
	bgez	$12,$L33
	andi	$2,$2,0x00ff

	addiu	$11,$11,-1
	srl	$10,$10,1
	bne	$11,$0,$L22
	xori	$5,$2,0x1b

$L69:
	xor	$8,$8,$9
	move	$10,$0
	li	$9,8			# 0x8
	li	$6,2			# 0x2
	.option	pic0
	b	$L25
	.option	pic2
	xor	$13,$13,$8

$L34:
	addiu	$9,$9,-1
	srl	$6,$6,1
	beq	$9,$0,$L70
	move	$3,$2

$L25:
	andi	$5,$6,0x1
	sll	$2,$3,1
	beq	$5,$0,$L23
	seb	$8,$3

	xor	$10,$10,$3
$L23:
	bgez	$8,$L34
	andi	$2,$2,0x00ff

	addiu	$9,$9,-1
	srl	$6,$6,1
	bne	$9,$0,$L25
	xori	$3,$2,0x1b

$L70:
	xor	$13,$13,$10
	sb	$13,3($4)
	addiu	$4,$4,4
	bne	$7,$4,$L26
	nop

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	aes_mix_columns
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
