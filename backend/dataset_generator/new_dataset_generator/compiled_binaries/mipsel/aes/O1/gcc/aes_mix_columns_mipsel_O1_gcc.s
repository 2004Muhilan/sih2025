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
	.set	nomips16
	.set	nomicromips
	.ent	gf_mul
	.type	gf_mul, @function
gf_mul:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$6,8			# 0x8
	.option	pic0
	b	$L4
	.option	pic2
	move	$2,$0

$L9:
	seb	$4,$4
	bltz	$4,$L7
	andi	$3,$3,0x00ff

	move	$4,$3
$L3:
	addiu	$6,$6,-1
	beq	$6,$0,$L10
	srl	$5,$5,1

$L4:
	andi	$3,$5,0x1
	beq	$3,$0,$L9
	sll	$3,$4,1

	.option	pic0
	b	$L9
	.option	pic2
	xor	$2,$4,$2

$L7:
	.option	pic0
	b	$L3
	.option	pic2
	xori	$4,$3,0x1b

$L10:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gf_mul
	.size	gf_mul, .-gf_mul
	.align	2
	.globl	aes_mix_columns
	.set	nomips16
	.set	nomicromips
	.ent	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$16,$4
	addiu	$22,$4,16
$L12:
	lbu	$21,0($16)
	lbu	$19,1($16)
	lbu	$18,2($16)
	lbu	$20,3($16)
	li	$5,2			# 0x2
	move	$4,$21
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$17,$2
	li	$5,3			# 0x3
	move	$4,$19
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	xor	$17,$17,$2
	xor	$17,$18,$17
	xor	$17,$20,$17
	sb	$17,0($16)
	li	$5,2			# 0x2
	move	$4,$19
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$17,$2
	li	$5,3			# 0x3
	move	$4,$18
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	xor	$17,$17,$2
	xor	$17,$21,$17
	xor	$17,$20,$17
	sb	$17,1($16)
	li	$5,2			# 0x2
	move	$4,$18
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$17,$2
	li	$5,3			# 0x3
	move	$4,$20
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	xor	$17,$17,$2
	xor	$17,$21,$17
	xor	$17,$19,$17
	sb	$17,2($16)
	li	$5,3			# 0x3
	move	$4,$21
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$17,$2
	li	$5,2			# 0x2
	move	$4,$20
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	xor	$17,$17,$2
	xor	$19,$19,$17
	xor	$18,$18,$19
	sb	$18,3($16)
	addiu	$16,$16,4
	bne	$16,$22,$L12
	lw	$31,52($sp)

	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	aes_mix_columns
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
