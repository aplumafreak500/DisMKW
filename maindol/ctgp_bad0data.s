	.data
	.ifdef CTGP_CODE
bad0data_header:
	.4byte 0xbad0da7a
	.int bad0data_size              #length
	.int 0                          #version
	.int 1                          #section count
	.int bad0data_start             #bad0data address
	.int 0                          #padding
	.int 0                          #padding
	.int 0                          #padding
	#Write contents
	.int mod0Header-bad0data_header
	.ascii "MOD0"
	.space 24
mod0Header:
	.ascii "MOD0"
	.int mod0_end-mod0Header
	.int 0
	.int ( table_end - table_start ) / 16
	.int 0
	.int 0
	.int 0
	.int 0
table_start:
	.int 0x8004c00c
	.int _mod0Start-mod0Header
	.int mod0_mod_start-_mod0Start
	.int 0
	.int 0x80004040
	.int mod0_mod_start-mod0Header
	.int mod_mod0_texture-mod0_mod_start
	.int 0
	.int StrapImageStrings
	.int mod_mod0_texture-mod0Header
	.int mod0_end-mod_mod0_texture
	.int 0
table_end:
	.global _mod0Start
_mod0Start:
	b -0x47fcc
.global mod0_mod_start
mod0_mod_start:
	stwu %r1,-256(%r1)
	stmw %r0,8(%r1)
	mflr %r0
	stw %r0,260(%r1)
	lwz %r12,76(%r3)
	add %r12,%r3,%r12
	mtlr %r12
	blrl
 	lis %r0,0x4800
	ori %r0,%r0,0x0008
	lis %r3,0x8004
	ori %r3,%r3,0xc00c
	stw %r0,0(%r3)
	li %r4,0
	icbi %r3,%r4
	lwz %r0,260(%r1)
	mtlr %r0
	lmw %r2,16(%r1)
	lwz %r0,8(%r1)
	addi %r1,%r1,256
	b 0x47f84
	.global mod_mod0_texture
mod_mod0_texture:
	.asciz "CTGP_CODE\0\0\0\0\0\0\0\0\0\0"
	.asciz "CTGP_CODE\0\0\0\0\0\0"
	.asciz "CTGP_CODE\0\0\0\0\0\0\0\0\0\0"
	.asciz "CTGP_CODE"
mod0_end:
	.4byte 0
	.2byte 0
	.endif
