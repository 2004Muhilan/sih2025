	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_ofb_mode.c"
	.globl	xor_ofb_mode                    # -- Begin function xor_ofb_mode
	.p2align	2
	.type	xor_ofb_mode,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_ofb_mode
xor_ofb_mode:                           # @xor_ofb_mode
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
	divu	$zero, $3, $7
	teq	$7, $zero, 7
	mfhi	$1
	addu	$1, $6, $1
	lbu	$1, 0($1)
	xor	$2, $1, $2
	addu	$1, $4, $3
	lbu	$8, 0($1)
	xor	$8, $8, $2
	addiu	$3, $3, 1
	bne	$5, $3, $BB0_2
	sb	$8, 0($1)
$BB0_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_ofb_mode
$func_end0:
	.size	xor_ofb_mode, ($func_end0)-xor_ofb_mode
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
