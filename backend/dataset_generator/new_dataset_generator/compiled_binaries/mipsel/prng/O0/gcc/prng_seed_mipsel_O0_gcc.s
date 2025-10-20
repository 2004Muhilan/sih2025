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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$2,8($fp)
	lw	$3,12($fp)
	sw	$3,0($2)
	lw	$3,12($fp)
	li	$2,1812398080			# 0x6c070000
	ori	$2,$2,0x8965
	xor	$3,$3,$2
	lw	$2,8($fp)
	sw	$3,4($2)
	lw	$3,12($fp)
	li	$2,821297152			# 0x30f40000
	ori	$2,$2,0x7d90
	xor	$3,$3,$2
	lw	$2,8($fp)
	sw	$3,8($2)
	lw	$3,12($fp)
	li	$2,1597308928			# 0x5f350000
	ori	$2,$2,0x6495
	xor	$3,$3,$2
	lw	$2,8($fp)
	sw	$3,12($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	prng_seed
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
