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
	li	$8,256			# 0x100
$L2:
	addu	$3,$4,$2
	sb	$2,0($3)
	addiu	$2,$2,1
	bne	$2,$8,$L2
	move	$9,$4

	move	$3,$0
	move	$8,$0
	li	$13,-2147483648			# 0xffffffff80000000
	addiu	$13,$13,255
	li	$15,-256			# 0xffffffffffffff00
	.option	pic0
	b	$L4
	.option	pic2
	li	$14,256			# 0x100

$L3:
	andi	$8,$2,0x00ff
	addu	$2,$4,$2
	lbu	$12,0($2)
	sb	$12,0($11)
	sb	$10,0($2)
	addiu	$3,$3,1
	beq	$3,$14,$L11
	addiu	$9,$9,1

$L4:
	lbu	$10,0($9)
	teq	$6,$0,7
	divu	$0,$3,$6
	mfhi	$2
	addu	$2,$5,$2
	lbu	$2,0($2)
	addu	$8,$8,$10
	addu	$2,$2,$8
	and	$2,$2,$13
	bgez	$2,$L3
	move	$11,$9

	addiu	$2,$2,-1
	or	$2,$2,$15
	.option	pic0
	b	$L3
	.option	pic2
	addiu	$2,$2,1

$L11:
	sb	$0,256($4)
	beq	$7,$0,$L14
	sb	$0,257($4)

	move	$3,$0
	move	$5,$0
	move	$8,$0
	li	$12,-2147483648			# 0xffffffff80000000
	addiu	$12,$12,255
	.option	pic0
	b	$L7
	.option	pic2
	li	$13,-256			# 0xffffffffffffff00

$L6:
	andi	$5,$2,0x00ff
$L13:
	addu	$10,$4,$2
	lbu	$6,0($10)
	addu	$3,$3,$6
	andi	$3,$3,0x00ff
	addu	$9,$4,$3
	lbu	$11,0($9)
	sb	$11,0($10)
	addiu	$8,$8,1
	beq	$7,$8,$L12
	sb	$6,0($9)

$L7:
	addiu	$5,$5,1
	and	$2,$5,$12
	bgez	$2,$L13
	andi	$5,$2,0x00ff

	addiu	$2,$2,-1
	or	$2,$2,$13
	.option	pic0
	b	$L6
	.option	pic2
	addiu	$2,$2,1

$L12:
	sb	$5,256($4)
	sb	$3,257($4)
	sb	$11,0($10)
	sb	$6,0($9)
$L14:
	jr	$31
	nop

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
	beq	$6,$0,$L20
	move	$7,$5

	addu	$5,$5,$6
	li	$9,-2147483648			# 0xffffffff80000000
	addiu	$9,$9,255
$L18:
	lbu	$2,256($4)
	addiu	$2,$2,1
	and	$2,$2,$9
	sb	$2,256($4)
	addu	$2,$4,$2
	lbu	$3,0($2)
	lbu	$6,257($4)
	addu	$6,$3,$6
	andi	$6,$6,0x00ff
	sb	$6,257($4)
	addu	$6,$4,$6
	lbu	$8,0($6)
	sb	$8,0($2)
	sb	$3,0($6)
	lbu	$2,0($2)
	addu	$3,$3,$2
	andi	$3,$3,0x00ff
	addu	$3,$4,$3
	lbu	$2,0($3)
	lbu	$3,0($7)
	xor	$2,$2,$3
	sb	$2,0($7)
	addiu	$7,$7,1
	bne	$7,$5,$L18
	nop

$L20:
	jr	$31
	nop

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
	.frame	$sp,312,$31		# vars= 264, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$20,304($sp)
	sw	$19,300($sp)
	sw	$18,296($sp)
	sw	$17,292($sp)
	sw	$16,288($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$18,$6
	move	$17,$7
	lw	$20,328($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lw	$2,0($19)
	sw	$2,284($sp)
	li	$7,768			# 0x300
	move	$6,$5
	move	$5,$4
	addiu	$16,$sp,24
	move	$4,$16
	.option	pic0
	jal	rc4_drop_init
	nop

	.option	pic2
	lw	$28,16($sp)
	move	$6,$17
	move	$5,$18
	move	$4,$20
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$6,$17
	move	$5,$20
	move	$4,$16
	.option	pic0
	jal	rc4_drop_crypt
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$3,284($sp)
	lw	$2,0($19)
	bne	$3,$2,$L24
	lw	$31,308($sp)

	lw	$20,304($sp)
	lw	$19,300($sp)
	lw	$18,296($sp)
	lw	$17,292($sp)
	lw	$16,288($sp)
	jr	$31
	addiu	$sp,$sp,312

$L24:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	rc4_drop_encrypt
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
