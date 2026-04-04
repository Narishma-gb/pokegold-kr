StatNames:
; entries correspond to stat ids
	list_start STRING_BUFFER_LENGTH - 1
	li "공격력"
	li "방어력"
	li "스피드"
	li "특수공격"
	li "특수방어"
	li "명중률"
	li "회피율"
	li "능력" ; used for BattleCommand_Curse
	assert_list_length NUM_LEVEL_STATS
