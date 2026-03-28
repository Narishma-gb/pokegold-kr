FinalConsonantTable:
	kr_struct 0, 0, FINAL_GIYEOK
	kr_struct 0, 0, FINAL_NIEUN
	kr_struct 0, 0, FINAL_DIGEUT
	kr_struct 0, 0, FINAL_RIEUL
	kr_struct 0, 0, FINAL_MIEUM
	kr_struct 0, 0, FINAL_BIEUP
	kr_struct 0, 0, FINAL_SIOT
	kr_struct 0, 0, FINAL_IEUNG
	kr_struct 0, 0, FINAL_JIEUT
	kr_struct 0, 0, FINAL_CHIEUT
	kr_struct 0, 0, FINAL_KIEUK
	kr_struct 0, 0, FINAL_TIEUT
	kr_struct 0, 0, FINAL_PIEUP
	kr_struct 0, 0, FINAL_HIEUT
	kr_struct 0, 0, FINAL_SSANGGIYEOK
	kr_struct 0, 0, FINAL_SSANGDIGEUT
	kr_struct 0, 0, FINAL_SSANGBIEUP
	kr_struct 0, 0, FINAL_SSANGSIOT
	kr_struct 0, 0, FINAL_SSANGJIEUT

NewVowelRemainingConsonantTable:
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

NewVowelGrabConsonantTable:
	table_width 1
	db 0 ; padding
	db INITIAL_GIYEOK
	db INITIAL_SSANGGIYEOK
	db INITIAL_SIOT
	db INITIAL_NIEUN
	db INITIAL_JIEUT
	db INITIAL_HIEUT
	db INITIAL_DIGEUT
	db INITIAL_RIEUL
	db INITIAL_GIYEOK
	db INITIAL_MIEUM
	db INITIAL_BIEUP
	db INITIAL_SIOT
	db INITIAL_TIEUT
	db INITIAL_PIEUP
	db INITIAL_HIEUT
	db INITIAL_MIEUM
	db INITIAL_BIEUP
	db INITIAL_SIOT
	db INITIAL_SIOT
	db INITIAL_SSANGSIOT
	db INITIAL_IEUNG
	db INITIAL_JIEUT
	db INITIAL_CHIEUT
	db INITIAL_KIEUK
	db INITIAL_TIEUT
	db INITIAL_PIEUP
	db INITIAL_HIEUT
	assert_table_length NUM_FINAL_CONSONANTS + 1
