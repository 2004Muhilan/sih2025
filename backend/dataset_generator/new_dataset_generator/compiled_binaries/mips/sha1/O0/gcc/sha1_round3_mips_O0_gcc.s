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
	lw	$4,16($fp)
	lw	$2,20($fp)
	or	$4,$4,$2
	lw	$2,12($fp)
	and	$4,$4,$2
	lw	$5,16($fp)
	lw	$2,20($fp)
	and	$2,$5,$2
	or	$2,$4,$2
	addu	$3,$3,$2
	lw	$2,24($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	addu	$3,$3,$2
	li	$2,-1894055936			# 0xffffffff8f1b0000
	ori	$2,$2,0xbcdc
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha1_round3
	.size	sha1_round3, .-sha1_round3
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
