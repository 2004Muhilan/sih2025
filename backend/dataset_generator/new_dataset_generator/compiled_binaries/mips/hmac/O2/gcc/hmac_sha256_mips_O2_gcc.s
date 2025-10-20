	.file	1 "hmac_sha256.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_sha256
	.set	nomips16
	.set	nomicromips
	.ent	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
	.frame	$sp,168,$31		# vars= 136, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-168
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$8,$sp,28
	addiu	$11,$sp,92
	lw	$10,184($sp)
	lw	$13,%got(__stack_chk_guard)($28)
	move	$2,$0
	li	$12,64			# 0x40
	sw	$31,164($sp)
	.cprestore	16
	move	$7,$11
	move	$6,$8
	lw	$3,0($13)
	sw	$3,156($sp)
	.option	pic0
	b	$L14
	.option	pic2
	sltu	$3,$2,$5

$L12:
	addiu	$2,$2,1
	addiu	$6,$6,1
	lbu	$3,0($3)
	addiu	$7,$7,1
	xori	$9,$3,0x36
	xori	$3,$3,0x5c
	sb	$9,-1($6)
	beq	$2,$12,$L11
	sb	$3,-1($7)

$L3:
	sltu	$3,$2,$5
$L14:
	bne	$3,$0,$L12
	addu	$3,$4,$2

	li	$9,54			# 0x36
	li	$3,92			# 0x5c
	addiu	$2,$2,1
	sb	$9,0($6)
	sb	$3,0($7)
	addiu	$6,$6,1
	bne	$2,$12,$L3
	addiu	$7,$7,1

$L11:
	addiu	$5,$8,32
	move	$3,$10
$L4:
	lbu	$2,0($8)
	addiu	$3,$3,1
	lbu	$4,0($11)
	addiu	$8,$8,1
	addiu	$11,$11,1
	xor	$2,$2,$4
	bne	$8,$5,$L4
	sb	$2,-1($3)

	lw	$3,156($sp)
	lw	$2,0($13)
	bne	$3,$2,$L13
	lw	$31,164($sp)

	jr	$31
	addiu	$sp,$sp,168

$L13:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	hmac_sha256
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
