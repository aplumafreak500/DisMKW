OUTPUT_ARCH(powerpc)
SECTIONS
{
	.text :
	ALIGN(4)
	{
		StaticRHeader.o(.text);
		Static1.o(.text);
	} = 0

	.data :
	ALIGN(4)
	{
		Static2.o(.data);
		Static3.o(.data);
		Static4.o(.data);
		Static5.o(.data);
		StaticImp.o(.data);
		StaticReloc.o(.data);
		StaticRelocMainDol.o(.data);
	}
	.bss :
	ALIGN(4)
	{
	} = 0

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}

