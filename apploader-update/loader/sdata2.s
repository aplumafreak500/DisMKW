	.data
	.4byte 0x81358a00 # .data
	.asciz "RVA 1\n\0"
	.asciz "%08x\n\0\0"
	.asciz "%s\n"
	.asciz "OS.c\0\0\0"
	.4byte 0xffffffff, 0xffffffff, 0xf8, 0xa000000
	.asciz "%016llx"
	.asciz "%s\n"
	.4byte 0, 0xffff0000, 0, 0, 0
	.4byte 0x8133951c # .text
	.4byte 0, 0xffffffff, 0, 9, 0, 0xffffffff, 0
	.asciz "Expired" # ssl?
	.4byte 0x81366938, 0
	.4byte 0x81366980, 0
	.4byte 0x81366aa0, 1
	.4byte 0x3e7, 0x3e7, 1, 1
	.ascii "vi.c"
	.4byte 0, 1, 0, 0xff
	.4byte 0xffffffff, 0xffffffff, 0xffffffff
	.4byte 0x40102, 0x80102, 0xc0102, 0
	.4byte 1, 0
	.4byte 0x81367588, 1
	.4byte 0x8134511c
	.asciz "dvd.c"
	.2byte 0
	.4byte 0xffffffff, 1, 0xffffff00, 0xffffffff, 0
	.asciz "/dev/di"
	.4byte 0x81368ea0
	.asciz "/"
	.2byte 0
	.4byte 0
	.asciz "."
	.2byte 0
	.asciz "..\0"
	.asciz "/%s"
	.asciz "%s/%s"
	.2byte 0
	.4byte 0xffffff01, 0
	.4byte 0x81369038

	# Sysconf
	
	.asciz "IPL.CB\0"
	.asciz "IPL.AR\0"
	.4byte 0
	.asciz "IPL.ARN"
	.asciz "IPL.CD\0"
	.asciz "IPL.CD2"
	.asciz "IPL.DH\0"
	.asciz "IPL.E60"
	.asciz "IPL.FRC"
	.asciz "IPL.IDL"
	.asciz "IPL.INC"
	.asciz "IPL.LNG"
	.asciz "IPL.NIK"
	.asciz "IPL.PC\0"
	.asciz "IPL.PGS"
	.asciz "IPL.SSV"
	.asciz "IPL.SND"
	.asciz "IPL.UPT"
	.asciz "NET.CNF"
	.asciz "DEV.BTM"
	.asciz "DEV.VIM"
	.asciz "DEV.CTC"
	.asciz "DEV.DSM"
	.asciz "BT.DINF"
	.asciz "BT.CDIF"
	.asciz "BT.SENS"
	.asciz "BT.SPKV"
	.asciz "BT.MOT\0"
	.asciz "BT.BAR\0"
	.asciz "DVD.CNF"
	.asciz "WWW.RST"
	.ascii "SCv0"
	.4byte 0
	.ascii "SCed"
	.4byte 0
	.ascii "AREA"
	.4byte 0
	.ascii "GAME"
	.4byte 0
	.4byte 0xffffffff, 0
	.asciz "/dev/es" # tickets
	.4byte 1, 0xffffffff, 0xffffffff, 0
	.asciz "/dev/fs" # nand
	.4byte 0xfffffffe
	
	# eof
	
	.space 12
	
