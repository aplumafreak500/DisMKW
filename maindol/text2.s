# This file is a slightly modified version of MrBean's CTGP-Code, reformatted
# for the disassembly.
	.text
	.global Text2Size
	.set Text2Size, Text2End - Text2Start
	.global Text2Start
Text2Start:
	.ifdef CTGP_CODE
	.int 0xbad0c0de	        #tag
	.int Text2Size          #length
	.int 0                  #version
	.int CTCode_Entrypoint  #entry point
	.int Text2Start	        #address
	.int Data8Start	        #bad0Data address
	.int 0	                #pad
	.int 0	                #pad
	.global CTCode_Entrypoint
CTCode_Entrypoint:
	#call reset regs
	lis %r3,InitRegs@ha
	addi %r3,%r3,InitRegs@l
	mtlr %r3
	blrl
	#call main
	bl _methodMain
	#call main for mkwii
	lis %r3,dol_entrypoint@ha
	addi %r3,%r3,dol_entrypoint@l
	mtlr %r3
	blrl
_methodCheckCanProceed:	 
	#checks if r3 is 0. If so, it returns.
	#check r3
	cmpwi %r3,0
	#branch if necessary
	bne- _methodCheckCanProceedReturn
	#method end
	lwz %r0,260(%r1)
	mtlr %r0
	lwz %r0,8(%r1)
	lmw %r2,16(%r1)
	addi %r1,%r1,256
_methodCheckCanProceedReturn:
	blr
_methodRegionCheck:
	#method start
	stwu %r1,-16(%r1)
	mflr %r0
	stw %r0,20(%r1)
	#load address
	lis %r3,0x8000
	#load region letter
	lbz %r3,3(%r3)
	#comare to Region
	cmpwi %r3,0x45
	#set r3 to 0 if not
	beq- _methodRegionCheckReturn
	li %r3,0
_methodRegionCheckReturn:
	#method end
	lwz %r0,20(%r1)
	mtlr %r0
	addi %r1,%r1,16
	blr
_methodLoadBad0Code:
	#method start
	stwu %r1,-16(%r1)
	mflr %r0
	stw %r0,20(%r1)
	#load tag
	lwz %r4,0(%r3)
	#load 0xbad0code
	lis %r5,0xbad0
	ori %r5,%r5,0xc0de
	#check correct
	cmpw %r4,%r5
	beq- _methodLoadBad0CodeTagCorrect
	li %r3,0
	b _methodLoadBad0CodeReturn
_methodLoadBad0CodeTagCorrect:
	#load version number
	lwz %r4,8(%r3)
	#check correct
	cmpwi %r4,0
	beq- _methodLoadBad0CodeVersionCorrect
	li %r3,0
	b _methodLoadBad0CodeReturn
_methodLoadBad0CodeVersionCorrect:
	#load address
	lwz %r4,16(%r3)
	#check correct
	cmpw %r4,%r3
	beq- _methodLoadBad0CodeReturn
	li %r3,0
_methodLoadBad0CodeReturn:
	#method end
	lwz %r0,20(%r1)
	mtlr %r0
	addi %r1,%r1,16
	blr
_methodLoadBad0Data:
	#method start
	stwu %r1,-16(%r1)
	mflr %r0
	stw %r0,20(%r1)
	#load address
	lwz %r3,20(%r3)
	#load tag
	lwz %r4,0(%r3)
	#load 0xBad0Da7a
	lis %r5,0xbad0
	ori %r5,%r5,0xda7a
	#check correct
	cmpw %r4,%r5
	beq- _methodLoadBad0DataTagCorrect
	li %r3,0
	b _methodLoadBad0DataReturn
_methodLoadBad0DataTagCorrect:
	#load version number
	lwz %r4,8(%r3)
	#check correct
	cmpwi %r4,0
	beq- _methodLoadBad0DataReturn
	li %r3,0 
_methodLoadBad0DataReturn:
	#method end
	lwz %r0,20(%r1)
	mtlr %r0
	addi %r1,%r1,16
	blr
_methodFindDataSection:
	#params
	#r3: bad0Data addres
	#r4: section tag
	#r5: version number
	#returns
	#r3: section address or 0
	#method start
	stwu %r1,-16(%r1)
	mflr %r0
	stw %r0,20(%r1)
	#load section count
	lwz %r6,12(%r3)
	mtctr %r6
	#initialise loop
	addi %r6,%r3,0x1c
_methodFindDataSectionSectionLoopStart:
	#find tag
	lwzu %r7,8(%r6)
	cmpw %r7,%r4
	beq- _methodFindDataSectionSectionLoopEndSuccess
	bdnz- _methodFindDataSectionSectionLoopStart
	#tag not found; error
	b _methodFindDataSectionError
_methodFindDataSectionSectionLoopEndSuccess:
	#goto section; check tag
	lwz %r6,-4(%r6)
	add %r6,%r6,%r3
	lwz %r7,0(%r6) 
	cmpw %r7,%r4
	bne- _methodFindDataSectionError
	#check version
	lwz %r7,8(%r6) 
	cmpw %r7,%r5
	bne- _methodFindDataSectionError
	#load success value
	mr %r3,%r6
	b _methodFindDataSectionReturn
_methodFindDataSectionError:
	li %r3,0
_methodFindDataSectionReturn:
	#method end
	lwz %r0,20(%r1)
	mtlr %r0
	addi %r1,%r1,16
	blr
_methodRunMod0:
	#method start
	stwu %r1,-256(%r1)
	stmw %r0,8(%r1)
	mflr %r0
	stw %r0,260(%r1)
	#store bad0Data address
	mr %r31,%r3
	#call findDataSection
	lis %r4,0x4d4f	 #MO
	ori %r4,%r4,0x4430 #D0
	li %r5,0
	bl _methodFindDataSection
	bl _methodCheckCanProceed
	#store mod0 adddress
	mr %r30,%r3
	#load mod count
	lwz %r4,12(%r30)
	mtctr %r4
	#set up loop location
	addi %r29,%r30,16
_methodRunMod0ModLoopStart:
	#load mod information
	lwzu %r3,16(%r29) #address
	lwz %r4,4(%r29)   #offset
	lwz %r5,8(%r29)   #length
	#make absoulte
	add %r4,%r4,%r30
	#call memcpy
	lis %r12,memcpy@h
	ori %r12,%r12,memcpy@l
	mtlr %r12
	blrl
	#loop
	bdnz- _methodRunMod0ModLoopStart
	#method end
	lwz %r0,260(%r1)
	mtlr %r0
	lwz %r0,8(%r1)
	lmw %r2,16(%r1)
	addi %r1,%r1,256
	blr
_methodRunBad0Data:
	#method start
	stwu %r1,-256(%r1)
	stmw %r0,8(%r1)
	mflr %r0
	stw %r0,260(%r1)
	#store bad0Data address
	mr %r31,%r3
	#call run mod0
	bl _methodRunMod0
	bl _methodCheckCanProceed
	#method end
	lwz %r0,260(%r1)
	mtlr %r0
	lwz %r0,8(%r1)
	lmw %r2,16(%r1)
	addi %r1,%r1,256
	blr
_methodMain:
	#method start
	stwu %r1,-256(%r1)
	stmw %r0,8(%r1)
	mflr %r0
	stw %r0,260(%r1)
	#call regionCheck
	bl _methodRegionCheck
	bl _methodCheckCanProceed
	#get the current location
	bl _methodMainLocationGet
_methodMainLocationGet:
	mflr %r12
	subi %r3,%r12,_methodMainLocationGet - Text2Start
	#call loadBad0Code
	bl _methodLoadBad0Code
	bl _methodCheckCanProceed
	#store bad0Code location
	mr %r31,%r3
	#call loadBad0Data
	bl _methodLoadBad0Data
	nop #bl _methodCheckCanProceed
	#store bad0Data location
	mr %r30,%r3
	#call runBad0Data
	bl _methodRunBad0Data
	bl _methodCheckCanProceed
	#return 1
	li %r3,1
	#method end
	lwz %r0,260(%r1)
	mtlr %r0
	lwz %r0,8(%r1)
	lmw %r2,16(%r1)
	addi %r1,%r1,256
	blr
	.endif
	.global Text2End
Text2End:
