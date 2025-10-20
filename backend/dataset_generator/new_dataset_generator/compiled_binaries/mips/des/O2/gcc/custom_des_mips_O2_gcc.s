	.file	1 "custom_des.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$8,56			# 0x38
	move	$7,$0
	move	$3,$0
	li	$12,-8			# 0xfffffffffffffff8
$L2:
	lbu	$2,0($4)
	nor	$11,$0,$8
	andi	$10,$8,0x20
	addiu	$4,$4,1
	srl	$9,$2,1
	sll	$2,$2,$8
	srl	$9,$9,$11
	addiu	$8,$8,-8
	movn	$9,$2,$10
	movn	$2,$0,$10
	or	$7,$7,$9
	bne	$8,$12,$L2
	or	$3,$3,$2

	move	$4,$0
	li	$9,16			# 0x10
$L3:
	andi	$2,$4,0x7
	addu	$2,$5,$2
	xor	$8,$7,$3
	addiu	$4,$4,1
	lbu	$2,0($2)
	move	$7,$3
	xor	$2,$2,$8
	bne	$4,$9,$L3
	move	$3,$2

	li	$3,56			# 0x38
	sll	$11,$7,1
	li	$10,-8			# 0xfffffffffffffff8
$L4:
	nor	$5,$0,$3
	srl	$4,$2,$3
	sll	$5,$11,$5
	srl	$8,$7,$3
	andi	$9,$3,0x20
	or	$4,$5,$4
	movn	$4,$8,$9
	addiu	$3,$3,-8
	addiu	$6,$6,1
	bne	$3,$10,$L4
	sb	$4,-1($6)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_encrypt
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
