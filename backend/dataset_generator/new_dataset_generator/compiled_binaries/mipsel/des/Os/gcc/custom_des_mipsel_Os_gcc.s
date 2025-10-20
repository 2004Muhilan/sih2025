	.file	1 "custom_des.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__ashldi3
	.globl	__lshrdi3
	.align	2
	.globl	des_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
	.frame	$sp,56,$31		# vars= 0, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$22,48($sp)
	sw	$20,40($sp)
	li	$22,-8			# 0xfffffffffffffff8
	sw	$18,32($sp)
	li	$20,56			# 0x38
	sw	$16,24($sp)
	move	$18,$0
	move	$16,$0
	sw	$21,44($sp)
	sw	$19,36($sp)
	move	$21,$5
	sw	$17,28($sp)
	move	$19,$4
	sw	$31,52($sp)
	move	$17,$6
	.cprestore	16
$L2:
	lw	$25,%call16(__ashldi3)($28)
	move	$5,$0
	lbu	$4,0($19)
	move	$6,$20
	addiu	$20,$20,-8
	.reloc	1f,R_MIPS_JALR,__ashldi3
1:	jalr	$25
	addiu	$19,$19,1

	lw	$28,16($sp)
	or	$16,$16,$2
	bne	$20,$22,$L2
	or	$18,$18,$3

	move	$2,$0
	li	$4,16			# 0x10
$L3:
	andi	$3,$2,0x7
	addu	$3,$21,$3
	xor	$18,$18,$16
	move	$19,$16
	lbu	$16,0($3)
	addiu	$2,$2,1
	xor	$16,$16,$18
	bne	$2,$4,$L3
	move	$18,$19

	li	$18,56			# 0x38
	li	$20,-8			# 0xfffffffffffffff8
$L4:
	lw	$25,%call16(__lshrdi3)($28)
	move	$6,$18
	move	$4,$16
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,__lshrdi3
1:	jalr	$25
	addiu	$18,$18,-8

	lw	$28,16($sp)
	addiu	$17,$17,1
	bne	$18,$20,$L4
	sb	$2,-1($17)

	lw	$31,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	des_encrypt
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
