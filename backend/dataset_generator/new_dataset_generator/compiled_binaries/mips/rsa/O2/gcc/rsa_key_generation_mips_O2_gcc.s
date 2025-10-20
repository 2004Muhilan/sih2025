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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,3233			# 0xca1
	move	$2,$0
	sw	$3,4($4)
	li	$3,17			# 0x11
	sw	$2,0($4)
	move	$2,$0
	sw	$3,4($5)
	move	$3,$0
	sw	$2,0($5)
	move	$2,$0
	sw	$3,4($6)
	jr	$31
	sw	$2,0($6)

	.set	macro
	.set	reorder
	.end	rsa_generate_keys
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
