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
	lw	$5,0($4)
	li	$6,1284833280			# 0x4c950000
	li	$3,1481703424			# 0x58510000
	lw	$2,4($4)
	addiu	$6,$6,32557
	ori	$3,$3,0xf42d
	mult	$5,$3
	madd	$2,$6
	mflo	$3
	multu	$5,$6
	mflo	$8
	mfhi	$9
	addiu	$7,$8,1
	addu	$3,$3,$9
	sltu	$6,$7,$8
	sw	$7,0($4)
	addu	$6,$6,$3
	srl	$3,$5,18
	sw	$6,4($4)
	sll	$4,$2,14
	or	$3,$4,$3
	srl	$4,$2,18
	xor	$3,$3,$5
	xor	$4,$4,$2
	sll	$4,$4,5
	srl	$3,$3,27
	srl	$2,$2,27
	or	$3,$4,$3
	jr	$31
	ror	$2,$3,$2

	.set	macro
	.set	reorder
	.end	prng_pcg
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
