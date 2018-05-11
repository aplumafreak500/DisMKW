	.text
	.global StaticRRel
StaticRRel:
	.4byte 1 # ID
	.4byte 0 # Next module
	.4byte 0 # Prev module
	.4byte 0x11 # num of sections
	.4byte gSectionTable
	.4byte 0 # Name offset, not used in MKW but is used in Brawl
	.4byte 0x3A # Size of the name. Why is this even set if the name is absent?
	.4byte 3 # Version of the format
	.4byte 0x78b0 # Size of .bss section
	.4byte gRelocTable
	.4byte gImpTable
	.4byte gImpTableSize
	.byte 1 # Index into section table which prolog is relative to. Skip if this field is 0.
	.byte 1 # Index into section table which epilog is relative to. Skip if this field is 0.
	.byte 1 # Index into section table which unresolved is relative to. Skip if this field is 0.
	.byte 0
	.4byte 0x432c8
	.4byte 0x43314
	.4byte 0x4335c
	.4byte 0x20 # Alignment
	.4byte 0x20 # Alignment of .bss
	.4byte 0x3ccd2c # FixSize, unknown
	.global gSectionTable
gSectionTable:
	.4byte 0, 0
	.4byte Section1Start + 1, Section1Size # +1 is for bit 32, which marks the section as executable
	.4byte Section2Start, Section2Size
	.4byte Section3Start, Section3Size
	.4byte Section4Start, Section4Size
	.4byte Section5Start, Section5Size
	.4byte 0, 0x78b0 # Size of .bss
	.space 80

