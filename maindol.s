	.global DolHeader
	.text
DolHeader:
	.4byte Text0Start
	.4byte Text1Start
	.space 20
	.4byte Data0Start
	.4byte Data1Start
	.4byte Data2Start
	.4byte Data3Start
	.4byte Data4Start
	.4byte Data5Start
	.4byte Data6Start
	.4byte Data7Start
	.space 12
	.4byte 0x80004000
	.4byte 0x800072c0
	.space 20
	.4byte 0x80006460
	.4byte 0x80006a20
	.4byte 0x80244d40
	.4byte 0x80244e00
	.4byte 0x80244e40
	.4byte 0x80258260
	.4byte 0x80380880
	.4byte 0x80382c20
	.space 12
	.4byte Text0End - Text0Start
	.4byte Text1End - Text1Start
	.space 20
	.4byte Data0End - Data0Start
	.4byte Data1End - Data1Start
	.4byte Data2End - Data2Start
	.4byte Data3End - Data3Start
	.4byte Data4End - Data4Start
	.4byte Data5End - Data5Start
	.4byte Data6End - Data6Start
	.4byte Data7End - Data7Start
	.space 12
	.4byte 0x8029fd00
	.4byte 0xe50fc
	.4byte 0x800060a4
	.space 28
	.global Text0Start
Text0Start:
	.asciz "Metrowerks Target Resident Kernel for PowerPC"
	.space 210
	.incbin "basemain.dol", 0x200, 0x2360
Text0End:
	.global Text1Start
Text1Start:
	.incbin "basemain.dol", 0x2560, 0x23da80
Text1End:
	.data
	.global Data0Start
Data0Start:
	.incbin "basemain.dol", 0x23ffe0, 0x5c0
Data0End:
	.global Data1Start
Data1Start:
	.incbin "basemain.dol", 0x2405a0, 0x8a0
Data1End:
	.global Data2Start
Data2Start:
	.incbin "basemain.dol", 0x240e40, 0xc0
Data2End:
	.global Data3Start
Data3Start:
	.incbin "basemain.dol", 0x240f00, 0x20
Data3End:
	.global Data4Start
Data4Start:
	.incbin "basemain.dol", 0x240f20, 0x13420
Data4End:
	.global Data5Start
Data5Start:
	.incbin "basemain.dol", 0x254340, 0x47aa0
Data5End:
	.global Data6Start
Data6Start:
	.incbin "basemain.dol", 0x29bde0, 0x13c0
Data6End:
	.global Data7Start
Data7Start:
	.incbin "basemain.dol", 0x29d1a0, 0x21a0
Data7End:
