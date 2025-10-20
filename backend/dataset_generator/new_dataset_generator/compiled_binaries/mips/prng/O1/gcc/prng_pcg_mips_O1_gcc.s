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
	lw	$2,0($4)
	lw	$5,4($4)
	li	$6,1284833280			# 0x4c950000
	addiu	$6,$6,32557
	li	$3,1481703424			# 0x58510000
	ori	$3,$3,0xf42d
	mult	$5,$3
	madd	$2,$6
	mflo	$3
	multu	$5,$6
	mflo	$7
	mfhi	$6
	addu	$3,$3,$6
	addiu	$8,$7,1
	sltu	$6,$8,$7
	addu	$3,$6,$3
	sw	$3,0($4)
	sw	$8,4($4)
	sll	$4,$2,14
	srl	$3,$5,18
	or	$3,$4,$3
	srl	$4,$2,18
	xor	$4,$4,$2
	xor	$3,$3,$5
	sll	$4,$4,5
	srl	$3,$3,27
	or	$3,$4,$3
	srl	$2,$2,27
	jr	$31
	ror	$2,$3,$2

	.set	macro
	.set	reorder
	.end	prng_pcg
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
