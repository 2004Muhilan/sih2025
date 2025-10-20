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
	beq	$3,$0,$L2
	addiu	$3,$2,-97

	addiu	$4,$4,-65
$L8:
	jr	$31
	seb	$2,$4

$L2:
	sltu	$3,$3,26
	beq	$3,$0,$L4
	nop

	.option	pic0
	b	$L8
	.option	pic2
	addiu	$4,$4,-71

$L4:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	beq	$2,$0,$L5
	li	$3,43			# 0x2b

	.option	pic0
	b	$L8
	.option	pic2
	addiu	$4,$4,4

$L5:
	beq	$4,$3,$L9
	li	$2,62			# 0x3e

	li	$2,63			# 0x3f
	li	$3,-1			# 0xffffffffffffffff
	xori	$4,$4,0x2f
	movn	$2,$3,$4
$L9:
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$9,$0
	sw	$0,0($6)
	li	$12,61			# 0x3d
	addu	$11,$4,$9
	li	$13,4			# 0x4
	lb	$2,0($11)
	beq	$2,$0,$L26
	move	$10,$4

	bne	$2,$12,$L23
	nop

$L26:
	jr	$31
	nop

$L23:
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
$L14:
	move	$8,$0
	move	$2,$0
$L12:
	sll	$7,$2,6
	addu	$2,$11,$8
	addiu	$8,$8,1
	.option	pic0
	jal	base64_char_value
	.option	pic2
	lb	$4,0($2)

	bne	$8,$13,$L12
	or	$2,$2,$7

	lw	$3,0($6)
	addiu	$9,$9,4
	addu	$11,$10,$9
	addiu	$4,$3,1
	addu	$3,$5,$3
	sw	$4,0($6)
	srl	$4,$2,16
	sb	$4,0($3)
	lw	$3,0($6)
	addiu	$4,$3,1
	addu	$3,$5,$3
	sw	$4,0($6)
	srl	$4,$2,8
	sb	$4,0($3)
	lw	$3,0($6)
	addiu	$4,$3,1
	addu	$3,$5,$3
	sw	$4,0($6)
	sb	$2,0($3)
	lb	$2,0($11)
	beq	$2,$0,$L24
	lw	$31,28($sp)

	bne	$2,$12,$L14
	nop

$L24:
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	base64_decode_standard
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
