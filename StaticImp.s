	.data
	.global gImpTableSize
	.set gImpTableSize, gImpTableEnd-gImpTable
	.global gImpTable
gImpTable:
	.4byte 1 # StaticR.rel
	.4byte gRelocTable
	.4byte 0 # main.dol
	.4byte gRelocTableMainDol
	.global gImpTableEnd
gImpTableEnd:
