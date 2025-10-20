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
	andi	$3,$4,0x00ff
	addiu	$2,$3,-65
	andi	$2,$2,0x00ff
	sltu	$2,$2,26
	bne	$2,$0,$L8
	nop

	addiu	$2,$3,-97
	andi	$2,$2,0x00ff
	sltu	$2,$2,26
	bne	$2,$0,$L9
	addiu	$3,$3,-48

	andi	$3,$3,0x00ff
	sltu	$3,$3,10
	bne	$3,$0,$L10
	nop

	li	$2,43			# 0x2b
	beq	$4,$2,$L6
	xori	$3,$4,0x2f

	li	$4,63			# 0x3f
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	movz	$2,$4,$3

$L8:
	jr	$31
	addiu	$2,$4,-65

$L9:
	jr	$31
	addiu	$2,$4,-71

$L10:
	jr	$31
	addiu	$2,$4,4

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
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($6)
	lb	$2,0($4)
	beq	$2,$0,$L23
	nop

	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$18,$4
	move	$20,$5
	move	$19,$6
	li	$21,61			# 0x3d
	.option	pic0
	b	$L13
	.option	pic2
	move	$22,$0

$L21:
	addiu	$4,$3,1
	sw	$4,0($19)
	addu	$3,$20,$3
	srl	$4,$2,16
	sb	$4,0($3)
	lw	$3,0($19)
	addiu	$4,$3,1
	sw	$4,0($19)
	addu	$3,$20,$3
	srl	$4,$2,8
	sb	$4,0($3)
	lw	$3,0($19)
	addiu	$4,$3,1
	sw	$4,0($19)
	addu	$3,$20,$3
	sb	$2,0($3)
	lb	$2,0($18)
	beq	$2,$0,$L22
	lw	$31,52($sp)

$L13:
	beq	$2,$21,$L11
	move	$17,$18

	move	$2,$22
	addiu	$18,$18,4
$L14:
	sll	$16,$2,6
	lb	$4,0($17)
	.option	pic0
	jal	base64_char_value
	nop

	.option	pic2
	addiu	$17,$17,1
	bne	$17,$18,$L14
	or	$2,$2,$16

	.option	pic0
	b	$L21
	.option	pic2
	lw	$3,0($19)

$L11:
	lw	$31,52($sp)
$L22:
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,56

$L23:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	base64_decode_standard
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
