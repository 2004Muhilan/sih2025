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
	move	$2,$0
$L2:
	bne	$2,$5,$L3
	addu	$10,$4,$2

	jr	$31
	nop

$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	addiu	$2,$2,1
	lbu	$9,0($10)
	mfhi	$8
	addu	$8,$6,$8
	lbu	$3,0($8)
	xor	$9,$3,$9
	sb	$9,0($10)
	sll	$9,$3,1
	srl	$3,$3,7
	or	$3,$9,$3
	.option	pic0
	b	$L2
	.option	pic2
	sb	$3,0($8)

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
	sw	$19,300($sp)
	sw	$20,304($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lw	$20,328($sp)
	lw	$25,%call16(memcpy)($28)
	sw	$31,308($sp)
	sw	$18,296($sp)
	move	$18,$6
	sw	$17,292($sp)
	move	$6,$5
	sw	$16,288($sp)
	move	$16,$5
	.cprestore	16
	move	$5,$4
	lw	$2,0($19)
	move	$4,$20
	move	$17,$7
	sw	$2,284($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	li	$7,256			# 0x100
	lw	$28,16($sp)
	addiu	$4,$sp,28
	move	$6,$17
	lw	$25,%call16(__memcpy_chk)($28)
	.reloc	1f,R_MIPS_JALR,__memcpy_chk
1:	jalr	$25
	move	$5,$18

	move	$7,$17
	move	$6,$2
	move	$5,$16
	.option	pic0
	jal	xor_cipher_rotating
	.option	pic2
	move	$4,$20

	lw	$3,284($sp)
	lw	$2,0($19)
	beq	$3,$2,$L7
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L7:
	lw	$31,308($sp)
	lw	$20,304($sp)
	lw	$19,300($sp)
	lw	$18,296($sp)
	lw	$17,292($sp)
	lw	$16,288($sp)
	jr	$31
	addiu	$sp,$sp,312

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	j	xor_encrypt_rotating
	nop

	.option	pic2
	.set	macro
	.set	reorder
	.end	xor_decrypt_rotating
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
