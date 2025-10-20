	.file	1 "base64_decode_standard.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	base64_char_value
	.set	nomips16
	.set	nomicromips
	.ent	base64_char_value
	.type	base64_char_value, @function
base64_char_value:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0x00ff
	addiu	$3,$2,-65
	sltu	$3,$3,26
	bne	$3,$0,$L9
	addiu	$3,$2,-97

	sltu	$3,$3,26
	bne	$3,$0,$L10
	nop

	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L11
	nop

	li	$2,43			# 0x2b
	beq	$4,$2,$L6
	li	$3,-1			# 0xffffffffffffffff

	li	$2,63			# 0x3f
	xori	$4,$4,0x2f
	jr	$31
	movn	$2,$3,$4

$L10:
	addiu	$4,$4,-71
	jr	$31
	seb	$2,$4

$L9:
	addiu	$4,$4,-65
	jr	$31
	seb	$2,$4

$L11:
	addiu	$4,$4,4
	jr	$31
	seb	$2,$4

$L6:
	jr	$31
	li	$2,62			# 0x3e

	.set	macro
	.set	reorder
	.end	base64_char_value
	.size	base64_char_value, .-base64_char_value
	.align	2
	.globl	base64_decode_standard
	.set	nomips16
	.set	nomicromips
	.ent	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($6)
	lb	$2,0($4)
	beq	$2,$0,$L50
	addiu	$3,$4,1

	li	$7,61			# 0x3d
	li	$4,43			# 0x2b
	li	$8,47			# 0x2f
	li	$10,4032			# 0xfc0
	.option	pic0
	b	$L34
	.option	pic2
	li	$9,-64			# 0xffffffffffffffc0

$L46:
	sltu	$12,$12,26
	bne	$12,$0,$L16
	addiu	$11,$11,-48

	sltu	$11,$11,10
	bne	$11,$0,$L17
	nop

	beq	$2,$4,$L35
	xori	$11,$2,0x2f

	move	$2,$9
	movz	$2,$10,$11
$L18:
	lb	$11,0($3)
	andi	$12,$11,0x00ff
	addiu	$13,$12,-65
	sltu	$13,$13,26
	bne	$13,$0,$L19
	nop

$L47:
	addiu	$13,$12,-97
	sltu	$13,$13,26
	bne	$13,$0,$L20
	addiu	$12,$12,-48

	sltu	$12,$12,10
	bne	$12,$0,$L21
	nop

	beq	$11,$4,$L43
	nop

	bne	$11,$8,$L37
	nop

	sll	$2,$2,6
	ori	$2,$2,0xfc0
$L23:
	lb	$11,1($3)
	andi	$12,$11,0x00ff
	addiu	$13,$12,-65
	sltu	$13,$13,26
	bne	$13,$0,$L24
	nop

$L48:
	addiu	$13,$12,-97
	sltu	$13,$13,26
	bne	$13,$0,$L25
	addiu	$12,$12,-48

	sltu	$12,$12,10
	bne	$12,$0,$L26
	nop

	beq	$11,$4,$L44
	nop

	bne	$11,$8,$L38
	sll	$2,$2,6

	ori	$11,$2,0xfc0
$L28:
	lb	$2,2($3)
	andi	$12,$2,0x00ff
	addiu	$13,$12,-65
	sltu	$13,$13,26
	bne	$13,$0,$L29
	nop

$L49:
	addiu	$13,$12,-97
	sltu	$13,$13,26
	bne	$13,$0,$L30
	addiu	$12,$12,-48

	sltu	$12,$12,10
	bne	$12,$0,$L31
	nop

	beq	$2,$4,$L45
	ext	$14,$11,16,8

	bne	$2,$8,$L39
	li	$2,255			# 0xff

	ori	$2,$11,0x3f
	ext	$11,$11,8,8
	andi	$2,$2,0x00ff
$L33:
	lw	$12,0($6)
	addiu	$3,$3,4
	addu	$13,$5,$12
	addiu	$12,$12,1
	sw	$12,0($6)
	sb	$14,0($13)
	lw	$12,0($6)
	addu	$13,$5,$12
	addiu	$12,$12,1
	sw	$12,0($6)
	sb	$11,0($13)
	lw	$11,0($6)
	addu	$12,$5,$11
	addiu	$11,$11,1
	sw	$11,0($6)
	sb	$2,0($12)
	lb	$2,-1($3)
	beq	$2,$0,$L50
	nop

$L34:
	beq	$2,$7,$L50
	andi	$11,$2,0x00ff

	addiu	$12,$11,-65
	sltu	$12,$12,26
	beq	$12,$0,$L46
	addiu	$12,$11,-97

	lb	$11,0($3)
	addiu	$2,$2,-65
	seb	$2,$2
	andi	$12,$11,0x00ff
	addiu	$13,$12,-65
	sltu	$13,$13,26
	beq	$13,$0,$L47
	sll	$2,$2,6

$L19:
	addiu	$11,$11,-65
	seb	$11,$11
	or	$2,$11,$2
	lb	$11,1($3)
	andi	$12,$11,0x00ff
	addiu	$13,$12,-65
	sltu	$13,$13,26
	beq	$13,$0,$L48
	sll	$2,$2,6

$L24:
	addiu	$11,$11,-65
	seb	$11,$11
	or	$11,$11,$2
	lb	$2,2($3)
	andi	$12,$2,0x00ff
	addiu	$13,$12,-65
	sltu	$13,$13,26
	beq	$13,$0,$L49
	sll	$11,$11,6

$L29:
	addiu	$2,$2,-65
$L42:
	seb	$2,$2
	or	$2,$2,$11
	ext	$14,$2,16,8
	ext	$11,$2,8,8
	.option	pic0
	b	$L33
	.option	pic2
	andi	$2,$2,0x00ff

$L20:
	addiu	$11,$11,-71
	seb	$11,$11
	or	$2,$11,$2
	.option	pic0
	b	$L23
	.option	pic2
	sll	$2,$2,6

$L16:
	addiu	$2,$2,-71
	seb	$2,$2
	.option	pic0
	b	$L18
	.option	pic2
	sll	$2,$2,6

$L30:
	.option	pic0
	b	$L42
	.option	pic2
	addiu	$2,$2,-71

$L25:
	addiu	$11,$11,-71
	seb	$11,$11
	or	$11,$11,$2
	.option	pic0
	b	$L28
	.option	pic2
	sll	$11,$11,6

$L26:
	addiu	$11,$11,4
	seb	$11,$11
	or	$11,$11,$2
	.option	pic0
	b	$L28
	.option	pic2
	sll	$11,$11,6

$L31:
	.option	pic0
	b	$L42
	.option	pic2
	addiu	$2,$2,4

$L17:
	addiu	$2,$2,4
	seb	$2,$2
	.option	pic0
	b	$L18
	.option	pic2
	sll	$2,$2,6

$L21:
	addiu	$11,$11,4
	seb	$11,$11
	or	$2,$11,$2
	.option	pic0
	b	$L23
	.option	pic2
	sll	$2,$2,6

$L50:
	jr	$31
	nop

$L35:
	.option	pic0
	b	$L18
	.option	pic2
	li	$2,3968			# 0xf80

$L45:
	ori	$2,$11,0x3e
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L33
	.option	pic2
	ext	$11,$11,8,8

$L44:
	sll	$2,$2,6
	.option	pic0
	b	$L28
	.option	pic2
	ori	$11,$2,0xf80

$L43:
	sll	$2,$2,6
	.option	pic0
	b	$L23
	.option	pic2
	ori	$2,$2,0xf80

$L37:
	.option	pic0
	b	$L23
	.option	pic2
	li	$2,-64			# 0xffffffffffffffc0

$L39:
	li	$11,255			# 0xff
	.option	pic0
	b	$L33
	.option	pic2
	li	$14,255			# 0xff

$L38:
	.option	pic0
	b	$L28
	.option	pic2
	li	$11,-64			# 0xffffffffffffffc0

	.set	macro
	.set	reorder
	.end	base64_decode_standard
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
