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
	lui	$28,%hi(__gnu_local_gp)
	lw	$11,0($4)
	addiu	$sp,$sp,-104
	lw	$12,4($4)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$13,8($4)
	addiu	$3,$sp,28
	lw	$9,12($4)
	addiu	$8,$sp,92
	sw	$31,100($sp)
	lw	$10,%got(__stack_chk_guard)($28)
	move	$6,$3
	.cprestore	16
	lw	$2,0($10)
	sw	$2,92($sp)
$L2:
	lbu	$2,1($5)
	addiu	$5,$5,4
	lbu	$14,-2($5)
	addiu	$6,$6,4
	sll	$2,$2,8
	sll	$14,$14,16
	lbu	$7,-1($5)
	lbu	$15,-4($5)
	or	$2,$2,$14
	sll	$7,$7,24
	or	$2,$2,$15
	or	$2,$2,$7
	bne	$8,$6,$L2
	sw	$2,-4($6)

	move	$5,$9
	move	$7,$13
	move	$6,$12
	.option	pic0
	b	$L3
	.option	pic2
	move	$14,$11

$L5:
	move	$5,$7
	move	$7,$6
	move	$6,$2
$L3:
	lw	$15,0($3)
	xor	$2,$7,$5
	and	$2,$2,$6
	xor	$2,$2,$5
	addu	$2,$2,$15
	addiu	$3,$3,4
	addu	$2,$2,$14
	move	$14,$5
	ror	$2,$2,25
	bne	$8,$3,$L5
	addu	$2,$2,$6

	lw	$8,92($sp)
	addu	$11,$11,$5
	lw	$3,0($10)
	addu	$12,$12,$2
	addu	$13,$13,$6
	sw	$11,0($4)
	addu	$9,$9,$7
	sw	$12,4($4)
	sw	$13,8($4)
	bne	$8,$3,$L9
	sw	$9,12($4)

	lw	$31,100($sp)
	jr	$31
	addiu	$sp,$sp,104

$L9:
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
