	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_multi_key.c"
	.globl	xor_multi_key                   # -- Begin function xor_multi_key
	.p2align	2
	.type	xor_multi_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_multi_key
xor_multi_key:                          # @xor_multi_key
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$5, $BB0_3
	nop
# %bb.1:
	lw	$2, 16($sp)
	addiu	$3, $zero, 0
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$1
	addu	$8, $4, $3
	lbu	$9, 0($8)
	addu	$10, $6, $1
	lbu	$10, 0($10)
	xor	$9, $9, $10
	sb	$9, 0($8)
	addu	$1, $7, $1
	addiu	$3, $3, 1
	lbu	$1, 0($1)
	xor	$1, $1, $9
	bne	$5, $3, $BB0_2
	sb	$1, 0($8)
$BB0_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_multi_key
$func_end0:
	.size	xor_multi_key, ($func_end0)-xor_multi_key
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
