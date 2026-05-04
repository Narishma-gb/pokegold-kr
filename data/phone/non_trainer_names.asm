NonTrainerCallerNames:
; entries correspond to PHONECONTACT_* constants (see constants/trainer_constants.asm)
	table_width 2
	dw .none
	dw .mom
	dw .bikeshop
	dw .bill
	dw .elm
	assert_table_length NUM_NONTRAINER_PHONECONTACTS + 1

.none:     db "<-><-><-><-><-><-><-><-><-><->@"
.mom:      db "어머니@"
.bill:     db "이수재@"
.elm:      db "공박사@"
.bikeshop: db "미라클 사이클 주인@"
