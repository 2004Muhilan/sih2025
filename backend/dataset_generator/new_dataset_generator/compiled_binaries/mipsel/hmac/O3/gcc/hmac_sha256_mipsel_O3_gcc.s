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
	addiu	$13,$sp,28
	addiu	$14,$sp,92
	lw	$12,184($sp)
	lw	$15,%got(__stack_chk_guard)($28)
	move	$2,$0
	li	$11,54			# 0x36
	sw	$31,164($sp)
	li	$10,92			# 0x5c
	.cprestore	16
	li	$8,64			# 0x40
	lw	$3,0($15)
	move	$6,$14
	sw	$3,156($sp)
	move	$3,$13
$L5:
	sltu	$7,$2,$5
	beq	$7,$0,$L2
	addu	$7,$4,$2

	addiu	$3,$3,1
	addiu	$6,$6,1
	lbu	$7,0($7)
	addiu	$2,$2,1
	xori	$9,$7,0x36
	xori	$7,$7,0x5c
	sb	$9,-1($3)
	bne	$2,$8,$L5
	sb	$7,-1($6)

	andi	$2,$12,0x3
	bne	$2,$0,$L15
	addiu	$5,$13,32

	lw	$2,28($sp)
$L16:
	lw	$8,92($sp)
	lw	$3,96($sp)
	lw	$7,36($sp)
	xor	$8,$8,$2
	lw	$2,32($sp)
	lw	$6,40($sp)
	lw	$5,108($sp)
	xor	$2,$2,$3
	lw	$3,100($sp)
	lw	$4,112($sp)
	lw	$9,52($sp)
	xor	$7,$7,$3
	lw	$3,104($sp)
	sw	$8,0($12)
	sw	$2,4($12)
	xor	$6,$6,$3
	lw	$3,44($sp)
	lw	$2,120($sp)
	lw	$8,56($sp)
	xor	$5,$5,$3
	lw	$3,48($sp)
	sw	$7,8($12)
	xor	$2,$2,$8
	sw	$6,12($12)
	xor	$4,$4,$3
	sw	$5,16($12)
	sw	$4,20($12)
	sw	$2,28($12)
	lw	$3,116($sp)
	xor	$3,$3,$9
	sw	$3,24($12)
$L1:
	lw	$3,156($sp)
	lw	$2,0($15)
	bne	$3,$2,$L13
	lw	$31,164($sp)

	jr	$31
	addiu	$sp,$sp,168

$L2:
	addiu	$2,$2,1
	sb	$11,0($3)
	sb	$10,0($6)
	addiu	$3,$3,1
	bne	$2,$8,$L5
	addiu	$6,$6,1

	andi	$2,$12,0x3
	beq	$2,$0,$L16
	lw	$2,28($sp)

	addiu	$5,$13,32
$L15:
	move	$2,$12
$L8:
	lbu	$3,0($14)
	addiu	$2,$2,1
	lbu	$4,0($13)
	addiu	$13,$13,1
	addiu	$14,$14,1
	xor	$3,$3,$4
	bne	$13,$5,$L8
	sb	$3,-1($2)

	.option	pic0
	b	$L1
	nop

	.option	pic2
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
