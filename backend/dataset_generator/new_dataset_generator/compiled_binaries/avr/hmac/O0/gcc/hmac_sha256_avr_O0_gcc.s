	.file	"hmac_sha256.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,-114
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 142 */
/* stack size = 146 */
.L__stack_usage = 146
	movw r30,r28
	subi r30,123
	sbci r31,-1
	std Z+1,r25
	st Z,r24
	movw r24,r28
	subi r24,121
	sbci r25,-1
	movw r30,r24
	std Z+1,r23
	st Z,r22
	movw r24,r28
	subi r24,119
	sbci r25,-1
	movw r30,r24
	std Z+1,r21
	st Z,r20
	movw r24,r28
	subi r24,117
	sbci r25,-1
	movw r30,r24
	std Z+1,r19
	st Z,r18
	movw r24,r28
	subi r24,115
	sbci r25,-1
	movw r30,r24
	std Z+1,r17
	st Z,r16
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L7:
	movw r24,r28
	subi r24,121
	sbci r25,-1
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brsh .L3
	movw r24,r28
	subi r24,123
	sbci r25,-1
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r25,Z
	ldi r24,lo8(54)
	mov r20,r25
	eor r20,r24
	rjmp .L4
.L3:
	ldi r20,lo8(54)
.L4:
	movw r18,r28
	subi r18,-5
	sbci r19,-1
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,r20
	movw r24,r28
	subi r24,121
	sbci r25,-1
	ldd r18,Y+1
	ldd r19,Y+2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brsh .L5
	movw r24,r28
	subi r24,123
	sbci r25,-1
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r25,Z
	ldi r24,lo8(92)
	mov r20,r25
	eor r20,r24
	rjmp .L6
.L5:
	ldi r20,lo8(92)
.L6:
	movw r18,r28
	subi r18,-69
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
	cpi r24,64
	cpc r25,__zero_reg__
	brsh .+2
	rjmp .L7
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L8
.L9:
	movw r18,r28
	subi r18,-5
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r21,Z
	movw r18,r28
	subi r18,-69
	sbci r19,-1
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r24,Y+3
	ldd r25,Y+4
	movw r18,r28
	subi r18,115
	sbci r19,-1
	movw r30,r18
	ld r18,Z
	ldd r19,Z+1
	add r24,r18
	adc r25,r19
	mov r18,r21
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L8:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,32
	brlt .L9
	nop
/* epilogue start */
	subi r28,114
	sbci r29,-1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (GNU) 7.3.0"
