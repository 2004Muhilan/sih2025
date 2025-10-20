	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha1_round1.c"
	.globl	sha1_round1                     # -- Begin function sha1_round1
	.p2align	2
	.type	sha1_round1,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_round1
sha1_round1:                            # @sha1_round1
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
	lw	$1, 44($fp)
	lw	$1, 40($fp)
	sw	$4, 12($fp)
	sw	$5, 8($fp)
	sw	$6, 4($fp)
	sw	$7, 0($fp)
	lw	$1, 12($fp)
	sll	$1, $1, 5
	lw	$2, 12($fp)
	srl	$2, $2, 27
	or	$1, $1, $2
	lw	$2, 8($fp)
	lw	$3, 4($fp)
	and	$2, $2, $3
	lw	$3, 8($fp)
	lui	$4, 65535
	ori	$4, $4, 65535
	xor	$3, $3, $4
	lw	$4, 0($fp)
	and	$3, $3, $4
	or	$2, $2, $3
	addu	$1, $1, $2
	lw	$2, 40($fp)
	addu	$1, $1, $2
	lui	$2, 23170
	ori	$2, $2, 31129
	addu	$1, $1, $2
	lw	$2, 44($fp)
	addu	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha1_round1
$func_end0:
	.size	sha1_round1, ($func_end0)-sha1_round1
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
