	.text
	.global DolHeader
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
	.4byte 0x80004000 # load addresses
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
	.4byte Text0Size
	.4byte Text1Size
	.space 20
	.4byte Data0Size
	.4byte Data1Size
	.4byte Data2Size
	.4byte Data3Size
	.4byte Data4Size
	.4byte Data5Size
	.4byte Data6Size
	.4byte Data7Size
	.space 12
	.4byte 0x8029fd00 # .bss offset
	.4byte 0xe50fc    # .bss size
	.4byte 0x800060a4 # entrypoint pointer
	.space 28

