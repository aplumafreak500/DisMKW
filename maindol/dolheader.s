	.text
	.global DolHeader
DolHeader:
	.section .text0 # not to be confused with the TEX0 format
	.4byte Text0Start
	.4byte Text1Start
	.ifdef CTGP_CODE
	.4byte Text2Start
	.ifdef USE_GECKO
	.4byte Text3Start
	.space 12
	.else
	.space 16
	.endif
	.else
	.ifdef USE_GECKO
	.4byte Text3Start
	.space 16
	.else
	.space 20
	.endif
	.endif
	.4byte Data0Start
	.4byte Data1Start
	.4byte Data2Start
	.4byte Data3Start
	.4byte Data4Start
	.4byte Data5Start
	.4byte Data6Start
	.4byte Data7Start
	.ifdef CTGP_CODE
	.4byte Data8Start
	.ifdef USE_GECKO
	.4byte Data9Start
	.space 4
	.else
	.space 8
	.endif
	.else
	.ifdef USE_GECKO
	.4byte Data9Start
	.space 8
	.else
	.space 12
	.endif
	.endif
	.section .text1
	.4byte Text0Start # Same symbol, different value. This is due to how we link the header.
	.4byte Text1Start
	.ifdef CTGP_CODE
	.4byte Text2Start
	.ifdef USE_GECKO
	.4byte Text3Start
	.space 12
	.else
	.space 16
	.endif
	.else
	.ifdef USE_GECKO
	.4byte Text3Start
	.space 16
	.else
	.space 20
	.endif
	.endif
	.4byte Data0Start
	.4byte Data1Start
	.4byte Data2Start
	.4byte Data3Start
	.4byte Data4Start
	.4byte Data5Start
	.4byte Data6Start
	.4byte Data7Start
	.ifdef CTGP_CODE
	.4byte Data8Start
	.ifdef USE_GECKO
	.4byte Data9Start
	.space 4
	.else
	.space 8
	.endif
	.else
	.ifdef USE_GECKO
	.4byte Data9Start
	.space 8
	.else
	.space 12
	.endif
	.endif
	.4byte Text0Size
	.4byte Text1Size
	.ifdef CTGP_CODE
	.4byte Text2Size
	.ifdef USE_GECKO
	.4byte Text3Size
	.space 12
	.else
	.space 16
	.endif
	.else
	.ifdef USE_GECKO
	.4byte Text3Size
	.space 16
	.else
	.space 20
	.endif
	.endif
	.4byte Data0Size
	.4byte Data1Size
	.4byte Data2Size
	.4byte Data3Size
	.4byte Data4Size
	.4byte Data5Size
	.4byte Data6Size
	.4byte Data7Size
	.ifdef CTGP_CODE
	.4byte Data8Size
	.ifdef USE_GECKO
	.4byte Data9Size
	.space 4
	.else
	.space 8
	.endif
	.else
	.ifdef USE_GECKO
	.4byte Data9Size
	.space 8
	.else
	.space 12
	.endif
	.endif
	.4byte bss0Start
	.4byte bssTotalSize
	.ifdef CTGP_CODE
	.4byte CTCode_Entrypoint
	.else
	.4byte dol_entrypoint
	.endif
	.space 28

