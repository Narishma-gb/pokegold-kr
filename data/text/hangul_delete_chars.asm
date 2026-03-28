DeleteLastConsonantTable:
; This table is identical to NewVowelRemainingConsonantTable
	table_width 1
	db 0 ; padding
	ds 2, 0
	db FINAL_GIYEOK << 2
	db 0
	ds 2, FINAL_NIEUN << 2
	ds 2, 0
	ds 7, FINAL_RIEUL << 2
	ds 2, 0
	db FINAL_BIEUP << 2
	ds 9, 0
	assert_table_length NUM_FINAL_CONSONANTS + 1

InitialConsonantJamoTable:
	db " ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ"
