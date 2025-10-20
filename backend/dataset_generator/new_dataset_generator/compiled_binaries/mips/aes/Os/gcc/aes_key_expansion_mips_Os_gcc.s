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
	.frame	$sp,64,$31		# vars= 8, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$3,16			# 0x10
	sw	$19,48($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	sw	$16,36($sp)
	move	$16,$5
	sw	$31,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	.cprestore	16
	lw	$2,0($19)
	sw	$2,28($sp)
	move	$2,$0
$L2:
	addu	$5,$4,$2
	lbu	$6,0($5)
	addu	$5,$16,$2
	addiu	$2,$2,1
	bne	$2,$3,$L2
	sb	$6,0($5)

	lui	$17,%hi(rcon)
	move	$18,$0
	addiu	$17,$17,%lo(rcon)
	addiu	$4,$sp,24
	li	$20,16			# 0x10
	li	$21,160			# 0xa0
$L3:
	lw	$25,%call16(memcpy)($28)
	li	$6,4			# 0x4
	addiu	$5,$16,12
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	addiu	$18,$18,16

	addiu	$6,$16,16
	lbu	$3,24($sp)
	move	$4,$2
	lbu	$5,26($sp)
	lbu	$2,25($sp)
	lw	$28,16($sp)
	sb	$5,25($sp)
	lbu	$5,27($sp)
	sb	$3,27($sp)
	lbu	$3,0($17)
	sb	$5,26($sp)
	xor	$2,$2,$3
	sb	$2,24($sp)
	move	$2,$0
$L4:
	andi	$5,$2,0x3
	addiu	$5,$5,32
	addu	$3,$16,$2
	addu	$5,$5,$sp
	addu	$7,$6,$2
	lbu	$3,0($3)
	addiu	$2,$2,1
	lbu	$5,-8($5)
	xor	$3,$3,$5
	bne	$2,$20,$L4
	sb	$3,0($7)

	beq	$18,$21,$L1
	addiu	$17,$17,1

	.option	pic0
	b	$L3
	.option	pic2
	move	$16,$6

$L1:
	lw	$3,28($sp)
	lw	$2,0($19)
	beq	$3,$2,$L6
	lw	$31,60($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L6:
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	jr	$31
	addiu	$sp,$sp,64

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
