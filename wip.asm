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
INCLUDE "engine/dumps/bank7f.asm"

EXPORT DEF ConfusedNoMoreText EQU $5a29
EXPORT DEF MoveDescriptions EQU $4000
EXPORT DEF EggPic EQU $7b57


SECTION "rom5", ROMX[$4000], BANK[5]
; ROM $05 : $14000 - $17FFF

	dr GetTimeOfDay, $4032
	dr StartClock, $4089
	dr ClockContinue, $40dc
	dr _InitTime, $40ff
	dr _UpdatePlayerSprite, $413c
	dr LoadStandingSpritesGFX, $414b
	dr LoadWalkingSpritesGFX, $415c
	dr RefreshSprites, $416d
	dr LoadUsedSpritesGFX, $4226
	dr _DoesSpriteHaveFacings, $4317
	dr _GetSpritePalette, $4334
	dr CheckWarpCollision, $4a18
	dr CheckDirectionalWarp, $4a2d
	dr CheckWarpFacingDown, $4a44
	dr CheckCutCollision, $4a73
	dr SaveMenu, $4abe
	dr StartMoveMonWOMail_SaveGame, $4bd2
	dr TryLoadSaveFile, $4ef5
	dr TryLoadSaveData, $4f60
	dr _LoadOverworldTilemap, $538d
	dr IsSpawnPoint, $5465
	dr RunMapSetupScript, $5484
	dr SkipUpdateMapSprites, $560c
	dr CheckUpdatePlayerSprite, $5612
	dr Tilesets, $56be
	dr PokemonCenterPC, $5871
	dr _PlayersHousePC, $59c1
	dr BankOfMom, $6495
	dr DayCareMan, $688c
	dr DayCareLady, $68e0
	dr DayCareManOutside, $6ae3
	dr _UnownPrinter, $6d90
	dr PhotoStudio, $6f5b
	dr CheckBreedmonCompatibility, $714b
	dr DayCareMon1, $771f
	dr DayCareMon2, $773e


;SECTION "rom6", ROMX[$4000], BANK[6]
; ROM $06 : $18000 - $1BFFF


SECTION "rom7", ROMX[$4000], BANK[7]
; ROM $07 : $1C000 - $1FFFF

	dr LoadMapGroupRoof, $4000


SECTION "rom8", ROMX[$4000], BANK[8]
; ROM $08 : $20000 - $23FFF

	dr RestartClock, $4021


SECTION "rom9", ROMX[$4000], BANK[9]
; ROM $09 : $24000 - $27FFF

	dr StringBufferPointers, $4000
	dr _2DMenu_, $400e
	dr _StaticMenuJoypad, $4136
	dr _ScrollingMenuJoypad, $4139
	dr _PushWindow, $42a0
	dr _ExitMenu, $4366
	dr _InitVerticalMenuCursor, $43a7
	dr UpdateItemDescription, $43fd
	dr _InitScrollingMenu, $44e9
	dr _ScrollingMenu, $4505
	dr SwitchItemsInBag, $4846
	dr PlaceMenuItemName, $49ee
	dr PlaceMenuItemQuantity, $49fd
	dr PlaceMoneyTopRight, $4a1e
	dr DisplayCoinCaseBalance, $4a5b
	dr DisplayMoneyAndCoinBalance, $4a84
	dr StartMenu_DrawBugContestStatusBox, $4b26
	dr StartMenu_PrintBugContestStatus, $4b31
	dr Kurt_SelectApricorn, $4bb0
	dr MonSubmenu, $4cce
	dr SelectQuantityToToss, $4f7f
	dr TrainerCard, $50c0
	dr ProfOaksPCBoot, $6852
	dr InitDecorations, $69b5
	dr SetSpecificDecorationFlag, $714b
	dr ToggleMaptileDecorations, $7234
	dr ToggleDecorationsVisibility, $728c
	dr GetTrainerDVs, $72e7
	dr _ReturnToBattle_UseBall, $737d


SECTION "rom10", ROMX[$4000], BANK[10]
; ROM $0a : $28000 - $2BFFF

	dr LinkTextboxAtHL, $4e38
	dr TradeAnimation, $4eae
	dr TradeAnimationPlayer2, $4ee6
	dr CheckTimeCapsuleCompatibility, $5b13
	dr EnterTimeCapsule, $5b93
	dr WaitForOtherPlayerToExit, $5ba5
	dr SetBitsForLinkTradeRequest, $5bee
	dr SetBitsForBattleRequest, $5bf7
	dr SetBitsForTimeCapsuleRequest, $5c00
	dr WaitForLinkedFriend, $5c17
	dr CheckLinkTimeout_Receptionist, $5c98
	dr TryQuickSave, $5d3d
	dr CheckBothSelectedSameRoom, $5d59
	dr TimeCapsule, $5d86
	dr TradeCenter, $5d9b
	dr Colosseum, $5db0
	dr CloseLink, $5dc5
	dr FailedLinkToPast, $5dcd
	dr CableClubCheckWhichChris, $5e1a
	dr DoMysteryGift, $5ecb
	dr CopyMysteryGiftReceivedDecorationsToPC, $65a4
	dr UnlockMysteryGift, $65cc
	dr ResetDailyMysteryGiftLimitIfUnlocked, $65db
	dr InitRoamMons, $68bc
	dr JumpRoamMons, $69c5
	dr RandomUnseenWildMon, $6adc
	dr RandomPhoneWildMon, $6b50
	dr RandomPhoneMon, $6b98

SECTION "rom11", ROMX[$4000], BANK[11]
; ROM $0b : $2C000 - $2FFFF

	dr MoveDeletion, $4352
	dr TMHMPocket, $457a
	dr AskTeachTMHM, $45ca
	dr ChooseMonToLearnTMHM, $4606
	dr TeachTMHM, $4672
	dr PrintMoveDescription, $4952


;SECTION "rom12", ROMX[$4000], BANK[12]
; ROM $0c : $30000 - $33FFF


SECTION "rom13", ROMX[$4000], BANK[13]
; ROM $0d : $34000 - $37FFF

	dr CheckTypeMatchup, $4923
	dr RaiseStat, $6311
	dr BattleCommand_StatUpMessage, $64d5
	dr BattleCommand_StatUpFailText, $6569
	dr CalcPlayerStats, $66ee
	dr GetItemHeldEffect, $7e91


SECTION "rom14", ROMX[$4000], BANK[14]
; ROM $0e : $38000 - $3BFFF

	dr GetTrainerClassName, $54f3
	dr Battle_GetTrainerName, $58f2
	dr GetTrainerName, $58fa


SECTION "rom15", ROMX[$4000], BANK[15]
; ROM $0f : $3C000 - $3FFFF

	dr FleeMons, $4551
	dr CheckPlayerPartyForFitMon, $570d
	dr GetPartyMonDVs, $58f8
	dr GetEnemyMonDVs, $590a
	dr UpdatePlayerHUD, $5dac
	dr UpdateEnemyHUD, $5eac
	dr MoveSelectionScreen, $6338
	dr LoadEnemyMon, $679c
	dr _BattleRandom, $6c62
	dr FillInExpBar, $71e7
	dr GetBattleMonBackpic, $7294
	dr GetEnemyMonFrontpic, $72d3
	dr StartBattle, $7318
	dr _DisplayLinkRecord, $75bd

SECTION "Evolutions and Attacks", ROMX[$4000], BANK[16]
SECTION "rom16", ROMX[$4000], BANK[16]
; ROM $10 : $40000 - $43FFF

	dr Pokedex, $4000
	dr Moves, $572e
	dr EvolvePokemon, $5e0b
	dr EvolveAfterBattle, $5e19
	dr LearnLevelMoves, $60b3
	dr FillMoves, $610d
	dr GetPreEvolution, $63bd
	dr EvosAttacksPointers, $63ed


SECTION "rom17", ROMX[$4000], BANK[17]
; ROM $11 : $44000 - $47FFF

	dr Function442ea, $42ea
	dr PlaceGraphic, $45e7
	dr SendMailToPC, $4618
	dr DeletePartyMonMail, $480f
	dr IsAnyMonHoldingMail, $482b


;SECTION "rom18", ROMX[$4000], BANK[18]
; ROM $12 : $48000 - $4BFFF


SECTION "rom20", ROMX[$4000], BANK[20]
; ROM $14 : $50000 - $53FFF

	dr SelectMonFromParty, $4000
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
	dr _PrintDiploma, $4684


SECTION "rom35", ROMX[$4000], BANK[35]
; ROM $23 : $8C000 - $8FFFF

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
	drd ClearSpriteAnims2, $6752
	drd LoadMenuMonIcon, $677d
	drd UnfreezeMonIcons, $6900
	drd HoldSwitchmonIcon, $691b


SECTION "rom36", ROMX[$4000], BANK[36]
; ROM $24 : $90000 - $93FFF

	dr InitClock, $4647
	dr SetDayOfWeek, $4897
	dr PrintHour, $49ca
	dr PokeGear, $4a24
	dr _TownMap, $577d
	dr PlayRadio, $5888
	dr PokegearMap, $5930
	dr _FlyMap, $5942
	dr Pokedex_GetArea, $5b52
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
	dr ItemIsMail, $7ac4


SECTION "rom48", ROMX[$4000], BANK[48]
; ROM $30 : $C0000 - $C3FFF

	dr ChrisSpriteGFX, $4000
	dr RivalSpriteGFX, $43C0
	dr MomSpriteGFX, $4fc0


SECTION "rom49", ROMX[$4000], BANK[49]
; ROM $31 : $C4000 - $C7FFF

	dr PokeBallSpriteGFX, $7380
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


;SECTION "rom54", ROMX[$4000], BANK[54]
; ROM $36 : $D8000 - $DBFFF


;SECTION "rom55", ROMX[$4000], BANK[55]
; ROM $37 : $DC000 - $DFFFF


SECTION "rom56", ROMX[$4000], BANK[56]
; ROM $38 : $E0000 - $E3FFF

	dr _Diploma, $4002
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
	dr LoadStatsScreenPageTilesGFX, $40dc
	dr CollisionPermissionTable, $746d
	dr Shrink1Pic, $756d
	dr Shrink2Pic, $75fd
	dr _NameRater, $77a6
	dr PlaySlowCry, $78fa
	dr NewPokedexEntry, $7930
	dr ConvertMon_1to2, $799b
	dr UpdateUnownDex, $7aab
	dr CheckMagikarpLength, $7bc5
	dr MagikarpHouseSign, $7d24


SECTION "rom63", ROMX[$4000], BANK[63]
; ROM $3f : $FC000 - $FFFFF

	dr DummyPredef3A, $4001
	dr _AnimateTileset, $4003


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

BattleText::


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


;SECTION "rom104", ROMX[$4000], BANK[104]
; ROM $68 : $1A0000 - $1A3FFF


;SECTION "rom105", ROMX[$4000], BANK[105]
; ROM $69 : $1A4000 - $1A7FFF


SECTION "rom108", ROMX[$4000], BANK[108]
; ROM $6c : $1B0000 - $1B3FFF

	dr ItemNames, $4000
	dr TrainerClassNames, $49a1
	dr PokemonNames, $4c4a
	dr MoveNames, $564a


;SECTION "rom109", ROMX[$4000], BANK[109]
; ROM $6d : $1B4000 - $1B7FFF


;SECTION "rom110", ROMX[$4000], BANK[110]
; ROM $6e : $1B8000 - $1BBFFF


SECTION "rom112", ROMX[$4000], BANK[112]
; ROM $70 : $1C0000 - $1C3FFF

	dr _DudeAutoInput_A, $4b16
	dr _DudeAutoInput_RightA, $4b1b


SECTION "rom113", ROMX[$4000], BANK[113]
; ROM $71 : $1C4000 - $1C7FFF

	dr Data1c5800, $5800
	dr Function1c5c00, $5c00
	dr Function1c5c36, $5c36
	dr Function1c5ebd, $5ebd


SECTION "rom114", ROMX[$4000], BANK[114]
; ROM $72 : $1C8000 - $1CBFFF

	dr Function1c8000, $4000


;SECTION "rom120", ROMX[$4000], BANK[120]
; ROM $78 : $1E0000 - $1E3FFF


;SECTION "rom121", ROMX[$4000], BANK[121]
; ROM $79 : $1E4000 - $1E7FFF


;SECTION "rom122", ROMX[$4000], BANK[122]
; ROM $7a : $1E8000 - $1EBFFF


;SECTION "rom123", ROMX[$4000], BANK[123]
; ROM $7b : $1EC000 - $1EFFFF


;SECTION "rom124", ROMX[$4000], BANK[124]
; ROM $7c : $1F0000 - $1F3FFF


;SECTION "rom125", ROMX[$4000], BANK[125]
; ROM $7d : $1F4000 - $1F7FFF


;SECTION "rom126", ROMX[$4000], BANK[126]
; ROM $7e : $1F8000 - $1FBFFF
