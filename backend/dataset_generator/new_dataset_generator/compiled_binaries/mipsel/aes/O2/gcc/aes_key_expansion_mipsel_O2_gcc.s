	.file	1 "aes_key_expansion.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_key_expansion
	.set	nomips16
	.set	nomicromips
	.ent	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
	.frame	$sp,40,$31		# vars= 8, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$6,$4,16
	sw	$31,36($sp)
	move	$7,$5
	lw	$10,%got(__stack_chk_guard)($28)
	move	$2,$5
	.cprestore	16
	lw	$3,0($10)
	sw	$3,28($sp)
$L2:
	lbu	$3,0($4)
	addiu	$4,$4,1
	addiu	$2,$2,1
	bne	$4,$6,$L2
	sb	$3,-1($2)

	lui	$9,%hi(rcon)
	addiu	$6,$5,16
	addiu	$9,$9,%lo(rcon)
	addiu	$14,$5,160
	li	$8,16			# 0x10
$L3:
	lwl	$4,-1($6)
	move	$5,$0
	lbu	$11,0($9)
	li	$2,1			# 0x1
	lbu	$12,-16($6)
	lwr	$4,-4($6)
	ext	$3,$4,8,8
	ext	$13,$4,16,8
	xor	$3,$3,$11
	andi	$3,$3,0x00ff
	ins	$5,$3,0,8
	ext	$11,$4,24,8
	ins	$5,$13,8,8
	xor	$3,$3,$12
	ins	$5,$11,16,8
	sb	$3,0($6)
	ins	$5,$4,24,8
	sw	$5,24($sp)
$L4:
	andi	$4,$2,0x3
	addiu	$4,$4,32
	addu	$3,$7,$2
	addu	$4,$4,$sp
	addu	$5,$6,$2
	lbu	$3,0($3)
	addiu	$2,$2,1
	lbu	$4,-8($4)
	xor	$3,$3,$4
	bne	$2,$8,$L4
	sb	$3,0($5)

	addiu	$7,$7,16
	addiu	$9,$9,1
	bne	$7,$14,$L3
	addiu	$6,$6,16

	lw	$3,28($sp)
	lw	$2,0($10)
	bne	$3,$2,$L11
	lw	$31,36($sp)

	jr	$31
	addiu	$sp,$sp,40

$L11:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	aes_key_expansion
	.size	aes_key_expansion, .-aes_key_expansion
	.rdata
	.align	2
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\010\020 @\200\0336"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
