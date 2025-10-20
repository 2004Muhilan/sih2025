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
	bne	$4,$0,$L16
	addiu	$2,$5,-2

	sltu	$2,$5,2
	bne	$2,$0,$L14
	nop

	addiu	$2,$5,-2
$L16:
	addiu	$4,$4,-1
	sltu	$3,$2,$5
	addu	$3,$3,$4
	bne	$3,$0,$L17
	andi	$3,$5,0x1

	sltu	$2,$2,2
	bne	$2,$0,$L15
	nop

$L17:
	beq	$3,$0,$L18
	move	$2,$0

	sltu	$2,$0,$5
	addu	$2,$2,$4
	addiu	$5,$5,-1
$L6:
	andi	$3,$5,0x1
	beq	$3,$0,$L7
	sll	$3,$2,31

	jr	$31
	li	$2,1			# 0x1

$L7:
	srl	$5,$5,1
	srl	$2,$2,1
	.option	pic0
	b	$L6
	.option	pic2
	or	$5,$3,$5

$L14:
	jr	$31
	move	$2,$0

$L15:
	li	$2,1			# 0x1
$L18:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_miller_rabin
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
