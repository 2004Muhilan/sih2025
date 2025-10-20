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
	bne	$3,$2,$L19
	lw	$28,16($sp)

	lw	$31,308($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	jr	$31
	addiu	$sp,$sp,312

$L19:
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
