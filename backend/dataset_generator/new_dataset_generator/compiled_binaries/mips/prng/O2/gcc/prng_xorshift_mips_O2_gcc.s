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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,0($4)
	sll	$2,$3,13
	xor	$2,$2,$3
	srl	$3,$2,17
	xor	$3,$3,$2
	sll	$2,$3,5
	xor	$2,$2,$3
	jr	$31
	sw	$2,0($4)

	.set	macro
	.set	reorder
	.end	prng_xorshift
	.size	prng_xorshift, .-prng_xorshift
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
