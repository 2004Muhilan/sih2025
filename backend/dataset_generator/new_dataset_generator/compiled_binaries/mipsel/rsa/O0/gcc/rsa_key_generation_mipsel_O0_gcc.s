	.file	1 "rsa_key_generation.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rsa_generate_keys
	.set	nomips16
	.set	nomicromips
	.ent	rsa_generate_keys
	.type	rsa_generate_keys, @function
rsa_generate_keys:
	.frame	$fp,32,$31		# vars= 24, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	li	$2,61			# 0x3d
	move	$3,$0
	sw	$2,0($fp)
	sw	$3,4($fp)
	li	$2,53			# 0x35
	move	$3,$0
	sw	$2,8($fp)
	sw	$3,12($fp)
	lw	$3,4($fp)
	lw	$2,8($fp)
	mul	$3,$3,$2
	lw	$4,12($fp)
	lw	$2,0($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$3,0($fp)
	lw	$2,8($fp)
	multu	$3,$2
	mflo	$2
	mfhi	$3
	addu	$4,$4,$3
	move	$3,$4
	lw	$4,32($fp)
	sw	$2,0($4)
	sw	$3,4($4)
	lw	$4,0($fp)
	lw	$5,4($fp)
	li	$6,-1			# 0xffffffffffffffff
	li	$7,-1			# 0xffffffffffffffff
	addu	$2,$4,$6
	sltu	$8,$2,$4
	addu	$3,$5,$7
	addu	$4,$8,$3
	move	$3,$4
	move	$6,$2
	move	$7,$3
	lw	$4,8($fp)
	lw	$5,12($fp)
	li	$8,-1			# 0xffffffffffffffff
	li	$9,-1			# 0xffffffffffffffff
	addu	$2,$4,$8
	sltu	$10,$2,$4
	addu	$3,$5,$9
	addu	$4,$10,$3
	move	$3,$4
	mul	$5,$7,$2
	mul	$4,$3,$6
	addu	$4,$5,$4
	multu	$6,$2
	mflo	$2
	mfhi	$3
	addu	$4,$4,$3
	move	$3,$4
	sw	$2,16($fp)
	sw	$3,20($fp)
	sw	$2,16($fp)
	sw	$3,20($fp)
	lw	$4,36($fp)
	li	$2,17			# 0x11
	move	$3,$0
	sw	$2,0($4)
	sw	$3,4($4)
	lw	$2,40($fp)
	move	$4,$0
	move	$5,$0
	sw	$4,0($2)
	sw	$5,4($2)
	nop
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_generate_keys
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
