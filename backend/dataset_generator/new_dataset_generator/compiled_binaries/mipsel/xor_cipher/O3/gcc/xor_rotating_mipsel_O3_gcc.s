	.file	1 "xor_rotating.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_cipher_rotating
	.set	nomips16
	.set	nomicromips
	.ent	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L9
	move	$3,$0

$L3:
	teq	$7,$0,7
	divu	$0,$3,$7
	lbu	$11,0($4)
	addiu	$4,$4,1
	addiu	$3,$3,1
	mfhi	$8
	addu	$8,$6,$8
	lbu	$2,0($8)
	sll	$9,$2,1
	srl	$10,$2,7
	xor	$2,$2,$11
	or	$9,$9,$10
	sb	$2,-1($4)
	bne	$5,$3,$L3
	sb	$9,0($8)

$L9:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_cipher_rotating
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	2
	.globl	xor_encrypt_rotating
	.set	nomips16
	.set	nomicromips
	.ent	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
	.frame	$sp,312,$31		# vars= 264, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-312
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,304($sp)
	sw	$16,288($sp)
	lw	$20,%got(__stack_chk_guard)($28)
	lw	$16,328($sp)
	lw	$25,%call16(memcpy)($28)
	sw	$31,308($sp)
	sw	$19,300($sp)
	move	$19,$6
	sw	$18,296($sp)
	move	$6,$5
	sw	$17,292($sp)
	move	$18,$5
	.cprestore	16
	move	$5,$4
	lw	$2,0($20)
	move	$4,$16
	move	$17,$7
	sw	$2,284($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	addiu	$4,$sp,28
	lw	$28,16($sp)
	li	$7,256			# 0x100
	move	$6,$17
	lw	$25,%call16(__memcpy_chk)($28)
	.reloc	1f,R_MIPS_JALR,__memcpy_chk
1:	jalr	$25
	move	$5,$19

	beq	$18,$0,$L10
	lw	$28,16($sp)

	move	$3,$0
	move	$4,$2
	move	$9,$16
$L12:
	teq	$17,$0,7
	divu	$0,$3,$17
	lbu	$11,0($9)
	addiu	$9,$9,1
	addiu	$3,$3,1
	mfhi	$8
	addu	$8,$4,$8
	lbu	$2,0($8)
	sll	$10,$2,1
	srl	$7,$2,7
	xor	$2,$2,$11
	or	$10,$10,$7
	sb	$2,-1($9)
	bne	$18,$3,$L12
	sb	$10,0($8)

$L10:
	lw	$3,284($sp)
	lw	$2,0($20)
	bne	$3,$2,$L19
	lw	$31,308($sp)

	lw	$20,304($sp)
	lw	$19,300($sp)
	lw	$18,296($sp)
	lw	$17,292($sp)
	lw	$16,288($sp)
	jr	$31
	addiu	$sp,$sp,312

$L19:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	xor_encrypt_rotating
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	2
	.globl	xor_decrypt_rotating
	.set	nomips16
	.set	nomicromips
	.ent	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
	.frame	$sp,312,$31		# vars= 264, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-312
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,304($sp)
	sw	$16,288($sp)
	lw	$20,%got(__stack_chk_guard)($28)
	lw	$16,328($sp)
	lw	$25,%call16(memcpy)($28)
	sw	$31,308($sp)
	sw	$19,300($sp)
	move	$19,$6
	sw	$18,296($sp)
	move	$6,$5
	sw	$17,292($sp)
	move	$18,$5
	.cprestore	16
	move	$5,$4
	lw	$2,0($20)
	move	$4,$16
	move	$17,$7
	sw	$2,284($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	addiu	$4,$sp,28
	lw	$28,16($sp)
	li	$7,256			# 0x100
	move	$6,$17
	lw	$25,%call16(__memcpy_chk)($28)
	.reloc	1f,R_MIPS_JALR,__memcpy_chk
1:	jalr	$25
	move	$5,$19

	beq	$18,$0,$L20
	lw	$28,16($sp)

	move	$3,$0
	move	$4,$2
	move	$9,$16
$L22:
	teq	$17,$0,7
	divu	$0,$3,$17
	lbu	$11,0($9)
	addiu	$9,$9,1
	addiu	$3,$3,1
	mfhi	$8
	addu	$8,$4,$8
	lbu	$2,0($8)
	sll	$10,$2,1
	srl	$7,$2,7
	xor	$2,$2,$11
	or	$10,$10,$7
	sb	$2,-1($9)
	bne	$18,$3,$L22
	sb	$10,0($8)

$L20:
	lw	$3,284($sp)
	lw	$2,0($20)
	bne	$3,$2,$L29
	lw	$31,308($sp)

	lw	$20,304($sp)
	lw	$19,300($sp)
	lw	$18,296($sp)
	lw	$17,292($sp)
	lw	$16,288($sp)
	jr	$31
	addiu	$sp,$sp,312

$L29:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	xor_decrypt_rotating
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
