	.file	1 "custom_sha1.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha1_transform
	.set	nomips16
	.set	nomicromips
	.ent	sha1_transform
	.type	sha1_transform, @function
sha1_transform:
	.frame	$fp,408,$31		# vars= 376, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-408
	sw	$31,404($sp)
	sw	$fp,400($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,396($fp)
	lw	$2,28($fp)
	lw	$2,0($2)
	sw	$2,32($fp)
	lw	$2,28($fp)
	lw	$2,4($2)
	sw	$2,36($fp)
	lw	$2,28($fp)
	lw	$2,8($2)
	sw	$2,40($fp)
	lw	$2,28($fp)
	lw	$2,12($2)
	sw	$2,44($fp)
	lw	$2,28($fp)
	lw	$2,16($2)
	sw	$2,48($fp)
	sw	$0,52($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,52($fp)
	sll	$2,$2,2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sll	$3,$2,24
	lw	$2,52($fp)
	sll	$2,$2,2
	addiu	$2,$2,1
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,52($fp)
	sll	$2,$2,2
	addiu	$2,$2,2
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	or	$2,$3,$2
	lw	$3,52($fp)
	sll	$3,$3,2
	addiu	$3,$3,3
	lw	$4,24($fp)
	addu	$3,$4,$3
	lbu	$3,0($3)
	or	$2,$2,$3
	move	$3,$2
	lw	$2,52($fp)
	sll	$2,$2,2
	addiu	$2,$2,400
	addu	$2,$2,$fp
	sw	$3,-324($2)
	lw	$2,52($fp)
	addiu	$2,$2,1
	sw	$2,52($fp)
$L2:
	lw	$2,52($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
	nop

	li	$2,16			# 0x10
	sw	$2,56($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$2,56($fp)
	addiu	$2,$2,-3
	sll	$2,$2,2
	addiu	$2,$2,400
	addu	$2,$2,$fp
	lw	$3,-324($2)
	lw	$2,56($fp)
	addiu	$2,$2,-8
	sll	$2,$2,2
	addiu	$2,$2,400
	addu	$2,$2,$fp
	lw	$2,-324($2)
	xor	$3,$3,$2
	lw	$2,56($fp)
	addiu	$2,$2,-14
	sll	$2,$2,2
	addiu	$2,$2,400
	addu	$2,$2,$fp
	lw	$2,-324($2)
	xor	$3,$3,$2
	lw	$2,56($fp)
	addiu	$2,$2,-16
	sll	$2,$2,2
	addiu	$2,$2,400
	addu	$2,$2,$fp
	lw	$2,-324($2)
	xor	$2,$3,$2
	ror	$3,$2,31
	lw	$2,56($fp)
	sll	$2,$2,2
	addiu	$2,$2,400
	addu	$2,$2,$fp
	sw	$3,-324($2)
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L4:
	lw	$2,56($fp)
	slt	$2,$2,80
	bne	$2,$0,$L5
	nop

	sw	$0,60($fp)
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L11:
	lw	$2,60($fp)
	slt	$2,$2,20
	beq	$2,$0,$L7
	nop

	lw	$3,36($fp)
	lw	$2,40($fp)
	and	$3,$3,$2
	lw	$2,36($fp)
	nor	$4,$0,$2
	lw	$2,44($fp)
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,64($fp)
	li	$2,1518469120			# 0x5a820000
	ori	$2,$2,0x7999
	sw	$2,68($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L7:
	lw	$2,60($fp)
	slt	$2,$2,40
	beq	$2,$0,$L9
	nop

	lw	$3,36($fp)
	lw	$2,40($fp)
	xor	$2,$3,$2
	lw	$3,44($fp)
	xor	$2,$3,$2
	sw	$2,64($fp)
	li	$2,1859715072			# 0x6ed90000
	ori	$2,$2,0xeba1
	sw	$2,68($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L9:
	lw	$2,60($fp)
	slt	$2,$2,60
	beq	$2,$0,$L10
	nop

	lw	$3,40($fp)
	lw	$2,44($fp)
	or	$3,$3,$2
	lw	$2,36($fp)
	and	$3,$3,$2
	lw	$4,40($fp)
	lw	$2,44($fp)
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,64($fp)
	li	$2,-1894055936			# 0xffffffff8f1b0000
	ori	$2,$2,0xbcdc
	sw	$2,68($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L10:
	lw	$3,36($fp)
	lw	$2,40($fp)
	xor	$2,$3,$2
	lw	$3,44($fp)
	xor	$2,$3,$2
	sw	$2,64($fp)
	li	$2,-899547136			# 0xffffffffca620000
	ori	$2,$2,0xc1d6
	sw	$2,68($fp)
$L8:
	lw	$2,32($fp)
	ror	$3,$2,27
	lw	$2,64($fp)
	addu	$3,$3,$2
	lw	$2,48($fp)
	addu	$3,$3,$2
	lw	$2,68($fp)
	addu	$3,$3,$2
	lw	$2,60($fp)
	sll	$2,$2,2
	addiu	$2,$2,400
	addu	$2,$2,$fp
	lw	$2,-324($2)
	addu	$2,$3,$2
	sw	$2,72($fp)
	lw	$2,44($fp)
	sw	$2,48($fp)
	lw	$2,40($fp)
	sw	$2,44($fp)
	lw	$2,36($fp)
	ror	$2,$2,2
	sw	$2,40($fp)
	lw	$2,32($fp)
	sw	$2,36($fp)
	lw	$2,72($fp)
	sw	$2,32($fp)
	lw	$2,60($fp)
	addiu	$2,$2,1
	sw	$2,60($fp)
$L6:
	lw	$2,60($fp)
	slt	$2,$2,80
	bne	$2,$0,$L11
	nop

	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,32($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$3,36($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$3,40($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$3,44($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$3,48($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,396($fp)
	lw	$2,0($2)
	beq	$3,$2,$L12
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L12:
	move	$sp,$fp
	lw	$31,404($sp)
	lw	$fp,400($sp)
	addiu	$sp,$sp,408
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha1_transform
	.size	sha1_transform, .-sha1_transform
	.align	2
	.globl	sha1_init
	.set	nomips16
	.set	nomicromips
	.ent	sha1_init
	.type	sha1_init, @function
sha1_init:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	li	$3,1732575232			# 0x67450000
	ori	$3,$3,0x2301
	sw	$3,0($2)
	lw	$2,8($fp)
	li	$3,-271777792			# 0xffffffffefcd0000
	ori	$3,$3,0xab89
	sw	$3,4($2)
	lw	$2,8($fp)
	li	$3,-1732640768			# 0xffffffff98ba0000
	ori	$3,$3,0xdcfe
	sw	$3,8($2)
	lw	$2,8($fp)
	li	$3,271712256			# 0x10320000
	ori	$3,$3,0x5476
	sw	$3,12($2)
	lw	$2,8($fp)
	li	$3,-1009647616			# 0xffffffffc3d20000
	ori	$3,$3,0xe1f0
	sw	$3,16($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha1_init
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
