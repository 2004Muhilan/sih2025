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
	.frame	$sp,48,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	sw	$23, 36($sp)                    # 4-byte Folded Spill
	sw	$22, 32($sp)                    # 4-byte Folded Spill
	sw	$21, 28($sp)                    # 4-byte Folded Spill
	sw	$20, 24($sp)                    # 4-byte Folded Spill
	sw	$19, 20($sp)                    # 4-byte Folded Spill
	sw	$18, 16($sp)                    # 4-byte Folded Spill
	sw	$17, 12($sp)                    # 4-byte Folded Spill
	sw	$16, 8($sp)                     # 4-byte Folded Spill
	lb	$7, 0($4)
	lb	$8, 4($4)
	sll	$3, $8, 1
	lb	$9, 5($4)
	lb	$10, 2($4)
	slti	$1, $8, 0
	xori	$11, $3, 27
	slti	$12, $7, 0
	sll	$6, $7, 1
	xori	$13, $6, 27
	lb	$14, 6($4)
	lb	$15, 1($4)
	sll	$2, $15, 1
	sll	$5, $14, 1
	movn	$6, $13, $12
	movn	$3, $11, $1
	xor	$11, $10, $15
	xor	$12, $14, $9
	xor	$13, $9, $8
	lb	$1, 8($4)
	lb	$24, 3($4)
	slti	$25, $14, 0
	xori	$gp, $5, 27
	slti	$16, $15, 0
	xori	$17, $2, 27
	slti	$18, $9, 0
	sll	$9, $9, 1
	xori	$19, $9, 27
	lb	$20, 7($4)
	xor	$21, $13, $20
	xor	$22, $10, $7
	xor	$7, $15, $7
	xor	$12, $12, $3
	sw	$12, 4($sp)                     # 4-byte Folded Spill
	movn	$9, $19, $18
	movn	$2, $17, $16
	xor	$11, $11, $6
	movn	$5, $gp, $25
	xor	$8, $14, $8
	slti	$15, $24, 0
	slti	$25, $1, 0
	slti	$gp, $20, 0
	sll	$16, $1, 1
	sll	$17, $24, 1
	sll	$18, $10, 1
	xor	$13, $13, $14
	xor	$14, $7, $10
	xor	$8, $8, $20
	xor	$19, $22, $24
	slti	$10, $10, 0
	xori	$22, $18, 27
	xori	$23, $17, 27
	xori	$fp, $16, 27
	xor	$21, $21, $5
	sll	$ra, $20, 1
	xori	$12, $ra, 27
	movn	$ra, $12, $gp
	xor	$11, $11, $24
	movn	$16, $fp, $25
	movn	$17, $23, $15
	xor	$12, $19, $2
	xor	$8, $8, $9
	lw	$15, 4($sp)                     # 4-byte Folded Reload
	xor	$15, $15, $20
	movn	$18, $22, $10
	xor	$7, $7, $24
	lb	$10, 10($4)
	xor	$6, $14, $6
	xor	$3, $13, $3
	xor	$7, $7, $18
	lb	$13, 9($4)
	xor	$14, $13, $1
	xor	$24, $10, $13
	lb	$25, 11($4)
	xor	$9, $15, $9
	xor	$5, $8, $5
	xor	$8, $12, $18
	xor	$7, $7, $17
	xor	$12, $24, $16
	xor	$2, $11, $2
	xor	$3, $3, $ra
	xor	$11, $21, $ra
	xor	$6, $6, $17
	xor	$15, $14, $10
	slti	$24, $25, 0
	sll	$gp, $25, 1
	xori	$17, $gp, 27
	slti	$18, $13, 0
	sll	$13, $13, 1
	xori	$19, $13, 27
	movn	$13, $19, $18
	xor	$12, $12, $25
	movn	$gp, $17, $24
	xor	$15, $15, $16
	sb	$6, 3($4)
	sb	$7, 2($4)
	sb	$8, 1($4)
	sb	$5, 5($4)
	sb	$11, 6($4)
	sb	$3, 7($4)
	sb	$2, 0($4)
	sb	$9, 4($4)
	xor	$2, $15, $gp
	xor	$3, $12, $13
	slti	$5, $10, 0
	sll	$6, $10, 1
	xori	$7, $6, 27
	movn	$6, $7, $5
	sb	$3, 8($4)
	xor	$1, $10, $1
	xor	$3, $14, $25
	sb	$2, 11($4)
	xor	$2, $3, $6
	xor	$2, $2, $gp
	sb	$2, 10($4)
	xor	$1, $1, $25
	xor	$1, $1, $13
	xor	$1, $1, $6
	sb	$1, 9($4)
	lb	$1, 13($4)
	lb	$2, 12($4)
	slti	$3, $2, 0
	sll	$5, $2, 1
	xori	$6, $5, 27
	movn	$5, $6, $3
	xor	$3, $1, $2
	lb	$6, 14($4)
	xor	$7, $3, $6
	lb	$8, 15($4)
	slti	$9, $8, 0
	sll	$10, $8, 1
	xori	$11, $10, 27
	xor	$7, $7, $5
	movn	$10, $11, $9
	slti	$9, $6, 0
	sll	$11, $6, 1
	xori	$12, $11, 27
	movn	$11, $12, $9
	xor	$3, $3, $8
	xor	$3, $3, $11
	xor	$3, $3, $10
	xor	$7, $7, $10
	slti	$9, $1, 0
	sll	$10, $1, 1
	xori	$12, $10, 27
	movn	$10, $12, $9
	xor	$2, $6, $2
	xor	$2, $2, $8
	xor	$2, $2, $10
	sb	$7, 15($4)
	sb	$3, 14($4)
	xor	$2, $2, $11
	sb	$2, 13($4)
	xor	$1, $6, $1
	xor	$1, $1, $5
	xor	$1, $1, $8
	xor	$1, $1, $10
	sb	$1, 12($4)
	lw	$16, 8($sp)                     # 4-byte Folded Reload
	lw	$17, 12($sp)                    # 4-byte Folded Reload
	lw	$18, 16($sp)                    # 4-byte Folded Reload
	lw	$19, 20($sp)                    # 4-byte Folded Reload
	lw	$20, 24($sp)                    # 4-byte Folded Reload
	lw	$21, 28($sp)                    # 4-byte Folded Reload
	lw	$22, 32($sp)                    # 4-byte Folded Reload
	lw	$23, 36($sp)                    # 4-byte Folded Reload
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 48
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
