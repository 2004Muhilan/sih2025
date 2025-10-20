	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"string_reverse.c"
	.globl	string_reverse                  # -- Begin function string_reverse
	.p2align	2
	.type	string_reverse,@function
	.set	nomicromips
	.set	nomips16
	.ent	string_reverse
string_reverse:                         # @string_reverse
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	subu	$1, $1, $2
	sw	$1, 8($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_4
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 7($fp)
	lw	$1, 20($fp)
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 20($fp)
	lw	$3, 12($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 7($fp)
	lw	$2, 20($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 8($fp)
	lui	$2, 65535
	ori	$2, $2, 65535
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_1
	nop
$BB0_4:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	string_reverse
$func_end0:
	.size	string_reverse, ($func_end0)-string_reverse
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
