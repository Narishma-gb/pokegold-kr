ItemPocketNames:
; entries correspond to item type constants
	table_width 2
	dw .Item
	dw .Key
	dw .Ball
	dw .TM
	assert_table_length NUM_ITEM_TYPES

.Item: db "도구 포켓@"
.Key:  db "중요한 포켓@"
.Ball: db "볼 포켓@"
.TM:   db "기술머신 포켓@"
