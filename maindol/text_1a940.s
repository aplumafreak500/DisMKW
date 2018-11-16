	.text
	.global sub_1a940
sub_1a940: # 0x80021c00
	lis %r7, 0x802a
	lwz %r0, 0x28f8(%r7)
	cmpwi %r0, 0x0
	beqlr- 
	addi %r8, %r7, 0x28f8
	li %r7, 0x190
	lhz %r9, 0x8(%r8)
	subfc %r7, %r7, %r9
	subfe %r7, %r7, %r7
	addi %r7, %r7, 0x2
	cmpwi %r7, 0x2
	bne- _1a978
	slwi  %r3, %r3, 1
	slwi  %r5, %r5, 1
_1a978:
	add %r7, %r3, %r5
	srwi  %r5, %r3, 31
	cmpw %r7, %r9
	subi %r5, %r5, 0x1
	and %r8, %r3, %r5
	bgt- _1a994
	mr %r9, %r7
_1a994:
	lis %r7, 0x802a
	li %r3, 0x12c
	addi %r7, %r7, 0x28f8
	subf %r5, %r8, %r9
	lhz %r11, 0xa(%r7)
	subfc %r3, %r3, %r11
	subfe %r3, %r3, %r3
	addi %r3, %r3, 0x2
	cmpwi %r3, 0x2
	bne- _1a9c4
	slwi  %r4, %r4, 1
	slwi  %r6, %r6, 1
_1a9c4:
	add %r6, %r4, %r6
	srwi  %r3, %r4, 31
	cmpw %r6, %r11
	subi %r3, %r3, 0x1
	and %r10, %r4, %r3
	bgt- _1a9e0
	mr %r11, %r6
_1a9e0:
	lis %r9, 0x802a
	subf %r6, %r10, %r11
	addi %r9, %r9, 0x28f8
	slwi  %r7, %r8, 1
	lhz %r4, 0xc(%r9)
	li %r11, 0x0
	li %r3, 0x1080
	mullw %r8, %r4, %r10
	lis %r4, 0x8000
	slwi  %r8, %r8, 1
	add %r0, %r0, %r8
	add %r10, %r7, %r0
	b _1aac4
	nop # What???
_1aa18:
	cmpwi %cr1, %r5, 0x0
	li %r12, 0x0
	ble- cr1, _1aab0
	cmpwi %r5, 0x8
	subi %r7, %r5, 0x8
	ble- _1aa90
	li %r8, 0x0
	blt- cr1, _1aa48
	subi %r0, %r4, 0x2
	cmpw %r5, %r0
	bgt- _1aa48
	li %r8, 0x1
_1aa48:
	cmpwi %r8, 0x0
	beq- _1aa90
	addi %r0, %r7, 0x7
	srwi  %r0, %r0, 3
	mtctr %r0
	cmpwi %r7, 0x0
	ble- _1aa90
_1aa64:
	sth %r3, 0x0(%r10)
	addi %r12, %r12, 0x8
	sth %r3, 0x2(%r10)
	sth %r3, 0x4(%r10)
	sth %r3, 0x6(%r10)
	sth %r3, 0x8(%r10)
	sth %r3, 0xa(%r10)
	sth %r3, 0xc(%r10)
	sth %r3, 0xe(%r10)
	addi %r10, %r10, 0x10
	bdnz+ _1aa64
_1aa90:
	subf %r0, %r12, %r5
	mtctr %r0
	cmpw %r12, %r5
	bge- _1aab0
_1aaa0:
	sth %r3, 0x0(%r10)
	addi %r10, %r10, 0x2
	addi %r12, %r12, 0x1
	bdnz+ _1aaa0
_1aab0:
	lhz %r0, 0xc(%r9)
	addi %r11, %r11, 0x1
	subf %r0, %r5, %r0
	slwi  %r0, %r0, 1
	add %r10, %r10, %r0
_1aac4:
	cmpw %r11, %r6
	blt+ _1aa18
	blr

	.global t1_1aad0
t1_1aad0:
	.incbin "basemain.dol", 0x1d030, 0x34

