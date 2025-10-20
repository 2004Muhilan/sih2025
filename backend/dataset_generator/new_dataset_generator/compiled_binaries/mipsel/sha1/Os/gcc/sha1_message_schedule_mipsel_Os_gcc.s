	.file	1 "sha1_message_schedule.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha1_message_schedule
	.set	nomips16
	.set	nomicromips
	.ent	sha1_message_schedule
	.type	sha1_message_schedule, @function
sha1_message_schedule:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$3,64			# 0x40
$L2:
	addu	$6,$4,$2
	lw	$7,0($6)
	addu	$6,$5,$2
	addiu	$2,$2,4
	bne	$2,$3,$L2
	sw	$7,0($6)

	addiu	$3,$5,256
$L3:
	lw	$4,32($5)
	addiu	$5,$5,4
	lw	$2,48($5)
	xor	$2,$2,$4
	lw	$4,4($5)
	xor	$2,$2,$4
	lw	$4,-4($5)
	xor	$2,$2,$4
	ror	$2,$2,31
	bne	$3,$5,$L3
	sw	$2,60($5)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha1_message_schedule
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
