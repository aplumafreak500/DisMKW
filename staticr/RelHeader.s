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
	.4byte ImpTable
	.4byte ImpTableSize
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
	.4byte 0, 0 # .init?
	.4byte text_start + 1, text_size # +1 is for bit 32, which marks the section as executable
	.4byte ctors_start, ctors_size
	.4byte dtors_start, dtors_size
	.4byte rodata_start, rodata_size
	.4byte data_start, data_size
	.4byte 0, 0x78b0 # Size of .bss
	# .sdata, .sbss, .sdata2, .sbss2 all 0
	# .extab, .extab_index absent
	# 4 more sections according to header
	.space 80

