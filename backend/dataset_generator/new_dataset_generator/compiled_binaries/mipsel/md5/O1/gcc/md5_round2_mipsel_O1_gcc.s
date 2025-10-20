	.file	1 "md5_round2.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	md5_round2
	.set	nomips16
	.set	nomicromips
	.ent	md5_round2
	.type	md5_round2, @function
md5_round2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	xor	$2,$5,$6
	and	$2,$2,$7
	xor	$2,$2,$6
	lw	$3,16($sp)
	lw	$6,24($sp)
	addu	$3,$3,$6
	lw	$6,0($4)
	addu	$3,$3,$6
	addu	$2,$2,$3
	lw	$3,20($sp)
	sll	$2,$2,$3
	addu	$5,$2,$5
	jr	$31
	sw	$5,0($4)

	.set	macro
	.set	reorder
	.end	md5_round2
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
