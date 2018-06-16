	.data
	.global Data7Size
	.set Data7Size, Data7End - Data7Start
	.global Data7Start
Data7Start:
	.incbin "basemain.dol", 0x29d1a0, 0x60
	.global gUnknown_60
gUnknown_60: # 0x80382c80
	.4byte 0
	.global gUnknown_64
gUnknown_64: # 0x80382c84
	.4byte 0
	.incbin "basemain.dol", 0x29d208, 0x2138
	.global Data7End
Data7End:
	.global DolEnd
DolEnd:
