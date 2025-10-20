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
	.frame	$sp,64,$31		# vars= 16, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,56($sp)
	lw	$20,%got(__stack_chk_guard)($28)
	lw	$25,%call16(memcpy)($28)
	sw	$17,44($sp)
	move	$17,$6
	sw	$31,60($sp)
	move	$6,$5
	sw	$19,52($sp)
	sw	$18,48($sp)
	li	$18,55			# 0x37
	sw	$16,40($sp)
	move	$16,$5
	.cprestore	16
	move	$5,$4
	lw	$2,0($20)
	move	$4,$17
	addiu	$19,$16,1
	subu	$18,$18,$16
	sw	$2,36($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	andi	$18,$18,0x3f

	addu	$2,$17,$16
	lw	$28,16($sp)
	li	$3,-128			# 0xffffffffffffff80
	move	$5,$0
	addu	$4,$17,$19
	sb	$3,0($2)
	lw	$25,%call16(memset)($28)
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$16,$16,3

	addu	$4,$19,$18
	lw	$28,16($sp)
	li	$6,8			# 0x8
	addiu	$5,$sp,24
	sw	$16,24($sp)
	addu	$4,$17,$4
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sw	$0,28($sp)

	lw	$3,36($sp)
	lw	$2,0($20)
	beq	$3,$2,$L2
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L2:
	lw	$31,60($sp)
	lw	$20,56($sp)
	lw	$19,52($sp)
	lw	$18,48($sp)
	lw	$17,44($sp)
	lw	$16,40($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	md5_padding
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
