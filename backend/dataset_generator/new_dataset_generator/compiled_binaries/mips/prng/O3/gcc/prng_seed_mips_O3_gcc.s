	.file	1 "prng_seed.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	prng_seed
	.set	nomips16
	.set	nomicromips
	.ent	prng_seed
	.type	prng_seed, @function
prng_seed:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1812398080			# 0x6c070000
	sw	$5,0($4)
	li	$2,821297152			# 0x30f40000
	ori	$3,$3,0x8965
	xor	$3,$5,$3
	sw	$3,4($4)
	li	$3,1597308928			# 0x5f350000
	addiu	$2,$2,32144
	addiu	$3,$3,25749
	xor	$2,$5,$2
	xor	$5,$5,$3
	sw	$2,8($4)
	jr	$31
	sw	$5,12($4)

	.set	macro
	.set	reorder
	.end	prng_seed
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
