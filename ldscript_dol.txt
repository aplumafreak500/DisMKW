OUTPUT_ARCH(powerpc)
SECTIONS
{
	DolHeader :
	ALIGN(4)
	{
		dolheader.o(.text);
	}
	.text :
	ALIGN(4)
	{
		text0.o(.text);
		text1.o(.text);
	} 

	.data :
	ALIGN(4)
	{
		data0.o(.data);
		data1.o(.data);
		data2.o(.data);
		data3.o(.data);
		data4.o(.data);
		data5.o(.data);
		data6.o(.data);
		data7.o(.data);
	}
	.bss :
	ALIGN(4)
	{
	}

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}

