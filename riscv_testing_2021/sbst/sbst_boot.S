	.section .text
	.global _sbst_boot
	.type _sbst_boot, @function

_sbst_boot:
	//add sp, sp, 16		// this creates space in the stack

	lui	a0, %hi(__TEST_DATA_START)
	addi	a0, a0, %lo(__TEST_DATA_START)
	
	// TODO: preserve all non-volatile registers (use section .TEST_DATA)
	lw		x1, 0(TEST_DATA)
	lw		x2, 8(TEST_DATA)
	lw		x3, 16(TEST_DATA)
	lw		x4, 24(TEST_DATA)
	lw		x5, 32(TEST_DATA)
	lw		x6, 40(TEST_DATA)
	lw		x7, 48(TEST_DATA)
	lw		x8, 56(TEST_DATA)
	lw		x9, 64(TEST_DATA)
	lw		x10, 72(TEST_DATA)
	lw		x11, 80(TEST_DATA)
	lw		x12, 88(TEST_DATA)
	lw		x13, 96(TEST_DATA)
	lw		x14, 104(TEST_DATA)
	lw		x15, 112(TEST_DATA)
	lw		x16, 120(TEST_DATA)
	lw		x17, 128(TEST_DATA)
	lw		x18, 136(TEST_DATA)
	lw		x19, 144(TEST_DATA)	
	lw		x20, 152(TEST_DATA)
	lw		x21, 160(TEST_DATA)
	lw		x22, 168(TEST_DATA)
	lw		x23, 174(TEST_DATA)
	lw		x24, 182(TEST_DATA)
	lw		x25, 190(TEST_DATA)
	lw		x26, 198(TEST_DATA)
	lw		x27, 206(TEST_DATA)
	lw		x28, 214(TEST_DATA)
	lw		x29, 222(TEST_DATA)
	lw		x30, 230(TEST_DATA)
	lw		x31, 238(TEST_DATA)
	
	// TODO: disable interrupts (if they were enabled)
	
	

	// here are some random instructions...
	la		t0, RF_PATTERNS
	lw		t1,	0*4(t0)  	
	lw		t2,	1*4(t0)

	// here I used tX registers, you should do it for all x1-x31

	// write the result (check label 'test_result') 
	
	// TODO: restore non-volatile registers
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
