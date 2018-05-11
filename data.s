	.data
	.global Data1Size
	.set Data1Size, Data1End - Data1Start
	.global Data1Start
Data1Start:
	.incbin "basemain.dol", 0x2405a0, 0x8a0
	.global Data1End
Data1End:
	.section .data_d4
	.global Data4Size
	.set Data4Size, Data4End - Data4Start
	.global Data4Start
Data4Start:
	.incbin "basemain.dol", 0x240f20, 0x13420
	.global Data4End
Data4End:
	.global Data5Size
	.set Data5Size, Data5End - Data5Start
	.global Data5Start
Data5Start:
	.incbin "basemain.dol", 0x254340, 0x47aa0
	.global Data5End
Data5End:
	.global Data6Size
	.set Data6Size, Data6End - Data6Start
	.global Data6Start
Data6Start:
	.incbin "basemain.dol", 0x29bde0, 0x13c0
	.global Data6End
Data6End:
	.global Data7Size
	.set Data7Size, Data7End - Data7Start
	.global Data7Start
Data7Start:
	.incbin "basemain.dol", 0x29d1a0, 0x21a0
	.global Data7End
Data7End:
	.global DolEnd
DolEnd:
