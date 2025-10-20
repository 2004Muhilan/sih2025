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
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	move	$2,$4
	move	$3,$5
	sb	$2,16($fp)
	move	$2,$3
	sb	$2,20($fp)
	sb	$0,2($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L5:
	lbu	$2,20($fp)
	andi	$2,$2,0x1
	beq	$2,$0,$L3
	nop

	lbu	$3,2($fp)
	lbu	$2,16($fp)
	xor	$2,$3,$2
	sb	$2,2($fp)
$L3:
	lbu	$3,16($fp)
	li	$2,-128			# 0xffffffffffffff80
	and	$2,$3,$2
	sb	$2,3($fp)
	lbu	$2,16($fp)
	sll	$2,$2,1
	sb	$2,16($fp)
	lbu	$2,3($fp)
	beq	$2,$0,$L4
	nop

	lbu	$2,16($fp)
	xori	$2,$2,0x1b
	sb	$2,16($fp)
$L4:
	lbu	$2,20($fp)
	srl	$2,$2,1
	sb	$2,20($fp)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,4($fp)
	slt	$2,$2,8
	bne	$2,$0,$L5
	nop

	lbu	$2,2($fp)
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
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
	sw	$0,32($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L9:
	lw	$2,32($fp)
	sll	$2,$2,2
	move	$3,$2
	lw	$2,56($fp)
	addu	$2,$2,$3
	sw	$2,36($fp)
	lw	$2,36($fp)
	lbu	$2,0($2)
	sb	$2,28($fp)
	lw	$2,36($fp)
	lbu	$2,1($2)
	sb	$2,29($fp)
	lw	$2,36($fp)
	lbu	$2,2($2)
	sb	$2,30($fp)
	lw	$2,36($fp)
	lbu	$2,3($2)
	sb	$2,31($fp)
	lbu	$2,28($fp)
	li	$5,2			# 0x2
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$16,$2
	lbu	$2,29($fp)
	li	$5,3			# 0x3
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	xor	$2,$16,$2
	andi	$3,$2,0x00ff
	lbu	$2,30($fp)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,31($fp)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,36($fp)
	sb	$3,0($2)
	lbu	$2,29($fp)
	li	$5,2			# 0x2
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$3,$2
	lbu	$2,28($fp)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lbu	$2,30($fp)
	li	$5,3			# 0x3
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	xor	$2,$16,$2
	andi	$4,$2,0x00ff
	lw	$2,36($fp)
	addiu	$2,$2,1
	lbu	$3,31($fp)
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lbu	$3,28($fp)
	lbu	$2,29($fp)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lbu	$2,30($fp)
	li	$5,2			# 0x2
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lbu	$2,31($fp)
	li	$5,3			# 0x3
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$3,$2
	lw	$2,36($fp)
	addiu	$2,$2,2
	xor	$3,$16,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lbu	$2,28($fp)
	li	$5,3			# 0x3
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$3,$2
	lbu	$2,29($fp)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,30($fp)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lbu	$2,31($fp)
	li	$5,2			# 0x2
	move	$4,$2
	.option	pic0
	jal	gf_mul
	nop

	.option	pic2
	move	$3,$2
	lw	$2,36($fp)
	addiu	$2,$2,3
	xor	$3,$16,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L8:
	lw	$2,32($fp)
	slt	$2,$2,4
	bne	$2,$0,$L9
	nop

	nop
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
	.end	aes_mix_columns
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
