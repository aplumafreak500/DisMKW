	.data
	.global Data7Size
	.set Data7Size, Data7End - Data7Start
	.global Data7Start
Data7Start:
	.incbin "basemain.dol", 0x29d1a0, 0x21a0
	.global Data7End
Data7End:
	.global DolEnd
DolEnd:
