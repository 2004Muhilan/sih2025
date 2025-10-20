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
	move	$7,$4
	move	$6,$0
	li	$9,-770899968			# 0xffffffffd20d0000
	addiu	$9,$9,8403
	li	$8,624			# 0x270
	li	$11,-2147483648			# 0xffffffff80000000
	li	$12,-1727528960			# 0xffffffff99080000
	.option	pic0
	b	$L3
	.option	pic2
	ori	$12,$12,0xb0df

$L2:
	sw	$2,0($10)
	beq	$6,$8,$L5
	addiu	$7,$7,4

$L3:
	move	$10,$7
	move	$3,$6
	addiu	$6,$6,1
	mult	$6,$9
	mfhi	$2
	addu	$2,$2,$6
	sra	$2,$2,9
	sra	$5,$6,31
	subu	$2,$2,$5
	mul	$5,$2,$8
	subu	$2,$6,$5
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$5,0($2)
	ext	$5,$5,0,31
	lw	$2,0($7)
	and	$2,$2,$11
	or	$5,$5,$2
	addiu	$2,$3,397
	mult	$2,$9
	mfhi	$3
	addu	$3,$3,$2
	sra	$3,$3,9
	sra	$13,$2,31
	subu	$3,$3,$13
	mul	$13,$3,$8
	subu	$2,$2,$13
	sll	$2,$2,2
	addu	$2,$4,$2
	srl	$3,$5,1
	lw	$2,0($2)
	andi	$5,$5,0x1
	beq	$5,$0,$L2
	xor	$2,$3,$2

	.option	pic0
	b	$L2
	.option	pic2
	xor	$2,$2,$12

$L5:
	jr	$31
	sw	$0,2496($4)

	.set	macro
	.set	reorder
	.end	prng_mersenne_twist
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
