	.file	1 "rc4_ksa.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_ksa
	.set	nomips16
	.set	nomicromips
	.ent	rc4_ksa
	.type	rc4_ksa, @function
rc4_ksa:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$3,256			# 0x100
	addu	$7,$4,$2
$L6:
	sb	$2,0($7)
	addiu	$2,$2,1
	bne	$2,$3,$L6
	addu	$7,$4,$2

	move	$3,$0
	move	$7,$0
	li	$10,256			# 0x100
$L3:
	teq	$6,$0,7
	divu	$0,$3,$6
	addu	$9,$4,$3
	addiu	$3,$3,1
	lbu	$8,0($9)
	addu	$7,$7,$8
	mfhi	$2
	addu	$2,$5,$2
	lbu	$2,0($2)
	addu	$2,$2,$7
	andi	$7,$2,0x00ff
	andi	$2,$2,0xff
	addu	$2,$4,$2
	lbu	$11,0($2)
	sb	$11,0($9)
	bne	$3,$10,$L3
	sb	$8,0($2)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_ksa
	.size	rc4_ksa, .-rc4_ksa
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
