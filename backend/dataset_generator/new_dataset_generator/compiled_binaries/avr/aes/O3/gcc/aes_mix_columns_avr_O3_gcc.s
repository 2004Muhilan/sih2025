	.file	"aes_mix_columns.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r21,Z+1
	ldd r19,Z+2
	ldd r20,Z+3
	mov r22,r24
	lsl r22
	sbrs r24,7
	rjmp .L2
	ldi r25,lo8(27)
	eor r22,r25
.L2:
	mov r26,r21
	lsl r26
	sbrs r21,7
	rjmp .L3
	ldi r25,lo8(27)
	eor r26,r25
.L3:
	mov r18,r21
	eor r18,r19
	eor r18,r20
	eor r18,r22
	eor r18,r26
	st Z,r18
	mov r25,r24
	eor r25,r19
	mov r23,r19
	lsl r23
	sbrs r19,7
	rjmp .L4
	ldi r18,lo8(27)
	eor r23,r18
.L4:
	eor r25,r20
	eor r25,r26
	eor r25,r23
	std Z+1,r25
	eor r24,r21
	mov r25,r24
	eor r25,r20
	mov r18,r20
	lsl r18
	sbrs r20,7
	rjmp .L5
	ldi r20,lo8(27)
	eor r18,r20
.L5:
	eor r25,r23
	eor r25,r18
	std Z+2,r25
	eor r24,r19
	eor r24,r22
	eor r24,r18
	std Z+3,r24
	ldd r25,Z+4
	ldd r21,Z+5
	ldd r24,Z+6
	ldd r20,Z+7
	mov r22,r25
	lsl r22
	sbrs r25,7
	rjmp .L6
	ldi r18,lo8(27)
	eor r22,r18
.L6:
	mov r26,r21
	lsl r26
	sbrs r21,7
	rjmp .L7
	ldi r18,lo8(27)
	eor r26,r18
.L7:
	mov r19,r21
	eor r19,r24
	eor r19,r20
	eor r19,r22
	eor r19,r26
	std Z+4,r19
	mov r18,r25
	eor r18,r24
	mov r23,r24
	lsl r23
	sbrs r24,7
	rjmp .L8
	ldi r19,lo8(27)
	eor r23,r19
.L8:
	eor r18,r20
	eor r18,r26
	eor r18,r23
	std Z+5,r18
	eor r25,r21
	mov r18,r20
	eor r18,r25
	mov r19,r20
	lsl r19
	sbrs r20,7
	rjmp .L9
	ldi r20,lo8(27)
	eor r19,r20
.L9:
	eor r18,r23
	eor r18,r19
	std Z+6,r18
	eor r24,r25
	eor r24,r22
	eor r24,r19
	std Z+7,r24
	ldd r25,Z+8
	ldd r21,Z+9
	ldd r24,Z+10
	ldd r20,Z+11
	mov r22,r25
	lsl r22
	sbrs r25,7
	rjmp .L10
	ldi r18,lo8(27)
	eor r22,r18
.L10:
	mov r26,r21
	lsl r26
	sbrs r21,7
	rjmp .L11
	ldi r18,lo8(27)
	eor r26,r18
.L11:
	mov r19,r21
	eor r19,r24
	eor r19,r20
	eor r19,r22
	eor r19,r26
	std Z+8,r19
	mov r18,r25
	eor r18,r24
	mov r23,r24
	lsl r23
	sbrs r24,7
	rjmp .L12
	ldi r19,lo8(27)
	eor r23,r19
.L12:
	eor r18,r20
	eor r18,r26
	eor r18,r23
	std Z+9,r18
	eor r25,r21
	mov r18,r20
	eor r18,r25
	mov r19,r20
	lsl r19
	sbrs r20,7
	rjmp .L13
	ldi r20,lo8(27)
	eor r19,r20
.L13:
	eor r18,r23
	eor r18,r19
	std Z+10,r18
	eor r24,r25
	eor r24,r22
	eor r24,r19
	std Z+11,r24
	ldd r21,Z+12
	ldd r25,Z+13
	ldd r24,Z+14
	ldd r20,Z+15
	mov r22,r21
	lsl r22
	sbrs r21,7
	rjmp .L14
	ldi r18,lo8(27)
	eor r22,r18
.L14:
	mov r23,r25
	lsl r23
	sbrs r25,7
	rjmp .L15
	ldi r18,lo8(27)
	eor r23,r18
.L15:
	mov r19,r24
	eor r19,r25
	eor r19,r20
	eor r19,r22
	eor r19,r23
	std Z+12,r19
	mov r18,r24
	eor r18,r21
	mov r19,r24
	lsl r19
	sbrs r24,7
	rjmp .L16
	ldi r26,lo8(27)
	eor r19,r26
.L16:
	eor r18,r20
	eor r18,r23
	eor r18,r19
	std Z+13,r18
	eor r25,r21
	mov r21,r25
	eor r21,r20
	mov r18,r20
	lsl r18
	sbrs r20,7
	rjmp .L17
	ldi r20,lo8(27)
	eor r18,r20
.L17:
	eor r19,r21
	eor r19,r18
	std Z+14,r19
	eor r24,r25
	eor r24,r22
	eor r24,r18
	std Z+15,r24
/* epilogue start */
	ret
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (GNU) 7.3.0"
