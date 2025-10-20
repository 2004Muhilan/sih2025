	.file	"base64_decode_urlsafe.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	base64_url_char_value
	.type	base64_url_char_value, @function
base64_url_char_value:
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	ldd r24,Y+1
	cpi r24,lo8(65)
	brlt .L2
	ldd r24,Y+1
	cpi r24,lo8(91)
	brge .L2
	ldd r24,Y+1
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,65
	sbc r25,__zero_reg__
	rjmp .L3
.L2:
	ldd r24,Y+1
	cpi r24,lo8(97)
	brlt .L4
	ldd r24,Y+1
	cpi r24,lo8(123)
	brge .L4
	ldd r24,Y+1
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,71
	sbc r25,__zero_reg__
	rjmp .L3
.L4:
	ldd r24,Y+1
	cpi r24,lo8(48)
	brlt .L5
	ldd r24,Y+1
	cpi r24,lo8(58)
	brge .L5
	ldd r24,Y+1
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	adiw r24,4
	rjmp .L3
.L5:
	ldd r24,Y+1
	cpi r24,lo8(45)
	brne .L6
	ldi r24,lo8(62)
	ldi r25,0
	rjmp .L3
.L6:
	ldd r24,Y+1
	cpi r24,lo8(95)
	brne .L7
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L3
.L7:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L3:
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	base64_url_char_value, .-base64_url_char_value
.global	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L9
.L10:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	call base64_url_char_value
	movw r20,r24
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	mov r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L9:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	tst r24
	brne .L10
	nop
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (GNU) 7.3.0"
