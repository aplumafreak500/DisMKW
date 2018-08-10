	.text
	.global Text0Size
	.set Text0Size, Text0End - Text0Start
	.global Text0Start
Text0Start:
	.incbin "baseapploader.img", 0x20, 0x12c0
	.global Text0End
Text0End:
