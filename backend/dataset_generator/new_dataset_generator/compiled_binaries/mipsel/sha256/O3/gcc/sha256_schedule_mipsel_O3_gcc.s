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
	lw	$7,0($4)
	addiu	$sp,$sp,-8
	addiu	$8,$5,4
	sw	$16,4($sp)
	addiu	$16,$5,196
	sw	$7,0($5)
	lw	$2,4($4)
	sw	$2,4($5)
	lw	$2,8($4)
	sw	$2,8($5)
	lw	$2,12($4)
	sw	$2,12($5)
	lw	$2,16($4)
	sw	$2,16($5)
	lw	$2,20($4)
	sw	$2,20($5)
	lw	$2,24($4)
	sw	$2,24($5)
	lw	$2,28($4)
	sw	$2,28($5)
	lw	$2,32($4)
	sw	$2,32($5)
	lw	$13,36($4)
	sw	$13,36($5)
	lw	$12,40($4)
	sw	$12,40($5)
	lw	$11,44($4)
	sw	$11,44($5)
	lw	$10,48($4)
	sw	$10,48($5)
	lw	$9,52($4)
	sw	$9,52($5)
	lw	$6,56($4)
	sw	$6,56($5)
	lw	$4,60($4)
	sw	$4,60($5)
$L2:
	move	$5,$7
	lw	$7,0($8)
	ror	$3,$6,17
	ror	$24,$6,19
	ror	$2,$7,7
	ror	$25,$7,18
	srl	$14,$6,10
	srl	$15,$7,3
	xor	$2,$2,$25
	xor	$3,$3,$24
	xor	$3,$3,$14
	xor	$2,$2,$15
	addu	$2,$2,$3
	addiu	$8,$8,4
	addu	$2,$2,$5
	move	$3,$4
	addu	$4,$2,$13
	move	$13,$12
	sw	$4,56($8)
	move	$12,$11
	move	$11,$10
	move	$10,$9
	move	$9,$6
	bne	$8,$16,$L2
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
