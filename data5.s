	.data
	.global Data5Size
	.set Data5Size, Data5End - Data5Start
	.global Data5Start
Data5Start:
	.incbin "basemain.dol", 0x254340, 0x47aa0
	.global Data5End
Data5End:
