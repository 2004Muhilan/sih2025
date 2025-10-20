	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  # -- Begin function aes_shift_rows
	.p2align	2
	.type	aes_shift_rows,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_shift_rows
aes_shift_rows:                         # @aes_shift_rows
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$1, 2($4)
	lbu	$2, 10($4)
	lbu	$3, 1($4)
	lbu	$5, 9($4)
	lbu	$6, 13($4)
	lbu	$7, 5($4)
	sb	$7, 1($4)
	sb	$6, 9($4)
	sb	$5, 5($4)
	sb	$3, 13($4)
	sb	$2, 2($4)
	sb	$1, 10($4)
	lbu	$1, 6($4)
	lbu	$2, 14($4)
	sb	$2, 6($4)
	sb	$1, 14($4)
	lbu	$2, 11($4)
	lbu	$1, 15($4)
	sb	$2, 15($4)
	lbu	$2, 7($4)
	sb	$2, 11($4)
	lbu	$2, 3($4)
	sb	$2, 7($4)
	jr	$ra
	sb	$1, 3($4)
	.set	at
	.set	macro
	.set	reorder
	.end	aes_shift_rows
$func_end0:
	.size	aes_shift_rows, ($func_end0)-aes_shift_rows
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
