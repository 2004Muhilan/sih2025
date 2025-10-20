	.file	1 "hmac_verify.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_verify
	.set	nomips16
	.set	nomicromips
	.ent	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L4
	addu	$6,$4,$6

	move	$2,$0
$L3:
	lbu	$3,0($4)
	addiu	$4,$4,1
	lbu	$7,0($5)
	addiu	$5,$5,1
	xor	$3,$3,$7
	or	$2,$2,$3
	bne	$6,$4,$L3
	andi	$2,$2,0x00ff

	jr	$31
	sltu	$2,$2,1

$L4:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	hmac_verify
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
