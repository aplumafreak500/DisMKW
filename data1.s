	.data
	.global Data1Size
	.set Data1Size, Data1End - Data1Start
	.global Data1Start
Data1Start:
	.incbin "basemain.dol", 0x2405a0, 0x8a0
	.global Data1End
Data1End:
