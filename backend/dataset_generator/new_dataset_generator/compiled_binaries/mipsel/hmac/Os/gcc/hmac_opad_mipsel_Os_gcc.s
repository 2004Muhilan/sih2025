	.file	1 "hmac_opad.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_create_opad
	.set	nomips16
	.set	nomicromips
	.ent	hmac_create_opad
	.type	hmac_create_opad, @function
hmac_create_opad:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$7,64			# 0x40
$L3:
	sltu	$8,$2,$5
	beq	$8,$0,$L2
	li	$3,92			# 0x5c

	addu	$3,$4,$2
	lbu	$3,0($3)
	xori	$3,$3,0x5c
$L2:
	addu	$8,$6,$2
	addiu	$2,$2,1
	bne	$2,$7,$L3
	sb	$3,0($8)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hmac_create_opad
	.size	hmac_create_opad, .-hmac_create_opad
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
