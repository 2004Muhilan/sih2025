	.file	1 "sha256_padding.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_padding
	.set	nomips16
	.set	nomicromips
	.ent	sha256_padding
	.type	sha256_padding, @function
sha256_padding:
	.frame	$fp,56,$31		# vars= 16, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$17,44($sp)
	sw	$16,40($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	lw	$6,60($fp)
	lw	$5,56($fp)
	lw	$4,64($fp)
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,64($fp)
	lw	$2,60($fp)
	addu	$2,$3,$2
	li	$3,-128			# 0xffffffffffffff80
	sb	$3,0($2)
	li	$3,55			# 0x37
	lw	$2,60($fp)
	subu	$2,$3,$2
	andi	$2,$2,0x3f
	sw	$2,28($fp)
	lw	$2,60($fp)
	addiu	$2,$2,1
	lw	$3,64($fp)
	addu	$2,$3,$2
	lw	$6,28($fp)
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(memset)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,60($fp)
	sll	$2,$2,3
	sw	$2,32($fp)
	sw	$0,36($fp)
	sw	$0,24($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	li	$3,7			# 0x7
	lw	$2,24($fp)
	subu	$2,$3,$2
	sll	$2,$2,3
	andi	$3,$2,0x20
	move	$6,$0
	lw	$4,36($fp)
	sll	$5,$4,1
	li	$4,-1			# 0xffffffffffffffff
	xor	$4,$2,$4
	sll	$4,$5,$4
	lw	$5,32($fp)
	srl	$16,$5,$2
	or	$16,$4,$16
	lw	$4,36($fp)
	srl	$17,$4,$2
	movn	$16,$17,$3
	movn	$17,$6,$3
	lw	$3,60($fp)
	lw	$2,28($fp)
	addu	$3,$3,$2
	lw	$2,24($fp)
	addu	$2,$3,$2
	addiu	$2,$2,1
	lw	$3,64($fp)
	addu	$2,$3,$2
	andi	$3,$16,0x00ff
	sb	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$2,24($fp)
	slt	$2,$2,8
	bne	$2,$0,$L3
	nop

	nop
	nop
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$17,44($sp)
	lw	$16,40($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_padding
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
