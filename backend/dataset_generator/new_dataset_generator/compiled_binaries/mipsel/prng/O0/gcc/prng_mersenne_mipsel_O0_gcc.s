	.file	1 "prng_mersenne.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	prng_mersenne_twist
	.set	nomips16
	.set	nomicromips
	.ent	prng_mersenne_twist
	.type	prng_mersenne_twist, @function
prng_mersenne_twist:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$0,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L4:
	lw	$3,16($fp)
	lw	$2,0($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,-2147483648			# 0xffffffff80000000
	and	$4,$3,$2
	lw	$2,0($fp)
	addiu	$2,$2,1
	li	$3,-770899968			# 0xffffffffd20d0000
	ori	$3,$3,0x20d3
	mult	$2,$3
	mfhi	$3
	addu	$3,$3,$2
	sra	$5,$3,9
	sra	$3,$2,31
	subu	$3,$5,$3
	li	$5,624			# 0x270
	mul	$3,$3,$5
	subu	$3,$2,$3
	lw	$5,16($fp)
	sll	$2,$3,2
	addu	$2,$5,$2
	lw	$2,0($2)
	ext	$2,$2,0,31
	or	$2,$4,$2
	sw	$2,4($fp)
	lw	$2,0($fp)
	addiu	$2,$2,397
	li	$3,-770899968			# 0xffffffffd20d0000
	ori	$3,$3,0x20d3
	mult	$2,$3
	mfhi	$3
	addu	$3,$3,$2
	sra	$4,$3,9
	sra	$3,$2,31
	subu	$3,$4,$3
	li	$4,624			# 0x270
	mul	$3,$3,$4
	subu	$3,$2,$3
	lw	$4,16($fp)
	sll	$2,$3,2
	addu	$2,$4,$2
	lw	$3,0($2)
	lw	$2,4($fp)
	srl	$2,$2,1
	xor	$3,$3,$2
	lw	$4,16($fp)
	lw	$2,0($fp)
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,0($2)
	lw	$2,4($fp)
	andi	$2,$2,0x1
	beq	$2,$0,$L3
	nop

	lw	$3,16($fp)
	lw	$2,0($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,-1727528960			# 0xffffffff99080000
	ori	$2,$2,0xb0df
	xor	$3,$3,$2
	lw	$4,16($fp)
	lw	$2,0($fp)
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,0($2)
$L3:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
$L2:
	lw	$2,0($fp)
	slt	$2,$2,624
	bne	$2,$0,$L4
	nop

	lw	$2,16($fp)
	sw	$0,2496($2)
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	prng_mersenne_twist
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
