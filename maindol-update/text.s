	.text
	.global TextSize
	.set TextSize, TextEnd - TextStart
	.global TextStart
TextStart:
	li %r0, 0
	stw %r0, -0x8000(%r13)
	blr
	.space 20
	.global TextEnd
TextEnd:
