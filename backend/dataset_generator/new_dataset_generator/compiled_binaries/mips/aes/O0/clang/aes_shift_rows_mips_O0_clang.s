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
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$1, 4($fp)
	lbu	$1, 1($1)
	sb	$1, 3($fp)
	lw	$1, 4($fp)
	lbu	$1, 5($1)
	lw	$2, 4($fp)
	sb	$1, 1($2)
	lw	$1, 4($fp)
	lbu	$1, 9($1)
	lw	$2, 4($fp)
	sb	$1, 5($2)
	lw	$1, 4($fp)
	lbu	$1, 13($1)
	lw	$2, 4($fp)
	sb	$1, 9($2)
	lbu	$1, 3($fp)
	lw	$2, 4($fp)
	sb	$1, 13($2)
	lw	$1, 4($fp)
	lbu	$1, 2($1)
	sb	$1, 3($fp)
	lw	$1, 4($fp)
	lbu	$1, 10($1)
	lw	$2, 4($fp)
	sb	$1, 2($2)
	lbu	$1, 3($fp)
	lw	$2, 4($fp)
	sb	$1, 10($2)
	lw	$1, 4($fp)
	lbu	$1, 6($1)
	sb	$1, 3($fp)
	lw	$1, 4($fp)
	lbu	$1, 14($1)
	lw	$2, 4($fp)
	sb	$1, 6($2)
	lbu	$1, 3($fp)
	lw	$2, 4($fp)
	sb	$1, 14($2)
	lw	$1, 4($fp)
	lbu	$1, 15($1)
	sb	$1, 3($fp)
	lw	$1, 4($fp)
	lbu	$1, 11($1)
	lw	$2, 4($fp)
	sb	$1, 15($2)
	lw	$1, 4($fp)
	lbu	$1, 7($1)
	lw	$2, 4($fp)
	sb	$1, 11($2)
	lw	$1, 4($fp)
	lbu	$1, 3($1)
	lw	$2, 4($fp)
	sb	$1, 7($2)
	lbu	$1, 3($fp)
	lw	$2, 4($fp)
	sb	$1, 3($2)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
