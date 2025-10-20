	.file	1 "xor_feedback.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_cipher_feedback
	.set	nomips16
	.set	nomicromips
	.ent	xor_cipher_feedback
	.type	xor_cipher_feedback, @function
xor_cipher_feedback:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,16($sp)
	beq	$2,$0,$L2
	move	$9,$0

	lbu	$9,0($2)
$L2:
	beq	$5,$0,$L11
	move	$2,$0

$L4:
	teq	$7,$0,7
	divu	$0,$2,$7
	move	$3,$9
	lbu	$9,0($4)
	addiu	$4,$4,1
	addiu	$2,$2,1
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$8,$9,$8
	xor	$3,$3,$8
	bne	$5,$2,$L4
	sb	$3,-1($4)

$L11:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_cipher_feedback
	.size	xor_cipher_feedback, .-xor_cipher_feedback
	.align	2
	.globl	xor_encrypt_feedback
	.set	nomips16
	.set	nomicromips
	.ent	xor_encrypt_feedback
	.type	xor_encrypt_feedback, @function
xor_encrypt_feedback:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	move	$19,$6
	sw	$18,36($sp)
	move	$6,$5
	sw	$17,32($sp)
	move	$18,$5
	sw	$16,28($sp)
	move	$5,$4
	sw	$31,44($sp)
	move	$17,$7
	.cprestore	16
	lw	$25,%call16(memcpy)($28)
	lw	$4,68($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	lbu	$16,67($sp)

	beq	$18,$0,$L20
	lw	$31,44($sp)

	lw	$3,68($sp)
	move	$2,$0
$L14:
	teq	$17,$0,7
	divu	$0,$2,$17
	move	$4,$16
	lbu	$16,0($3)
	addiu	$3,$3,1
	addiu	$2,$2,1
	mfhi	$8
	addu	$8,$19,$8
	lbu	$8,0($8)
	xor	$8,$16,$8
	xor	$4,$4,$8
	bne	$18,$2,$L14
	sb	$4,-1($3)

	lw	$31,44($sp)
$L20:
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	xor_encrypt_feedback
	.size	xor_encrypt_feedback, .-xor_encrypt_feedback
	.align	2
	.globl	xor_decrypt_feedback
	.set	nomips16
	.set	nomicromips
	.ent	xor_decrypt_feedback
	.type	xor_decrypt_feedback, @function
xor_decrypt_feedback:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$9,19($sp)
	beq	$5,$0,$L28
	lw	$12,20($sp)

	move	$2,$0
$L23:
	teq	$7,$0,7
	divu	$0,$2,$7
	addu	$11,$4,$2
	move	$3,$9
	addu	$10,$12,$2
	lbu	$9,0($11)
	addiu	$2,$2,1
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$8,$9,$8
	xor	$3,$3,$8
	bne	$5,$2,$L23
	sb	$3,0($10)

$L28:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_decrypt_feedback
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
