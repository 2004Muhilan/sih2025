	.file	"tinycrypt_hmac_prng.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	2
	.type	MIN_SLEN, @object
	.size	MIN_SLEN, 4
MIN_SLEN:
	.word	32
	.align	2
	.type	MAX_SLEN, @object
	.size	MAX_SLEN, 4
MAX_SLEN:
	.word	-1
	.align	2
	.type	MAX_PLEN, @object
	.size	MAX_PLEN, 4
MAX_PLEN:
	.word	-1
	.align	2
	.type	MAX_ALEN, @object
	.size	MAX_ALEN, 4
MAX_ALEN:
	.word	-1
	.align	2
	.type	MAX_GENS, @object
	.size	MAX_GENS, 4
MAX_GENS:
	.word	-1
	.align	2
	.type	MAX_OUT, @object
	.size	MAX_OUT, 4
MAX_OUT:
	.word	524288
	.text
	.align	1
	.type	update, @function
update:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sd	a3,-64(s0)
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sb	zero,-26(s0)
	li	a5,1
	sb	a5,-25(s0)
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,240
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_set_key@plt
	ld	a5,-40(s0)
	mv	a0,a5
	call	tc_hmac_init@plt
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,272
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_update@plt
	ld	a5,-40(s0)
	addi	a4,s0,-26
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	tc_hmac_update@plt
	ld	a5,-48(s0)
	beq	a5,zero,.L2
	lw	a5,-52(s0)
	sext.w	a5,a5
	beq	a5,zero,.L2
	ld	a5,-40(s0)
	lw	a4,-52(s0)
	mv	a2,a4
	ld	a1,-48(s0)
	mv	a0,a5
	call	tc_hmac_update@plt
.L2:
	ld	a5,-64(s0)
	beq	a5,zero,.L3
	lw	a5,-56(s0)
	sext.w	a5,a5
	beq	a5,zero,.L3
	ld	a5,-40(s0)
	lw	a4,-56(s0)
	mv	a2,a4
	ld	a1,-64(s0)
	mv	a0,a5
	call	tc_hmac_update@plt
.L3:
	ld	a5,-40(s0)
	addi	a5,a5,240
	ld	a4,-40(s0)
	mv	a2,a4
	li	a1,32
	mv	a0,a5
	call	tc_hmac_final@plt
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,240
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_set_key@plt
	ld	a5,-40(s0)
	mv	a0,a5
	call	tc_hmac_init@plt
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,272
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_update@plt
	ld	a5,-40(s0)
	addi	a5,a5,272
	ld	a4,-40(s0)
	mv	a2,a4
	li	a1,32
	mv	a0,a5
	call	tc_hmac_final@plt
	ld	a5,-48(s0)
	beq	a5,zero,.L9
	lw	a5,-52(s0)
	sext.w	a5,a5
	beq	a5,zero,.L9
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,240
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_set_key@plt
	ld	a5,-40(s0)
	mv	a0,a5
	call	tc_hmac_init@plt
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,272
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_update@plt
	ld	a5,-40(s0)
	addi	a4,s0,-25
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	tc_hmac_update@plt
	ld	a5,-40(s0)
	lw	a4,-52(s0)
	mv	a2,a4
	ld	a1,-48(s0)
	mv	a0,a5
	call	tc_hmac_update@plt
	ld	a5,-64(s0)
	beq	a5,zero,.L7
	lw	a5,-56(s0)
	sext.w	a5,a5
	beq	a5,zero,.L7
	ld	a5,-40(s0)
	lw	a4,-56(s0)
	mv	a2,a4
	ld	a1,-64(s0)
	mv	a0,a5
	call	tc_hmac_update@plt
.L7:
	ld	a5,-40(s0)
	addi	a5,a5,240
	ld	a4,-40(s0)
	mv	a2,a4
	li	a1,32
	mv	a0,a5
	call	tc_hmac_final@plt
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,240
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_set_key@plt
	ld	a5,-40(s0)
	mv	a0,a5
	call	tc_hmac_init@plt
	ld	a4,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,272
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_update@plt
	ld	a5,-40(s0)
	addi	a5,a5,272
	ld	a4,-40(s0)
	mv	a2,a4
	li	a1,32
	mv	a0,a5
	call	tc_hmac_final@plt
	j	.L1
.L9:
	nop
.L1:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	update, .-update
	.align	1
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	mv	a5,a2
	sw	a5,-36(s0)
	ld	a5,-24(s0)
	beq	a5,zero,.L11
	ld	a5,-32(s0)
	beq	a5,zero,.L11
	li	a4,-1
	lw	a5,-36(s0)
	sext.w	a5,a5
	bleu	a5,a4,.L12
.L11:
	li	a5,0
	j	.L13
.L12:
	ld	a5,-24(s0)
	addi	a5,a5,240
	li	a2,32
	li	a1,0
	mv	a0,a5
	call	_set@plt
	ld	a5,-24(s0)
	addi	a5,a5,272
	li	a2,32
	li	a1,1
	mv	a0,a5
	call	_set@plt
	lw	a5,-36(s0)
	li	a4,0
	li	a3,0
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	update
	ld	a5,-24(s0)
	sw	zero,304(a5)
	li	a5,1
.L13:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	1
	.globl	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	mv	a5,a2
	sd	a3,-48(s0)
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	ld	a5,-24(s0)
	beq	a5,zero,.L15
	ld	a5,-32(s0)
	beq	a5,zero,.L15
	li	a4,32
	lw	a5,-36(s0)
	sext.w	a5,a5
	bltu	a5,a4,.L15
	li	a4,-1
	lw	a5,-36(s0)
	sext.w	a5,a5
	bleu	a5,a4,.L16
.L15:
	li	a5,0
	j	.L17
.L16:
	ld	a5,-48(s0)
	beq	a5,zero,.L18
	lw	a5,-40(s0)
	sext.w	a5,a5
	beq	a5,zero,.L19
	li	a4,-1
	lw	a5,-40(s0)
	sext.w	a5,a5
	bleu	a5,a4,.L20
.L19:
	li	a5,0
	j	.L17
.L20:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	ld	a3,-48(s0)
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	update
	j	.L21
.L18:
	lw	a5,-36(s0)
	li	a4,0
	li	a3,0
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	update
.L21:
	li	a4,-1
	ld	a5,-24(s0)
	sw	a4,304(a5)
	li	a5,1
.L17:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	1
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	beq	a5,zero,.L23
	ld	a5,-56(s0)
	beq	a5,zero,.L23
	lw	a5,-44(s0)
	sext.w	a5,a5
	beq	a5,zero,.L23
	li	a4,524288
	lw	a5,-44(s0)
	sext.w	a5,a5
	bleu	a5,a4,.L24
.L23:
	li	a5,0
	j	.L25
.L24:
	ld	a5,-56(s0)
	lw	a5,304(a5)
	bne	a5,zero,.L26
	li	a5,-1
	j	.L25
.L26:
	ld	a5,-56(s0)
	lw	a5,304(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	ld	a5,-56(s0)
	sw	a4,304(a5)
	j	.L27
.L30:
	ld	a4,-56(s0)
	ld	a5,-56(s0)
	addi	a5,a5,240
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_set_key@plt
	ld	a5,-56(s0)
	mv	a0,a5
	call	tc_hmac_init@plt
	ld	a4,-56(s0)
	ld	a5,-56(s0)
	addi	a5,a5,272
	li	a2,32
	mv	a1,a5
	mv	a0,a4
	call	tc_hmac_update@plt
	ld	a5,-56(s0)
	addi	a5,a5,272
	ld	a4,-56(s0)
	mv	a2,a4
	li	a1,32
	mv	a0,a5
	call	tc_hmac_final@plt
	lw	a5,-44(s0)
	sext.w	a3,a5
	li	a4,32
	bleu	a3,a4,.L28
	li	a5,32
.L28:
	sw	a5,-20(s0)
	ld	a5,-56(s0)
	addi	a4,a5,272
	lw	a3,-20(s0)
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-40(s0)
	call	_copy@plt
	lwu	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	sd	a5,-40(s0)
	lw	a5,-44(s0)
	sext.w	a3,a5
	li	a4,32
	bgeu	a3,a4,.L29
	li	a5,32
.L29:
	sext.w	a5,a5
	addiw	a5,a5,-32
	sw	a5,-44(s0)
.L27:
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L30
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	ld	a0,-56(s0)
	call	update
	li	a5,1
.L25:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
