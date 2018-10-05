	.data
	.global gUnknown_0
gUnknown_0:
	.4byte 0x80244e40
	.4byte 0x80244e5c
	.4byte 0x80244e78
	.4byte 0x80244e94
	.4byte 0x80244eb0
	.4byte 0x80244ed0
	.4byte 0x80244eec
	.4byte 0
	.4byte 0x80244f08
	.4byte 0x80244f1c
	.4byte 0x80244f2c
	.4byte 0x80244f40
	.4byte 0
	.4byte 0
	.4byte sub_188
	.4byte 0x800079d0
	.4byte 0x80007bc8
	.4byte sub_218
	.4byte 0x80007f2c
	.4byte 0x80007f3c
	.4byte 0x80007f38
	.4byte 0x80007f34
	.4byte 0
	.4byte 0
	.4byte sub_130
	.4byte 0x80007f4c
	.4byte 0x80007f48
	.4byte 0x80007f44
	.4byte 0x80007f40
	.4byte 0x80007f3c
	.4byte 0x80007f38
	.4byte 0x80007f34
	
	.global ObjectNotValidStr
ObjectNotValidStr:
	.asciz "%s::%s: Object not valid."
	.2byte 0
	
	.4byte 0
	
	.global G3DRestexACStr
G3DRestexACStr:
	.asciz "g3d_restex_ac.h"
	
	.global ObjectNotValidStr2
ObjectNotValidStr2:
	.asciz "%s::%s: Object not valid."
	.2byte 0
	
	.4byte 0
	
	.global G3DRestexACStr2
G3DRestexACStr2:
	.asciz "g3d_restex_ac.h"

	.global NW4RFailedAssertion
NW4RFailedAssertion:
	.asciz "NW4R:Failed assertion !((u32)p & 0x1f)\0"
	
	.global G3DResfileACStr
G3DResfileACStr:
	.ascii "g3d_resfile_ac.h"
	
	.4byte 0
	.4byte 0
	
	.global UnkBRFNT_120
UnkBRFNT_120:
	.incbin "maindol/unk_data_120.brfnt"
	
	# sub_218 accesses the middle of this BRFNT for some reason.
	# Maybe it's accessing the individual character images? I don't know.
	
	.global gUnknown_10000
	.set gUnknown_10000, UnkBRFNT_120 + 0xfee0
	
	.global gUnknown_10020
	.set gUnknown_10020, UnkBRFNT_120 + 0xff00
	
	.global gUnknown_10030
	.set gUnknown_10030, UnkBRFNT_120 + 0xff10
	
	.global gUnknown_10058
	.set gUnknown_10058, UnkBRFNT_120 + 0xff38
	
	.global gUnknown_10080
	.set gUnknown_10080, UnkBRFNT_120 + 0xff60
	
	.global gUnknown_100a0
	.set gUnknown_100a0, UnkBRFNT_120 + 0xff80
	
	.global gUnknown_100b0
	.set gUnknown_100b0, UnkBRFNT_120 + 0xff90
	
	.global gUnknown_100d0
	.set gUnknown_100d0, UnkBRFNT_120 + 0xffb0
	
	.global gUnknown_100e0
	.set gUnknown_100e0, UnkBRFNT_120 + 0xffc0
	
	.global gUnknown_10108
	.set gUnknown_10108, UnkBRFNT_120 + 0xffe8
	
	.global NW4RPointerErrorStr
NW4RPointerErrorStr:
	.asciz "NW4R:Pointer Error\nstr(=%p) is not valid pointer."
	.2byte 0
	
	.global TextWriterBaseStr
TextWriterBaseStr:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr2
NW4RPointerErrorStr2:
	.asciz "NW4R:Pointer Error\nthis(=%p) is not valid pointer.\0"
	
	.global TextWriterBaseStr2
TextWriterBaseStr2:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr3
NW4RPointerErrorStr3:
	.asciz "NW4R:Pointer Error\nstr(=%p) is not valid pointer."
	.2byte 0
	
	.global TextWriterBaseStr3
TextWriterBaseStr3:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr4
NW4RPointerErrorStr4:
	.asciz "NW4R:Pointer Error\nthis(=%p) is not valid pointer.\0"
	
	.global TextWriterBaseStr4
TextWriterBaseStr4:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr5
NW4RPointerErrorStr5:
	.asciz "NW4R:Pointer Error\nstr(=%p) is not valid pointer."
	.2byte 0
	
	.global TextWriterBaseStr5
TextWriterBaseStr5:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr6
NW4RPointerErrorStr6:
	.asciz "NW4R:Pointer Error\nthis(=%p) is not valid pointer.\0"
	
	.global TextWriterBaseStr7
TextWriterBaseStr7:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr7
NW4RPointerErrorStr7:
	.ascii "NW4R:Pointer Error\nthis(=%p) is not valid pointer."
	.2byte 0
	
	.global TextWriterBaseStr8
TextWriterBaseStr8:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr8
NW4RPointerErrorStr8:
	.ascii "NW4R:Pointer Error\nthis(=%p) is not valid pointer."
	.2byte 0
	
	.global TextWriterBaseStr9
TextWriterBaseStr9:
	.ascii "TextWriterBase.h"
	.4byte 0
	
	.global NW4RPointerErrorStr9
NW4RPointerErrorStr9:
	.ascii "NW4R:Pointer Error\n& font(=%p) is not valid pointer."
	.4byte 0
	
	.global CharWriterStr
CharWriterStr:
	.ascii "CharWriter.h"
	.4byte 0
	
	.global NW4RPointerErrorStr10
NW4RPointerErrorStr10:
	.asciz "NW4R:Pointer Error\nthis(=%p) is not valid pointer.\0"
	
	.global CharWriterStr2
CharWriterStr2:
	.ascii "CharWriter.h"
	.4byte 0
	
	.global NW4RPointerErrorStr11
NW4RPointerErrorStr11:
	.asciz "NW4R:Pointer Error\nthis(=%p) is not valid pointer.\0"
	
	.global CharWriterStr3
CharWriterStr3:
	.ascii "CharWriter.h"
	.4byte 0
	
	.global NW4RPointerErrorStr12
NW4RPointerErrorStr12:
	.asciz "NW4R:Pointer Error\nthis(=%p) is not valid pointer.\0"
	
	.global CharWriterStr4
CharWriterStr4:
	.ascii "CharWriter.h"

	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

	.global d5_14628
d5_14628:
	.incbin "basemain.dol", 0x268968, 0x33478

