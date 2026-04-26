TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 2
	dw Normal
	dw Fighting
	dw Flying
	dw Poison
	dw Ground
	dw Rock
	dw Bird
	dw Bug
	dw Ghost
	dw Steel
	assert_table_length UNUSED_TYPES
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw CurseType
	assert_table_length UNUSED_TYPES_END
	dw Fire
	dw Water
	dw Grass
	dw Electric
	dw Psychic
	dw Ice
	dw Dragon
	dw Dark
	assert_table_length TYPES_END

Normal:    db "노말@"
Fighting:  db "격투@"
Flying:    db "비행@"
Poison:    db "독@"
CurseType: db "???@"
Fire:      db "화염@"
Water:     db "물@"
Grass:     db "풀@"
Electric:  db "전기@"
Psychic:   db "에스퍼@"
Ice:       db "얼음@"
Ground:    db "땅@"
Rock:      db "바위@"
Bird:      db "새@"
Bug:       db "벌레@"
Ghost:     db "고스트@"
Steel:     db "강철@"
Dragon:    db "드래곤@"
Dark:      db "악@"
