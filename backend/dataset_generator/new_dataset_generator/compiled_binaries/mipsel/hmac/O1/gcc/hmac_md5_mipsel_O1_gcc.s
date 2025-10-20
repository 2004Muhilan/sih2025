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
	addiu	$sp,$sp,-168
	sw	$31,164($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$11,184($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,156($sp)
	addiu	$12,$sp,92
	addiu	$8,$sp,28
	move	$7,$8
	move	$6,$12
	move	$3,$0
	li	$14,54			# 0x36
	li	$13,92			# 0x5c
	.option	pic0
	b	$L3
	.option	pic2
	li	$9,64			# 0x40

$L12:
	move	$3,$11
	addiu	$5,$8,16
$L4:
	lbu	$2,0($8)
	lbu	$4,0($12)
	xor	$2,$2,$4
	sb	$2,0($3)
	addiu	$8,$8,1
	addiu	$12,$12,1
	bne	$8,$5,$L4
	addiu	$3,$3,1

	lw	$3,156($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L11
	lw	$31,164($sp)

	jr	$31
	addiu	$sp,$sp,168

$L2:
	sb	$14,0($7)
	move	$2,$13
$L5:
	sb	$2,0($6)
	addiu	$3,$3,1
	addiu	$6,$6,1
	addiu	$4,$4,1
	beq	$3,$9,$L12
	addiu	$7,$7,1

$L3:
	sltu	$2,$3,$5
	beq	$2,$0,$L2
	nop

	lbu	$2,0($4)
	xori	$10,$2,0x36
	sb	$10,0($7)
	xori	$2,$2,0x5c
	.option	pic0
	b	$L5
	.option	pic2
	andi	$2,$2,0x00ff

$L11:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	hmac_md5
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
