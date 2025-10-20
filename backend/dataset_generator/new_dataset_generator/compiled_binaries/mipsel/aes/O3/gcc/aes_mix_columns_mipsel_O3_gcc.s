	.file	1 "aes_mix_columns.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_mix_columns
	.set	nomips16
	.set	nomicromips
	.ent	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$5,0($4)
	lbu	$11,1($4)
	lbu	$9,2($4)
	sll	$10,$5,1
	lbu	$2,3($4)
	seb	$3,$5
	bgez	$3,$L2
	andi	$10,$10,0x00ff

	xori	$10,$10,0x1b
$L2:
	sll	$3,$11,1
	seb	$6,$11
	bgez	$6,$L3
	andi	$3,$3,0x00ff

	xori	$3,$3,0x1b
$L3:
	xor	$6,$11,$9
	xor	$6,$2,$6
	sll	$8,$9,1
	xor	$6,$10,$6
	xor	$6,$3,$6
	seb	$7,$9
	sb	$6,0($4)
	andi	$8,$8,0x00ff
	bgez	$7,$L4
	xor	$6,$5,$9

	xori	$8,$8,0x1b
$L4:
	xor	$6,$6,$2
	xor	$3,$3,$6
	sll	$7,$2,1
	xor	$3,$8,$3
	xor	$5,$5,$11
	sb	$3,1($4)
	seb	$6,$2
	xor	$3,$5,$2
	bgez	$6,$L5
	andi	$7,$7,0x00ff

	xori	$7,$7,0x1b
$L5:
	lbu	$6,4($4)
	xor	$5,$5,$9
	xor	$3,$3,$8
	lbu	$11,5($4)
	xor	$3,$7,$3
	lbu	$2,7($4)
	xor	$10,$10,$5
	lbu	$5,6($4)
	sll	$9,$6,1
	sb	$3,2($4)
	xor	$7,$7,$10
	seb	$3,$6
	sb	$7,3($4)
	bgez	$3,$L6
	andi	$9,$9,0x00ff

	xori	$9,$9,0x1b
$L6:
	sll	$3,$11,1
	seb	$7,$11
	bgez	$7,$L7
	andi	$3,$3,0x00ff

	xori	$3,$3,0x1b
$L7:
	xor	$7,$11,$5
	xor	$7,$2,$7
	sll	$8,$5,1
	xor	$7,$9,$7
	xor	$7,$3,$7
	seb	$12,$5
	sb	$7,4($4)
	xor	$10,$6,$5
	bgez	$12,$L8
	andi	$8,$8,0x00ff

	xori	$8,$8,0x1b
$L8:
	xor	$10,$2,$10
	xor	$3,$3,$10
	sll	$7,$2,1
	xor	$3,$8,$3
	xor	$6,$6,$11
	sb	$3,5($4)
	seb	$10,$2
	xor	$3,$2,$6
	bgez	$10,$L9
	andi	$7,$7,0x00ff

	xori	$7,$7,0x1b
$L9:
	lbu	$10,8($4)
	xor	$2,$5,$6
	xor	$3,$3,$8
	lbu	$5,9($4)
	xor	$3,$7,$3
	lbu	$6,10($4)
	xor	$9,$9,$2
	lbu	$2,11($4)
	sll	$11,$10,1
	sb	$3,6($4)
	xor	$7,$7,$9
	seb	$3,$10
	sb	$7,7($4)
	bgez	$3,$L10
	andi	$11,$11,0x00ff

	xori	$11,$11,0x1b
$L10:
	sll	$3,$5,1
	seb	$7,$5
	bgez	$7,$L11
	andi	$3,$3,0x00ff

	xori	$3,$3,0x1b
$L11:
	xor	$7,$6,$5
	xor	$7,$2,$7
	sll	$9,$6,1
	xor	$7,$11,$7
	xor	$7,$3,$7
	seb	$8,$6
	sb	$7,8($4)
	andi	$9,$9,0x00ff
	bgez	$8,$L12
	xor	$7,$6,$10

	xori	$9,$9,0x1b
$L12:
	xor	$7,$7,$2
	sll	$8,$2,1
	xor	$3,$3,$7
	xor	$3,$9,$3
	xor	$7,$5,$10
	sb	$3,9($4)
	seb	$5,$2
	andi	$3,$8,0x00ff
	bgez	$5,$L13
	xor	$2,$2,$7

	xori	$3,$3,0x1b
$L13:
	lbu	$5,12($4)
	xor	$6,$6,$7
	xor	$2,$2,$9
	lbu	$10,13($4)
	xor	$2,$3,$2
	lbu	$9,14($4)
	xor	$11,$11,$6
	lbu	$6,15($4)
	sll	$8,$5,1
	sb	$2,10($4)
	xor	$3,$3,$11
	seb	$2,$5
	sb	$3,11($4)
	bgez	$2,$L14
	andi	$8,$8,0x00ff

	xori	$8,$8,0x1b
$L14:
	sll	$3,$10,1
	seb	$2,$10
	bgez	$2,$L15
	andi	$3,$3,0x00ff

	xori	$3,$3,0x1b
$L15:
	xor	$7,$10,$9
	xor	$7,$6,$7
	sll	$2,$9,1
	xor	$7,$8,$7
	xor	$7,$3,$7
	seb	$12,$9
	sb	$7,12($4)
	xor	$11,$5,$9
	bgez	$12,$L16
	andi	$2,$2,0x00ff

	xori	$2,$2,0x1b
$L16:
	xor	$11,$11,$6
	sll	$7,$6,1
	xor	$3,$3,$11
	xor	$3,$2,$3
	xor	$5,$5,$10
	sb	$3,13($4)
	seb	$10,$6
	andi	$3,$7,0x00ff
	bgez	$10,$L17
	xor	$6,$5,$6

	xori	$3,$3,0x1b
$L17:
	xor	$5,$5,$9
	xor	$2,$2,$6
	xor	$8,$8,$5
	xor	$2,$3,$2
	xor	$3,$3,$8
	sb	$2,14($4)
	jr	$31
	sb	$3,15($4)

	.set	macro
	.set	reorder
	.end	aes_mix_columns
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
