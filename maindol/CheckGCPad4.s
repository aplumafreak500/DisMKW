	.text
	.global CheckGCPort4State
CheckGCPort4State:
	lis %r3, GCNPort4DebugState@h
	lhz %r0, GCNPort4DebugState@l(%r3)
	andi. %r0, %r0, 0xeef
	cmpwi %r0, 0xeef
	bnelr
	li %r3, 0
	li %r4, 0
	li %r5, 0
	b t1_1a1720
	blr
