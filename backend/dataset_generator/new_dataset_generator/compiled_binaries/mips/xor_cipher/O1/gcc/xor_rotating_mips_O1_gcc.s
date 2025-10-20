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
	beq	$5,$0,$L5
	move	$3,$0

$L3:
	teq	$7,$0,7
	divu	$0,$3,$7
	mfhi	$8
	addu	$8,$6,$8
	lbu	$2,0($8)
	lbu	$9,0($4)
	xor	$9,$2,$9
	sb	$9,0($4)
	sll	$9,$2,1
	srl	$2,$2,7
	or	$2,$9,$2
	sb	$2,0($8)
	addiu	$3,$3,1
	bne	$5,$3,$L3
	addiu	$4,$4,1

$L5:
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
	move	$16,$5
	move	$17,$6
	move	$18,$7
	lw	$20,328($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	lw	$2,0($19)
	sw	$2,284($sp)
	move	$6,$5
	move	$5,$4
	move	$4,$20
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$7,256			# 0x100
	move	$6,$18
	move	$5,$17
	addiu	$17,$sp,28
	move	$4,$17
	lw	$25,%call16(__memcpy_chk)($28)
	.reloc	1f,R_MIPS_JALR,__memcpy_chk
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$7,$18
	move	$6,$17
	move	$5,$16
	move	$4,$20
	.option	pic0
	jal	xor_cipher_rotating
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$3,284($sp)
	lw	$2,0($19)
	bne	$3,$2,$L9
	lw	$31,308($sp)

	lw	$20,304($sp)
	lw	$19,300($sp)
	lw	$18,296($sp)
	lw	$17,292($sp)
	lw	$16,288($sp)
	jr	$31
	addiu	$sp,$sp,312

$L9:
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
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	lw	$2,56($sp)
	sw	$2,16($sp)
	.option	pic0
	jal	xor_encrypt_rotating
	nop

	.option	pic2
	lw	$31,36($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	xor_decrypt_rotating
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
