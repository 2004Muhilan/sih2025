	.file	1 "sha1_round3.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha1_round3
	.set	nomips16
	.set	nomicromips
	.ent	sha1_round3
	.type	sha1_round3, @function
sha1_round3:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,20($sp)
	li	$3,-1894055936			# 0xffffffff8f1b0000
	ror	$4,$4,27
	ori	$3,$3,0xbcdc
	addu	$2,$2,$3
	lw	$3,16($sp)
	addu	$2,$2,$3
	or	$3,$6,$7
	addu	$2,$2,$4
	and	$3,$3,$5
	and	$6,$6,$7
	or	$3,$3,$6
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	sha1_round3
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
