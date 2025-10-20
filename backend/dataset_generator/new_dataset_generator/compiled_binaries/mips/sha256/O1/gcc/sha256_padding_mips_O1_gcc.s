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
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$17,$5
	move	$16,$6
	move	$6,$5
	move	$5,$4
	move	$4,$16
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	addu	$2,$16,$17
	li	$3,-128			# 0xffffffffffffff80
	sb	$3,0($2)
	li	$18,55			# 0x37
	subu	$18,$18,$17
	andi	$18,$18,0x3f
	addiu	$19,$17,1
	move	$6,$18
	move	$5,$0
	addu	$4,$16,$19
	lw	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	lw	$28,16($sp)
	sll	$5,$17,3
	move	$9,$0
	addu	$19,$19,$18
	addu	$6,$16,$19
	li	$2,56			# 0x38
	sll	$11,$9,1
	li	$10,-8			# 0xfffffffffffffff8
$L2:
	andi	$8,$2,0x20
	nor	$7,$0,$2
	sll	$7,$11,$7
	srl	$3,$5,$2
	or	$3,$7,$3
	srl	$4,$9,$2
	movn	$3,$4,$8
	sb	$3,0($6)
	addiu	$2,$2,-8
	bne	$2,$10,$L2
	addiu	$6,$6,1

	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	sha256_padding
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
