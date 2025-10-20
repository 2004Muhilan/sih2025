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
	li	$7,256			# 0x100
$L2:
	addu	$3,$4,$2
	sb	$2,0($3)
	addiu	$2,$2,1
	bne	$2,$7,$L2
	move	$8,$4

	move	$3,$0
	move	$7,$0
	li	$12,-2147483648			# 0xffffffff80000000
	addiu	$12,$12,255
	li	$14,-256			# 0xffffffffffffff00
	.option	pic0
	b	$L4
	.option	pic2
	li	$13,256			# 0x100

$L3:
	andi	$7,$2,0x00ff
	addu	$2,$4,$2
	lbu	$11,0($2)
	sb	$11,0($10)
	sb	$9,0($2)
	addiu	$3,$3,1
	beq	$3,$13,$L8
	addiu	$8,$8,1

$L4:
	lbu	$9,0($8)
	teq	$6,$0,7
	divu	$0,$3,$6
	mfhi	$2
	addu	$2,$5,$2
	lbu	$2,0($2)
	addu	$7,$7,$9
	addu	$2,$2,$7
	and	$2,$2,$12
	bgez	$2,$L3
	move	$10,$8

	addiu	$2,$2,-1
	or	$2,$2,$14
	.option	pic0
	b	$L3
	.option	pic2
	addiu	$2,$2,1

$L8:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_ksa
	.size	rc4_ksa, .-rc4_ksa
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
