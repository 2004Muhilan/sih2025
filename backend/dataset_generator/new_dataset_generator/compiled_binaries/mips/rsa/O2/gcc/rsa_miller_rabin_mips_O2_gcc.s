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
	beq	$4,$0,$L19
	sltu	$2,$5,2

	addiu	$3,$5,-2
$L21:
	addiu	$4,$4,-1
	sltu	$2,$3,$5
	addu	$2,$2,$4
	beq	$2,$0,$L20
	nop

$L13:
	andi	$2,$5,0x1
	beq	$2,$0,$L10
	nop

	addiu	$2,$5,-1
	sltu	$5,$0,$5
	andi	$6,$2,0x1
	bne	$6,$0,$L11
	addu	$3,$5,$4

$L6:
	srl	$2,$2,1
	sll	$4,$3,31
	andi	$5,$2,0x1
	srl	$3,$3,1
	beq	$5,$0,$L6
	or	$2,$4,$2

$L17:
	jr	$31
	li	$2,1			# 0x1

$L19:
	beq	$2,$0,$L21
	addiu	$3,$5,-2

$L10:
	jr	$31
	move	$2,$0

$L20:
	sltu	$3,$3,2
	beq	$3,$0,$L13
	nop

	.option	pic0
	b	$L17
	nop

	.option	pic2
$L11:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	rsa_miller_rabin
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
