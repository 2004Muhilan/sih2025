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
	sw	$16,40($sp)
	move	$16,$6
	sw	$31,60($sp)
	move	$6,$5
	sw	$19,52($sp)
	sw	$18,48($sp)
	li	$18,55			# 0x37
	sw	$17,44($sp)
	move	$17,$5
	.cprestore	16
	move	$5,$4
	lw	$2,0($20)
	move	$4,$16
	subu	$18,$18,$17
	addiu	$19,$17,1
	sw	$2,36($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	andi	$18,$18,0x3f

	addu	$2,$16,$17
	lw	$28,16($sp)
	li	$3,-128			# 0xffffffffffffff80
	addu	$4,$16,$19
	move	$5,$0
	sb	$3,0($2)
	addu	$19,$19,$18
	lw	$25,%call16(memset)($28)
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sll	$17,$17,3

	addu	$6,$16,$19
	move	$2,$0
	lw	$28,16($sp)
	lw	$3,36($sp)
	swl	$2,0($6)
	swr	$2,3($6)
	swl	$17,4($6)
	sw	$0,24($sp)
	sw	$17,28($sp)
	swr	$17,7($6)
	lw	$2,0($20)
	bne	$3,$2,$L5
	lw	$31,60($sp)

	lw	$20,56($sp)
	lw	$19,52($sp)
	lw	$18,48($sp)
	lw	$17,44($sp)
	lw	$16,40($sp)
	jr	$31
	addiu	$sp,$sp,64

$L5:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	md5_padding
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
