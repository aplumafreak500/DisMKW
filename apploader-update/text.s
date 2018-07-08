	.text
	.global Apploader_Update_Text
Apploader_Update_Text:
	.incbin "baseapploader-update.img", 0x0, 0x228d4

