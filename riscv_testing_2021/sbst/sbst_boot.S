	.section .text
	.global _sbst_boot
	.type _sbst_boot, @function

_sbst_boot:
	//add sp, sp, 16		// this creates space in the stack

	lui	a0, %hi(__TEST_DATA_START)
	addi	a0, a0, %lo(__t0_START)
	
	// TODO: preserve all non-volatile registers (use section .TEST_DATA)
	la		t0, .TEST_DATA
	lw		x1, 0(t0)
	lw		x2, 8(t0)
	lw		x3, 16(t0)
	lw		x4, 24(t0)
	lw		x5, 32(t0)
	lw		x6, 40(t0)
	lw		x7, 48(t0)
	lw		x8, 56(t0)
	lw		x9, 64(t0)
	lw		x10, 72(t0)
	lw		x11, 80(t0)
	lw		x12, 88(t0)
	lw		x13, 96(t0)
	lw		x14, 104(t0)
	lw		x15, 112(t0)
	lw		x16, 120(t0)
	lw		x17, 128(t0)
	lw		x18, 136(t0)
	lw		x19, 144(t0)	
	lw		x20, 152(t0)
	lw		x21, 160(t0)
	lw		x22, 168(t0)
	lw		x23, 174(t0)
	lw		x24, 182(t0)
	lw		x25, 190(t0)
	lw		x26, 198(t0)
	lw		x27, 206(t0)
	lw		x28, 214(t0)
	lw		x29, 222(t0)
	lw		x30, 230(t0)
	lw		x31, 238(t0)
	
	// TODO: disable interrupts (if they were enabled)
	
	

	// here are some random instructions...
	la		t0, RF_PATTERNS
	lw		t1,	0*4(t0)  	
	lw		t2,	1*4(t0)

	// here I used tX registers, you should do it for all x1-x31
	li              x1 ,1
	li              x2 ,2
	li              x3 ,3
	li              x4 ,4
	li              x5 ,5
	li              x6 ,6
	li              x7 ,7
	li              x8 ,8
	li              x9 ,9
	li              x10 ,10
	li              x11 ,11
	li              x12 ,12
	li              x13 ,13
	li              x14 ,14
	li              x15 ,15
	li              x16 ,16
	li              x17 ,17
	li              x18 ,18
	li              x19 ,19
	li              x20 ,20
	li              x21 ,21
	li              x22 ,22
	li              x23 ,23
	li              x24 ,24
	li              x25 ,25
	li              x26 ,26
	li              x27 ,27
	li              x28 ,28
	li              x29 ,29
	li              x30 ,30
	li              x31 ,31

	add             x2 ,x2 ,x1
	add             x3 ,x3 ,x2
	add             x4 ,x4 ,x3
	add             x5 ,x5 ,x4
	add             x6 ,x6 ,x5
	add             x7 ,x7 ,x6
	add             x8 ,x8 ,x7
	add             x9 ,x9 ,x8
	add             x10 ,x10 ,x9
	add             x11 ,x11 ,x10
	add             x12 ,x12 ,x11
	add             x13 ,x13 ,x12
	add             x14 ,x14 ,x13
	add             x15 ,x15 ,x14
	add             x16 ,x16 ,x15
	add             x17 ,x17 ,x16
	add             x18 ,x18 ,x17
	add             x19 ,x19 ,x18
	add             x20 ,x20 ,x19
	add             x21 ,x21 ,x20
	add             x22 ,x22 ,x21
	add             x23 ,x23 ,x22
	add             x24 ,x24 ,x23
	add             x25 ,x25 ,x24
	add             x26 ,x26 ,x25
	add             x27 ,x27 ,x26
	add             x28 ,x28 ,x27
	add             x29 ,x29 ,x28
	add             x30 ,x30 ,x29
	add             x31 ,x31 ,x30
	add             x32 ,x32 ,x31


	// write the result (check label 'test_result') 
	sw				x32, .TEST_RESULT

	// TODO: restore non-volatile registers
	sw              x1, 8(t0)
	sw              x2, 16(t0)
	sw              x3, 24(t0)
	sw              x4, 32(t0)
	sw              x5, 40(t0)
	sw              x6, 48(t0)
	sw              x7, 56(t0)
	sw              x8, 64(t0)
	sw              x9, 72(t0)
	sw              x10, 80(t0)
	sw              x11, 88(t0)
	sw              x12, 96(t0)
	sw              x13, 104(t0)
	sw              x14, 112(t0)
	sw              x15, 120(t0)
	sw              x16, 128(t0)
	sw              x17, 136(t0)
	sw              x18, 144(t0)
	sw              x19, 152(t0)
	sw              x20, 160(t0)
	sw              x21, 168(t0)
	sw              x22, 176(t0)
	sw              x23, 184(t0)
	sw              x24, 192(t0)
	sw              x25, 200(t0)
	sw              x26, 208(t0)
	sw              x27, 216(t0)
	sw              x28, 224(t0)
	sw              x29, 232(t0)
	sw              x30, 240(t0)
	sw              x31, 248(t0)

	// TODO: restore interrupts (if they were active before!)
	ret


// -------------------------------------
	.section ".TEST_DATA", "aw"
	.global test_result

test_result:
	.space 4
// Examples:
//variable1:	(4 * 4bytes)
//	.space 0x10
//variable2:
//	.space 4

// -------------------------------------
	.section ".TEST_RODATA", "a"

RF_PATTERNS:
	.long 0x12345678
	.long 0xcafecafe
	.long 0xdeadbeef

OTHER_PATTERNS:
	.long 0x0
	.long 0x0
