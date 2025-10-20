	.file	1 "md5_round1.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	md5_round1
	.set	nomips16
	.set	nomicromips
	.ent	md5_round1
	.type	md5_round1, @function
md5_round1:
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
	lw	$3,0($2)
	lw	$4,12($fp)
	lw	$2,16($fp)
	and	$4,$4,$2
	lw	$2,12($fp)
	nor	$5,$0,$2
	lw	$2,20($fp)
	and	$2,$5,$2
	or	$2,$4,$2
	addu	$3,$3,$2
	lw	$2,24($fp)
	addu	$3,$3,$2
	lw	$2,32($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	sll	$3,$3,$2
	lw	$2,12($fp)
	addu	$3,$3,$2
	lw	$2,8($fp)
	sw	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	md5_round1
	.size	md5_round1, .-md5_round1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
