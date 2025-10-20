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
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r30,r24
	movw r26,r24
	adiw r26,16
	ldi r28,lo8(27)
.L30:
	ld r25,Z
	ldd r29,Z+1
	ldd r17,Z+2
	ldd r19,Z+3
	mov r22,r25
	ldi r20,lo8(8)
	ldi r21,0
	ldi r18,lo8(2)
	ldi r16,0
.L2:
	mov r24,r22
	lsl r24
	sbrc r22,7
	eor r24,r28
.L4:
	lsr r18
	subi r20,1
	sbc r21,__zero_reg__
	breq .L65
	cpse r18,__zero_reg__
	eor r16,r24
.L3:
	mov r22,r24
	rjmp .L2
.L65:
	mov r18,r29
	ldi r20,lo8(8)
	ldi r21,0
	ldi r23,0
	ldi r24,lo8(3)
	rjmp .L8
.L31:
	mov r18,r22
	lsr r24
	subi r20,1
	sbc r21,__zero_reg__
	breq .L66
.L8:
	sbrc r24,0
	eor r23,r18
.L6:
	mov r22,r18
	lsl r22
	sbrs r18,7
	rjmp .L31
	mov r18,r22
	eor r18,r28
	lsr r24
	subi r20,1
	sbc r21,__zero_reg__
	brne .L8
.L66:
	mov r24,r17
	eor r24,r19
	eor r16,r24
	eor r23,r16
	st Z,r23
	mov r22,r29
	ldi r20,lo8(8)
	ldi r21,0
	ldi r18,lo8(2)
	ldi r23,0
.L9:
	mov r24,r22
	lsl r24
	sbrc r22,7
	eor r24,r28
.L11:
	lsr r18
	subi r20,1
	sbc r21,__zero_reg__
	breq .L67
	cpse r18,__zero_reg__
	eor r23,r24
.L10:
	mov r22,r24
	rjmp .L9
.L67:
	mov r15,r25
	eor r15,r19
	mov r18,r17
	ldi r20,lo8(8)
	ldi r21,0
	ldi r16,0
	ldi r24,lo8(3)
	rjmp .L15
.L32:
	mov r18,r22
	lsr r24
	subi r20,1
	sbc r21,__zero_reg__
	breq .L68
.L15:
	sbrc r24,0
	eor r16,r18
.L13:
	mov r22,r18
	lsl r22
	sbrs r18,7
	rjmp .L32
	mov r18,r22
	eor r18,r28
	lsr r24
	subi r20,1
	sbc r21,__zero_reg__
	brne .L15
.L68:
	eor r23,r15
	eor r23,r16
	std Z+1,r23
	mov r16,r25
	eor r16,r29
	mov r22,r17
	ldi r20,lo8(8)
	ldi r21,0
	ldi r18,lo8(2)
	ldi r23,0
.L16:
	mov r24,r22
	lsl r24
	sbrc r22,7
	eor r24,r28
.L18:
	lsr r18
	subi r20,1
	sbc r21,__zero_reg__
	breq .L69
	cpse r18,__zero_reg__
	eor r23,r24
.L17:
	mov r22,r24
	rjmp .L16
.L69:
	eor r16,r23
	mov r18,r19
	ldi r22,lo8(8)
	ldi r23,0
	ldi r21,0
	ldi r20,lo8(3)
	rjmp .L22
.L33:
	mov r18,r24
	lsr r20
	subi r22,1
	sbc r23,__zero_reg__
	breq .L70
.L22:
	sbrc r20,0
	eor r21,r18
.L20:
	mov r24,r18
	lsl r24
	sbrs r18,7
	rjmp .L33
	mov r18,r24
	eor r18,r28
	lsr r20
	subi r22,1
	sbc r23,__zero_reg__
	brne .L22
.L70:
	eor r21,r16
	std Z+2,r21
	ldi r20,lo8(8)
	ldi r21,0
	ldi r22,0
	ldi r18,lo8(3)
	rjmp .L25
.L34:
	mov r25,r24
	lsr r18
	subi r20,1
	sbc r21,__zero_reg__
	breq .L71
.L25:
	sbrc r18,0
	eor r22,r25
.L23:
	mov r24,r25
	lsl r24
	sbrs r25,7
	rjmp .L34
	mov r25,r24
	eor r25,r28
	lsr r18
	subi r20,1
	sbc r21,__zero_reg__
	brne .L25
.L71:
	eor r29,r17
	eor r29,r22
	ldi r20,lo8(8)
	ldi r21,0
	ldi r25,lo8(2)
	ldi r17,0
.L26:
	mov r24,r19
	lsl r24
	sbrc r19,7
	eor r24,r28
.L28:
	lsr r25
	subi r20,1
	sbc r21,__zero_reg__
	breq .L72
	cpse r25,__zero_reg__
	eor r17,r24
.L27:
	mov r19,r24
	rjmp .L26
.L72:
	eor r29,r17
	std Z+3,r29
	adiw r30,4
	cp r30,r26
	cpc r31,r27
	breq .+2
	rjmp .L30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (GNU) 7.3.0"
