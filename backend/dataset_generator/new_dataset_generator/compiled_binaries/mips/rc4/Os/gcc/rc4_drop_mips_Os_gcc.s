	.file	1 "rc4_drop.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_drop_init
	.set	nomips16
	.set	nomicromips
	.ent	rc4_drop_init
	.type	rc4_drop_init, @function
rc4_drop_init:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$3,256			# 0x100
	addu	$8,$4,$2
$L8:
	sb	$2,0($8)
	addiu	$2,$2,1
	bne	$2,$3,$L8
	addu	$8,$4,$2

	move	$2,$0
	move	$8,$0
	li	$11,256			# 0x100
$L3:
	teq	$6,$0,7
	divu	$0,$2,$6
	addu	$10,$4,$2
	addiu	$2,$2,1
	lbu	$9,0($10)
	addu	$8,$8,$9
	mfhi	$3
	addu	$3,$5,$3
	lbu	$3,0($3)
	addu	$8,$3,$8
	andi	$3,$8,0xff
	addu	$3,$4,$3
	andi	$8,$8,0x00ff
	lbu	$12,0($3)
	sb	$12,0($10)
	bne	$2,$11,$L3
	sb	$9,0($3)

	move	$5,$0
	sb	$0,256($4)
	sb	$0,257($4)
$L4:
	bne	$5,$7,$L5
	addiu	$5,$5,1

	jr	$31
	nop

$L5:
	lbu	$2,256($4)
	addiu	$2,$2,1
	andi	$3,$2,0xff
	sb	$2,256($4)
	addu	$3,$4,$3
	lbu	$2,257($4)
	lbu	$6,0($3)
	addu	$2,$6,$2
	andi	$2,$2,0x00ff
	sb	$2,257($4)
	addu	$2,$4,$2
	lbu	$8,0($2)
	sb	$8,0($3)
	.option	pic0
	b	$L4
	.option	pic2
	sb	$6,0($2)

	.set	macro
	.set	reorder
	.end	rc4_drop_init
	.size	rc4_drop_init, .-rc4_drop_init
	.align	2
	.globl	rc4_drop_crypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addu	$6,$5,$6
$L12:
	bne	$5,$6,$L13
	addiu	$5,$5,1

	jr	$31
	nop

$L13:
	lbu	$2,256($4)
	lbu	$3,257($4)
	addiu	$2,$2,1
	andi	$7,$2,0xff
	sb	$2,256($4)
	addu	$7,$4,$7
	lbu	$2,0($7)
	addu	$3,$2,$3
	andi	$3,$3,0x00ff
	sb	$3,257($4)
	addu	$3,$4,$3
	lbu	$8,0($3)
	sb	$8,0($7)
	sb	$2,0($3)
	lbu	$3,0($7)
	addu	$2,$2,$3
	lbu	$3,-1($5)
	andi	$2,$2,0x00ff
	addu	$2,$4,$2
	lbu	$2,0($2)
	xor	$2,$2,$3
	.option	pic0
	b	$L12
	.option	pic2
	sb	$2,-1($5)

	.set	macro
	.set	reorder
	.end	rc4_drop_crypt
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	2
	.globl	rc4_drop_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
	.frame	$sp,312,$31		# vars= 264, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-312
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$13,$6
	sw	$18,300($sp)
	move	$6,$5
	sw	$16,292($sp)
	addiu	$16,$sp,24
	lw	$18,%got(__stack_chk_guard)($28)
	move	$5,$4
	sw	$17,296($sp)
	move	$17,$7
	li	$7,768			# 0x300
	sw	$31,308($sp)
	move	$4,$16
	sw	$19,304($sp)
	.cprestore	16
	lw	$2,0($18)
	lw	$19,328($sp)
	sw	$2,284($sp)
	.option	pic0
	jal	rc4_drop_init
	nop

	.option	pic2
	move	$6,$17
	lw	$28,16($sp)
	move	$5,$13
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$19

	move	$6,$17
	move	$5,$19
	.option	pic0
	jal	rc4_drop_crypt
	.option	pic2
	move	$4,$16

	lw	$3,284($sp)
	lw	$2,0($18)
	beq	$3,$2,$L17
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L17:
	lw	$31,308($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	jr	$31
	addiu	$sp,$sp,312

	.set	macro
	.set	reorder
	.end	rc4_drop_encrypt
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
