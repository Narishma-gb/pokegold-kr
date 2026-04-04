EXPORT DEF wPlayerPatchLists EQU $C508
EXPORT DEF wNamingScreenDestinationPointer EQU $C5D0
EXPORT DEF wOTPatchLists EQU $C5D0
EXPORT DEF wPlayerTrademonSpecies EQU $C5D0
EXPORT DEF wPlayerTrademonSpeciesName EQU $C5D1
EXPORT DEF wNamingScreenCurNameLength EQU $C5D2
EXPORT DEF wNamingScreenMaxNameLength EQU $C5D3
EXPORT DEF wNamingScreenType EQU $C5D4
EXPORT DEF wNamingScreenCursorObjectPointer EQU $C5D5
EXPORT DEF wNamingScreenLastCharacter EQU $C5D7
EXPORT DEF wNamingScreenStringEntryCoord EQU $C5D8
EXPORT DEF wPlayerTrademonSenderName EQU $C5E7
EXPORT DEF wPlayerTrademonOTName EQU $C5F2
EXPORT DEF wPlayerTrademonDVs EQU $C5FD
EXPORT DEF wPlayerTrademonID EQU $C5FF
EXPORT DEF wOTTrademonSpecies EQU $C601
EXPORT DEF wBetaPokerSGBPals EQU $C602
EXPORT DEF wOTTrademonSpeciesName EQU $C602
EXPORT DEF wBetaPokerSGBAttr EQU $C605
EXPORT DEF wBetaPokerSGBCol EQU $C606
EXPORT DEF wBetaPokerSGBRow EQU $C607
EXPORT DEF wOTTrademonSenderName EQU $C618
EXPORT DEF wOTTrademonOTName EQU $C623
EXPORT DEF wOTTrademonDVs EQU $C62E
EXPORT DEF wOTTrademonID EQU $C630
EXPORT DEF wTradeAnimAddress EQU $C632
EXPORT DEF wLinkPlayer1Name EQU $C634
EXPORT DEF wLinkPlayer2Name EQU $C63F
EXPORT DEF wLinkTradeSendmonSpecies EQU $C64A
EXPORT DEF wLinkTradeGetmonSpecies EQU $C64B
EXPORT DEF wLinkData EQU $C700
EXPORT DEF wTimeCapsulePlayerData EQU $C713
EXPORT DEF wLinkPlayerData EQU $C713
EXPORT DEF wTimeCapsulePartyMonOTs EQU $C81B
EXPORT DEF wLinkPlayerPartyMonOTs EQU $C835
EXPORT DEF wHandshakeFrameDelay EQU $C98A
EXPORT DEF wCurLinkOTPartyMonTypePointer EQU $CAE8
EXPORT DEF wLinkOTPartyMonTypes EQU $CAEA
EXPORT DEF wOTClassName EQU $CB34
EXPORT DEF wLinkDataEnd EQU $CC14
EXPORT DEF wTempMailMessage EQU $CEC2
EXPORT DEF wTempMail EQU $CEC2
EXPORT DEF wTempMailAuthor EQU $CF03
EXPORT DEF wStackBottom EQU $CF3D
EXPORT DEF wStackTop EQU $CFFF
EXPORT DEF wd000 EQU $D000
EXPORT DEF wLinkPlayerMail EQU $D000
EXPORT DEF wLinkReceivedMail EQU $D000
EXPORT DEF wLinkPlayerMailMessages EQU $D005
EXPORT DEF wLinkPlayerMailMetadata EQU $D18B
EXPORT DEF wLinkReceivedMailEnd EQU $D1DA
EXPORT DEF wLinkPlayerMailPatchSet EQU $D1DF
EXPORT DEF wLinkOTMail EQU $D234
EXPORT DEF wLinkPlayerMailEnd EQU $D234
EXPORT DEF wLinkOTMailMessages EQU $D234
EXPORT DEF wOptions EQU $D254
EXPORT DEF wSaveFileExists EQU $D255
EXPORT DEF wTextboxFlags EQU $D257
EXPORT DEF wOptions2 EQU $D259
EXPORT DEF wGameData EQU $D25C
EXPORT DEF wOptionsEnd EQU $D25C
EXPORT DEF wLinkOTMailMetadata EQU $D3BA
EXPORT DEF wLinkOTMailPatchSet EQU $D40E
EXPORT DEF wLinkOTMailEnd EQU $D468
EXPORT DEF wHallOfFameCount EQU $D736
EXPORT DEF wTempTilemap EQU $D800
EXPORT DEF hClockResetTrigger EQU $FFEE


SECTION UNION "Overworld Map", WRAM0

	ds $449

wCurOTMon:: db

wBattleParticipantsNotFainted::
; Bit array.  Bits 0 - 5 correspond to party members 1 - 6.
; Bit set if the mon appears in battle.
; Bit cleared if the mon faints.
; Backed up if the enemy switches.
; All bits cleared if the enemy faints.
	db

wTypeModifier::
; >10: super-effective
;  10: normal
; <10: not very effective
; bit 7: stab
	db

wCriticalHit::
; 0 if not critical
; 1 for a critical hit
; 2 for a OHKO
	db

wAttackMissed::
; nonzero for a miss
	db

wPlayerSubStatus1:: db
wPlayerSubStatus2:: db
wPlayerSubStatus3:: db
wPlayerSubStatus4:: db
wPlayerSubStatus5:: db

wEnemySubStatus1:: db
wEnemySubStatus2:: db
wEnemySubStatus3:: db
wEnemySubStatus4:: db
wEnemySubStatus5:: db

wPlayerRolloutCount:: db
wPlayerConfuseCount:: db
wPlayerToxicCount:: db
wPlayerDisableCount:: db
wPlayerEncoreCount:: db
wPlayerPerishCount:: db
wPlayerFuryCutterCount:: db
wPlayerProtectCount:: db

wEnemyRolloutCount:: db
wEnemyConfuseCount:: db
wEnemyToxicCount:: db
wEnemyDisableCount:: db
wEnemyEncoreCount:: db
wEnemyPerishCount:: db
wEnemyFuryCutterCount:: db
wEnemyProtectCount:: db

wPlayerDamageTaken:: dw
wEnemyDamageTaken::  dw

wBattleReward:: ds 3

wBattleAnimParam:: db

wBattleScriptBuffer:: ds 40

wBattleScriptBufferAddress:: dw
wTurnEnded:: db

	ds 1

wPlayerStats::
wPlayerAttack::  dw
wPlayerDefense:: dw
wPlayerSpeed::   dw
wPlayerSpAtk::   dw
wPlayerSpDef::   dw
	ds 1

wEnemyStats::
wEnemyAttack::  dw
wEnemyDefense:: dw
wEnemySpeed::   dw
wEnemySpAtk::   dw
wEnemySpDef::   dw
	ds 1

wPlayerStatLevels::
wPlayerAtkLevel::  db
wPlayerDefLevel::  db
wPlayerSpdLevel::  db
wPlayerSAtkLevel:: db
wPlayerSDefLevel:: db
wPlayerAccLevel::  db
wPlayerEvaLevel::  db
	ds 1

wEnemyStatLevels::
wEnemyAtkLevel::  db
wEnemyDefLevel::  db
wEnemySpdLevel::  db
wEnemySAtkLevel:: db
wEnemySDefLevel:: db
wEnemyAccLevel::  db
wEnemyEvaLevel::  db
	ds 1

wEnemyTurnsTaken::  db
wPlayerTurnsTaken:: db
	ds 1

wPlayerSubstituteHP:: db
wEnemySubstituteHP::  db

wUnusedPlayerLockedMove:: db
	ds 1

wCurPlayerMove:: db
wCurEnemyMove::  db

wLinkBattleRNCount::
; how far through the prng stream
	db

wEnemyItemState:: db
	ds 2
wCurEnemyMoveNum:: db

wEnemyHPAtTimeOfPlayerSwitch:: dw
wPayDayMoney:: ds 3

wSafariMonAngerCount:: db ; unreferenced
wSafariMonEating:: db
	ds 1
wEnemyBackupDVs:: dw ; used when enemy is transformed
wAlreadyDisobeyed:: db

wDisabledMove:: db
wEnemyDisabledMove:: db
wWhichMonFaintedFirst:: db

; exists so you can't counter on switch
wLastPlayerCounterMove:: db
wLastEnemyCounterMove:: db

wEnemyMinimized:: db

wAlreadyFailed:: db

wBattleParticipantsIncludingFainted:: db
wBattleLowHealthAlarm:: db
wPlayerMinimized:: db

wPlayerScreens::
; bit
; 0 spikes
; 1
; 2 safeguard
; 3 light screen
; 4 reflect
; 5-7 unused
	db

wEnemyScreens::
; see wPlayerScreens
	db

wPlayerSafeguardCount:: db
wPlayerLightScreenCount:: db
wPlayerReflectCount:: db
	ds 1

wEnemySafeguardCount:: db
wEnemyLightScreenCount:: db
wEnemyReflectCount:: db
	ds 2

wBattleWeather::
; 00 normal
; 01 rain
; 02 sun
; 03 sandstorm
; 04 rain stopped
; 05 sunliight faded
; 06 sandstorm subsided
	db

wWeatherCount::
; # turns remaining
	db

wLoweredStat:: db
wEffectFailed:: db
wFailedMessage:: db
wEnemyGoesFirst:: db

wPlayerIsSwitching:: db
wEnemyIsSwitching:: db

wPlayerUsedMoves::
; add a move that has been used once by the player
; added in order of use
	ds NUM_MOVES

wEnemyAISwitchScore:: db
wEnemySwitchMonParam:: db
wEnemySwitchMonIndex:: db
wTempLevel:: db
wLastPlayerMon:: db
wLastPlayerMove:: db
wLastEnemyMove:: db

wPlayerFutureSightCount:: db
wEnemyFutureSightCount:: db

wGivingExperienceToExpShareHolders:: db

wBackupEnemyMonBaseStats:: ds NUM_EXP_STATS
wBackupEnemyMonCatchRate:: db
wBackupEnemyMonBaseExp:: db

wPlayerFutureSightDamage:: dw
wEnemyFutureSightDamage:: dw
wPlayerRageCounter:: db
wEnemyRageCounter:: db

wBeatUpHitAtLeastOnce:: db

wPlayerTrappingMove:: db
wEnemyTrappingMove:: db
wPlayerWrapCount:: db
wEnemyWrapCount:: db
wPlayerCharging:: db
wEnemyCharging:: db

wBattleEnded:: db

wWildMonMoves:: ds NUM_MOVES
wWildMonPP:: ds NUM_MOVES

wAmuletCoin:: db

wSomeoneIsRampaging:: db

wPlayerJustGotFrozen:: db
wEnemyJustGotFrozen:: db
wBattleEnd::

ENDSECTION
