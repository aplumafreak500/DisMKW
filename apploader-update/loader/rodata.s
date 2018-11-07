	.data
	
	# table of pointers, all in .data
	
	.global gUnknown_0
gUnknown_0:
	.4byte 0x81367928, 0x813679b8, 0x81367a58, 0x81367b10
	.4byte 0x81367bb4, 0x81367c60, 0x81367d0c, 0x81367928
	.4byte 0x81367d9c, 0x81367a58, 0x81367b10, 0x81367bb4
	.4byte 0x81367c60, 0x81367d0c, 0x81367e38, 0x81367e74
	.4byte 0x81367eac, 0x81367eec, 0x81367f28, 0x81367f64
	.4byte 0x81367fa0
	
	.space 12
	
	# idk
	
	.global gUnknown_94
gUnknown_94:
	.incbin "baseapploader-update.img", 0x297fc, 0x140
	
	.global SysconfStr
SysconfStr:
	.ascii "/shared2/sys/SYSCONF"
	.4byte 0
	
	.global SettingTxtStr
SettingTxtStr:
	.asciz "/title/00000001/00000002/data/setting.txt"
	
	.space 14

	.4byte 0x41f00000, 0, 0x41e00000, 0
	
	# Powers of 5
	.asciz "542101086242752217003726400434970855712890625"
	.asciz "11102230246251565404236316680908203125"
	.asciz "23283064365386962890625"
	.asciz "152587890625"
	.asciz "390625"
	.asciz "78125"
	.asciz "15625"
	.asciz "3125"
	.asciz "625"
	.asciz "125"
	.asciz "25"
	.asciz "5"
	
	# Powers of 2
	.asciz "1"
	.asciz "2"
	.asciz "4"
	.asciz "8"
	.asciz "16"
	.asciz "32"
	.asciz "64"
	.asciz "128"
	.asciz "256"
	
	.ascii "179769313486231580793728714053034151"
	
	.4byte 0
	
	.incbin "baseapploader-update.img", 0x29a7c, 0x100
	
	.space 256
	
	# bytes 0x00 - 0xff repeated
	.incbin "baseapploader-update.img", 0x29c7c, 0x200
	
	# format strings for dates/times
	.asciz "%a %b %e %T %Y\0"
	.asciz "%I:%M:%S %p"
	.ascii "%m/%d/%y"
	.4byte 0
	
	# days of the week
	.ascii "Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday"
	.4byte 0
	
	# months of the year
	.asciz "Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December"
	.2byte 0
	
	.asciz "0x0p0"
	
	.asciz "-INF"
	.asciz "-inf"
	.asciz "INF"
	.asciz "inf"
	.asciz "-NAN"
	.asciz "-nan"
	.asciz "NAN"
	.asciz "nan"
	
	.space 6
	
	.incbin "baseapploader-update.img", 0x29fb4, 0x100
	
	.space 256
	
	# UTF16-BE 0x00-0xff
	
	.incbin "baseapploader-update.img", 0x2a1b4, 0x400
	
	# eof
	
	.space 8
	
