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
	li	$3,256			# 0x100
	addu	$7,$4,$2
$L6:
	sb	$2,0($7)
	addiu	$2,$2,1
	bne	$2,$3,$L6
	addu	$7,$4,$2

	move	$2,$0
	move	$7,$0
	li	$10,256			# 0x100
$L3:
	teq	$6,$0,7
	divu	$0,$2,$6
	addu	$9,$4,$2
	addiu	$2,$2,1
	lbu	$8,0($9)
	addu	$7,$7,$8
	mfhi	$3
	addu	$3,$5,$3
	lbu	$3,0($3)
	addu	$7,$3,$7
	andi	$3,$7,0xff
	addu	$3,$4,$3
	andi	$7,$7,0x00ff
	lbu	$11,0($3)
	sb	$11,0($9)
	bne	$2,$10,$L3
	sb	$8,0($3)

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
	addu	$6,$5,$6
$L8:
	bne	$5,$6,$L9
	addiu	$5,$5,1

	jr	$31
	nop

$L9:
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
	b	$L8
	.option	pic2
	sb	$2,-1($5)

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
	.frame	$sp,312,$31		# vars= 264, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-312
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$12,$6
	sw	$18,300($sp)
	move	$6,$5
	sw	$16,292($sp)
	addiu	$16,$sp,24
	lw	$18,%got(__stack_chk_guard)($28)
	move	$5,$4
	move	$4,$16
	sw	$31,308($sp)
	sw	$19,304($sp)
	sw	$17,296($sp)
	move	$17,$7
	.cprestore	16
	lw	$2,0($18)
	lw	$19,328($sp)
	sw	$2,284($sp)
	.option	pic0
	jal	rc4_init
	nop

	.option	pic2
	move	$6,$17
	lw	$28,16($sp)
	move	$5,$12
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$19

	move	$6,$17
	move	$5,$19
	.option	pic0
	jal	rc4_crypt
	.option	pic2
	move	$4,$16

	lw	$3,284($sp)
	lw	$2,0($18)
	beq	$3,$2,$L13
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L13:
	lw	$31,308($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	jr	$31
	addiu	$sp,$sp,312

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
