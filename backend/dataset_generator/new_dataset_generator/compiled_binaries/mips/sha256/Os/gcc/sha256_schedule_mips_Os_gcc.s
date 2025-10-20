	.file	1 "sha256_schedule.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_message_schedule
	.set	nomips16
	.set	nomicromips
	.ent	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
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

	addiu	$6,$5,192
$L3:
	lw	$3,4($5)
	addiu	$5,$5,4
	lw	$4,52($5)
	ror	$7,$3,18
	ror	$2,$3,7
	srl	$3,$3,3
	xor	$2,$2,$7
	lw	$7,32($5)
	xor	$2,$2,$3
	lw	$3,-4($5)
	addu	$3,$3,$7
	ror	$7,$4,19
	addu	$2,$2,$3
	ror	$3,$4,17
	srl	$4,$4,10
	xor	$3,$3,$7
	xor	$3,$3,$4
	addu	$2,$2,$3
	bne	$6,$5,$L3
	sw	$2,60($5)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_message_schedule
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
