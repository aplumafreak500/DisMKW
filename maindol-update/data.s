	.data
	.global DataSize
	.set DataSize, DataEnd - DataStart
	.global DataStart
DataStart:
	.4byte 1
	.space 28
	.global DataEnd
DataEnd:
