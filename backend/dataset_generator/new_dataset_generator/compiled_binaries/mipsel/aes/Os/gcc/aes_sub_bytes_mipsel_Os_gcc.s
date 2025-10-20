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
	lui	$3,%hi(sbox)
	addiu	$5,$4,16
	addiu	$3,$3,%lo(sbox)
$L2:
	lbu	$2,0($4)
	addiu	$4,$4,1
	addu	$2,$2,$3
	lbu	$2,0($2)
	bne	$4,$5,$L2
	sb	$2,-1($4)

	jr	$31
	nop

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
	lui	$3,%hi(inv_sbox.0)
	addiu	$5,$4,16
	addiu	$3,$3,%lo(inv_sbox.0)
$L5:
	lbu	$2,0($4)
	addiu	$4,$4,1
	addu	$2,$2,$3
	lbu	$2,0($2)
	bne	$4,$5,$L5
	sb	$2,-1($4)

	jr	$31
	nop

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
