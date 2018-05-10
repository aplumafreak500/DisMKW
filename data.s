	.data
	.global Data0Size
	.set Data0Size, Data1Start - Data0Start
	.global Data0Start
Data0Start:
	.incbin "basemain.dol", 0x23ffe0, 0x5c0
	.global Data1Size
	.set Data1Size, Data2Start - Data1Start
	.global Data1Start
Data1Start:
	.incbin "basemain.dol", 0x2405a0, 0x8a0
	.global Data2Size
	.set Data2Size, Data3Start - Data2Start
	.global Data2Start
Data2Start:
	.incbin "basemain.dol", 0x240e40, 0xc0
	.global Data3Size
	.set Data3Size, Data4Start - Data3Start
	.global Data3Start
Data3Start:
	.incbin "basemain.dol", 0x240f00, 0x20
	.global Data4Size
	.set Data4Size, Data5Start - Data4Start
	.global Data4Start
Data4Start:
	.incbin "basemain.dol", 0x240f20, 0x13420
	.global Data5Size
	.set Data5Size, Data6Start - Data5Start
	.global Data5Start
Data5Start:
	.incbin "basemain.dol", 0x254340, 0x47aa0
	.global Data6Size
	.set Data6Size, Data7Start - Data6Start
	.global Data6Start
Data6Start:
	.incbin "basemain.dol", 0x29bde0, 0x13c0
	.global Data7Size
	.set Data7Size, DolEnd - Data7Start
	.global Data7Start
Data7Start:
	.incbin "basemain.dol", 0x29d1a0, 0x21a0
	.global DolEnd
DolEnd:
