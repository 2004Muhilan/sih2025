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
	li	$3,8			# 0x8
	move	$2,$0
$L4:
	andi	$6,$5,0x1
	beq	$6,$0,$L10
	sll	$7,$4,1

	xor	$2,$4,$2
$L10:
	seb	$6,$4
	bgez	$6,$L3
	andi	$4,$7,0xfe

	xori	$4,$4,0x1b
$L3:
	addiu	$3,$3,-1
	bne	$3,$0,$L4
	srl	$5,$5,1

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	addiu	$13,$4,16
	move	$8,$4
	sw	$31,28($sp)
$L12:
	lbu	$14,0($8)
	li	$5,2			# 0x2
	lbu	$11,1($8)
	addiu	$8,$8,4
	lbu	$10,-2($8)
	move	$4,$14
	.option	pic0
	jal	gf_mul
	.option	pic2
	lbu	$12,-1($8)

	li	$5,3			# 0x3
	move	$4,$11
	.option	pic0
	jal	gf_mul
	.option	pic2
	move	$9,$2

	xor	$9,$9,$2
	xor	$9,$10,$9
	li	$5,2			# 0x2
	xor	$9,$12,$9
	move	$4,$11
	.option	pic0
	jal	gf_mul
	.option	pic2
	sb	$9,-4($8)

	li	$5,3			# 0x3
	move	$4,$10
	.option	pic0
	jal	gf_mul
	.option	pic2
	move	$9,$2

	xor	$9,$9,$2
	xor	$9,$14,$9
	li	$5,2			# 0x2
	xor	$9,$12,$9
	move	$4,$10
	.option	pic0
	jal	gf_mul
	.option	pic2
	sb	$9,-3($8)

	li	$5,3			# 0x3
	move	$4,$12
	.option	pic0
	jal	gf_mul
	.option	pic2
	move	$9,$2

	xor	$9,$9,$2
	xor	$9,$14,$9
	xor	$9,$11,$9
	li	$5,3			# 0x3
	sb	$9,-2($8)
	.option	pic0
	jal	gf_mul
	.option	pic2
	move	$4,$14

	li	$5,2			# 0x2
	move	$4,$12
	.option	pic0
	jal	gf_mul
	.option	pic2
	move	$9,$2

	xor	$9,$9,$2
	xor	$11,$11,$9
	xor	$10,$10,$11
	bne	$13,$8,$L12
	sb	$10,-1($8)

	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	aes_mix_columns
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
