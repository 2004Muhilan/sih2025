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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sb	$2,8($fp)
	lb	$2,8($fp)
	slt	$2,$2,65
	bne	$2,$0,$L2
	nop

	lb	$2,8($fp)
	slt	$2,$2,91
	beq	$2,$0,$L2
	nop

	lb	$2,8($fp)
	addiu	$2,$2,-65
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L2:
	lb	$2,8($fp)
	slt	$2,$2,97
	bne	$2,$0,$L4
	nop

	lb	$2,8($fp)
	slt	$2,$2,123
	beq	$2,$0,$L4
	nop

	lb	$2,8($fp)
	addiu	$2,$2,-71
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	lb	$2,8($fp)
	slt	$2,$2,48
	bne	$2,$0,$L5
	nop

	lb	$2,8($fp)
	slt	$2,$2,58
	beq	$2,$0,$L5
	nop

	lb	$2,8($fp)
	addiu	$2,$2,4
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L5:
	lb	$3,8($fp)
	li	$2,43			# 0x2b
	bne	$3,$2,$L6
	nop

	li	$2,62			# 0x3e
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L6:
	lb	$3,8($fp)
	li	$2,47			# 0x2f
	bne	$3,$2,$L7
	nop

	li	$2,63			# 0x3f
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L7:
	li	$2,-1			# 0xffffffffffffffff
$L3:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,56,$31		# vars= 16, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$16,44($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	lw	$2,64($fp)
	sw	$0,0($2)
	sw	$0,28($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L13:
	sw	$0,32($fp)
	sw	$0,36($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L11:
	lw	$2,32($fp)
	sll	$16,$2,6
	lw	$3,36($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	base64_char_value
	nop

	.option	pic2
	or	$2,$16,$2
	sw	$2,32($fp)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L10:
	lw	$2,36($fp)
	slt	$2,$2,4
	bne	$2,$0,$L11
	nop

	lw	$2,32($fp)
	srl	$5,$2,16
	lw	$2,64($fp)
	lw	$2,0($2)
	addiu	$4,$2,1
	lw	$3,64($fp)
	sw	$4,0($3)
	lw	$3,60($fp)
	addu	$2,$3,$2
	andi	$3,$5,0x00ff
	sb	$3,0($2)
	lw	$2,32($fp)
	srl	$5,$2,8
	lw	$2,64($fp)
	lw	$2,0($2)
	addiu	$4,$2,1
	lw	$3,64($fp)
	sw	$4,0($3)
	lw	$3,60($fp)
	addu	$2,$3,$2
	andi	$3,$5,0x00ff
	sb	$3,0($2)
	lw	$2,64($fp)
	lw	$2,0($2)
	addiu	$4,$2,1
	lw	$3,64($fp)
	sw	$4,0($3)
	lw	$3,60($fp)
	addu	$2,$3,$2
	lw	$3,32($fp)
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,4
	sw	$2,28($fp)
$L9:
	lw	$3,56($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	beq	$2,$0,$L14
	nop

	lw	$3,56($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,61			# 0x3d
	bne	$3,$2,$L13
	nop

$L14:
	nop
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$16,44($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	base64_decode_standard
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
