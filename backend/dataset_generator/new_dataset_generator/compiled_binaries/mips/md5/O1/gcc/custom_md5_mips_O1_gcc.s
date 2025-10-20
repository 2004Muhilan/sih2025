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
	.frame	$sp,104,$31		# vars= 72, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,92($sp)
	lw	$11,0($4)
	lw	$10,4($4)
	lw	$9,8($4)
	lw	$8,12($4)
	addiu	$3,$sp,28
	addiu	$12,$sp,92
	move	$6,$3
$L2:
	lbu	$2,1($5)
	sll	$2,$2,8
	lbu	$7,2($5)
	sll	$7,$7,16
	or	$2,$2,$7
	lbu	$7,0($5)
	or	$2,$2,$7
	lbu	$7,3($5)
	sll	$7,$7,24
	or	$2,$2,$7
	sw	$2,0($6)
	addiu	$6,$6,4
	bne	$6,$12,$L2
	addiu	$5,$5,4

	move	$5,$8
	move	$7,$9
	move	$6,$10
	.option	pic0
	b	$L3
	.option	pic2
	move	$13,$11

$L5:
	move	$5,$7
	move	$7,$6
	move	$6,$2
$L3:
	xor	$2,$7,$5
	and	$2,$2,$6
	xor	$2,$2,$5
	lw	$14,0($3)
	addu	$2,$2,$14
	addu	$2,$2,$13
	ror	$2,$2,25
	addu	$2,$2,$6
	addiu	$3,$3,4
	bne	$3,$12,$L5
	move	$13,$5

	addu	$11,$11,$5
	sw	$11,0($4)
	addu	$10,$10,$2
	sw	$10,4($4)
	addu	$9,$9,$6
	sw	$9,8($4)
	addu	$8,$8,$7
	sw	$8,12($4)
	lw	$3,92($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L8
	lw	$31,100($sp)

	jr	$31
	addiu	$sp,$sp,104

$L8:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1732575232			# 0x67450000
	addiu	$2,$2,8961
	sw	$2,0($4)
	li	$2,-271777792			# 0xffffffffefcd0000
	ori	$2,$2,0xab89
	sw	$2,4($4)
	li	$2,-1732640768			# 0xffffffff98ba0000
	ori	$2,$2,0xdcfe
	sw	$2,8($4)
	li	$2,271712256			# 0x10320000
	addiu	$2,$2,21622
	jr	$31
	sw	$2,12($4)

	.set	macro
	.set	reorder
	.end	md5_init
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
