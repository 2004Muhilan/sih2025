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
	addiu	$7,$4,64
	move	$3,$5
	move	$2,$5
$L2:
	lw	$6,0($4)
	addiu	$4,$4,4
	addiu	$2,$2,4
	bne	$4,$7,$L2
	sw	$6,-4($2)

	lw	$12,52($5)
	addiu	$14,$5,256
	lw	$11,56($5)
	lw	$2,60($5)
	lw	$10,8($5)
	lw	$9,12($5)
	lw	$8,16($5)
	lw	$7,20($5)
	lw	$6,24($5)
	.option	pic0
	b	$L3
	.option	pic2
	lw	$13,28($5)

$L4:
	move	$13,$4
$L3:
	lw	$4,32($3)
	move	$5,$2
	lw	$2,0($3)
	addiu	$3,$3,4
	xor	$2,$4,$2
	xor	$2,$2,$12
	xor	$2,$2,$10
	ror	$2,$2,31
	move	$12,$11
	move	$10,$9
	sw	$2,60($3)
	move	$9,$8
	move	$11,$5
	move	$8,$7
	move	$7,$6
	bne	$14,$3,$L4
	move	$6,$13

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha1_message_schedule
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
