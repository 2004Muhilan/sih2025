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
	beq	$5,$0,$L7
	move	$2,$0

$L4:
	move	$3,$9
	lbu	$9,0($4)
	teq	$7,$0,7
	divu	$0,$2,$7
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$8,$9,$8
	xor	$3,$3,$8
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$5,$2,$L4
	addiu	$4,$4,1

$L7:
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
	.frame	$sp,48,$31		# vars= 0, regs= 4/0, args= 24, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	move	$16,$5
	move	$17,$6
	move	$18,$7
	move	$6,$5
	move	$5,$4
	lw	$4,68($sp)
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,24($sp)
	addiu	$2,$sp,64
	sw	$2,16($sp)
	move	$7,$18
	move	$6,$17
	move	$5,$16
	lw	$4,68($sp)
	.option	pic0
	jal	xor_cipher_feedback
	nop

	.option	pic2
	lw	$28,24($sp)
	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
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
	lbu	$9,16($sp)
	beq	$5,$0,$L14
	lw	$11,20($sp)

	move	$2,$0
$L12:
	move	$3,$9
	addu	$8,$4,$2
	lbu	$9,0($8)
	addu	$10,$11,$2
	teq	$7,$0,7
	divu	$0,$2,$7
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$8,$9,$8
	xor	$3,$3,$8
	addiu	$2,$2,1
	bne	$5,$2,$L12
	sb	$3,0($10)

$L14:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_decrypt_feedback
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
