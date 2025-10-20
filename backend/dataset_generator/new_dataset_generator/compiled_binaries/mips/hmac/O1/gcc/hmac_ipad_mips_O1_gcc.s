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
	li	$9,54			# 0x36
	.option	pic0
	b	$L3
	.option	pic2
	li	$8,64			# 0x40

$L4:
	move	$3,$9
$L2:
	addu	$7,$6,$2
	addiu	$2,$2,1
	beq	$2,$8,$L7
	sb	$3,0($7)

$L3:
	sltu	$3,$2,$5
	beq	$3,$0,$L4
	addu	$3,$4,$2

	lbu	$3,0($3)
	.option	pic0
	b	$L2
	.option	pic2
	xori	$3,$3,0x36

$L7:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hmac_create_ipad
	.size	hmac_create_ipad, .-hmac_create_ipad
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
