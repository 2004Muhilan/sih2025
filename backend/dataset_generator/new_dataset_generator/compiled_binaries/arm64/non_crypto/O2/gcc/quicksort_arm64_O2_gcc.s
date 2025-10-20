	.arch armv8-a
	.file	"quicksort.c"
	.text
	.align	2
	.p2align 4,,11
	.global	swap
	.type	swap, %function
swap:
.LFB0:
	.cfi_startproc
	ldr	w3, [x1]
	ldr	w2, [x0]
	str	w3, [x0]
	str	w2, [x1]
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.align	2
	.p2align 4,,11
	.global	partition
	.type	partition, %function
partition:
.LFB1:
	.cfi_startproc
	sxtw	x8, w2
	mov	x3, x0
	sub	w4, w1, #1
	ldr	w6, [x0, x8, lsl 2]
	cmp	w2, w1
	ble	.L7
	sxtw	x1, w1
	.p2align 3,,7
.L6:
	ldr	w0, [x3, x1, lsl 2]
	cmp	w0, w6
	bge	.L5
	add	w4, w4, 1
	sxtw	x5, w4
	ldr	w7, [x3, x5, lsl 2]
	str	w0, [x3, x5, lsl 2]
	str	w7, [x3, x1, lsl 2]
.L5:
	add	x1, x1, 1
	cmp	w2, w1
	bgt	.L6
	add	w0, w4, 1
	sxtw	x4, w4
	add	x4, x4, 1
	ldr	w6, [x3, x8, lsl 2]
	ldr	w1, [x3, x4, lsl 2]
	str	w6, [x3, x4, lsl 2]
	str	w1, [x3, x8, lsl 2]
	ret
	.p2align 2,,3
.L7:
	sxtw	x4, w4
	mov	w0, w1
	add	x4, x4, 1
	ldr	w1, [x3, x4, lsl 2]
	str	w6, [x3, x4, lsl 2]
	str	w1, [x3, x8, lsl 2]
	ret
	.cfi_endproc
.LFE1:
	.size	partition, .-partition
	.align	2
	.p2align 4,,11
	.global	quicksort
	.type	quicksort, %function
quicksort:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	w2, [sp, 108]
	cmp	w2, w1
	ble	.L9
	mov	w9, w1
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -120
	.cfi_offset 19, -128
	mov	x19, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -72
	.cfi_offset 25, -80
.L27:
	ldr	w2, [sp, 108]
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w26, w0, #1
	str	w0, [sp, 112]
	cmp	w26, w9
	ble	.L11
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -104
	.cfi_offset 21, -112
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -56
	.cfi_offset 27, -64
.L26:
	mov	w2, w26
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w27, w0, #1
	str	w0, [sp, 116]
	cmp	w27, w9
	ble	.L12
.L25:
	mov	w2, w27
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w28, w0, #1
	str	w0, [sp, 120]
	cmp	w28, w9
	ble	.L13
.L24:
	mov	w2, w28
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w22, w0, #1
	str	w0, [sp, 124]
	cmp	w22, w9
	ble	.L14
.L23:
	mov	w2, w22
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w21, w0, #1
	mov	w20, w0
	cmp	w21, w9
	ble	.L15
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -88
	.cfi_offset 23, -96
.L22:
	mov	w2, w21
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w25, w0, #1
	mov	w23, w0
	cmp	w25, w9
	ble	.L16
.L21:
	mov	w2, w25
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w24, w0, #1
	str	w0, [sp, 128]
	cmp	w24, w9
	ble	.L17
.L20:
	mov	w2, w24
	mov	w1, w9
	mov	x0, x19
	bl	partition
	sub	w4, w0, #1
	mov	w3, w0
	cmp	w4, w9
	ble	.L18
.L19:
	mov	w2, w4
	mov	w1, w9
	mov	x0, x19
	stp	w4, w3, [sp, 136]
	bl	partition
	mov	w1, w9
	mov	w9, w0
	sub	w2, w9, #1
	mov	x0, x19
	str	w9, [sp, 132]
	bl	quicksort
	ldp	w9, w4, [sp, 132]
	ldr	w3, [sp, 140]
	add	w9, w9, 1
	cmp	w4, w9
	bgt	.L19
.L18:
	add	w9, w3, 1
	cmp	w24, w9
	bgt	.L20
.L17:
	ldr	w0, [sp, 128]
	add	w9, w0, 1
	cmp	w25, w9
	bgt	.L21
.L16:
	add	w9, w23, 1
	cmp	w21, w9
	bgt	.L22
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
.L15:
	add	w9, w20, 1
	cmp	w22, w9
	bgt	.L23
.L14:
	ldr	w0, [sp, 124]
	add	w9, w0, 1
	cmp	w28, w9
	bgt	.L24
.L13:
	ldr	w0, [sp, 120]
	add	w9, w0, 1
	cmp	w27, w9
	bgt	.L25
.L12:
	ldr	w0, [sp, 116]
	add	w9, w0, 1
	cmp	w26, w9
	bgt	.L26
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
.L11:
	ldr	w0, [sp, 112]
	add	w9, w0, 1
	ldr	w0, [sp, 108]
	cmp	w9, w0
	blt	.L27
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L9:
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
