	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   # -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_transform
md5_transform:                          # @md5_transform
	.frame	$sp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	lw	$6, 12($4)
	lw	$7, 8($4)
	lw	$3, 4($4)
	lw	$2, 0($4)
	addiu	$9, $zero, 0
	addiu	$8, $sp, 0
	addiu	$10, $zero, 64
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $9
	lwl	$11, 3($1)
	lwr	$11, 0($1)
	addu	$1, $8, $9
	addiu	$9, $9, 4
	bne	$9, $10, $BB0_1
	sw	$11, 0($1)
# %bb.2:
	addiu	$5, $zero, 0
	addiu	$9, $zero, 64
	move	$13, $2
	move	$14, $3
	move	$15, $6
	move	$12, $7
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	move	$11, $12
	move	$10, $15
	move	$12, $14
	and	$1, $14, $11
	not	$14, $14
	and	$14, $15, $14
	or	$1, $1, $14
	addu	$1, $1, $13
	addu	$13, $8, $5
	lw	$13, 0($13)
	addu	$1, $1, $13
	rotr	$1, $1, 25
	addiu	$5, $5, 4
	addu	$14, $1, $12
	move	$13, $15
	bne	$5, $9, $BB0_3
	move	$15, $11
# %bb.4:
	addu	$1, $12, $7
	addu	$5, $11, $6
	sw	$5, 12($4)
	sw	$1, 8($4)
	addu	$1, $14, $3
	sw	$1, 4($4)
	addu	$1, $10, $2
	sw	$1, 0($4)
	jr	$ra
	addiu	$sp, $sp, 64
	.set	at
	.set	macro
	.set	reorder
	.end	md5_transform
$func_end0:
	.size	md5_transform, ($func_end0)-md5_transform
                                        # -- End function
	.globl	md5_init                        # -- Begin function md5_init
	.p2align	2
	.type	md5_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_init
md5_init:                               # @md5_init
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$1, 39098
	ori	$1, $1, 56574
	lui	$2, 4146
	ori	$2, $2, 21622
	sw	$2, 12($4)
	sw	$1, 8($4)
	lui	$1, 61389
	ori	$1, $1, 43913
	sw	$1, 4($4)
	lui	$1, 26437
	ori	$1, $1, 8961
	jr	$ra
	sw	$1, 0($4)
	.set	at
	.set	macro
	.set	reorder
	.end	md5_init
$func_end1:
	.size	md5_init, ($func_end1)-md5_init
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
