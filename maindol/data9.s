	.data
	.global Data9Size
	.set Data9Size, Data9End - Data9Start
	.global Data9Start
Data9Start:
	.ifdef USE_GECKO
	.global GCT_Codelist
GCT_Codelist:
	.incbin "maindol/RMCE01.gct"
	.endif
	.global Data9End
Data9End:
