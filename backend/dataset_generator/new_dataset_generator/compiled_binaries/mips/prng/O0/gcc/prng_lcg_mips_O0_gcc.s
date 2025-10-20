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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	lw	$3,0($2)
	li	$2,1103495168			# 0x41c60000
	ori	$2,$2,0x4e6d
	mul	$2,$3,$2
	addiu	$2,$2,12345
	ext	$3,$2,0,31
	lw	$2,8($fp)
	sw	$3,0($2)
	lw	$2,8($fp)
	lw	$2,0($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	prng_lcg
	.size	prng_lcg, .-prng_lcg
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
