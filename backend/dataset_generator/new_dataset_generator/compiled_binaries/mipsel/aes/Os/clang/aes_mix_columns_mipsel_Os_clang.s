	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 # -- Begin function aes_mix_columns
	.p2align	2
	.type	aes_mix_columns,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_mix_columns
aes_mix_columns:                        # @aes_mix_columns
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 4
$BB0_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	sll	$1, $2, 2
	addu	$5, $4, $1
	lbu	$7, 3($5)
	lbu	$6, 2($5)
	addiu	$11, $zero, 2
	lbu	$8, 1($5)
	lbu	$9, 0($5)
	addiu	$12, $zero, 8
	move	$13, $9
	addiu	$10, $zero, 0
$BB0_2:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $11, 1
	negu	$1, $1
	and	$1, $1, $13
	seb	$14, $13
	slti	$14, $14, 0
	sll	$13, $13, 1
	xori	$15, $13, 27
	movn	$13, $15, $14
	xor	$10, $1, $10
	addiu	$12, $12, -1
	andi	$1, $11, 254
	bnez	$12, $BB0_2
	srl	$11, $1, 1
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$12, $zero, 3
	addiu	$11, $zero, 0
	addiu	$13, $zero, 8
	move	$14, $8
$BB0_4:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $12, 1
	negu	$1, $1
	and	$1, $1, $14
	seb	$15, $14
	slti	$15, $15, 0
	sll	$14, $14, 1
	xori	$24, $14, 27
	movn	$14, $24, $15
	xor	$11, $1, $11
	addiu	$13, $13, -1
	andi	$1, $12, 254
	bnez	$13, $BB0_4
	srl	$12, $1, 1
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	xor	$1, $7, $6
	xor	$1, $1, $10
	xor	$1, $1, $11
	sb	$1, 0($5)
	addiu	$11, $zero, 2
	addiu	$10, $zero, 0
	addiu	$12, $zero, 8
	move	$13, $8
$BB0_6:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $11, 1
	negu	$1, $1
	and	$1, $1, $13
	seb	$14, $13
	slti	$14, $14, 0
	sll	$13, $13, 1
	xori	$15, $13, 27
	movn	$13, $15, $14
	xor	$10, $1, $10
	addiu	$12, $12, -1
	andi	$1, $11, 254
	bnez	$12, $BB0_6
	srl	$11, $1, 1
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$12, $zero, 3
	addiu	$11, $zero, 0
	addiu	$13, $zero, 8
	move	$14, $6
$BB0_8:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $12, 1
	negu	$1, $1
	and	$1, $1, $14
	seb	$15, $14
	slti	$15, $15, 0
	sll	$14, $14, 1
	xori	$24, $14, 27
	movn	$14, $24, $15
	xor	$11, $1, $11
	addiu	$13, $13, -1
	andi	$1, $12, 254
	bnez	$13, $BB0_8
	srl	$12, $1, 1
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	xor	$1, $7, $9
	xor	$1, $1, $10
	xor	$1, $1, $11
	sb	$1, 1($5)
	addiu	$11, $zero, 2
	addiu	$10, $zero, 0
	addiu	$12, $zero, 8
	move	$13, $6
$BB0_10:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $11, 1
	negu	$1, $1
	and	$1, $1, $13
	seb	$14, $13
	slti	$14, $14, 0
	sll	$13, $13, 1
	xori	$15, $13, 27
	movn	$13, $15, $14
	xor	$10, $1, $10
	addiu	$12, $12, -1
	andi	$1, $11, 254
	bnez	$12, $BB0_10
	srl	$11, $1, 1
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	addiu	$12, $zero, 3
	addiu	$11, $zero, 0
	addiu	$13, $zero, 8
	move	$14, $7
$BB0_12:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $12, 1
	negu	$1, $1
	and	$1, $1, $14
	seb	$15, $14
	slti	$15, $15, 0
	sll	$14, $14, 1
	xori	$24, $14, 27
	movn	$14, $24, $15
	xor	$11, $1, $11
	addiu	$13, $13, -1
	andi	$1, $12, 254
	bnez	$13, $BB0_12
	srl	$12, $1, 1
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	xor	$1, $8, $9
	xor	$1, $1, $10
	xor	$1, $1, $11
	sb	$1, 2($5)
	addiu	$11, $zero, 3
	addiu	$10, $zero, 0
	addiu	$12, $zero, 8
$BB0_14:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $11, 1
	negu	$1, $1
	and	$1, $1, $9
	seb	$13, $9
	slti	$13, $13, 0
	sll	$9, $9, 1
	xori	$14, $9, 27
	movn	$9, $14, $13
	xor	$10, $1, $10
	addiu	$12, $12, -1
	andi	$1, $11, 254
	bnez	$12, $BB0_14
	srl	$11, $1, 1
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	addiu	$11, $zero, 2
	addiu	$9, $zero, 0
	addiu	$12, $zero, 8
$BB0_16:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$1, $11, 1
	negu	$1, $1
	and	$1, $1, $7
	seb	$13, $7
	slti	$13, $13, 0
	sll	$7, $7, 1
	xori	$14, $7, 27
	movn	$7, $14, $13
	xor	$9, $1, $9
	addiu	$12, $12, -1
	andi	$1, $11, 254
	bnez	$12, $BB0_16
	srl	$11, $1, 1
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	xor	$1, $6, $8
	xor	$1, $1, $10
	xor	$1, $1, $9
	addiu	$2, $2, 1
	bne	$2, $3, $BB0_1
	sb	$1, 3($5)
# %bb.18:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	aes_mix_columns
$func_end0:
	.size	aes_mix_columns, ($func_end0)-aes_mix_columns
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
