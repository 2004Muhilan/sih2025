	.file	1 "sha1_padding.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha1_padding
	.set	nomips16
	.set	nomicromips
	.ent	sha1_padding
	.type	sha1_padding, @function
sha1_padding:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,28($sp)
	move	$16,$6
	sw	$31,44($sp)
	move	$6,$5
	sw	$19,40($sp)
	sw	$18,36($sp)
	li	$18,55			# 0x37
	sw	$17,32($sp)
	move	$17,$5
	.cprestore	16
	move	$5,$4
	lw	$25,%call16(memcpy)($28)
	move	$4,$16
	subu	$18,$18,$17
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	addiu	$19,$17,1

	addu	$2,$16,$17
	lw	$28,16($sp)
	li	$3,-128			# 0xffffffffffffff80
	andi	$18,$18,0x3f
	move	$5,$0
	sb	$3,0($2)
	addu	$4,$16,$19
	lw	$25,%call16(memset)($28)
	addu	$19,$19,$18
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$6,$18

	sll	$5,$17,3
	addu	$6,$16,$19
	li	$2,56			# 0x38
	li	$7,-8			# 0xfffffffffffffff8
$L2:
	srl	$3,$5,$2
	andi	$4,$2,0x20
	movn	$3,$0,$4
	addiu	$2,$2,-8
	addiu	$6,$6,1
	bne	$2,$7,$L2
	sb	$3,-1($6)

	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	sha1_padding
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
