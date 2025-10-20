	.file	1 "custom_des.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.rdata
	.align	2
	.type	sbox, @object
	.size	sbox, 512
sbox:
	.ascii	"\016\004\015\001\002\017\013\010\003\012\006\014\005\011"
	.ascii	"\000\007\000\017\007\004\016\002\015\001\012\006\014\013"
	.ascii	"\011\005\003\010\004\001\016\010\015\006\002\013\017\014"
	.ascii	"\011\007\003\012\005\000\017\014\010\002\004\011\001\007"
	.ascii	"\005\013\003\016\012\000\006\015"
	.space	448
	.text
	.align	2
	.globl	des_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
	.frame	$fp,56,$31		# vars= 32, regs= 6/0, args= 0, gp= 0
	.mask	0x401f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$fp,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	move	$4,$0
	move	$5,$0
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$4,0($fp)
	lw	$5,56($fp)
	addu	$4,$5,$4
	lbu	$4,0($4)
	move	$10,$4
	move	$11,$0
	li	$5,7			# 0x7
	lw	$4,0($fp)
	subu	$4,$5,$4
	sll	$4,$4,3
	andi	$5,$4,0x20
	move	$20,$0
	srl	$7,$10,1
	li	$6,-1			# 0xffffffffffffffff
	xor	$6,$4,$6
	srl	$6,$7,$6
	sll	$3,$11,$4
	or	$3,$6,$3
	sll	$2,$10,$4
	movn	$3,$2,$5
	movn	$2,$20,$5
	lw	$4,24($fp)
	or	$24,$4,$2
	lw	$4,28($fp)
	or	$25,$4,$3
	sw	$24,24($fp)
	sw	$25,28($fp)
	lw	$4,0($fp)
	addiu	$4,$4,1
	sw	$4,0($fp)
$L2:
	lw	$4,0($fp)
	slt	$4,$4,8
	bne	$4,$0,$L3
	nop

	sw	$0,4($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L6:
	lw	$2,24($fp)
	sw	$2,12($fp)
	lw	$2,28($fp)
	srl	$16,$2,0
	move	$17,$0
	sw	$16,16($fp)
	lw	$3,4($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x7
	and	$2,$3,$2
	bgez	$2,$L5
	nop

	addiu	$2,$2,-1
	li	$3,-8			# 0xfffffffffffffff8
	or	$2,$2,$3
	addiu	$2,$2,1
$L5:
	move	$3,$2
	lw	$2,60($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,12($fp)
	xor	$2,$2,$3
	sw	$2,20($fp)
	lw	$3,16($fp)
	lw	$2,20($fp)
	xor	$2,$3,$2
	sw	$2,16($fp)
	lw	$2,12($fp)
	move	$18,$2
	move	$19,$0
	sll	$13,$18,0
	move	$12,$0
	lw	$2,16($fp)
	move	$14,$2
	move	$15,$0
	or	$2,$12,$14
	sw	$2,24($fp)
	or	$2,$13,$15
	sw	$2,28($fp)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$2,4($fp)
	slt	$2,$2,16
	bne	$2,$0,$L6
	nop

	sw	$0,8($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	li	$3,7			# 0x7
	lw	$2,8($fp)
	subu	$2,$3,$2
	sll	$2,$2,3
	andi	$3,$2,0x20
	move	$6,$0
	lw	$4,28($fp)
	sll	$5,$4,1
	li	$4,-1			# 0xffffffffffffffff
	xor	$4,$2,$4
	sll	$4,$5,$4
	lw	$5,24($fp)
	srl	$8,$5,$2
	or	$8,$4,$8
	lw	$4,28($fp)
	srl	$9,$4,$2
	movn	$8,$9,$3
	movn	$9,$6,$3
	lw	$2,8($fp)
	lw	$3,64($fp)
	addu	$2,$3,$2
	andi	$3,$8,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L7:
	lw	$2,8($fp)
	slt	$2,$2,8
	bne	$2,$0,$L8
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_encrypt
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
