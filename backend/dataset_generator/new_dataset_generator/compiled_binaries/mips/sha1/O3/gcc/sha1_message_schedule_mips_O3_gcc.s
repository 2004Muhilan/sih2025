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
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	addiu	$sp,$sp,-16
	li	$13,16			# 0x10
	li	$24,79			# 0x4f
	sw	$18,12($sp)
	sw	$17,8($sp)
	sw	$16,4($sp)
	sw	$2,0($5)
	move	$2,$5
	lw	$3,4($4)
	sw	$3,4($5)
	lw	$18,8($4)
	sw	$18,8($5)
	lw	$17,12($4)
	sw	$17,12($5)
	lw	$16,16($4)
	sw	$16,16($5)
	lw	$12,20($4)
	sw	$12,20($5)
	lw	$11,24($4)
	sw	$11,24($5)
	lw	$10,28($4)
	sw	$10,28($5)
	lw	$3,32($4)
	sw	$3,32($5)
	lw	$3,36($4)
	sw	$3,36($5)
	lw	$3,40($4)
	sw	$3,40($5)
	lw	$3,44($4)
	sw	$3,44($5)
	lw	$3,48($4)
	sw	$3,48($5)
	lw	$9,52($4)
	sw	$9,52($5)
	lw	$8,56($4)
	sw	$8,56($5)
	lw	$7,60($4)
	.option	pic0
	b	$L2
	.option	pic2
	sw	$7,60($5)

$L4:
	move	$10,$14
	move	$11,$15
	move	$12,$25
$L2:
	lw	$25,32($2)
	addiu	$2,$2,12
	lw	$15,24($2)
	addiu	$13,$13,3
	lw	$14,28($2)
	lw	$6,-12($2)
	lw	$4,-8($2)
	lw	$3,-4($2)
	xor	$6,$25,$6
	xor	$4,$15,$4
	xor	$3,$14,$3
	xor	$6,$6,$18
	xor	$4,$4,$17
	xor	$3,$3,$16
	xor	$6,$6,$9
	xor	$4,$4,$8
	xor	$3,$3,$7
	ror	$9,$6,31
	ror	$8,$4,31
	ror	$7,$3,31
	sw	$9,52($2)
	move	$18,$12
	sw	$8,56($2)
	move	$17,$11
	sw	$7,60($2)
	bne	$13,$24,$L4
	move	$16,$10

	addiu	$3,$5,316
	addiu	$5,$5,320
$L3:
	lw	$2,-32($3)
	addiu	$3,$3,4
	lw	$7,-16($3)
	lw	$6,-60($3)
	lw	$4,-68($3)
	xor	$2,$2,$7
	xor	$2,$2,$6
	xor	$2,$2,$4
	ror	$2,$2,31
	bne	$3,$5,$L3
	sw	$2,-4($3)

	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	jr	$31
	addiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	sha1_message_schedule
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
