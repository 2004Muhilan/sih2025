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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$9,440467456			# 0x1a410000
	li	$11,-1727528960			# 0xffffffff99080000
	move	$5,$0
	li	$8,624			# 0x270
	li	$10,-2147483648			# 0xffffffff80000000
	move	$7,$4
	ori	$9,$9,0xa41b
	ori	$11,$11,0xb0df
$L3:
	move	$3,$5
	lw	$12,0($7)
	addiu	$5,$5,1
	addiu	$3,$3,397
	srl	$2,$5,4
	srl	$6,$3,4
	multu	$2,$9
	and	$12,$12,$10
	mfhi	$2
	multu	$6,$9
	mfhi	$6
	srl	$2,$2,2
	mul	$13,$2,$8
	srl	$6,$6,2
	subu	$2,$5,$13
	mul	$13,$6,$8
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$2,0($2)
	subu	$3,$3,$13
	sll	$3,$3,2
	ext	$2,$2,0,31
	addu	$3,$4,$3
	or	$2,$2,$12
	lw	$6,0($3)
	srl	$3,$2,1
	andi	$2,$2,0x1
	beq	$2,$0,$L2
	xor	$3,$3,$6

	xor	$3,$3,$11
$L2:
	sw	$3,0($7)
	bne	$5,$8,$L3
	addiu	$7,$7,4

	jr	$31
	sw	$0,2496($4)

	.set	macro
	.set	reorder
	.end	prng_mersenne_twist
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
