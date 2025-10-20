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
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$4,4($fp)
	sll	$4,$4,2
	andi	$5,$4,0x20
	move	$10,$0
	lw	$6,20($fp)
	sll	$7,$6,1
	li	$6,-1			# 0xffffffffffffffff
	xor	$6,$4,$6
	sll	$6,$7,$6
	lw	$7,16($fp)
	srl	$2,$7,$4
	or	$2,$6,$2
	lw	$6,20($fp)
	srl	$3,$6,$4
	movn	$2,$3,$5
	movn	$3,$10,$5
	lw	$4,4($fp)
	sll	$4,$4,3
	lw	$5,24($fp)
	addu	$4,$5,$4
	li	$5,-1			# 0xffffffffffffffff
	and	$8,$2,$5
	andi	$9,$3,0xffff
	sw	$8,0($4)
	sw	$9,4($4)
	lw	$4,4($fp)
	addiu	$4,$4,1
	sw	$4,4($fp)
$L2:
	lw	$4,4($fp)
	slt	$4,$4,16
	bne	$4,$0,$L3
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_key_schedule
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
