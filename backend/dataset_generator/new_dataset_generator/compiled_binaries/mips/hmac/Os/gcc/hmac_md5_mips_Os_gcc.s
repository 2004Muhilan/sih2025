	.file	1 "hmac_md5.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_md5
	.set	nomips16
	.set	nomicromips
	.ent	hmac_md5
	.type	hmac_md5, @function
hmac_md5:
	.frame	$sp,168,$31		# vars= 136, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-168
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$8,$sp,28
	lw	$10,184($sp)
	addiu	$7,$sp,92
	lw	$6,%got(__stack_chk_guard)($28)
	li	$11,64			# 0x40
	sw	$31,164($sp)
	.cprestore	16
	lw	$2,0($6)
	sw	$2,156($sp)
	move	$2,$0
$L3:
	sltu	$3,$2,$5
	beq	$3,$0,$L6
	li	$9,54			# 0x36

	addu	$3,$4,$2
	lbu	$3,0($3)
	xori	$9,$3,0x36
	xori	$3,$3,0x5c
$L2:
	addu	$12,$8,$2
	sb	$9,0($12)
	addu	$9,$7,$2
	addiu	$2,$2,1
	bne	$2,$11,$L3
	sb	$3,0($9)

	move	$2,$0
	li	$4,16			# 0x10
$L4:
	addu	$3,$8,$2
	addu	$9,$7,$2
	addu	$5,$10,$2
	lbu	$3,0($3)
	addiu	$2,$2,1
	lbu	$9,0($9)
	xor	$3,$3,$9
	bne	$2,$4,$L4
	sb	$3,0($5)

	lw	$3,156($sp)
	lw	$2,0($6)
	beq	$3,$2,$L5
	lw	$31,164($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L6:
	.option	pic0
	b	$L2
	.option	pic2
	li	$3,92			# 0x5c

$L5:
	jr	$31
	addiu	$sp,$sp,168

	.set	macro
	.set	reorder
	.end	hmac_md5
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
