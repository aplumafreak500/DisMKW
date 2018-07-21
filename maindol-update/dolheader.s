	.text
	.global DolHeader
DolHeader:
	.4byte TextStart-DolHeader
	.space 24
	.4byte DataStart-DolHeader
	.space 40
	.4byte TextStart
	.space 24
	.4byte DataStart+0x40 # gap for .bss
	.space 40
	.4byte TextSize
	.space 24
	.4byte DataSize
	.space 40
	.4byte TextEnd+0x20
	.4byte 4          # .bss size
	.4byte TextStart
	.space 28

