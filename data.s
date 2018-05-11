	.data
	.global Data1Size
	.set Data1Size, Data2Start - Data1Start
	.global Data1Start
Data1Start:
	.incbin "basemain.dol", 0x2405a0, 0x8a0
	.global Data2Size
	.set Data2Size, Data3Start - Data2Start
	.global Data2Start
Data2Start:
	# some sort of table
	.4byte 0x80020684
	.4byte 0x8000998c
	.4byte 0x80027a10
	.4byte 0x80035890
	.4byte 0x800364e0
	.4byte 0x80038010
	.4byte 0x8003e180
	.4byte 0x80064820
	.4byte 0x80079860
	.4byte 0x8007b270
	.4byte 0x8007cb80
	.4byte 0x8007f190
	.4byte 0x8007f260
	.4byte 0x8008f8c0
	.4byte 0x8009ac00
	.4byte 0x8009db00
	.4byte 0x800a4440
	.4byte 0x800a8d30
	.4byte 0x800ad7b0
	.4byte 0x800afe40
	.4byte 0x800affc0
	.4byte 0x800b0600
	.4byte 0x800b09f0
	.4byte 0x800b16e0
	.4byte 0x800b18b0
	.4byte 0x800bba50
	.4byte 0x80180658
	.4byte 0x801868ac
	.4byte 0x80186de0
	.4byte 0x801884cc
	.4byte 0x8018a97c
	.4byte 0x8018f618
	.4byte 0x80212f98
	.4byte 0x80214510
	.4byte 0x802179a0
	.4byte 0x8021c23c
	.4byte 0x802242a0
	.4byte 0x80227fb0
	.4byte 0x802291b8
	.4byte 0x80230090
	.4byte 0x8023e37c
	.4byte 0x8023e3b8
	.4byte 0x80242d2c
	.space 20
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
