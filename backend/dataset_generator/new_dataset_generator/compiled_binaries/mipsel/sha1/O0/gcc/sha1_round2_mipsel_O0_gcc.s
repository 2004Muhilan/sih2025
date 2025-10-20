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
	sw	$6,16($fp)
	sw	$7,20($fp)
	lw	$2,8($fp)
	ror	$3,$2,27
	lw	$4,12($fp)
	lw	$2,16($fp)
	xor	$4,$4,$2
	lw	$2,20($fp)
	xor	$2,$4,$2
	addu	$3,$3,$2
	lw	$2,24($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	addu	$3,$3,$2
	li	$2,1859715072			# 0x6ed90000
	ori	$2,$2,0xeba1
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha1_round2
	.size	sha1_round2, .-sha1_round2
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
