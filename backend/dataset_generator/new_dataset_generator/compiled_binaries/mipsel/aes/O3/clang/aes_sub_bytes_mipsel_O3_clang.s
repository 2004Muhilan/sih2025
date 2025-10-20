	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   # -- Begin function aes_sub_bytes
	.p2align	2
	.type	aes_sub_bytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_sub_bytes
aes_sub_bytes:                          # @aes_sub_bytes
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lbu	$2, 5($4)
	lbu	$3, 4($4)
	lbu	$5, 3($4)
	lbu	$6, 2($4)
	lbu	$7, 6($4)
	lbu	$8, 7($4)
	lbu	$9, 1($4)
	lbu	$10, 0($4)
	lw	$1, %got(sbox)($1)
	addiu	$1, $1, %lo(sbox)
	addu	$6, $1, $6
	addu	$5, $1, $5
	addu	$3, $1, $3
	addu	$2, $1, $2
	addu	$7, $1, $7
	addu	$8, $1, $8
	addu	$9, $1, $9
	addu	$10, $1, $10
	lbu	$8, 0($8)
	lbu	$7, 0($7)
	lbu	$2, 0($2)
	lbu	$3, 0($3)
	lbu	$5, 0($5)
	lbu	$6, 0($6)
	lbu	$9, 0($9)
	lbu	$10, 0($10)
	sb	$10, 0($4)
	sb	$9, 1($4)
	sb	$6, 2($4)
	sb	$5, 3($4)
	sb	$3, 4($4)
	sb	$2, 5($4)
	sb	$7, 6($4)
	sb	$8, 7($4)
	lbu	$2, 8($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 8($4)
	lbu	$2, 9($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 9($4)
	lbu	$2, 10($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 10($4)
	lbu	$2, 11($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 11($4)
	lbu	$2, 12($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 12($4)
	lbu	$2, 13($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 13($4)
	lbu	$2, 14($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 14($4)
	lbu	$2, 15($4)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	jr	$ra
	sb	$1, 15($4)
	.set	at
	.set	macro
	.set	reorder
	.end	aes_sub_bytes
$func_end0:
	.size	aes_sub_bytes, ($func_end0)-aes_sub_bytes
                                        # -- End function
	.globl	aes_inv_sub_bytes               # -- Begin function aes_inv_sub_bytes
	.p2align	2
	.type	aes_inv_sub_bytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_inv_sub_bytes
aes_inv_sub_bytes:                      # @aes_inv_sub_bytes
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lbu	$2, 5($4)
	lbu	$3, 4($4)
	lbu	$5, 3($4)
	lbu	$6, 2($4)
	lbu	$7, 6($4)
	lbu	$8, 7($4)
	lbu	$9, 1($4)
	lbu	$10, 0($4)
	lw	$1, %got(aes_inv_sub_bytes.inv_sbox)($1)
	addiu	$1, $1, %lo(aes_inv_sub_bytes.inv_sbox)
	addu	$6, $1, $6
	addu	$5, $1, $5
	addu	$3, $1, $3
	addu	$2, $1, $2
	addu	$7, $1, $7
	addu	$8, $1, $8
	addu	$9, $1, $9
	addu	$10, $1, $10
	lbu	$8, 0($8)
	lbu	$7, 0($7)
	lbu	$2, 0($2)
	lbu	$3, 0($3)
	lbu	$5, 0($5)
	lbu	$6, 0($6)
	lbu	$9, 0($9)
	lbu	$10, 0($10)
	sb	$10, 0($4)
	sb	$9, 1($4)
	sb	$6, 2($4)
	sb	$5, 3($4)
	sb	$3, 4($4)
	sb	$2, 5($4)
	sb	$7, 6($4)
	sb	$8, 7($4)
	lbu	$2, 8($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 8($4)
	lbu	$2, 9($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 9($4)
	lbu	$2, 10($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 10($4)
	lbu	$2, 11($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 11($4)
	lbu	$2, 12($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 12($4)
	lbu	$2, 13($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 13($4)
	lbu	$2, 14($4)
	addu	$2, $1, $2
	lbu	$2, 0($2)
	sb	$2, 14($4)
	lbu	$2, 15($4)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	jr	$ra
	sb	$1, 15($4)
	.set	at
	.set	macro
	.set	reorder
	.end	aes_inv_sub_bytes
$func_end1:
	.size	aes_inv_sub_bytes, ($func_end1)-aes_inv_sub_bytes
                                        # -- End function
	.type	aes_inv_sub_bytes.inv_sbox,@object # @aes_inv_sub_bytes.inv_sbox
	.section	.rodata,"a",@progbits
aes_inv_sub_bytes.inv_sbox:
	.ascii	"R\tj\32506\2458"
	.space	248
	.size	aes_inv_sub_bytes.inv_sbox, 256

	.type	sbox,@object                    # @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v"
	.space	240
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
