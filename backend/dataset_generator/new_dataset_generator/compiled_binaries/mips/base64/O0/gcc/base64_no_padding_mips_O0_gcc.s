	.file	1 "base64_no_padding.c"
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
	.type	b64, @object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123"
	.ascii	"456789+/\000"
	.text
	.align	2
	.globl	base64_encode_no_padding
	.set	nomips16
	.set	nomicromips
	.ent	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$0,4($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L7:
	lw	$3,24($fp)
	lw	$2,8($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sll	$2,$2,16
	sw	$2,12($fp)
	lw	$2,8($fp)
	addiu	$2,$2,1
	lw	$3,28($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L3
	nop

	lw	$2,8($fp)
	addiu	$2,$2,1
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	lw	$3,12($fp)
	or	$2,$3,$2
	sw	$2,12($fp)
$L3:
	lw	$2,8($fp)
	addiu	$2,$2,2
	lw	$3,28($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L4
	nop

	lw	$2,8($fp)
	addiu	$2,$2,2
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,12($fp)
	or	$2,$2,$3
	sw	$2,12($fp)
$L4:
	lw	$2,12($fp)
	srl	$2,$2,18
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	lw	$3,28($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L5
	nop

	lw	$2,12($fp)
	srl	$2,$2,6
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
$L5:
	lw	$2,8($fp)
	addiu	$2,$2,2
	lw	$3,28($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L6
	nop

	lw	$2,12($fp)
	andi	$4,$2,0x3f
	lw	$2,4($fp)
	addiu	$3,$2,1
	sw	$3,4($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lui	$3,%hi(b64)
	addiu	$3,$3,%lo(b64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
$L6:
	lw	$2,8($fp)
	addiu	$2,$2,3
	sw	$2,8($fp)
$L2:
	lw	$3,8($fp)
	lw	$2,28($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L7
	nop

	lw	$3,32($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	base64_encode_no_padding
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
