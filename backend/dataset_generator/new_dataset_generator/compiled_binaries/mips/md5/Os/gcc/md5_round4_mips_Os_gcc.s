	.file	1 "md5_round4.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	md5_round4
	.set	nomips16
	.set	nomicromips
	.ent	md5_round4
	.type	md5_round4, @function
md5_round4:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,24($sp)
	nor	$7,$0,$7
	lw	$2,16($sp)
	or	$7,$7,$5
	xor	$7,$7,$6
	addu	$2,$2,$3
	lw	$3,0($4)
	addu	$2,$2,$3
	addu	$7,$7,$2
	lw	$2,20($sp)
	sll	$7,$7,$2
	addu	$5,$7,$5
	jr	$31
	sw	$5,0($4)

	.set	macro
	.set	reorder
	.end	md5_round4
	.size	md5_round4, .-md5_round4
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
