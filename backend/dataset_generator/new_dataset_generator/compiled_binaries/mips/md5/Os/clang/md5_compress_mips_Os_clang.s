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
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$6, 12($4)
	lw	$7, 8($4)
	lw	$3, 4($4)
	lw	$2, 0($4)
	addiu	$8, $zero, 0
	addiu	$9, $zero, 64
	move	$13, $2
	move	$14, $3
	move	$15, $6
	move	$12, $7
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	move	$11, $12
	move	$10, $15
	move	$12, $14
	and	$1, $14, $11
	not	$14, $14
	and	$14, $15, $14
	or	$1, $1, $14
	addu	$1, $1, $13
	addu	$13, $5, $8
	lw	$13, 0($13)
	addu	$1, $1, $13
	sll	$1, $1, 7
	addiu	$8, $8, 4
	addu	$14, $1, $12
	move	$13, $15
	bne	$8, $9, $BB0_1
	move	$15, $11
# %bb.2:
	addu	$1, $12, $7
	addu	$5, $11, $6
	sw	$5, 12($4)
	sw	$1, 8($4)
	addu	$1, $14, $3
	sw	$1, 4($4)
	addu	$1, $10, $2
	jr	$ra
	sw	$1, 0($4)
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
