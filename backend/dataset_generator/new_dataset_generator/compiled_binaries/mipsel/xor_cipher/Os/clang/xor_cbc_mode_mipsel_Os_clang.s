	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_cbc_mode.c"
	.globl	xor_cbc_mode                    # -- Begin function xor_cbc_mode
	.p2align	2
	.type	xor_cbc_mode,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_cbc_mode
xor_cbc_mode:                           # @xor_cbc_mode
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
	lw	$3, 16($sp)
	addiu	$2, $zero, 0
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $7
	teq	$7, $zero, 7
	mfhi	$1
	addu	$1, $6, $1
	lbu	$1, 0($1)
	xor	$1, $1, $3
	addu	$8, $4, $2
	lbu	$3, 0($8)
	xor	$3, $1, $3
	addiu	$2, $2, 1
	bne	$5, $2, $BB0_2
	sb	$3, 0($8)
$BB0_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_cbc_mode
$func_end0:
	.size	xor_cbc_mode, ($func_end0)-xor_cbc_mode
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
