	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_compress.c"
	.globl	sha256_compress                 # -- Begin function sha256_compress
	.p2align	2
	.type	sha256_compress,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_compress
sha256_compress:                        # @sha256_compress
	.frame	$fp,344,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -344
	sw	$ra, 340($sp)                   # 4-byte Folded Spill
	sw	$fp, 336($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 332($fp)
	sw	$5, 328($fp)
	addiu	$1, $zero, 0
	sw	$zero, 68($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 68($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 328($fp)
	lw	$2, 68($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$3, 68($fp)
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 68($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 68($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 16
	sw	$1, 64($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 64($fp)
	addiu	$2, $zero, 64
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 64($fp)
	addiu	$2, $zero, 15
	subu	$2, $1, $2
	addiu	$1, $fp, 72
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	srl	$1, $1, 7
	lw	$2, 64($fp)
	addiu	$3, $zero, 15
	subu	$3, $2, $3
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	sll	$2, $2, 25
	or	$1, $1, $2
	lw	$2, 64($fp)
	addiu	$3, $zero, 15
	subu	$3, $2, $3
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 18
	lw	$3, 64($fp)
	addiu	$4, $zero, 15
	subu	$4, $3, $4
	addiu	$3, $fp, 72
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	sll	$3, $3, 14
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 64($fp)
	addiu	$3, $zero, 15
	subu	$3, $2, $3
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 3
	xor	$1, $1, $2
	sw	$1, 60($fp)
	lw	$1, 64($fp)
	addiu	$2, $zero, 2
	subu	$2, $1, $2
	addiu	$1, $fp, 72
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	srl	$1, $1, 17
	lw	$2, 64($fp)
	addiu	$3, $zero, 2
	subu	$3, $2, $3
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	sll	$2, $2, 15
	or	$1, $1, $2
	lw	$2, 64($fp)
	addiu	$3, $zero, 2
	subu	$3, $2, $3
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 19
	lw	$3, 64($fp)
	addiu	$4, $zero, 2
	subu	$4, $3, $4
	addiu	$3, $fp, 72
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	sll	$3, $3, 13
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 64($fp)
	addiu	$3, $zero, 2
	subu	$3, $2, $3
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 10
	xor	$1, $1, $2
	sw	$1, 56($fp)
	lw	$1, 64($fp)
	addiu	$2, $zero, 16
	subu	$2, $1, $2
	addiu	$1, $fp, 72
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 60($fp)
	addu	$1, $1, $2
	lw	$2, 64($fp)
	addiu	$3, $zero, 7
	subu	$3, $2, $3
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	addu	$1, $1, $2
	lw	$2, 56($fp)
	addu	$1, $1, $2
	lw	$3, 64($fp)
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 64($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 64($fp)
	b	$BB0_6
	nop
$BB0_10:
	lw	$1, 332($fp)
	lw	$1, 0($1)
	sw	$1, 52($fp)
	lw	$1, 332($fp)
	lw	$1, 4($1)
	sw	$1, 48($fp)
	lw	$1, 332($fp)
	lw	$1, 8($1)
	sw	$1, 44($fp)
	lw	$1, 332($fp)
	lw	$1, 12($1)
	sw	$1, 40($fp)
	lw	$1, 332($fp)
	lw	$1, 16($1)
	sw	$1, 36($fp)
	lw	$1, 332($fp)
	lw	$1, 20($1)
	sw	$1, 32($fp)
	lw	$1, 332($fp)
	lw	$1, 24($1)
	sw	$1, 28($fp)
	lw	$1, 332($fp)
	lw	$1, 28($1)
	sw	$1, 24($fp)
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 64
	slt	$1, $1, $2
	bgtz	$1, $BB0_13
	nop
# %bb.12:
	b	$BB0_15
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 36($fp)
	srl	$1, $1, 6
	lw	$2, 36($fp)
	sll	$2, $2, 26
	or	$1, $1, $2
	lw	$2, 36($fp)
	srl	$2, $2, 11
	lw	$3, 36($fp)
	sll	$3, $3, 21
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 36($fp)
	srl	$2, $2, 25
	lw	$3, 36($fp)
	sll	$3, $3, 7
	or	$2, $2, $3
	xor	$1, $1, $2
	sw	$1, 16($fp)
	lw	$1, 24($fp)
	lw	$2, 16($fp)
	addu	$1, $1, $2
	lw	$2, 36($fp)
	lw	$3, 32($fp)
	and	$2, $2, $3
	lw	$3, 36($fp)
	lui	$4, 65535
	ori	$4, $4, 65535
	xor	$3, $3, $4
	lw	$4, 28($fp)
	and	$3, $3, $4
	xor	$2, $2, $3
	addu	$1, $1, $2
	lui	$2, 17034
	ori	$2, $2, 12184
	addu	$1, $1, $2
	lw	$3, 20($fp)
	addiu	$2, $fp, 72
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	addu	$1, $1, $2
	sw	$1, 12($fp)
	lw	$1, 52($fp)
	srl	$1, $1, 2
	lw	$2, 52($fp)
	sll	$2, $2, 30
	or	$1, $1, $2
	lw	$2, 52($fp)
	srl	$2, $2, 13
	lw	$3, 52($fp)
	sll	$3, $3, 19
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 52($fp)
	srl	$2, $2, 22
	lw	$3, 52($fp)
	sll	$3, $3, 10
	or	$2, $2, $3
	xor	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	lw	$2, 52($fp)
	lw	$3, 48($fp)
	and	$2, $2, $3
	lw	$3, 52($fp)
	lw	$4, 44($fp)
	and	$3, $3, $4
	xor	$2, $2, $3
	lw	$3, 48($fp)
	lw	$4, 44($fp)
	and	$3, $3, $4
	xor	$2, $2, $3
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 28($fp)
	sw	$1, 24($fp)
	lw	$1, 32($fp)
	sw	$1, 28($fp)
	lw	$1, 36($fp)
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	sw	$1, 36($fp)
	lw	$1, 44($fp)
	sw	$1, 40($fp)
	lw	$1, 48($fp)
	sw	$1, 44($fp)
	lw	$1, 52($fp)
	sw	$1, 48($fp)
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	addu	$1, $1, $2
	sw	$1, 52($fp)
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB0_11
	nop
$BB0_15:
	lw	$3, 52($fp)
	lw	$2, 332($fp)
	lw	$1, 0($2)
	addu	$1, $1, $3
	sw	$1, 0($2)
	lw	$3, 48($fp)
	lw	$2, 332($fp)
	lw	$1, 4($2)
	addu	$1, $1, $3
	sw	$1, 4($2)
	lw	$3, 44($fp)
	lw	$2, 332($fp)
	lw	$1, 8($2)
	addu	$1, $1, $3
	sw	$1, 8($2)
	lw	$3, 40($fp)
	lw	$2, 332($fp)
	lw	$1, 12($2)
	addu	$1, $1, $3
	sw	$1, 12($2)
	lw	$3, 36($fp)
	lw	$2, 332($fp)
	lw	$1, 16($2)
	addu	$1, $1, $3
	sw	$1, 16($2)
	lw	$3, 32($fp)
	lw	$2, 332($fp)
	lw	$1, 20($2)
	addu	$1, $1, $3
	sw	$1, 20($2)
	lw	$3, 28($fp)
	lw	$2, 332($fp)
	lw	$1, 24($2)
	addu	$1, $1, $3
	sw	$1, 24($2)
	lw	$3, 24($fp)
	lw	$2, 332($fp)
	lw	$1, 28($2)
	addu	$1, $1, $3
	sw	$1, 28($2)
	move	$sp, $fp
	lw	$fp, 336($sp)                   # 4-byte Folded Reload
	lw	$ra, 340($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 344
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_compress
$func_end0:
	.size	sha256_compress, ($func_end0)-sha256_compress
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
