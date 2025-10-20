	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_stream_cipher.c"
	.globl	rc4_stream                      # -- Begin function rc4_stream
	.p2align	2
	.type	rc4_stream,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_stream
rc4_stream:                             # @rc4_stream
	.frame	$sp,256,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -256
	addiu	$3, $zero, 0
	addiu	$2, $sp, 0
	addiu	$6, $zero, 256
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $3
	sb	$3, 0($1)
	addiu	$3, $3, 1
	bne	$3, $6, $BB0_1
	nop
# %bb.2:
	beqz	$5, $BB0_5
	nop
# %bb.3:
	addiu	$3, $zero, 0
	addiu	$6, $zero, 0
$BB0_4:                                 # =>This Inner Loop Header: Depth=1
	addiu	$1, $6, 1
	addiu	$9, $4, 1
	addiu	$5, $5, -1
	andi	$6, $1, 255
	addu	$1, $2, $6
	lbu	$7, 0($1)
	addu	$3, $7, $3
	andi	$8, $3, 255
	addu	$8, $2, $8
	lbu	$10, 0($8)
	sb	$10, 0($1)
	sb	$7, 0($8)
	lbu	$1, 0($1)
	addu	$1, $1, $7
	lbu	$7, 0($4)
	andi	$1, $1, 255
	addu	$1, $2, $1
	lbu	$1, 0($1)
	xor	$1, $7, $1
	sb	$1, 0($4)
	bnez	$5, $BB0_4
	move	$4, $9
$BB0_5:
	jr	$ra
	addiu	$sp, $sp, 256
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_stream
$func_end0:
	.size	rc4_stream, ($func_end0)-rc4_stream
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
