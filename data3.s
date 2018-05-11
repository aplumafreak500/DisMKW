	.data
	.global Data3Size
	.set Data3Size, Data3End - Data3Start
	.global Data3Start
Data3Start:
	.4byte 0x800207f0
	.4byte 0x800206c0
	.space 24
	.global Data3End
Data3End:
