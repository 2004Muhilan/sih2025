	.file	1 "custom_des.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$3,4($4)
	lbu	$8,1($4)
	lbu	$2,0($4)
	lbu	$9,5($4)
	sll	$11,$3,24
	lbu	$7,7($4)
	sll	$10,$8,16
	lbu	$3,2($4)
	sll	$2,$2,24
	lbu	$8,6($4)
	sll	$9,$9,16
	lbu	$13,0($5)
	or	$7,$7,$11
	lbu	$14,3($4)
	sll	$3,$3,8
	sll	$8,$8,8
	lbu	$12,1($5)
	or	$4,$2,$10
	lbu	$11,2($5)
	or	$7,$7,$9
	lbu	$10,3($5)
	or	$7,$7,$8
	lbu	$9,4($5)
	or	$4,$4,$3
	lbu	$8,5($5)
	or	$4,$4,$14
	lbu	$2,6($5)
	xor	$14,$13,$7
	lbu	$3,7($5)
	xor	$5,$14,$4
	xor	$4,$12,$5
	xor	$4,$4,$7
	xor	$7,$11,$4
	xor	$7,$7,$5
	xor	$5,$10,$7
	xor	$5,$5,$4
	xor	$4,$9,$5
	xor	$4,$4,$7
	xor	$7,$8,$4
	xor	$7,$7,$5
	xor	$5,$2,$7
	xor	$5,$5,$4
	xor	$4,$3,$5
	xor	$4,$4,$7
	xor	$7,$13,$4
	xor	$7,$7,$5
	xor	$5,$12,$7
	xor	$5,$5,$4
	xor	$4,$11,$5
	xor	$4,$4,$7
	xor	$7,$10,$4
	xor	$7,$7,$5
	xor	$5,$9,$7
	xor	$5,$5,$4
	xor	$4,$8,$5
	xor	$4,$4,$7
	xor	$2,$2,$4
	xor	$2,$2,$5
	xor	$3,$3,$2
	sb	$2,3($6)
	xor	$3,$3,$4
	srl	$5,$2,24
	sb	$3,7($6)
	srl	$4,$2,16
	sb	$5,0($6)
	srl	$2,$2,8
	srl	$5,$3,24
	sb	$4,1($6)
	srl	$4,$3,16
	sb	$2,2($6)
	srl	$3,$3,8
	sb	$5,4($6)
	sb	$4,5($6)
	jr	$31
	sb	$3,6($6)

	.set	macro
	.set	reorder
	.end	des_encrypt
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
