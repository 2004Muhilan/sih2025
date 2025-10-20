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
	move	$3,$0
	move	$2,$0
$L2:
	bne	$3,$6,$L3
	addu	$7,$4,$3

	jr	$31
	sltu	$2,$2,1

$L3:
	addu	$8,$5,$3
	addiu	$3,$3,1
	lbu	$7,0($7)
	lbu	$8,0($8)
	xor	$7,$7,$8
	or	$2,$2,$7
	.option	pic0
	b	$L2
	.option	pic2
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	hmac_verify
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
