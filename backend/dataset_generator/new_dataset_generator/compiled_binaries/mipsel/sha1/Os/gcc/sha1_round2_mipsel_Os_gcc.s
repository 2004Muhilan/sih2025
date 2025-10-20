	.file	1 "sha1_round2.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha1_round2
	.set	nomips16
	.set	nomicromips
	.ent	sha1_round2
	.type	sha1_round2, @function
sha1_round2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,20($sp)
	li	$3,1859715072			# 0x6ed90000
	xor	$6,$6,$7
	ori	$3,$3,0xeba1
	addu	$2,$2,$3
	lw	$3,16($sp)
	xor	$6,$6,$5
	ror	$4,$4,27
	addu	$2,$2,$3
	addu	$2,$6,$2
	jr	$31
	addu	$2,$2,$4

	.set	macro
	.set	reorder
	.end	sha1_round2
	.size	sha1_round2, .-sha1_round2
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
