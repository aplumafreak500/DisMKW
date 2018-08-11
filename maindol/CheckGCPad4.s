	.text
	.global sub_2068
sub_2068:
	lis %r3, GCNPort4DebugState@h
	lhz %r0, GCNPort4DebugState@l(%r3)
	andi. %r0, %r0, 0xeef
	cmpwi %r0, 0xeef
	bnelr
	.global sub_207c
sub_207c:
	li %r3, 0
	li %r4, 0
	li %r5, 0
	b t1_1a1720
	blr
