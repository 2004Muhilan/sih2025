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
	sb	$0,3($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$3,0($2)
	lw	$4,20($fp)
	lw	$2,4($fp)
	addu	$2,$4,$2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,3($fp)
	or	$2,$3,$2
	sb	$2,3($fp)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$3,4($fp)
	lw	$2,24($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L3
	nop

	lbu	$2,3($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hmac_verify
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
