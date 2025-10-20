	.file	"hmac_verify.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
.LFB0:
	.cfi_startproc
	beq	a2,zero,.L8
	addi	a5,a2,-1
	li	a4,10
	bleu	a5,a4,.L3
	or	a5,a1,a0
	andi	a5,a5,7
	beq	a5,zero,.L12
.L3:
	add	a2,a0,a2
	li	a5,0
.L6:
	lbu	a4,0(a1)
	lbu	a3,0(a0)
	addi	a0,a0,1
	addi	a1,a1,1
	xor	a4,a4,a3
	or	a5,a5,a4
	bne	a0,a2,.L6
.L7:
	seqz	a0,a5
	ret
.L12:
	andi	t1,a2,-8
	mv	a5,a0
	mv	a6,a1
	add	t3,a0,t1
	li	a3,0
.L4:
	ld	a4,0(a6)
	ld	a7,0(a5)
	addi	a5,a5,8
	addi	a6,a6,8
	xor	a4,a4,a7
	or	a3,a4,a3
	bne	t3,a5,.L4
	srli	a5,a3,8
	srli	a4,a3,16
	or	a5,a3,a5
	or	a5,a5,a4
	srli	a4,a3,24
	or	a5,a5,a4
	srli	a4,a3,32
	or	a5,a5,a4
	srli	a4,a3,40
	or	a5,a5,a4
	srli	a4,a3,48
	or	a5,a5,a4
	srli	a3,a3,56
	or	a5,a5,a3
	andi	a5,a5,0xff
	beq	a2,t1,.L7
	add	a4,a1,t1
	lbu	a6,0(a4)
	lbu	a3,0(t3)
	addi	a4,t1,1
	xor	a3,a3,a6
	or	a5,a5,a3
	bleu	a2,a4,.L7
	add	a3,a0,a4
	add	a4,a1,a4
	lbu	a6,0(a4)
	lbu	a3,0(a3)
	addi	a4,t1,2
	xor	a3,a3,a6
	or	a5,a5,a3
	bleu	a2,a4,.L7
	add	a3,a0,a4
	add	a4,a1,a4
	lbu	a6,0(a4)
	lbu	a3,0(a3)
	addi	a4,t1,3
	xor	a3,a3,a6
	or	a5,a5,a3
	bleu	a2,a4,.L7
	add	a3,a0,a4
	add	a4,a1,a4
	lbu	a6,0(a4)
	lbu	a3,0(a3)
	addi	a4,t1,4
	xor	a3,a3,a6
	or	a5,a5,a3
	bleu	a2,a4,.L7
	add	a3,a0,a4
	add	a4,a1,a4
	lbu	a6,0(a4)
	lbu	a3,0(a3)
	addi	a4,t1,5
	xor	a3,a3,a6
	or	a5,a5,a3
	bleu	a2,a4,.L7
	add	a3,a0,a4
	add	a4,a1,a4
	lbu	a3,0(a3)
	lbu	a4,0(a4)
	addi	t1,t1,6
	xor	a4,a3,a4
	or	a5,a5,a4
	bleu	a2,t1,.L7
	add	a0,a0,t1
	add	t1,a1,t1
	lbu	a4,0(a0)
	lbu	a3,0(t1)
	xor	a4,a4,a3
	or	a5,a5,a4
	seqz	a0,a5
	ret
.L8:
	li	a0,1
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
