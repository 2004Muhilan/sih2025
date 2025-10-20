	.file	1 "des_key_schedule.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_key_schedule
	.set	nomips16
	.set	nomicromips
	.ent	des_key_schedule
	.type	des_key_schedule, @function
des_key_schedule:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	sll	$11,$4,1
	li	$10,64			# 0x40
$L2:
	nor	$8,$0,$2
	srl	$7,$5,$2
	sll	$8,$11,$8
	srl	$3,$4,$2
	andi	$9,$2,0x20
	or	$7,$8,$7
	movn	$7,$3,$9
	addiu	$2,$2,4
	addiu	$6,$6,8
	movn	$3,$0,$9
	sw	$7,-4($6)
	andi	$3,$3,0xffff
	bne	$2,$10,$L2
	sw	$3,-8($6)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_key_schedule
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
