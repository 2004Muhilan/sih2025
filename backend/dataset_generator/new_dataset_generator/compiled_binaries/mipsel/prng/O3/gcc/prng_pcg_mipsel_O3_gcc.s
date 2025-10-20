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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1284833280			# 0x4c950000
	lw	$10,0($4)
	li	$5,1481703424			# 0x58510000
	lw	$2,4($4)
	addiu	$3,$3,32557
	ori	$5,$5,0xf42d
	multu	$10,$3
	sll	$11,$2,14
	srl	$7,$2,18
	mflo	$8
	mfhi	$9
	mult	$10,$5
	madd	$2,$3
	srl	$3,$10,18
	xor	$7,$7,$2
	or	$3,$11,$3
	mflo	$5
	addiu	$6,$8,1
	xor	$3,$3,$10
	sll	$7,$7,5
	sw	$6,0($4)
	srl	$3,$3,27
	sltu	$6,$6,$8
	srl	$2,$2,27
	addu	$5,$5,$9
	or	$3,$7,$3
	addu	$6,$6,$5
	ror	$2,$3,$2
	jr	$31
	sw	$6,4($4)

	.set	macro
	.set	reorder
	.end	prng_pcg
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
