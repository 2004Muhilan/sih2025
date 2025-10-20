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
	addiu	$6,$sp,28
	lw	$12,184($sp)
	addiu	$3,$sp,92
	lw	$13,%got(__stack_chk_guard)($28)
	move	$2,$0
	li	$11,54			# 0x36
	sw	$31,164($sp)
	li	$10,92			# 0x5c
	.cprestore	16
	li	$8,64			# 0x40
	lw	$7,0($13)
	sw	$7,156($sp)
$L5:
	sltu	$7,$2,$5
	beq	$7,$0,$L2
	addu	$7,$4,$2

	addiu	$6,$6,1
	addiu	$3,$3,1
	lbu	$7,0($7)
	addiu	$2,$2,1
	xori	$9,$7,0x36
	xori	$7,$7,0x5c
	sb	$9,-1($6)
	bne	$2,$8,$L5
	sb	$7,-1($3)

	andi	$2,$12,0x3
	bne	$2,$0,$L13
	lbu	$3,92($sp)

	lw	$2,28($sp)
$L14:
	lw	$4,92($sp)
	lw	$3,96($sp)
	lw	$5,100($sp)
	xor	$4,$4,$2
	lw	$2,32($sp)
	sw	$4,0($12)
	lw	$4,104($sp)
	xor	$2,$2,$3
	lw	$3,36($sp)
	sw	$2,4($12)
	lw	$2,40($sp)
	xor	$3,$3,$5
	sw	$3,8($12)
	xor	$2,$2,$4
	sw	$2,12($12)
$L1:
	lw	$3,156($sp)
	lw	$2,0($13)
	bne	$3,$2,$L11
	lw	$31,164($sp)

	jr	$31
	addiu	$sp,$sp,168

$L2:
	addiu	$2,$2,1
	sb	$11,0($6)
	sb	$10,0($3)
	addiu	$6,$6,1
	bne	$2,$8,$L5
	addiu	$3,$3,1

	andi	$2,$12,0x3
	beq	$2,$0,$L14
	lw	$2,28($sp)

	lbu	$3,92($sp)
$L13:
	lbu	$2,93($sp)
	lbu	$14,28($sp)
	lbu	$11,29($sp)
	lbu	$10,30($sp)
	lbu	$9,31($sp)
	xor	$14,$14,$3
	xor	$11,$11,$2
	lbu	$3,94($sp)
	lbu	$2,95($sp)
	lbu	$8,32($sp)
	lbu	$7,33($sp)
	xor	$10,$10,$3
	xor	$9,$9,$2
	lbu	$3,96($sp)
	lbu	$2,97($sp)
	lbu	$15,100($sp)
	xor	$8,$8,$3
	lbu	$6,34($sp)
	lbu	$3,98($sp)
	xor	$7,$7,$2
	lbu	$5,35($sp)
	lbu	$2,99($sp)
	lbu	$4,36($sp)
	xor	$6,$6,$3
	lbu	$24,101($sp)
	xor	$5,$5,$2
	lbu	$3,37($sp)
	xor	$4,$4,$15
	lbu	$2,38($sp)
	lbu	$15,102($sp)
	xor	$3,$3,$24
	sb	$8,4($12)
	sb	$7,5($12)
	xor	$2,$2,$15
	sb	$6,6($12)
	sb	$5,7($12)
	sb	$4,8($12)
	sb	$3,9($12)
	sb	$14,0($12)
	sb	$11,1($12)
	sb	$10,2($12)
	sb	$9,3($12)
	sb	$2,10($12)
	lbu	$3,103($sp)
	lbu	$2,104($sp)
	lbu	$7,105($sp)
	lbu	$6,39($sp)
	lbu	$5,40($sp)
	lbu	$4,41($sp)
	xor	$6,$6,$3
	lbu	$8,106($sp)
	xor	$5,$5,$2
	lbu	$3,42($sp)
	xor	$4,$4,$7
	lbu	$2,107($sp)
	lbu	$7,43($sp)
	xor	$3,$3,$8
	sb	$6,11($12)
	sb	$5,12($12)
	xor	$2,$2,$7
	sb	$4,13($12)
	sb	$3,14($12)
	.option	pic0
	b	$L1
	.option	pic2
	sb	$2,15($12)

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
