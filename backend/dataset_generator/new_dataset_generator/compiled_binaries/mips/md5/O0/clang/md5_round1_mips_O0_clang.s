	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"md5_round1.c"
	.globl	md5_round1                      # -- Begin function md5_round1
	.p2align	2
	.type	md5_round1,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_round1
md5_round1:                             # @md5_round1
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 48($fp)
	lw	$1, 44($fp)
	lw	$1, 40($fp)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	sw	$7, 0($fp)
	lw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$2, 0($2)
	lw	$3, 8($fp)
	lw	$4, 4($fp)
	and	$3, $3, $4
	lw	$4, 8($fp)
	lui	$5, 65535
	ori	$5, $5, 65535
	xor	$4, $4, $5
	lw	$5, 0($fp)
	and	$4, $4, $5
	or	$3, $3, $4
	addu	$2, $2, $3
	lw	$3, 40($fp)
	addu	$2, $2, $3
	lw	$3, 48($fp)
	addu	$2, $2, $3
	lw	$3, 44($fp)
	sllv	$2, $2, $3
	addu	$1, $1, $2
	lw	$2, 12($fp)
	sw	$1, 0($2)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	md5_round1
$func_end0:
	.size	md5_round1, ($func_end0)-md5_round1
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
