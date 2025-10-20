	.file	1 "aes_sub_bytes.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_sub_bytes
	.set	nomips16
	.set	nomicromips
	.ent	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(sbox)
	lbu	$14,0($4)
	lbu	$13,1($4)
	lbu	$12,2($4)
	addiu	$2,$2,%lo(sbox)
	lbu	$11,3($4)
	lbu	$10,4($4)
	addu	$14,$14,$2
	lbu	$9,5($4)
	addu	$13,$13,$2
	lbu	$8,6($4)
	addu	$12,$12,$2
	lbu	$7,7($4)
	addu	$11,$11,$2
	lbu	$6,8($4)
	addu	$10,$10,$2
	lbu	$5,9($4)
	addu	$9,$9,$2
	lbu	$3,10($4)
	addu	$8,$8,$2
	addu	$7,$7,$2
	lbu	$14,0($14)
	addu	$6,$6,$2
	lbu	$13,0($13)
	addu	$5,$5,$2
	lbu	$12,0($12)
	addu	$3,$3,$2
	lbu	$11,0($11)
	lbu	$10,0($10)
	lbu	$9,0($9)
	lbu	$8,0($8)
	lbu	$7,0($7)
	lbu	$6,0($6)
	lbu	$5,0($5)
	lbu	$3,0($3)
	sb	$8,6($4)
	sb	$7,7($4)
	sb	$6,8($4)
	sb	$5,9($4)
	sb	$14,0($4)
	sb	$13,1($4)
	sb	$12,2($4)
	sb	$11,3($4)
	sb	$10,4($4)
	sb	$9,5($4)
	sb	$3,10($4)
	lbu	$3,15($4)
	lbu	$8,11($4)
	lbu	$7,12($4)
	lbu	$6,13($4)
	lbu	$5,14($4)
	addu	$8,$8,$2
	addu	$7,$7,$2
	addu	$6,$6,$2
	addu	$5,$5,$2
	lbu	$8,0($8)
	addu	$2,$3,$2
	lbu	$7,0($7)
	lbu	$6,0($6)
	lbu	$3,0($5)
	lbu	$2,0($2)
	sb	$8,11($4)
	sb	$7,12($4)
	sb	$6,13($4)
	sb	$3,14($4)
	jr	$31
	sb	$2,15($4)

	.set	macro
	.set	reorder
	.end	aes_sub_bytes
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	2
	.globl	aes_inv_sub_bytes
	.set	nomips16
	.set	nomicromips
	.ent	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(inv_sbox.0)
	lbu	$14,0($4)
	lbu	$13,1($4)
	lbu	$12,2($4)
	addiu	$2,$2,%lo(inv_sbox.0)
	lbu	$11,3($4)
	lbu	$10,4($4)
	addu	$14,$14,$2
	lbu	$9,5($4)
	addu	$13,$13,$2
	lbu	$8,6($4)
	addu	$12,$12,$2
	lbu	$7,7($4)
	addu	$11,$11,$2
	lbu	$6,8($4)
	addu	$10,$10,$2
	lbu	$5,9($4)
	addu	$9,$9,$2
	lbu	$3,10($4)
	addu	$8,$8,$2
	addu	$7,$7,$2
	lbu	$14,0($14)
	addu	$6,$6,$2
	lbu	$13,0($13)
	addu	$5,$5,$2
	lbu	$12,0($12)
	addu	$3,$3,$2
	lbu	$11,0($11)
	lbu	$10,0($10)
	lbu	$9,0($9)
	lbu	$8,0($8)
	lbu	$7,0($7)
	lbu	$6,0($6)
	lbu	$5,0($5)
	lbu	$3,0($3)
	sb	$8,6($4)
	sb	$7,7($4)
	sb	$6,8($4)
	sb	$5,9($4)
	sb	$14,0($4)
	sb	$13,1($4)
	sb	$12,2($4)
	sb	$11,3($4)
	sb	$10,4($4)
	sb	$9,5($4)
	sb	$3,10($4)
	lbu	$3,15($4)
	lbu	$8,11($4)
	lbu	$7,12($4)
	lbu	$6,13($4)
	lbu	$5,14($4)
	addu	$8,$8,$2
	addu	$7,$7,$2
	addu	$6,$6,$2
	addu	$5,$5,$2
	lbu	$8,0($8)
	addu	$2,$3,$2
	lbu	$7,0($7)
	lbu	$6,0($6)
	lbu	$3,0($5)
	lbu	$2,0($2)
	sb	$8,11($4)
	sb	$7,12($4)
	sb	$6,13($4)
	sb	$3,14($4)
	jr	$31
	sb	$2,15($4)

	.set	macro
	.set	reorder
	.end	aes_inv_sub_bytes
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.rdata
	.align	2
	.type	inv_sbox.0, @object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.ascii	"R\011j\32506\2458\000"
	.space	247
	.align	2
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\000"
	.space	239
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
