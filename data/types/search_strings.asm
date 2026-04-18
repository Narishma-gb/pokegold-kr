PokedexTypeSearchStrings:
; entries correspond with PokedexTypeSearchConversionTable (see data/types/search_types.asm)
	table_width POKEDEX_TYPE_STRING_LENGTH
	db "없음<SP>@"
	db "노말<SP>@"
	db "화염<SP>@"
	db "물<SP><SP>@"
	db "풀<SP><SP>@"
	db "전기<SP>@"
	db "얼음<SP>@"
	db "격투<SP>@"
	db "독<SP><SP>@"
	db "땅<SP><SP>@"
	db "비행<SP>@"
	db "에스퍼@"
	db "벌레<SP>@"
	db "바위<SP>@"
	db "고스트@"
	db "드래곤@"
	db "악<SP><SP>@"
	db "강철<SP>@"
	assert_table_length NUM_TYPES + 1
