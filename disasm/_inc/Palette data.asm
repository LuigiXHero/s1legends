Pal_SegaBG:    incbin    pallet\sega_bg.bin
Pal_Title:    incbin    pallet\title.bin
Pal_LevelSel:    incbin    pallet\levelsel.bin
	if WarmPaletteMod=1	;Mercury Warm Palette Mod
Pal_Sonic:	incbin	pallet\sonicW.bin
Pal_GHZ:    incbin    pallet\ghzW.bin
Pal_LZ:  incbin    pallet\lzW.bin
Pal_LZWater:    incbin    pallet\lz_uwW.bin; LZ underwater pallets
Pal_MZ:  incbin    pallet\mzW.bin
Pal_SLZ:    incbin    pallet\slzW.bin
	else
Pal_Sonic:	incbin	pallet\sonic.bin
Pal_GHZ:    incbin    pallet\ghz.bin
Pal_LZ:  incbin    pallet\lz.bin
Pal_LZWater:    incbin    pallet\lz_uw.bin; LZ underwater pallets
Pal_MZ:  incbin    pallet\mz.bin
Pal_SLZ:    incbin    pallet\slz.bin
	endc
Pal_SYZ:    incbin    pallet\syz.bin
Pal_SBZ1:    incbin    pallet\sbz_act1.bin; SBZ act 1 pallets
Pal_SBZ2:    incbin    pallet\sbz_act2.bin; SBZ act 2 & Final Zone pallets
Pal_Special:    incbin    pallet\special.bin; special stage pallets
Pal_SBZ3:    incbin    pallet\sbz_act3.bin; SBZ act 3 pallets
Pal_SBZ3Water:    incbin    pallet\sbz_a3uw.bin; SBZ act 3 (underwater) pallets
Pal_LZSonWater:    incbin    pallet\son_lzuw.bin; Sonic (underwater in LZ) pallet
Pal_SBZ3SonWat:    incbin    pallet\son_sbzu.bin; Sonic (underwater in SBZ act 3) pallet
Pal_SpeResult:    incbin    pallet\ssresult.bin; special stage results screen pallets
Pal_SpeContinue:incbin    pallet\sscontin.bin; special stage results screen continue pallet
Pal_Ending:    incbin    pallet\ending.bin; ending sequence pallets