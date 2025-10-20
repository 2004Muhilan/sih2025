	.file	1 "rc4_drop3072.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_drop3072_init
	.set	nomips16
	.set	nomicromips
	.ent	rc4_drop3072_init
	.type	rc4_drop3072_init, @function
rc4_drop3072_init:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$7,256			# 0x100
	addu	$3,$4,$2
$L7:
	sb	$2,0($3)
	addiu	$2,$2,1
	bne	$2,$7,$L7
	addu	$3,$4,$2

	move	$2,$0
	move	$7,$0
	li	$11,256			# 0x100
	move	$8,$4
$L3:
	teq	$6,$0,7
	divu	$0,$2,$6
	lbu	$10,0($8)
	addiu	$8,$8,1
	addiu	$2,$2,1
	addu	$3,$7,$10
	mfhi	$9
	addu	$9,$5,$9
	lbu	$7,0($9)
	addu	$7,$7,$3
	andi	$3,$7,0xff
	addu	$3,$4,$3
	andi	$7,$7,0x00ff
	lbu	$9,0($3)
	sb	$9,-1($8)
	bne	$2,$11,$L3
	sb	$10,0($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_drop3072_init
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
