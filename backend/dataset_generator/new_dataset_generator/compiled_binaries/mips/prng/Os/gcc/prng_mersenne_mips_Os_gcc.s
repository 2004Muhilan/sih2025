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
	li	$6,-1727528960			# 0xffffffff99080000
	move	$7,$0
	li	$8,624			# 0x270
	li	$10,-2147483648			# 0xffffffff80000000
	move	$9,$4
	ori	$6,$6,0xb0df
$L3:
	move	$2,$7
	lw	$5,0($9)
	addiu	$7,$7,1
	addiu	$2,$2,397
	teq	$8,$0,7
	div	$0,$7,$8
	and	$5,$10,$5
	mfhi	$3
	teq	$8,$0,7
	div	$0,$2,$8
	sll	$3,$3,2
	addu	$3,$4,$3
	lw	$3,0($3)
	ext	$3,$3,0,31
	or	$3,$3,$5
	srl	$5,$3,1
	andi	$3,$3,0x1
	mfhi	$2
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$2,0($2)
	beq	$3,$0,$L2
	xor	$2,$5,$2

	xor	$2,$2,$6
$L2:
	sw	$2,0($9)
	bne	$7,$8,$L3
	addiu	$9,$9,4

	jr	$31
	sw	$0,2496($4)

	.set	macro
	.set	reorder
	.end	prng_mersenne_twist
	.size	prng_mersenne_twist, .-prng_mersenne_twist
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
