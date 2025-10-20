	.file	1 "aes_sub_bytes.c"
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
	.size	sbox, 256
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\000"
	.space	239
	.text
	.align	2
	.globl	aes_sub_bytes
	.set	nomips16
	.set	nomicromips
	.ent	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,4($fp)
	lw	$3,16($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,4($fp)
	lw	$3,16($fp)
	addu	$2,$3,$2
	lui	$3,%hi(sbox)
	addiu	$3,$3,%lo(sbox)
	addu	$3,$4,$3
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,4($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
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
	.end	aes_sub_bytes
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	2
	.globl	aes_inv_sub_bytes
	.set	nomips16
	.set	nomicromips
	.ent	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L5
	nop

	.option	pic2
$L6:
	lw	$2,4($fp)
	lw	$3,16($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,4($fp)
	lw	$3,16($fp)
	addu	$2,$3,$2
	lui	$3,%hi(inv_sbox.0)
	addiu	$3,$3,%lo(inv_sbox.0)
	addu	$3,$4,$3
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L5:
	lw	$2,4($fp)
	slt	$2,$2,16
	bne	$2,$0,$L6
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
	.end	aes_inv_sub_bytes
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.rdata
	.align	2
	.type	inv_sbox.0, @object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.ascii	"R\011j\32506\2458\000"
	.space	247
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
