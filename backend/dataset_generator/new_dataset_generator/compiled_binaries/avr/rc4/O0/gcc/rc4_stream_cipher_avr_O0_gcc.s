	.file	"rc4_stream_cipher.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_stream
	.type	rc4_stream, @function
rc4_stream:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,16
	sbci r29,1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 272 */
/* stack size = 274 */
.L__stack_usage = 274
	movw r30,r28
	subi r30,-9
	sbci r31,-2
	std Z+1,r25
	st Z,r24
	movw r24,r28
	subi r24,-11
	sbci r25,-2
	movw r30,r24
	std Z+1,r23
	st Z,r22
	movw r24,r28
	subi r24,-13
	sbci r25,-2
	movw r30,r24
	std Z+1,r21
	st Z,r20
	movw r24,r28
	subi r24,-15
	sbci r25,-2
	movw r30,r24
	std Z+1,r19
	st Z,r18
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r20,Y+1
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,r20
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,-1
	cpc r25,__zero_reg__
	breq .L3
	brlt .L3
	std Y+7,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L4
.L6:
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	adiw r24,1
	andi r25,128
	tst r25
	brge .L5
	sbiw r24,1
	ori r25,255
	adiw r24,1
.L5:
	std Y+3,r24
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Y+4
	add r24,r25
	std Y+4,r24
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	std Y+8,r24
	ldd r24,Y+4
	mov r18,r24
	ldi r19,0
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	movw r20,r28
	subi r20,-9
	sbci r21,-1
	add r18,r20
	adc r19,r21
	movw r30,r18
	ld r20,Z
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,r20
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	add r24,r18
	adc r25,r19
	ldd r18,Y+8
	movw r30,r24
	st Z,r18
	movw r24,r28
	subi r24,-9
	sbci r25,-2
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r21,Z
	ldd r24,Y+3
	mov r24,r24
	ldi r25,0
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r24,Y+4
	mov r24,r24
	ldi r25,0
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	add r24,r20
	mov r24,r24
	ldi r25,0
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	movw r24,r28
	subi r24,-9
	sbci r25,-2
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+5
	ldd r25,Y+6
	add r24,r18
	adc r25,r19
	mov r18,r21
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L4:
	movw r24,r28
	subi r24,-11
	sbci r25,-2
	ldd r18,Y+5
	ldd r19,Y+6
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L6
	nop
/* epilogue start */
	subi r28,-16
	sbci r29,-2
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (GNU) 7.3.0"
