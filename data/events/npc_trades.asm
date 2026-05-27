MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3
	dname \4, NAME_LENGTH
	db \5, \6, \7
	dw \8
	dname \9, NAME_LENGTH
	db \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH
	npctrade TRADE_DIALOGSET_COLLECTOR, DROWZEE,    MACHOP,     "근육",   $37, $66, GOLD_BERRY,   37460, "청수", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "덜덜이", $96, $66, BITTER_BERRY, 48926, "수빈", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "찌릭",   $98, $88, PRZCUREBERRY, 29189, "중수", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    DRAGONAIR,  RHYDON,     "동동이", $77, $66, BITTER_BERRY, 00283, "미사", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_HAPPY,     GLOOM,      RAPIDASH,   "장달이", $96, $66, BURNT_BERRY,  15616, "정진", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    CHANSEY,    AERODACTYL, "파치",   $96, $66, GOLD_BERRY,   26491, "정숙", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
