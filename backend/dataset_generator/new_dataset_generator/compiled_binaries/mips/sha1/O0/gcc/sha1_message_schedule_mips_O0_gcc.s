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
	sw	$0,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,0($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$3,$3,$2
	lw	$2,0($fp)
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
$L2:
	lw	$2,0($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
	nop

	li	$2,16			# 0x10
	sw	$2,4($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$3,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfffd
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,20($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfff8
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	xor	$3,$3,$2
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfff2
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	xor	$3,$3,$2
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfff0
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	xor	$3,$3,$2
	lw	$2,4($fp)
	sll	$2,$2,2
	lw	$4,20($fp)
	addu	$2,$4,$2
	ror	$3,$3,31
	sw	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$2,4($fp)
	slt	$2,$2,80
	bne	$2,$0,$L5
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
	.end	sha1_message_schedule
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
