EXPORT DEF wBetaPokerSGBPals EQU $C602
EXPORT DEF wBetaPokerSGBAttr EQU $C605
EXPORT DEF wBetaPokerSGBCol EQU $C606
EXPORT DEF wBetaPokerSGBRow EQU $C607
EXPORT DEF wHandshakeFrameDelay EQU $C98A
EXPORT DEF wOTClassName EQU $CB34
EXPORT DEF wCurOTMon EQU $CB49
EXPORT DEF wBattleParticipantsNotFainted EQU $CB4A
EXPORT DEF wAttackMissed EQU $CB4D
EXPORT DEF wPlayerSubStatus1 EQU $CB4E
EXPORT DEF wPlayerSubStatus2 EQU $CB4F
EXPORT DEF wPlayerSubStatus3 EQU $CB50
EXPORT DEF wPlayerSubStatus4 EQU $CB51
EXPORT DEF wPlayerSubStatus5 EQU $CB52
EXPORT DEF wEnemySubStatus1 EQU $CB53
EXPORT DEF wEnemySubStatus2 EQU $CB54
EXPORT DEF wEnemySubStatus3 EQU $CB55
EXPORT DEF wEnemySubStatus4 EQU $CB56
EXPORT DEF wEnemySubStatus5 EQU $CB57
EXPORT DEF wPlayerDisableCount EQU $CB5B
EXPORT DEF wBattleAnimParam EQU $CB6F
EXPORT DEF wCurPlayerMove EQU $CBC9
EXPORT DEF wCurEnemyMove EQU $CBCA
EXPORT DEF wEnemyBackupDVs EQU $CBD8
EXPORT DEF wDisabledMove EQU $CBDB
EXPORT DEF wLastPlayerCounterMove EQU $CBDE
EXPORT DEF wLastEnemyCounterMove EQU $CBDF
EXPORT DEF wBattleParticipantsIncludingFainted EQU $CBE2
EXPORT DEF wEffectFailed EQU $CBF3
EXPORT DEF wLastPlayerMove EQU $CC01
EXPORT DEF wLastEnemyMove EQU $CC02
EXPORT DEF wWildMonMoves EQU $CC1B
EXPORT DEF wWildMonPP EQU $CC1F
EXPORT DEF wCurBGEvent EQU $CF11
EXPORT DEF wCurCoordEvent EQU $CF11
EXPORT DEF wSeenTrainerBank EQU $CF11
EXPORT DEF wFacingTileID EQU $CF11
EXPORT DEF wSeenTrainerDistance EQU $CF12
EXPORT DEF wSeenTrainerDirection EQU $CF13
EXPORT DEF wTempTrainer EQU $CF14
EXPORT DEF wWinTextPointer EQU $CF1A
EXPORT DEF wLossTextPointer EQU $CF1C
EXPORT DEF wRunningTrainerBattleScript EQU $CF20
EXPORT DEF wTempTrainerEnd EQU $CF21
EXPORT DEF wPlayerTurningDirection EQU $CF21
EXPORT DEF wBoxAlignment EQU $CF23
EXPORT DEF wFarDecompressPicPointer EQU $CF24
EXPORT DEF wCurBattleMon EQU $CF28
EXPORT DEF wCurMoveNum EQU $CF29
EXPORT DEF wPartyMenuCursor EQU $CF2B
EXPORT DEF wTMHMPocketScrollPosition EQU $CF34
EXPORT DEF wMenuScrollPosition EQU $CF36
EXPORT DEF wQueuedScriptBank EQU $CF3A
EXPORT DEF wQueuedScriptAddr EQU $CF3B
EXPORT DEF wStackTop EQU $CFFF
EXPORT DEF wd000 EQU $D000
EXPORT DEF wJumptableIndex EQU $D001
EXPORT DEF wTitleScreenSelectedOption EQU $D002
EXPORT DEF wTitleScreenTimer EQU $D003
EXPORT DEF wUnusedSGB1eColorOffset EQU $D003
EXPORT DEF wFXAnimID EQU $D005
EXPORT DEF wBGP EQU $D00A
EXPORT DEF wOBP0 EQU $D00B
EXPORT DEF wOBP1 EQU $D00C
EXPORT DEF wBattleAfterAnim EQU $D00D
EXPORT DEF wMonOrItemNameBuffer EQU $D00F
EXPORT DEF wStringBuffer1 EQU $D036
EXPORT DEF wStringBuffer2 EQU $D04B
EXPORT DEF wStringBuffer3 EQU $D060
EXPORT DEF wStringBuffer4 EQU $D075
EXPORT DEF wd120 EQU $D120
EXPORT DEF wOptions EQU $D254
EXPORT DEF wSaveFileExists EQU $D255
EXPORT DEF wTextboxFlags EQU $D257
EXPORT DEF wGameData EQU $D25C
EXPORT DEF hClockResetTrigger EQU $FFEE


SECTION "sram2", SRAM[$A000], BANK[0]
sScratch::

	ds $a188 - @
sDecompressBuffer::

	ds $afe2 - @
sMysteryGiftItem:: db
sMysteryGiftUnlocked::
	ds 2
sNumDailyMysteryGiftPartnerIDs::
	ds 24
sMysteryGiftTrainerHouseFlag::

	ds $b060 - @
sRTCStatusFlags::

	ds $b068 - @
sLuckyNumberDay:: db
sLuckyIDNumber::
