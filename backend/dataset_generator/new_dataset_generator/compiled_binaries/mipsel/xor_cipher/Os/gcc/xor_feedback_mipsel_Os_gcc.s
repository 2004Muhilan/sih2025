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
	move	$3,$0

	lbu	$3,0($2)
$L2:
	move	$2,$0
$L3:
	bne	$2,$5,$L4
	addu	$10,$4,$2

	jr	$31
	nop

$L4:
	teq	$7,$0,7
	divu	$0,$2,$7
	addiu	$2,$2,1
	lbu	$9,0($10)
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$8,$9,$8
	xor	$3,$3,$8
	sb	$3,0($10)
	.option	pic0
	b	$L3
	.option	pic2
	move	$3,$9

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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$2,$4
	lw	$4,68($sp)
	lw	$25,%call16(memcpy)($28)
	sw	$31,44($sp)
	sw	$18,40($sp)
	move	$18,$7
	sw	$17,36($sp)
	move	$17,$6
	sw	$16,32($sp)
	move	$6,$5
	.cprestore	24
	move	$16,$5
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$5,$2

	move	$7,$18
	move	$4,$2
	addiu	$2,$sp,64
	move	$6,$17
	sw	$2,16($sp)
	.option	pic0
	jal	xor_cipher_feedback
	.option	pic2
	move	$5,$16

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
	lbu	$3,16($sp)
	move	$2,$0
	lw	$10,20($sp)
$L11:
	bne	$2,$5,$L12
	addu	$8,$4,$2

	jr	$31
	nop

$L12:
	teq	$7,$0,7
	divu	$0,$2,$7
	addu	$11,$10,$2
	addiu	$2,$2,1
	lbu	$9,0($8)
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$8,$9,$8
	xor	$3,$3,$8
	sb	$3,0($11)
	.option	pic0
	b	$L11
	.option	pic2
	move	$3,$9

	.set	macro
	.set	reorder
	.end	xor_decrypt_feedback
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
