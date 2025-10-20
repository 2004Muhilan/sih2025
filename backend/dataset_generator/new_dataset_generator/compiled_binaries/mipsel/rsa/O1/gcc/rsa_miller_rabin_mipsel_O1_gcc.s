	.file	1 "rsa_miller_rabin.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rsa_miller_rabin
	.set	nomips16
	.set	nomicromips
	.ent	rsa_miller_rabin
	.type	rsa_miller_rabin, @function
rsa_miller_rabin:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L15
	addiu	$3,$4,-2

$L17:
	sltu	$6,$3,$4
	addiu	$2,$5,-1
	addu	$2,$6,$2
	beq	$2,$0,$L16
	nop

$L13:
	andi	$2,$4,0x1
	beq	$2,$0,$L10
	nop

	addiu	$2,$4,-1
	sltu	$4,$4,1
	move	$3,$2
	andi	$2,$2,0x1
	bne	$2,$0,$L11
	subu	$5,$5,$4

$L6:
	sll	$4,$5,31
	srl	$2,$3,1
	or	$2,$4,$2
	move	$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,$L6
	srl	$5,$5,1

	jr	$31
	li	$2,1			# 0x1

$L15:
	bne	$5,$0,$L8
	nop

	sltu	$2,$4,2
	beq	$2,$0,$L17
	addiu	$3,$4,-2

$L8:
	jr	$31
	move	$2,$0

$L16:
	bne	$2,$0,$L9
	sltu	$3,$3,2

	beq	$3,$0,$L13
	nop

$L9:
	jr	$31
	li	$2,1			# 0x1

$L10:
	jr	$31
	move	$2,$0

$L11:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	rsa_miller_rabin
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
