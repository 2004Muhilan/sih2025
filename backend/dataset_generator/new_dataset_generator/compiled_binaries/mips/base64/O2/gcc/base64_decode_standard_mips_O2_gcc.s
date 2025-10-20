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
	beq	$2,$0,$L34
	addiu	$9,$4,4

	li	$11,61			# 0x3d
	li	$10,43			# 0x2b
	li	$12,47			# 0x2f
$L14:
	beq	$2,$11,$L34
	addiu	$7,$9,-4

	move	$3,$0
$L20:
	lb	$2,0($7)
	andi	$4,$2,0x00ff
	addiu	$8,$4,-65
	sltu	$8,$8,26
	bne	$8,$0,$L30
	sll	$3,$3,6

	addiu	$8,$4,-97
	sltu	$8,$8,26
	bne	$8,$0,$L31
	addiu	$4,$4,-48

	sltu	$4,$4,10
	bne	$4,$0,$L32
	nop

	beq	$2,$10,$L33
	nop

	bne	$2,$12,$L22
	nop

	ori	$3,$3,0x3f
$L16:
	addiu	$7,$7,1
	bne	$9,$7,$L20
	srl	$8,$3,16

	lw	$2,0($6)
	srl	$7,$3,8
	addiu	$9,$9,4
	addu	$4,$5,$2
	addiu	$2,$2,1
	sw	$2,0($6)
	sb	$8,0($4)
	lw	$2,0($6)
	addu	$4,$5,$2
	addiu	$2,$2,1
	sw	$2,0($6)
	sb	$7,0($4)
	lw	$2,0($6)
	addu	$4,$5,$2
	addiu	$2,$2,1
	sw	$2,0($6)
	sb	$3,0($4)
	lb	$2,-4($9)
	bne	$2,$0,$L14
	nop

$L34:
	jr	$31
	nop

$L30:
	addiu	$2,$2,-65
	seb	$2,$2
	.option	pic0
	b	$L16
	.option	pic2
	or	$3,$2,$3

$L31:
	addiu	$2,$2,-71
	seb	$2,$2
	.option	pic0
	b	$L16
	.option	pic2
	or	$3,$2,$3

$L32:
	addiu	$2,$2,4
	seb	$2,$2
	.option	pic0
	b	$L16
	.option	pic2
	or	$3,$2,$3

$L33:
	.option	pic0
	b	$L16
	.option	pic2
	ori	$3,$3,0x3e

$L22:
	.option	pic0
	b	$L16
	.option	pic2
	li	$3,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	base64_decode_standard
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
