	.file	1 "hmac_key_derivation.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_key_derive
	.set	nomips16
	.set	nomicromips
	.ent	hmac_key_derive
	.type	hmac_key_derive, @function
hmac_key_derive:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$12,16($sp)
	move	$2,$0
	li	$10,32			# 0x20
$L2:
	teq	$5,$0,7
	divu	$0,$2,$5
	addu	$11,$12,$2
	mfhi	$9
	teq	$7,$0,7
	divu	$0,$2,$7
	addiu	$2,$2,1
	addu	$9,$4,$9
	mfhi	$3
	addu	$8,$6,$3
	lbu	$3,0($9)
	lbu	$8,0($8)
	xor	$3,$3,$8
	bne	$2,$10,$L2
	sb	$3,0($11)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hmac_key_derive
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
