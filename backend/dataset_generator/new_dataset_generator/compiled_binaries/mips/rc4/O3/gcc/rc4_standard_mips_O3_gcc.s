	.file	1 "rc4_standard.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_init
	.set	nomips16
	.set	nomicromips
	.ent	rc4_init
	.type	rc4_init, @function
rc4_init:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$7,256			# 0x100
	addu	$3,$4,$2
$L7:
	sb	$2,0($3)
	addiu	$2,$2,1
	bne	$2,$7,$L7
	addu	$3,$4,$2

	move	$2,$0
	move	$7,$0
	li	$11,256			# 0x100
	move	$8,$4
$L3:
	teq	$6,$0,7
	divu	$0,$2,$6
	lbu	$10,0($8)
	addiu	$8,$8,1
	addiu	$2,$2,1
	addu	$3,$7,$10
	mfhi	$9
	addu	$9,$5,$9
	lbu	$7,0($9)
	addu	$7,$7,$3
	andi	$3,$7,0xff
	addu	$3,$4,$3
	andi	$7,$7,0x00ff
	lbu	$9,0($3)
	sb	$9,-1($8)
	bne	$2,$11,$L3
	sb	$10,0($3)

	sb	$0,256($4)
	jr	$31
	sb	$0,257($4)

	.set	macro
	.set	reorder
	.end	rc4_init
	.size	rc4_init, .-rc4_init
	.align	2
	.globl	rc4_crypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_crypt
	.type	rc4_crypt, @function
rc4_crypt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L15
	addu	$6,$5,$6

$L10:
	lbu	$2,256($4)
	addiu	$5,$5,1
	lbu	$3,257($4)
	addiu	$2,$2,1
	andi	$7,$2,0xff
	sb	$2,256($4)
	addu	$7,$4,$7
	lbu	$2,0($7)
	addu	$3,$2,$3
	andi	$3,$3,0x00ff
	addu	$8,$4,$3
	sb	$3,257($4)
	lbu	$3,0($8)
	sb	$3,0($7)
	sb	$2,0($8)
	lbu	$7,0($7)
	lbu	$3,-1($5)
	addu	$2,$2,$7
	andi	$2,$2,0x00ff
	addu	$2,$4,$2
	lbu	$2,0($2)
	xor	$2,$2,$3
	bne	$6,$5,$L10
	sb	$2,-1($5)

$L15:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_crypt
	.size	rc4_crypt, .-rc4_crypt
	.align	2
	.globl	rc4_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_encrypt
	.type	rc4_encrypt, @function
rc4_encrypt:
	.frame	$sp,304,$31		# vars= 264, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-304
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$9,$sp,24
	sw	$16,292($sp)
	move	$2,$0
	lw	$16,%got(__stack_chk_guard)($28)
	li	$8,256			# 0x100
	lw	$13,320($sp)
	move	$12,$5
	sw	$17,296($sp)
	move	$5,$6
	sw	$31,300($sp)
	move	$17,$7
	.cprestore	16
	lw	$3,0($16)
	sw	$3,284($sp)
	move	$3,$9
$L17:
	sb	$2,0($3)
	addiu	$2,$2,1
	bne	$2,$8,$L17
	addiu	$3,$3,1

	move	$2,$0
	move	$8,$0
	li	$14,256			# 0x100
$L18:
	teq	$12,$0,7
	divu	$0,$2,$12
	lbu	$11,0($9)
	addiu	$9,$9,1
	addiu	$2,$2,1
	addu	$3,$8,$11
	mfhi	$10
	addu	$10,$4,$10
	lbu	$8,0($10)
	addu	$8,$8,$3
	andi	$3,$8,0xff
	addiu	$3,$3,288
	andi	$8,$8,0x00ff
	addu	$3,$3,$sp
	lbu	$10,-264($3)
	sb	$10,-1($9)
	bne	$2,$14,$L18
	sb	$11,-264($3)

	lw	$25,%call16(memcpy)($28)
	move	$4,$13
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$6,$17

	lw	$28,16($sp)
	beq	$17,$0,$L16
	move	$13,$2

	move	$4,$0
	move	$5,$0
$L20:
	addiu	$3,$5,1
	lbu	$7,0($13)
	addiu	$13,$13,1
	move	$5,$3
	andi	$3,$3,0x00ff
	addiu	$2,$3,288
	addu	$3,$2,$sp
	lbu	$2,-264($3)
	addu	$4,$2,$4
	andi	$4,$4,0x00ff
	addiu	$6,$4,288
	addu	$6,$6,$sp
	lbu	$8,-264($6)
	sb	$8,-264($3)
	sb	$2,-264($6)
	lbu	$3,-264($3)
	addu	$2,$2,$3
	andi	$2,$2,0x00ff
	addiu	$2,$2,288
	addu	$2,$2,$sp
	lbu	$2,-264($2)
	xor	$2,$2,$7
	bne	$17,$5,$L20
	sb	$2,-1($13)

$L16:
	lw	$3,284($sp)
	lw	$2,0($16)
	bne	$3,$2,$L29
	lw	$31,300($sp)

	lw	$17,296($sp)
	lw	$16,292($sp)
	jr	$31
	addiu	$sp,$sp,304

$L29:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	rc4_encrypt
	.size	rc4_encrypt, .-rc4_encrypt
	.align	2
	.globl	rc4_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_decrypt
	.type	rc4_decrypt, @function
rc4_decrypt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	j	rc4_encrypt
	nop

	.option	pic2
	.set	macro
	.set	reorder
	.end	rc4_decrypt
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
