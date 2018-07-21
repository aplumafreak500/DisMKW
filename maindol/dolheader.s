	.text
	.global DolHeader
DolHeader:
	.section .text0 # not to be confused with the TEX0 format
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
	.section .text1
	.4byte Text0Start # Same symbol, different value. This is due to how we link the header.
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
	.section .text2
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
	.section .text3
	.4byte bss0Start
	.4byte bssTotalSize
	.4byte dol_entrypoint
	.space 28

