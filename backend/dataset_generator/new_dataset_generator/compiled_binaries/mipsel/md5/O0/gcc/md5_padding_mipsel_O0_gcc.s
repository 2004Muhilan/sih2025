	.file	1 "md5_padding.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	md5_padding
	.set	nomips16
	.set	nomicromips
	.ent	md5_padding
	.type	md5_padding, @function
md5_padding:
	.frame	$fp,72,$31		# vars= 32, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$17,60($sp)
	sw	$16,56($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,76($fp)
	sw	$6,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	lw	$6,76($fp)
	lw	$5,28($fp)
	lw	$4,24($fp)
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,24($fp)
	lw	$2,76($fp)
	addu	$2,$3,$2
	li	$3,-128			# 0xffffffffffffff80
	sb	$3,0($2)
	li	$3,55			# 0x37
	lw	$2,76($fp)
	subu	$2,$3,$2
	andi	$2,$2,0x3f
	sw	$2,36($fp)
	lw	$2,76($fp)
	addiu	$2,$2,1
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$6,36($fp)
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(memset)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,76($fp)
	sll	$2,$2,3
	move	$16,$2
	move	$17,$0
	sw	$16,40($fp)
	sw	$17,44($fp)
	lw	$3,76($fp)
	lw	$2,36($fp)
	addu	$2,$3,$2
	addiu	$2,$2,1
	lw	$3,24($fp)
	addu	$2,$3,$2
	addiu	$3,$fp,40
	li	$6,8			# 0x8
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,52($fp)
	lw	$2,0($2)
	beq	$3,$2,$L2
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L2:
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$17,60($sp)
	lw	$16,56($sp)
	addiu	$sp,$sp,72
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	md5_padding
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
