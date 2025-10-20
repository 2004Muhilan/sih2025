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
	lw	$4,20($fp)
	bne	$4,$0,$L2
	nop

	lw	$4,20($fp)
	bne	$4,$0,$L12
	nop

	lw	$4,16($fp)
	sltu	$4,$4,2
	beq	$4,$0,$L2
	nop

$L12:
	move	$2,$0
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L2:
	lw	$5,16($fp)
	li	$4,2			# 0x2
	bne	$5,$4,$L13
	nop

	lw	$4,20($fp)
	beq	$4,$0,$L5
	nop

$L13:
	lw	$5,16($fp)
	li	$4,3			# 0x3
	bne	$5,$4,$L7
	nop

	lw	$4,20($fp)
	bne	$4,$0,$L7
	nop

$L5:
	li	$2,1			# 0x1
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L7:
	lw	$4,16($fp)
	andi	$2,$4,0x1
	lw	$4,20($fp)
	andi	$3,$4,0
	move	$4,$2
	or	$4,$4,$3
	bne	$4,$0,$L8
	nop

	move	$2,$0
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L8:
	lw	$4,16($fp)
	lw	$5,20($fp)
	li	$6,-1			# 0xffffffffffffffff
	li	$7,-1			# 0xffffffffffffffff
	addu	$2,$4,$6
	sltu	$12,$2,$4
	addu	$3,$5,$7
	addu	$4,$12,$3
	move	$3,$4
	sw	$2,0($fp)
	sw	$3,4($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L10:
	lw	$2,0($fp)
	lw	$3,4($fp)
	sll	$4,$3,31
	srl	$8,$2,1
	or	$8,$4,$8
	srl	$9,$3,1
	sw	$8,0($fp)
	sw	$9,4($fp)
$L9:
	lw	$2,0($fp)
	andi	$10,$2,0x1
	lw	$2,4($fp)
	andi	$11,$2,0
	move	$2,$10
	or	$2,$2,$11
	beq	$2,$0,$L10
	nop

	li	$2,1			# 0x1
$L4:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_miller_rabin
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
