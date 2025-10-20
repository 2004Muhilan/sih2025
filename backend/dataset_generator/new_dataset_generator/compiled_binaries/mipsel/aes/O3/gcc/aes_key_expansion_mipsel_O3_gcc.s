	.file	1 "aes_key_expansion.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_key_expansion
	.set	nomips16
	.set	nomicromips
	.ent	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
	.frame	$sp,24,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x001f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,1
	addiu	$sp,$sp,-24
	subu	$2,$5,$2
	sltu	$2,$2,3
	sw	$20,20($sp)
	sw	$19,16($sp)
	sw	$18,12($sp)
	sw	$17,8($sp)
	bne	$2,$0,$L2
	sw	$16,4($sp)

	or	$2,$5,$4
	andi	$2,$2,0x3
	bne	$2,$0,$L2
	nop

	lw	$2,0($4)
	sw	$2,0($5)
	lw	$2,4($4)
	sw	$2,4($5)
	lw	$2,8($4)
	sw	$2,8($5)
	lw	$2,12($4)
	sw	$2,12($5)
$L3:
	lui	$7,%hi(rcon)
	lbu	$18,11($5)
	lbu	$17,10($5)
	addiu	$2,$5,16
	addiu	$7,$7,%lo(rcon)
	lbu	$16,9($5)
	lbu	$25,8($5)
	lbu	$24,7($5)
	addiu	$20,$7,10
	lbu	$15,6($5)
	lbu	$14,5($5)
	lbu	$13,4($5)
	lbu	$12,3($5)
	lbu	$11,2($5)
	lbu	$10,1($5)
	lbu	$9,0($5)
	lbu	$6,15($5)
	lbu	$4,14($5)
	lbu	$8,13($5)
	lbu	$3,12($5)
$L4:
	lbu	$5,0($7)
	move	$19,$3
	addiu	$7,$7,1
	xor	$10,$4,$10
	xor	$5,$8,$5
	sb	$10,1($2)
	xor	$11,$6,$11
	xor	$12,$3,$12
	sb	$11,2($2)
	xor	$14,$4,$14
	sb	$12,3($2)
	xor	$15,$6,$15
	sb	$14,5($2)
	xor	$24,$3,$24
	sb	$15,6($2)
	xor	$16,$16,$4
	sb	$24,7($2)
	xor	$17,$17,$6
	sb	$16,9($2)
	xor	$18,$3,$18
	sb	$17,10($2)
	xor	$8,$8,$4
	sb	$18,11($2)
	xor	$4,$4,$6
	sb	$8,13($2)
	xor	$9,$5,$9
	sb	$4,14($2)
	xor	$13,$5,$13
	sb	$9,0($2)
	xor	$25,$5,$25
	sb	$13,4($2)
	xor	$3,$5,$3
	sb	$25,8($2)
	xor	$6,$19,$6
	sb	$3,12($2)
	sb	$6,15($2)
	bne	$20,$7,$L4
	addiu	$2,$2,16

	lw	$20,20($sp)
	lw	$19,16($sp)
	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	jr	$31
	addiu	$sp,$sp,24

$L2:
	lbu	$2,0($4)
	sb	$2,0($5)
	lbu	$2,1($4)
	sb	$2,1($5)
	lbu	$2,2($4)
	sb	$2,2($5)
	lbu	$2,3($4)
	sb	$2,3($5)
	lbu	$2,4($4)
	sb	$2,4($5)
	lbu	$2,5($4)
	sb	$2,5($5)
	lbu	$2,6($4)
	sb	$2,6($5)
	lbu	$2,7($4)
	sb	$2,7($5)
	lbu	$2,8($4)
	sb	$2,8($5)
	lbu	$2,9($4)
	sb	$2,9($5)
	lbu	$2,10($4)
	sb	$2,10($5)
	lbu	$2,11($4)
	sb	$2,11($5)
	lbu	$2,12($4)
	sb	$2,12($5)
	lbu	$2,13($4)
	sb	$2,13($5)
	lbu	$2,14($4)
	sb	$2,14($5)
	lbu	$2,15($4)
	.option	pic0
	b	$L3
	.option	pic2
	sb	$2,15($5)

	.set	macro
	.set	reorder
	.end	aes_key_expansion
	.size	aes_key_expansion, .-aes_key_expansion
	.rdata
	.align	2
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\010\020 @\200\0336"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
