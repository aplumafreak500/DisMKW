	.text
	.global ApploaderHeader
ApploaderHeader:
	.ascii "2007/12/06" # Build date
	.space 6
	.4byte 0x81200294 # Entry point; apploader is loaded to 0x81200000
	.4byte Section0Size
	.4byte Section1Size
	.4byte 0
