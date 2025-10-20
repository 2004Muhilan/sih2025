	.file	1 "prng_lcg.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	prng_lcg
	.set	nomips16
	.set	nomicromips
	.ent	prng_lcg
	.type	prng_lcg, @function
prng_lcg:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	li	$3,1103495168			# 0x41c60000
	addiu	$3,$3,20077
	mul	$2,$2,$3
	addiu	$2,$2,12345
	ext	$2,$2,0,31
	jr	$31
	sw	$2,0($4)

	.set	macro
	.set	reorder
	.end	prng_lcg
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
