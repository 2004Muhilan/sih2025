	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"md5_compress.c"
	.globl	md5_compress                    # -- Begin function md5_compress
	.p2align	2
	.type	md5_compress,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_compress
md5_compress:                           # @md5_compress
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	lw	$1, 36($fp)
	lw	$1, 0($1)
	sw	$1, 28($fp)
	lw	$1, 36($fp)
	lw	$1, 4($1)
	sw	$1, 24($fp)
	lw	$1, 36($fp)
	lw	$1, 8($1)
	sw	$1, 20($fp)
	lw	$1, 36($fp)
	lw	$1, 12($1)
	sw	$1, 16($fp)
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	and	$1, $1, $2
	lw	$2, 24($fp)
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lw	$3, 16($fp)
	and	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	sw	$1, 4($fp)
	lw	$1, 20($fp)
	sw	$1, 16($fp)
	lw	$1, 24($fp)
	sw	$1, 20($fp)
	lw	$1, 24($fp)
	lw	$2, 28($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	lw	$3, 32($fp)
	lw	$4, 12($fp)
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	addu	$2, $2, $3
	sll	$2, $2, 7
	addu	$1, $1, $2
	sw	$1, 24($fp)
	lw	$1, 4($fp)
	sw	$1, 28($fp)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_1
	nop
$BB0_5:
	lw	$3, 28($fp)
	lw	$2, 36($fp)
	lw	$1, 0($2)
	addu	$1, $1, $3
	sw	$1, 0($2)
	lw	$3, 24($fp)
	lw	$2, 36($fp)
	lw	$1, 4($2)
	addu	$1, $1, $3
	sw	$1, 4($2)
	lw	$3, 20($fp)
	lw	$2, 36($fp)
	lw	$1, 8($2)
	addu	$1, $1, $3
	sw	$1, 8($2)
	lw	$3, 16($fp)
	lw	$2, 36($fp)
	lw	$1, 12($2)
	addu	$1, $1, $3
	sw	$1, 12($2)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	md5_compress
$func_end0:
	.size	md5_compress, ($func_end0)-md5_compress
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
