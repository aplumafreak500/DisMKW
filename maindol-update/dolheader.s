	.text
	.global DolHeader
DolHeader:
	.4byte TextStart
	.space 24
	.4byte DataStart
	.space 40
	.4byte 0x80004000 # load addresses
	.space 24
	.4byte 0x80004060
	.space 40
	.4byte TextSize
	.space 24
	.4byte DataSize
	.space 40
	.4byte 0x80004040 # .bss offset
	.4byte 4          # .bss size
	.4byte 0x80004000 # entrypoint pointer
	.space 28

