	# I have absolutely no idea why devkitPPC powerpc-none-eabi-as doesn't like these particular instructions.
	.macro psq_st reg, val, reg2, unk1, unk2
	.4byte (60 << 26) | ((\reg & 0x1f) << 21) | ((\reg2 & 0x1f) << 16) | ((\unk1 & 0x1) << 15) | ((\unk2 & 0x7) << 12) | (\val & 0xfff)
	.endm
	
	.macro psq_l reg, val, reg2, unk1, unk2
	.4byte (56 << 26) | ((\reg & 0x1f) << 21) | ((\reg2 & 0x1f) << 16) | ((\unk1 & 0x1) << 15) | ((\unk2 & 0x7) << 12) | (\val & 0xfff)
	.endm
