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
	move	$3,$4

	addu	$4,$4,$6
	move	$2,$0
$L3:
	lbu	$6,0($3)
	lbu	$7,0($5)
	xor	$6,$6,$7
	or	$2,$2,$6
	andi	$2,$2,0x00ff
	addiu	$3,$3,1
	bne	$3,$4,$L3
	addiu	$5,$5,1

$L2:
	jr	$31
	sltu	$2,$2,1

$L4:
	.option	pic0
	b	$L2
	.option	pic2
	move	$2,$0

	.set	macro
	.set	reorder
	.end	hmac_verify
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
