	.file	1 "custom_md5.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	md5_transform
	.set	nomips16
	.set	nomicromips
	.ent	md5_transform
	.type	md5_transform, @function
md5_transform:
	.frame	$fp,144,$31		# vars= 112, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-144
	sw	$31,140($sp)
	sw	$fp,136($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,132($fp)
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
	sw	$0,48($fp)
	sw	$0,52($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,52($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,52($fp)
	addiu	$2,$2,1
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	or	$3,$4,$2
	lw	$2,52($fp)
	addiu	$2,$2,2
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,52($fp)
	addiu	$2,$2,3
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,24
	or	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	sll	$2,$2,2
	addiu	$2,$2,136
	addu	$2,$2,$fp
	sw	$3,-68($2)
	lw	$2,48($fp)
	addiu	$2,$2,1
	sw	$2,48($fp)
	lw	$2,52($fp)
	addiu	$2,$2,4
	sw	$2,52($fp)
$L2:
	lw	$2,48($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
	nop

	sw	$0,56($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$3,36($fp)
	lw	$2,40($fp)
	and	$3,$3,$2
	lw	$2,36($fp)
	nor	$4,$0,$2
	lw	$2,44($fp)
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,60($fp)
	lw	$2,44($fp)
	sw	$2,64($fp)
	lw	$2,40($fp)
	sw	$2,44($fp)
	lw	$2,36($fp)
	sw	$2,40($fp)
	lw	$3,32($fp)
	lw	$2,60($fp)
	addu	$3,$3,$2
	lw	$2,56($fp)
	sll	$2,$2,2
	addiu	$2,$2,136
	addu	$2,$2,$fp
	lw	$2,-68($2)
	addu	$2,$3,$2
	ror	$2,$2,25
	lw	$3,36($fp)
	addu	$2,$3,$2
	sw	$2,36($fp)
	lw	$2,64($fp)
	sw	$2,32($fp)
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L4:
	lw	$2,56($fp)
	slt	$2,$2,16
	bne	$2,$0,$L5
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
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,132($fp)
	lw	$2,0($2)
	beq	$3,$2,$L6
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L6:
	move	$sp,$fp
	lw	$31,140($sp)
	lw	$fp,136($sp)
	addiu	$sp,$sp,144
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	md5_transform
	.size	md5_transform, .-md5_transform
	.align	2
	.globl	md5_init
	.set	nomips16
	.set	nomicromips
	.ent	md5_init
	.type	md5_init, @function
md5_init:
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
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	md5_init
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
