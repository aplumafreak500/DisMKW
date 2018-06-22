	.data
	.global Data6Size
	.set Data6Size, Data6End - Data6Start
	.global Data6Start
Data6Start:
	.incbin "basemain.dol", 0x29bde0, 0x13c0
	.global Data6End
Data6End:
