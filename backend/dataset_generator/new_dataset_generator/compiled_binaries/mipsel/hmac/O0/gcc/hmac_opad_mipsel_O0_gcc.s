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
$L5:
	lw	$3,4($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L3
	nop

	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	xori	$2,$2,0x5c
	andi	$2,$2,0x00ff
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L3:
	li	$2,92			# 0x5c
$L4:
	lw	$4,24($fp)
	lw	$3,4($fp)
	addu	$3,$4,$3
	sb	$2,0($3)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,4($fp)
	sltu	$2,$2,64
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
	.end	hmac_create_opad
	.size	hmac_create_opad, .-hmac_create_opad
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
