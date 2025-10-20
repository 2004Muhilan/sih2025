	.file	1 "prng_xorshift.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	prng_xorshift
	.set	nomips16
	.set	nomicromips
	.ent	prng_xorshift
	.type	prng_xorshift, @function
prng_xorshift:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,4($fp)
	lw	$2,4($fp)
	sll	$2,$2,13
	lw	$3,4($fp)
	xor	$2,$3,$2
	sw	$2,4($fp)
	lw	$2,4($fp)
	srl	$2,$2,17
	lw	$3,4($fp)
	xor	$2,$3,$2
	sw	$2,4($fp)
	lw	$2,4($fp)
	sll	$2,$2,5
	lw	$3,4($fp)
	xor	$2,$3,$2
	sw	$2,4($fp)
	lw	$2,16($fp)
	lw	$3,4($fp)
	sw	$3,0($2)
	lw	$2,4($fp)
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	prng_xorshift
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
