	.data
	.ifdef USE_GECKO
	.global GCT_Codelist
GCT_Codelist:
	.incbin "maindol/RMCE01.gct"
	.endif
