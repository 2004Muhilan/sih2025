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
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	addiu	$6,$4,64
	move	$2,$5
	sw	$16,4($sp)
$L2:
	lw	$3,0($4)
	addiu	$4,$4,4
	addiu	$2,$2,4
	bne	$6,$4,$L2
	sw	$3,-4($2)

	lw	$13,36($5)
	addiu	$7,$5,4
	lw	$12,40($5)
	addiu	$16,$5,196
	lw	$11,44($5)
	lw	$10,48($5)
	lw	$9,52($5)
	lw	$6,56($5)
	lw	$8,60($5)
	lw	$4,0($5)
$L3:
	move	$5,$4
	lw	$4,0($7)
	ror	$3,$6,17
	ror	$24,$6,19
	ror	$2,$4,7
	ror	$25,$4,18
	srl	$14,$6,10
	srl	$15,$4,3
	xor	$2,$2,$25
	xor	$3,$3,$24
	xor	$3,$3,$14
	xor	$2,$2,$15
	addu	$2,$2,$3
	addiu	$7,$7,4
	addu	$2,$2,$5
	move	$3,$8
	addu	$8,$2,$13
	move	$13,$12
	sw	$8,56($7)
	move	$12,$11
	move	$11,$10
	move	$10,$9
	move	$9,$6
	bne	$16,$7,$L3
	move	$6,$3

	lw	$16,4($sp)
	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	sha256_message_schedule
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
