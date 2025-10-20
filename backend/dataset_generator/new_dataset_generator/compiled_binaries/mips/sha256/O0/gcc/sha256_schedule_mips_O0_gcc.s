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
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,0($fp)
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$3,$3,$2
	lw	$2,0($fp)
	sll	$2,$2,2
	lw	$4,28($fp)
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
	ori	$2,$2,0xfff1
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	ror	$3,$2,7
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfff1
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,28($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	ror	$2,$2,18
	xor	$3,$3,$2
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfff1
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,28($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	srl	$2,$2,3
	xor	$2,$3,$2
	sw	$2,8($fp)
	lw	$3,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfffe
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	ror	$3,$2,17
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfffe
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,28($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	ror	$2,$2,19
	xor	$3,$3,$2
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfffe
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,28($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	srl	$2,$2,10
	xor	$2,$3,$2
	sw	$2,12($fp)
	lw	$3,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfff0
	addu	$2,$3,$2
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,8($fp)
	addu	$3,$3,$2
	lw	$4,4($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xfff9
	addu	$2,$4,$2
	sll	$2,$2,2
	lw	$4,28($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	addu	$4,$3,$2
	lw	$2,4($fp)
	sll	$2,$2,2
	lw	$3,28($fp)
	addu	$2,$3,$2
	lw	$3,12($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$2,4($fp)
	slt	$2,$2,64
	bne	$2,$0,$L5
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_message_schedule
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
