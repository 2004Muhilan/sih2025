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
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,28($sp)
	move	$2,$4
	move	$6,$5
	addiu	$8,$4,16
	move	$3,$5
$L2:
	lbu	$4,0($2)
	sb	$4,0($3)
	addiu	$2,$2,1
	bne	$2,$8,$L2
	addiu	$3,$3,1

	addiu	$7,$5,16
	lui	$12,%hi(rcon)
	addiu	$12,$12,%lo(rcon)
	move	$13,$0
	addiu	$11,$sp,28
	li	$8,-2147483648			# 0xffffffff80000000
	addiu	$8,$8,3
	li	$10,-4			# 0xfffffffffffffffc
	li	$9,16			# 0x10
	.option	pic0
	b	$L3
	.option	pic2
	li	$14,160			# 0xa0

$L5:
	addiu	$2,$2,32
	addu	$2,$2,$sp
	lbu	$4,0($4)
	lbu	$2,-8($2)
	xor	$2,$4,$2
	addiu	$3,$3,1
	beq	$3,$9,$L13
	sb	$2,0($5)

$L6:
	addu	$5,$7,$3
	and	$2,$3,$8
	bgez	$2,$L5
	addu	$4,$6,$3

	addiu	$2,$2,-1
	or	$2,$2,$10
	.option	pic0
	b	$L5
	.option	pic2
	addiu	$2,$2,1

$L13:
	addiu	$6,$6,16
	addiu	$7,$7,16
	beq	$13,$14,$L1
	addiu	$12,$12,1

$L3:
	addiu	$2,$sp,24
	move	$3,$6
$L4:
	lbu	$4,12($3)
	sb	$4,0($2)
	addiu	$2,$2,1
	bne	$2,$11,$L4
	addiu	$3,$3,1

	lbu	$3,24($sp)
	lbu	$2,25($sp)
	lbu	$4,26($sp)
	sb	$4,25($sp)
	lbu	$4,27($sp)
	sb	$4,26($sp)
	sb	$3,27($sp)
	lbu	$3,0($12)
	xor	$2,$2,$3
	sb	$2,24($sp)
	addiu	$13,$13,16
	.option	pic0
	b	$L6
	.option	pic2
	move	$3,$0

$L1:
	lw	$3,28($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L14
	lw	$31,36($sp)

	jr	$31
	addiu	$sp,$sp,40

$L14:
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
