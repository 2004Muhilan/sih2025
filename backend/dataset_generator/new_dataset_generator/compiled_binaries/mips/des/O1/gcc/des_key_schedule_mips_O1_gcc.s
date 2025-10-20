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
	sll	$10,$4,1
	li	$9,64			# 0x40
$L2:
	andi	$8,$2,0x20
	nor	$3,$0,$2
	sll	$3,$10,$3
	srl	$7,$5,$2
	or	$7,$3,$7
	srl	$3,$4,$2
	movn	$7,$3,$8
	movn	$3,$0,$8
	andi	$3,$3,0xffff
	sw	$3,0($6)
	sw	$7,4($6)
	addiu	$2,$2,4
	bne	$2,$9,$L2
	addiu	$6,$6,8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_key_schedule
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
