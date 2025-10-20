	.file	"base64_encode_standard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.text
.global	base64_encode_standard
	.type	base64_encode_standard, @function
base64_encode_standard:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 26 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+22,r25
	std Y+21,r24
	std Y+24,r23
	std Y+23,r22
	std Y+26,r21
	std Y+25,r20
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L2
.L9:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+23
	ldd r25,Y+24
	cp r18,r24
	cpc r19,r25
	brsh .L3
	ldd r24,Y+1
	ldd r25,Y+2
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	std Y+2,r19
	std Y+1,r18
	ldd r18,Y+21
	ldd r19,Y+22
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L4
.L3:
	ldi r24,0
	ldi r25,0
	movw r26,r24
.L4:
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+23
	ldd r25,Y+24
	cp r18,r24
	cpc r19,r25
	brsh .L5
	ldd r24,Y+1
	ldd r25,Y+2
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	std Y+2,r19
	std Y+1,r18
	ldd r18,Y+21
	ldd r19,Y+22
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L6
.L5:
	ldi r24,0
	ldi r25,0
	movw r26,r24
.L6:
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
	std Y+12,r27
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+23
	ldd r25,Y+24
	cp r18,r24
	cpc r19,r25
	brsh .L7
	ldd r24,Y+1
	ldd r25,Y+2
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	std Y+2,r19
	std Y+1,r18
	ldd r18,Y+21
	ldd r19,Y+22
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r26,0
	ldi r27,0
	rjmp .L8
.L7:
	ldi r24,0
	ldi r25,0
	movw r26,r24
.L8:
	std Y+13,r24
	std Y+14,r25
	std Y+15,r26
	std Y+16,r27
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	movw r20,r24
	clr r19
	clr r18
	ldd r24,Y+9
	ldd r25,Y+10
	ldd r26,Y+11
	ldd r27,Y+12
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r20,Y+15
	ldd r21,Y+16
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	std Y+17,r24
	std Y+18,r25
	std Y+19,r26
	std Y+20,r27
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	mov r0,r23
	ldi r23,18
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+3
	ldd r19,Y+4
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	ldd r20,Y+25
	ldd r21,Y+26
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	mov r0,r23
	ldi r23,12
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+3
	ldd r19,Y+4
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	ldd r20,Y+25
	ldd r21,Y+26
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	set
	bld __zero_reg__,6-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+3
	ldd r19,Y+4
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	ldd r20,Y+25
	ldd r21,Y+26
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
	ldd r24,Y+17
	ldd r25,Y+18
	ldd r26,Y+19
	ldd r27,Y+20
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+3
	ldd r19,Y+4
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+4,r21
	std Y+3,r20
	ldd r20,Y+25
	ldd r21,Y+26
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
.L2:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+23
	ldd r25,Y+24
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L9
	nop
/* epilogue start */
	adiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	base64_encode_standard, .-base64_encode_standard
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
