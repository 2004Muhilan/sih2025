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
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sw	$7,28($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L2
	nop

	lw	$2,32($fp)
	lbu	$2,0($2)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L2:
	move	$2,$0
$L3:
	sb	$2,1($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$3,4($fp)
	lw	$2,28($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lbu	$2,1($fp)
	xor	$2,$3,$2
	sb	$2,2($fp)
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,3($fp)
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$3,2($fp)
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lbu	$2,3($fp)
	sb	$2,1($fp)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$3,4($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L5
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
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
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lw	$6,44($fp)
	lw	$5,40($fp)
	lw	$4,60($fp)
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$2,$fp,59
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,60($fp)
	.option	pic0
	jal	xor_cipher_feedback
	nop

	.option	pic2
	lw	$28,24($fp)
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

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
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sw	$7,28($fp)
	lbu	$2,35($fp)
	sb	$2,2($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L9:
	lw	$3,4($fp)
	lw	$2,28($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lbu	$2,2($fp)
	xor	$2,$3,$2
	sb	$2,3($fp)
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,2($fp)
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$3,36($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$3,3($fp)
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L8:
	lw	$3,4($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L9
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_decrypt_feedback
	.size	xor_decrypt_feedback, .-xor_decrypt_feedback
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
