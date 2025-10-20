	.file	1 "des_feistel_function.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_feistel
	.set	nomips16
	.set	nomicromips
	.ent	des_feistel
	.type	des_feistel, @function
des_feistel:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,48			# 0x30
	addiu	$2,$2,-1
$L4:
	bne	$2,$0,$L4
	addiu	$2,$2,-1

	jr	$31
	addiu	$2,$2,1

	.set	macro
	.set	reorder
	.end	des_feistel
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
