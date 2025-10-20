	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	2
	.type	des_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_encrypt
des_encrypt:                            # @des_encrypt
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$1, 5($4)
	lbu	$3, 4($4)
	lbu	$8, 6($4)
	lbu	$12, 4($5)
	lbu	$15, 5($5)
	lbu	$13, 7($5)
	lbu	$14, 6($5)
	sll	$2, $1, 16
	sll	$7, $3, 24
	sll	$9, $8, 8
	or	$2, $7, $2
	lbu	$7, 7($4)
	or	$7, $9, $7
	lbu	$9, 1($5)
	or	$2, $7, $2
	lwl	$7, 3($4)
	xor	$10, $2, $9
	lwr	$7, 0($4)
	wsbh	$4, $7
	lbu	$7, 0($5)
	rotr	$4, $4, 16
	xor	$2, $4, $2
	lbu	$4, 2($5)
	lbu	$5, 3($5)
	sb	$8, 2($6)
	sb	$1, 1($6)
	sb	$3, 0($6)
	xor	$11, $2, $7
	srl	$24, $2, 24
	srl	$25, $2, 16
	srl	$2, $2, 8
	xor	$10, $10, $4
	xor	$11, $11, $4
	sb	$2, 6($6)
	sb	$25, 5($6)
	sb	$24, 4($6)
	xor	$10, $10, $12
	xor	$11, $11, $5
	xor	$10, $10, $15
	xor	$11, $11, $15
	xor	$10, $10, $13
	xor	$11, $11, $14
	xor	$1, $10, $7
	xor	$1, $1, $4
	xor	$1, $1, $5
	xor	$1, $1, $15
	xor	$1, $1, $14
	sb	$1, 3($6)
	xor	$1, $11, $7
	xor	$1, $1, $9
	xor	$1, $1, $5
	xor	$1, $1, $12
	xor	$1, $1, $14
	xor	$1, $1, $13
	jr	$ra
	sb	$1, 7($6)
	.set	at
	.set	macro
	.set	reorder
	.end	des_encrypt
$func_end0:
	.size	des_encrypt, ($func_end0)-des_encrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
