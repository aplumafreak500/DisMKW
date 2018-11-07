	.data
	.global ApploaderHeader
ApploaderHeader:
	.ascii "2007/09/26" # Build date
	.space 6
	.4byte 0x81200294 # apl_entrypoint
	.4byte Section0Size
	.4byte Section1Size
	.4byte 0
