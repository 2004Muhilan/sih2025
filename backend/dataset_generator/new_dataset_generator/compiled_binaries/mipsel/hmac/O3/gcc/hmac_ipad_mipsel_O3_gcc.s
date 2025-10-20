	.file	1 "hmac_ipad.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_create_ipad
	.set	nomips16
	.set	nomicromips
	.ent	hmac_create_ipad
	.type	hmac_create_ipad, @function
hmac_create_ipad:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$11,54			# 0x36
	li	$10,64			# 0x40
$L5:
	sltu	$3,$2,$5
	addu	$9,$4,$2
	beq	$3,$0,$L2
	addu	$8,$6,$2

	lbu	$3,0($9)
	addiu	$2,$2,1
	xori	$3,$3,0x36
	bne	$2,$10,$L5
	sb	$3,0($8)

	jr	$31
	nop

$L2:
	addiu	$2,$2,1
	bne	$2,$10,$L5
	sb	$11,0($8)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hmac_create_ipad
	.size	hmac_create_ipad, .-hmac_create_ipad
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
