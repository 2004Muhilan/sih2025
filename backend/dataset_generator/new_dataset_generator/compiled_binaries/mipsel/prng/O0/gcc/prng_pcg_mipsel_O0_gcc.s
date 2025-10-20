	.file	1 "prng_pcg.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	prng_pcg
	.set	nomips16
	.set	nomicromips
	.ent	prng_pcg
	.type	prng_pcg, @function
prng_pcg:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$4,24($fp)
	lw	$5,4($4)
	lw	$4,0($4)
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$5,12($fp)
	li	$4,1284833280			# 0x4c950000
	ori	$4,$4,0x7f2d
	mul	$5,$5,$4
	lw	$10,8($fp)
	li	$4,1481703424			# 0x58510000
	ori	$4,$4,0xf42d
	mul	$4,$10,$4
	addu	$10,$5,$4
	lw	$5,8($fp)
	li	$4,1284833280			# 0x4c950000
	ori	$4,$4,0x7f2d
	multu	$5,$4
	mflo	$4
	mfhi	$5
	addu	$10,$10,$5
	move	$5,$10
	li	$12,1			# 0x1
	move	$13,$0
	addu	$10,$4,$12
	sltu	$24,$10,$4
	addu	$11,$5,$13
	addu	$4,$24,$11
	move	$11,$4
	move	$4,$10
	move	$5,$11
	lw	$10,24($fp)
	sw	$4,0($10)
	sw	$5,4($10)
	lw	$4,12($fp)
	sll	$4,$4,14
	lw	$5,8($fp)
	srl	$2,$5,18
	or	$2,$4,$2
	lw	$4,12($fp)
	srl	$3,$4,18
	lw	$4,8($fp)
	xor	$8,$4,$2
	lw	$4,12($fp)
	xor	$9,$4,$3
	sll	$2,$9,5
	srl	$6,$8,27
	or	$6,$2,$6
	srl	$7,$9,27
	sw	$6,0($fp)
	lw	$2,12($fp)
	srl	$14,$2,27
	move	$15,$0
	sw	$14,4($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	ror	$2,$3,$2
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	prng_pcg
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
