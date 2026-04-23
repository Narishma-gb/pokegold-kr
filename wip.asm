; \1 Label
; \2 Label address
MACRO dr
	IF BANK(@) == 0
		DEF inc_start = @
	ELSE
		DEF inc_start = @ - $4000
	ENDC

	DEF bank_start = BANK(@) * $4000
	DEF inc_size = (\2) - @

	ASSERT FATAL, inc_size + inc_start <= $4000, "Bank overflow: \1"
	ASSERT FATAL, inc_size >= 0, "Negative binary INCLUDE: \1"

	IF DEF(_GOLD)
		INCBIN "baserom_g.bin", bank_start + inc_start, inc_size
	ELIF DEF(_SILVER)
		INCBIN "baserom_s.bin", bank_start + inc_start, inc_size
	ENDC
	\1::
ENDM

; G/S label offset, in places where the ROMs diverge
MACRO set_gs_diff
	IF DEF(_GOLD)
		DEF gs_diff = \1
	ELIF DEF(_SILVER)
		DEF gs_diff = 0
	ENDC
ENDM

MACRO drd
	dr \1, (\2) + gs_diff
ENDM

; StdScripts
MACRO drs
	dr \1StdScript, (\2) * 3 + $4000
ENDM


INCLUDE "main.asm"
INCLUDE "engine/dumps/bank71.asm"
INCLUDE "engine/dumps/bank7f.asm"

EXPORT DEF EggPic EQU $7b57


;SECTION "rom18", ROMX[$4000], BANK[18]
; ROM $12 : $48000 - $4BFFF


SECTION "rom20", ROMX[$4000], BANK[20]
; ROM $14 : $50000 - $53FFF

	dr SelectMonFromParty, $4000
	dr SelectTradeOrDayCareMon, $401d
	dr LoadPartyMenuGFX, $404f
	dr WritePartyMenuTilemap, $405f
	dr InitPartyMenuGFX, $4374
	dr InitPartyMenuWithCancel, $4399
	dr InitPartyMenuNoCancel, $43c1
	dr PartyMenuSelect, $43eb
	dr PlacePartyMenuText, $442e
	dr PrintPartyMenuActionText, $4584
	dr LoadFishingGFX, $45f8
	dr SweetScentFromMenu, $479b
	dr _Squirtbottle, $480c
	dr _CardKey, $4855
	dr _BasementKey, $4890
	dr _SacredAsh, $48c2
	dr CopyMonToTempMon, $4926
	dr PrintMonTypes, $49e9
	dr PrintMoveType, $4a16
	dr PrintType, $4a2f
	dr GetTypeName, $4a40
	dr DrawPlayerHP, $4bcc
	dr DrawEnemyHP, $4bd0
	dr StatsScreenInit, $4c3d
	dr PrintTempMonStats, $5315
	dr GetGender, $536e
	dr ListMovePP, $53e1
	dr Unused_PlaceEnemyHPLevel, $5461
	dr PlaceNonFaintStatus, $54b4
	dr ListMoves, $554e
	dr InitList, $5598
	dr CalcLevel, $55fa
	dr CalcExpAtLevel, $5626
	dr _SwitchPartyMons, $56f1
	dr GetUnownLetter, $581d
	dr GetMonFrontpic, $5854
	dr UnusedFrontpicPredef, $585a
	dr GetMonBackpic, $58d7
	dr GetTrainerPic, $5974
	dr DecompressGet2bpp, $59ce
	dr BaseData, $5bdf


;SECTION "rom21", ROMX[$4000], BANK[21]
; ROM $15 : $54000 - $57FFF


;SECTION "rom22", ROMX[$4000], BANK[22]
; ROM $16 : $58000 - $5BFFF


;SECTION "rom23", ROMX[$4000], BANK[23]
; ROM $17 : $5C000 - $5FFFF


;SECTION "rom24", ROMX[$4000], BANK[24]
; ROM $18 : $60000 - $63FFF


;SECTION "rom25", ROMX[$4000], BANK[25]
; ROM $19 : $64000 - $67FFF


;SECTION "rom26", ROMX[$4000], BANK[26]
; ROM $1a : $68000 - $6BFFF


;SECTION "rom27", ROMX[$4000], BANK[27]
; ROM $1b : $6C000 - $6FFFF


;SECTION "rom28", ROMX[$4000], BANK[28]
; ROM $1c : $70000 - $73FFF


;SECTION "rom29", ROMX[$4000], BANK[29]
; ROM $1d : $74000 - $77FFF


;SECTION "rom30", ROMX[$4000], BANK[30]
; ROM $1e : $78000 - $7BFFF


;SECTION "rom31", ROMX[$4000], BANK[31]
; ROM $1f : $7C000 - $7FFFF


;SECTION "rom32", ROMX[$4000], BANK[32]
; ROM $20 : $80000 - $83FFF


SECTION "rom33", ROMX[$4000], BANK[33]
; ROM $21 : $84000 - $87FFF

	dr _PrinterReceive, $42db
	dr PrintDexEntry, $442c
	dr PrintUnownStamp, $4560
	dr _PrintDiploma, $4684
	dr _HallOfFamePC, $6640


SECTION "rom35", ROMX[$4000], BANK[35]
; ROM $23 : $8C000 - $8FFFF

	dr SaveMenu_CopyTilemapAtOnce, $4000
	dr _ResetClock, $417a
	dr _DeleteSaveData, $4311
	dr DummyPredef35, $4359
DummyPredef36::
	dr UpdateTimeOfDayPal, $435a
	dr _TimeOfDayPals, $436a
	dr _UpdateTimePals, $439b
	dr FadeInFromWhite, $43a4
	dr FadeOutToWhite, $43af
	dr FadeInFromBlack, $43bd
	dr FadeOutToBlack, $43c8
	dr ReplaceTimeOfDayPals, $43ed
	dr DoBattleTransition, $4517
	dr PlayWhirlpoolSound, $4a56
	dr BlindingFlash, $4a63
	dr ShakeHeadbuttTree, $4a86
	dr OWCutAnimation, $4bb0
	dr FlyFromAnim, $4d5d
	dr FlyToAnim, $4da3
	dr MagnetTrain, $4e74
	dr ClearSpriteAnims, $516c
	dr PlaySpriteAnimationsAndDelayFrame, $517b
	dr PlaySpriteAnimations, $5182
	dr _InitSpriteAnimStruct, $51ef
	dr _ReinitSpriteAnimFrame, $532a
	set_gs_diff $1a
	drd AnimateEndOfExpBar, $66db
	drd ClearSpriteAnims2, $6752
	drd LoadOverworldMonIcon, $6769
	drd LoadMenuMonIcon, $677d
	drd FreezeMonIcons, $68d9
	drd UnfreezeMonIcons, $6900
	drd HoldSwitchmonIcon, $691b


SECTION "rom36", ROMX[$4000], BANK[36]
; ROM $24 : $90000 - $93FFF

	dr GetCallerLocation, $441a
	dr InitClock, $4647
	dr SetDayOfWeek, $4897
	dr PrintHour, $49ca
	dr PokeGear, $4a24
	dr _TownMap, $577d
	dr PlayRadio, $5888
	dr PokegearMap, $5930
	dr _FlyMap, $5942
	dr Pokedex_GetArea, $5b52
	dr RegionCheck, $67d2
	dr Fish, $67fe
	dr _SlotMachine, $6aba


SECTION "rom37", ROMX[$4000], BANK[37]
; ROM $25 : $94000 - $97FFF

	dr MapScenes, $4000
	dr MapGroupPointers, $40ed
	dr OverworldLoop, $65f9
	dr EnableScriptMode, $6b89
	dr ScriptEvents, $6b91
	dr CallCallback, $7366
	dr WarpToSpawnPoint, $7a6a
	dr ClearCmdQueue, $7c3b


SECTION "rom38", ROMX[$4000], BANK[38]
; ROM $26 : $98000 - $9BFFF

	dr TitleScreenGFX1, $4000
	set_gs_diff -4
	drd TitleScreenTilemap, $47c6


;SECTION "rom42", ROMX[$4000], BANK[42]
; ROM $2a : $A8000 - $ABFFF


;SECTION "rom43", ROMX[$4000], BANK[43]
; ROM $2b : $AC000 - $AFFFF


SECTION "rom46", ROMX[$4000], BANK[46]
; ROM $2e : $B8000 - $BBFFF

	dr CheckForHiddenItems, $6300
	dr TreeMonEncounter, $6378
	dr RockMonEncounter, $63a1
	dr ReadPartyMonMail, $6eb6
	dr ReadAnyMail, $6ec4
	dr ItemIsMail, $7ac4


SECTION "rom49", ROMX[$7a40], BANK[49]
; ROM $31 : $C4000 - $C7FFF

	dr _CheckPokerus, $7a40
	dr CheckForLuckyNumberWinners, $7a5a
	dr PrintTodaysLuckyNumber, $7bad
	dr CheckPartyFullAfterContest, $7bbf
	dr GiveANickname_YesNo, $7cd0


SECTION "rom50", ROMX[$4000], BANK[50]
; ROM $32 : $C8000 - $CBFFF

BattleAnimations::
	dr DummyPredef2F, $40d7
	dr LoadPoisonBGPals, $7c76


SECTION "rom51", ROMX[$4000], BANK[51]
; ROM $33 : $CC000 - $CFFFF

ClearBattleAnims::
BattleAnimCommands::
	dr DisplayCaughtContestMonStats, $4000
	dr DisplayAlreadyCaughtText, $40c9
	dr DummyPredef38, $40d7
DummyPredef39::
	dr PlayBattleAnim, $40d8
	dr BattleAnimCmd_RaiseSub, $45e6
	dr BattleAnimCmd_MinimizeOpp, $466b


;SECTION "rom54", ROMX[$4000], BANK[54]
; ROM $36 : $D8000 - $DBFFF


;SECTION "rom55", ROMX[$4000], BANK[55]
; ROM $37 : $DC000 - $DFFFF


SECTION "rom56", ROMX[$4000], BANK[56]
; ROM $38 : $E0000 - $E3FFF

	dr _Diploma, $4002
	dr RotateUnownFrontpic, $43ea
	dr _CardFlip, $44d8
	dr _UnownPuzzle, $556a
	dr _MemoryGame, $6257
	dr _DepositPKMN, $6789
	dr _WithdrawPKMN, $6961
	dr _MovePKMNWithoutMail, $6b39
	dr _ChangeBox, $798a


SECTION "rom57", ROMX[$4000], BANK[57]
; ROM $39 : $E4000 - $E7FFF

	dr CopyrightGFX, $4000
	dr TitleScreenGFX3, $41e0
	set_gs_diff $40
	drd TitleScreenGFX2, $4220
	set_gs_diff $1b8
	drd _Option, $4450
	drd SplashScreen, $4804
	drd GoldSilverIntro, $4b0d


SECTION "rom58", ROMX[$4000], BANK[58]
; ROM $3a : $E8000 - $EBFFF

LoadMusicByte::

	dr _InitSound, $4000
	dr _UpdateSound, $405c
	dr _PlayMusic, $4b30
	dr _PlayCry, $4b79
	dr _PlaySFX, $4c04
	dr ClearChannels, $4fe9


;SECTION "rom59", ROMX[$4000], BANK[59]
; ROM $3b : $EC000 - $EFFFF


SECTION "rom60", ROMX[$4000], BANK[60]
; ROM $3c : $F0000 - $F3FFF

	dr PokemonCries, $6747


;SECTION "rom61", ROMX[$4000], BANK[61]
; ROM $3d : $F4000 - $F7FFF


SECTION "rom62", ROMX[$4000], BANK[62]
; ROM $3e : $F8000 - $FBFFF

	dr _LoadStandardFont, $4000
	dr _LoadFontsExtra, $400f
	dr _LoadFontsBattleExtra, $4035
	dr LoadBattleFontsHPBar, $4069
	dr LoadHPBar, $4084
	dr LoadStatsScreenPageTilesGFX, $40dc
	dr EnemyHPBarBorderGFX, $4bb5
	dr HPExpBarBorderGFX, $4bd5
	dr ExpBarGFX, $4c05
	dr Footprints, $52bd
	dr UnownFont, $72bd
	dr CollisionPermissionTable, $746d
	dr Shrink1Pic, $756d
	dr Shrink2Pic, $75fd
	dr ValidateOTTrademon, $763d
	dr CheckAnyOtherAliveMonsForTrade, $769c
	dr PlaceTradePartnerNamesAndParty, $76cc
	dr KantoMonSpecials, $770f
	dr _NameRater, $77a6
	dr PlaySlowCry, $78fa
	dr NewPokedexEntry, $7930
	dr ConvertMon_2to1, $7984
	dr ConvertMon_1to2, $799b
	dr UpdateUnownDex, $7aab
	dr PrintUnownWord, $7ac1
	dr CheckMagikarpLength, $7bc5
	dr CalcMagikarpLength, $7c69
	dr MagikarpHouseSign, $7d24
	dr HiddenPowerDamage, $7d3f
	dr _DisappearUser, $7da8
	dr _AppearUserRaiseSub, $7dbd
	dr _AppearUserLowerSub, $7dc5
	dr DoWeatherModifiers, $7df8
	dr DoBadgeTypeBoosts, $7e79


SECTION "rom63", ROMX[$4000], BANK[63]
; ROM $3f : $FC000 - $FFFFF

	dr DummyPredef3A, $4001
	dr _AnimateTileset, $4003
	dr Tileset0Anim, $401e
TilesetJohtoModernAnim::
TilesetKantoAnim::
TilesetParkAnim::
TilesetForestAnim::
	dr TilesetJohtoAnim, $404a
	dr TilesetPortAnim, $40d6
	dr TilesetEliteFourRoomAnim, $4106
	dr TilesetCaveAnim, $418e
TilesetDarkCaveAnim::
	dr TilesetIcePathAnim, $41da
	dr TilesetTowerAnim, $4226
	dr TilesetHouseAnim, $428e
TilesetPlayersHouseAnim::
TilesetPokecenterAnim::
TilesetGateAnim::
TilesetLabAnim::
TilesetFacilityAnim::
TilesetMartAnim::
TilesetMansionAnim::
TilesetGameCornerAnim::
TilesetTraditionalHouseAnim::
TilesetTrainStationAnim::
TilesetChampionsRoomAnim::
TilesetLighthouseAnim::
TilesetPlayersRoomAnim::
TilesetRuinsOfAlphAnim::
TilesetRadioTowerAnim::
TilesetUndergroundAnim::
	dr StagePartyDataForMysteryGift, $4f6a
	dr InitMysteryGiftLayout, $4fb2


SECTION "rom64", ROMX[$4000], BANK[64]
; ROM $40 : $100000 - $103FFF

StdScripts::
	drs MagazineBookshelfScript, $3
	drs IncenseBurnerScript, $5
	drs MerchandiseShelfScript, $6
	drs TownMapScript, $7
	drs WindowScript, $8
	drs TVScript, $9
	drs Radio1Script, $b
	drs BugContestResultsWarpScript, $16 
	drs PCScript, $2b

	dr StdText, $45f3
INCLUDE "data/text/std_text.asm"
INCLUDE "data/text/battle.asm"


;SECTION "rom65", ROMX[$4000], BANK[65]
; ROM $41 : $104000 - $107FFF


;SECTION "rom66", ROMX[$4000], BANK[66]
; ROM $42 : $108000 - $10BFFF


;SECTION "rom67", ROMX[$4000], BANK[67]
; ROM $43 : $10C000 - $10FFFF


;SECTION "rom68", ROMX[$4000], BANK[68]
; ROM $44 : $110000 - $113FFF


;SECTION "rom69", ROMX[$4000], BANK[69]
; ROM $45 : $114000 - $117FFF


;SECTION "rom70", ROMX[$4000], BANK[70]
; ROM $46 : $118000 - $11BFFF


;SECTION "rom71", ROMX[$4000], BANK[71]
; ROM $47 : $11C000 - $11FFFF


;SECTION "rom72", ROMX[$4000], BANK[72]
; ROM $48 : $120000 - $123FFF


;SECTION "rom73", ROMX[$4000], BANK[73]
; ROM $49 : $124000 - $127FFF


;SECTION "rom74", ROMX[$4000], BANK[74]
; ROM $4a : $128000 - $12BFFF


;SECTION "rom75", ROMX[$4000], BANK[75]
; ROM $4b : $12C000 - $12FFFF


;SECTION "rom76", ROMX[$4000], BANK[76]
; ROM $4c : $130000 - $133FFF


;SECTION "rom77", ROMX[$4000], BANK[77]
; ROM $4d : $134000 - $137FFF


;SECTION "rom78", ROMX[$4000], BANK[78]
; ROM $4e : $138000 - $13BFFF


;SECTION "rom79", ROMX[$4000], BANK[79]
; ROM $4f : $13C000 - $13FFFF


;SECTION "rom80", ROMX[$4000], BANK[80]
; ROM $50 : $140000 - $143FFF


;SECTION "rom81", ROMX[$4000], BANK[81]
; ROM $51 : $144000 - $147FFF


;SECTION "rom82", ROMX[$4000], BANK[82]
; ROM $52 : $148000 - $14BFFF


;SECTION "rom83", ROMX[$4000], BANK[83]
; ROM $53 : $14C000 - $14FFFF


;SECTION "rom84", ROMX[$4000], BANK[84]
; ROM $54 : $150000 - $153FFF


;SECTION "rom85", ROMX[$4000], BANK[85]
; ROM $55 : $154000 - $157FFF


;SECTION "rom86", ROMX[$4000], BANK[86]
; ROM $56 : $158000 - $15BFFF


;SECTION "rom87", ROMX[$4000], BANK[87]
; ROM $57 : $15C000 - $15FFFF


;SECTION "rom89", ROMX[$4000], BANK[89]
; ROM $59 : $164000 - $167FFF


;SECTION "rom90", ROMX[$4000], BANK[90]
; ROM $5a : $168000 - $16BFFF


;SECTION "rom91", ROMX[$4000], BANK[91]
; ROM $5b : $16C000 - $16FFFF


;SECTION "rom92", ROMX[$4000], BANK[92]
; ROM $5c : $170000 - $173FFF


;SECTION "rom93", ROMX[$4000], BANK[93]
; ROM $5d : $174000 - $177FFF


;SECTION "rom94", ROMX[$4000], BANK[94]
; ROM $5e : $178000 - $17BFFF


;SECTION "rom95", ROMX[$4000], BANK[95]
; ROM $5f : $17C000 - $17FFFF


;SECTION "rom96", ROMX[$4000], BANK[96]
; ROM $60 : $180000 - $183FFF


;SECTION "rom97", ROMX[$4000], BANK[97]
; ROM $61 : $184000 - $187FFF


;SECTION "rom98", ROMX[$4000], BANK[98]
; ROM $62 : $188000 - $18BFFF


SECTION "rom112", ROMX[$4879], BANK[112]
; ROM $70 : $1C0000 - $1C3FFF

	dr PrintHoursMins, $4879
	dr LoadSGBPokedexGFX, $48c1
	dr LoadSGBPokedexGFX2, $48cb
	dr LoadQuestionMarkPic, $4a7c
	dr _DudeAutoInput_A, $4b16
	dr _DudeAutoInput_RightA, $4b1b
	dr _DudeAutoInput_DownA, $4b20


;SECTION "rom123", ROMX[$4000], BANK[123]
; ROM $7b : $1EC000 - $1EFFFF


;SECTION "rom124", ROMX[$4000], BANK[124]
; ROM $7c : $1F0000 - $1F3FFF


;SECTION "rom125", ROMX[$4000], BANK[125]
; ROM $7d : $1F4000 - $1F7FFF


;SECTION "rom126", ROMX[$4000], BANK[126]
; ROM $7e : $1F8000 - $1FBFFF
