	.file	1 "aes_key_expansion.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.rdata
	.align	2
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\010\020 @\200\0336"
	.text
	.align	2
	.globl	aes_key_expansion
	.set	nomips16
	.set	nomicromips
	.ent	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,60($fp)
	sw	$0,40($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,40($fp)
	lw	$3,28($fp)
	addu	$3,$3,$2
	lw	$2,40($fp)
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L2:
	lw	$2,40($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
	nop

	li	$2,1			# 0x1
	sw	$2,44($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L10:
	sw	$0,48($fp)
	.option	pic0
	b	$L5
	nop

	.option	pic2
$L6:
	lw	$2,44($fp)
	addiu	$2,$2,-1
	sll	$2,$2,4
	addiu	$3,$2,12
	lw	$2,48($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	lw	$3,48($fp)
	addiu	$3,$3,64
	addu	$3,$3,$fp
	sb	$2,-8($3)
	lw	$2,48($fp)
	addiu	$2,$2,1
	sw	$2,48($fp)
$L5:
	lw	$2,48($fp)
	slt	$2,$2,4
	bne	$2,$0,$L6
	nop

	lbu	$2,56($fp)
	sb	$2,39($fp)
	lbu	$2,57($fp)
	sb	$2,56($fp)
	lbu	$2,58($fp)
	sb	$2,57($fp)
	lbu	$2,59($fp)
	sb	$2,58($fp)
	lbu	$2,39($fp)
	sb	$2,59($fp)
	lbu	$3,56($fp)
	lw	$2,44($fp)
	addiu	$4,$2,-1
	lui	$2,%hi(rcon)
	addiu	$2,$2,%lo(rcon)
	addu	$2,$4,$2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	sb	$2,56($fp)
	sw	$0,52($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L9:
	lw	$2,44($fp)
	addiu	$2,$2,-1
	sll	$3,$2,4
	lw	$2,52($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$4,0($2)
	lw	$3,52($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x3
	and	$2,$3,$2
	bgez	$2,$L8
	nop

	addiu	$2,$2,-1
	li	$3,-4			# 0xfffffffffffffffc
	or	$2,$2,$3
	addiu	$2,$2,1
$L8:
	addiu	$2,$2,64
	addu	$2,$2,$fp
	lbu	$3,-8($2)
	lw	$2,44($fp)
	sll	$5,$2,4
	lw	$2,52($fp)
	addu	$2,$5,$2
	move	$5,$2
	lw	$2,24($fp)
	addu	$2,$2,$5
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,52($fp)
	addiu	$2,$2,1
	sw	$2,52($fp)
$L7:
	lw	$2,52($fp)
	slt	$2,$2,16
	bne	$2,$0,$L9
	nop

	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
$L4:
	lw	$2,44($fp)
	slt	$2,$2,11
	bne	$2,$0,$L10
	nop

	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,60($fp)
	lw	$2,0($2)
	beq	$3,$2,$L11
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L11:
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	aes_key_expansion
	.size	aes_key_expansion, .-aes_key_expansion
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
