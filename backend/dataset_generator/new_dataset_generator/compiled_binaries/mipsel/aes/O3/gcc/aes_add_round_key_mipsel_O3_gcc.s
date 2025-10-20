	.file	1 "aes_add_round_key.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_add_round_key
	.set	nomips16
	.set	nomicromips
	.ent	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	or	$2,$4,$5
	andi	$2,$2,0x3
	bne	$2,$0,$L2
	addiu	$2,$5,1

	subu	$2,$4,$2
	sltu	$2,$2,3
	bne	$2,$0,$L2
	nop

	lw	$6,0($5)
	lw	$2,0($4)
	lw	$7,4($4)
	lw	$3,8($4)
	xor	$6,$6,$2
	lw	$2,12($4)
	sw	$6,0($4)
	lw	$6,4($5)
	xor	$6,$6,$7
	sw	$6,4($4)
	lw	$6,8($5)
	xor	$3,$3,$6
	sw	$3,8($4)
	lw	$3,12($5)
	xor	$2,$2,$3
	jr	$31
	sw	$2,12($4)

$L2:
	lbu	$7,0($5)
	lbu	$6,0($4)
	lbu	$3,1($4)
	lbu	$2,2($4)
	xor	$6,$6,$7
	lbu	$11,3($4)
	sb	$6,0($4)
	lbu	$6,1($5)
	lbu	$10,4($4)
	lbu	$9,5($4)
	xor	$3,$3,$6
	lbu	$8,6($4)
	sb	$3,1($4)
	lbu	$3,2($5)
	lbu	$7,7($4)
	lbu	$6,8($4)
	xor	$2,$2,$3
	lbu	$3,9($4)
	sb	$2,2($4)
	lbu	$12,3($5)
	lbu	$2,10($4)
	xor	$11,$11,$12
	sb	$11,3($4)
	lbu	$11,4($5)
	xor	$10,$10,$11
	sb	$10,4($4)
	lbu	$10,5($5)
	xor	$9,$9,$10
	sb	$9,5($4)
	lbu	$9,6($5)
	xor	$8,$8,$9
	sb	$8,6($4)
	lbu	$8,7($5)
	xor	$7,$7,$8
	sb	$7,7($4)
	lbu	$7,8($5)
	xor	$6,$6,$7
	sb	$6,8($4)
	lbu	$6,9($5)
	xor	$3,$3,$6
	sb	$3,9($4)
	lbu	$3,10($5)
	xor	$2,$2,$3
	sb	$2,10($4)
	lbu	$3,11($5)
	lbu	$2,11($4)
	lbu	$7,12($4)
	lbu	$6,13($4)
	xor	$2,$2,$3
	lbu	$3,14($4)
	sb	$2,11($4)
	lbu	$8,12($5)
	lbu	$2,15($4)
	xor	$7,$7,$8
	sb	$7,12($4)
	lbu	$7,13($5)
	xor	$6,$6,$7
	sb	$6,13($4)
	lbu	$6,14($5)
	xor	$3,$3,$6
	sb	$3,14($4)
	lbu	$3,15($5)
	xor	$2,$2,$3
	jr	$31
	sb	$2,15($4)

	.set	macro
	.set	reorder
	.end	aes_add_round_key
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
