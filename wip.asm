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

; Predefs
MACRO drp
	dr \1Predef, (\2) * 3 + $4b5b
ENDM


INCLUDE "main.asm"

EXPORT DEF MoveDescriptions EQU $4000
EXPORT DEF EggPic EQU $7b57


SECTION "rom2", ROMX[$4000], BANK[2]
; ROM $02 : $8000 - $BFFF

	dr _LoadOverworldAttrmapPals, $4000
	dr _ScrollBGMapPalettes, $404f
	dr SpawnPlayer, $461a
	dr CopyDECoordsToMapObject, $4653
	dr CopyObjectStruct, $46d7
	dr CopyTempObjectToObjectStruct, $4876
	dr QueueFollowerFirstStep, $4a7a
	dr _Sine, $4ac9
	dr GetPredefPointer, $4b3b
	dr PredefPointers, $4b5b
	drp SmallFarFlagAction, 3
	drp TryAddMonToParty, 6
	drp LinkTextboxAtHL, $10
	drp PlaceGraphic, $13
	drp ListMoves, $20
	drp InitSGBBorder, $30
	drp LoadSGBLayout, $31
	drp GetMonFrontpic, $3c
	drp DecompressGet2bpp, $3f
	dr ApplyMonOrTrainerPals, $51e2
	dr InitCGBPals, $5ccd


SECTION "rom3", ROMX[$4000], BANK[3]
; ROM $03 : $C000 - $FFFF

	dr EngineFlagAction, $401b
	dr _ReceiveItem, $51d7
	dr _TossItem, $520f
	dr _CheckItem, $5246
	dr GetTMHMNumber, $5409
	dr _CheckTossableItem, $5429
	dr RemoveMonFromPartyOrBox, $6013
	dr CheckCurPartyMonFainted, $6509
	dr _DoItemEffect, $679c


SECTION "rom4", ROMX[$4000], BANK[4]
; ROM $04 : $10000 - $13FFF

	dr _InitializeStartDay, $5780
	dr DoMysteryGiftIfDayHasPassed, $58c3
	dr NamingScreen, $5a3c


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
	dr _DoesSpriteHaveFacings, $4317
	dr _GetSpritePalette, $4334
	dr CheckWarpCollision, $4a18
	dr CheckDirectionalWarp, $4a2d
	dr CheckWarpFacingDown, $4a44
	dr TryLoadSaveFile, $4ef5
	dr TryLoadSaveData, $4f60
	dr _LoadOverworldTilemap, $538d
	dr RunMapSetupScript, $5484
	dr CheckUpdatePlayerSprite, $5612
	dr Tilesets, $56be
	dr CheckBreedmonCompatibility, $714b


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
	dr _InitScrollingMenu, $44e9
	dr _ScrollingMenu, $4505
	dr InitDecorations, $69b5


SECTION "rom10", ROMX[$4000], BANK[10]
; ROM $0a : $28000 - $2BFFF

	dr DoMysteryGift, $5ecb
	dr CopyMysteryGiftReceivedDecorationsToPC, $65a4
	dr JumpRoamMons, $69c5

;SECTION "rom11", ROMX[$4000], BANK[11]
; ROM $0b : $2C000 - $2FFFF


;SECTION "rom12", ROMX[$4000], BANK[12]
; ROM $0c : $30000 - $33FFF


;SECTION "rom13", ROMX[$4000], BANK[13]
; ROM $0d : $34000 - $37FFF


SECTION "rom14", ROMX[$4000], BANK[14]
; ROM $0e : $38000 - $3BFFF

	dr Battle_GetTrainerName, $58f2


SECTION "rom15", ROMX[$4000], BANK[15]
; ROM $0f : $3C000 - $3FFFF

	dr UpdatePlayerHUD, $5dac
	dr UpdateEnemyHUD, $5eac
	dr _BattleRandom, $6c62


SECTION "rom16", ROMX[$4000], BANK[16]
; ROM $10 : $40000 - $43FFF

	dr Moves, $572e


SECTION "rom17", ROMX[$4000], BANK[17]
; ROM $11 : $44000 - $47FFF

	dr DeletePartyMonMail, $480f


;SECTION "rom18", ROMX[$4000], BANK[18]
; ROM $12 : $48000 - $4BFFF


;SECTION "rom19", ROMX[$4000], BANK[19]
; ROM $13 : $4C000 - $4FFFF


SECTION "rom20", ROMX[$4000], BANK[20]
; ROM $14 : $50000 - $53FFF

	dr SelectMonFromParty, $4000
	dr GetTrainerPic, $5974
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


;SECTION "rom34", ROMX[$4000], BANK[34]
; ROM $22 : $88000 - $8BFFF


SECTION "rom35", ROMX[$4000], BANK[35]
; ROM $23 : $8C000 - $8FFFF

	dr _ResetClock, $417a
	dr _DeleteSaveData, $4311
	dr UpdateTimeOfDayPal, $435a
	dr _TimeOfDayPals, $436a
	dr _UpdateTimePals, $439b
	dr FadeInFromWhite, $43a4
	dr FadeOutToWhite, $43af
	dr ReplaceTimeOfDayPals, $43ed
	dr ClearSpriteAnims, $516c
	dr PlaySpriteAnimations, $5182
	dr _InitSpriteAnimStruct, $51ef
	dr _ReinitSpriteAnimFrame, $532a


SECTION "rom36", ROMX[$4000], BANK[36]
; ROM $24 : $90000 - $93FFF

	dr InitClock, $4647
	dr PrintHour, $49ca


SECTION "rom37", ROMX[$4000], BANK[37]
; ROM $25 : $94000 - $97FFF

	dr MapScenes, $4000
	dr MapGroupPointers, $40ed
	dr OverworldLoop, $65f9
	dr EnableScriptMode, $6b89
	dr ScriptEvents, $6b91
	dr CallCallback, $7366
	dr ClearCmdQueue, $7c3b


SECTION "rom38", ROMX[$4000], BANK[38]
; ROM $26 : $98000 - $9BFFF

	dr TitleScreenGFX1, $4000
	set_gs_diff -4
	drd TitleScreenTilemap, $47c6


;SECTION "rom39", ROMX[$4000], BANK[39]
; ROM $27 : $9C000 - $9FFFF


;SECTION "rom40", ROMX[$4000], BANK[40]
; ROM $28 : $A0000 - $A3FFF


;SECTION "rom41", ROMX[$4000], BANK[41]
; ROM $29 : $A4000 - $A7FFF


;SECTION "rom42", ROMX[$4000], BANK[42]
; ROM $2a : $A8000 - $ABFFF


;SECTION "rom43", ROMX[$4000], BANK[43]
; ROM $2b : $AC000 - $AFFFF


;SECTION "rom44", ROMX[$4000], BANK[44]
; ROM $2c : $B0000 - $B3FFF


;SECTION "rom45", ROMX[$4000], BANK[45]
; ROM $2d : $B4000 - $B7FFF


;SECTION "rom46", ROMX[$4000], BANK[46]
; ROM $2e : $B8000 - $BBFFF


;SECTION "rom47", ROMX[$4000], BANK[47]
; ROM $2f : $BC000 - $BFFFF


SECTION "rom48", ROMX[$4000], BANK[48]
; ROM $30 : $C0000 - $C3FFF

	dr ChrisSpriteGFX, $4000


;SECTION "rom49", ROMX[$4000], BANK[49]
; ROM $31 : $C4000 - $C7FFF


SECTION "rom50", ROMX[$4000], BANK[50]
; ROM $32 : $C8000 - $CBFFF

BattleAnimations::


SECTION "rom51", ROMX[$4000], BANK[51]
; ROM $33 : $CC000 - $CFFFF

ClearBattleAnims::
BattleAnimCommands::

;SECTION "rom52", ROMX[$4000], BANK[52]
; ROM $34 : $D0000 - $D3FFF


;SECTION "rom53", ROMX[$4000], BANK[53]
; ROM $35 : $D4000 - $D7FFF


;SECTION "rom54", ROMX[$4000], BANK[54]
; ROM $36 : $D8000 - $DBFFF


;SECTION "rom55", ROMX[$4000], BANK[55]
; ROM $37 : $DC000 - $DFFFF


;SECTION "rom56", ROMX[$4000], BANK[56]
; ROM $38 : $E0000 - $E3FFF


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
	dr CollisionPermissionTable, $746d
	dr Shrink1Pic, $756d
	dr Shrink2Pic, $75fd


SECTION "rom63", ROMX[$4000], BANK[63]
; ROM $3f : $FC000 - $FFFFF

	dr _AnimateTileset, $4003


SECTION "rom64", ROMX[$4000], BANK[64]
; ROM $40 : $100000 - $103FFF

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


;SECTION "rom88", ROMX[$4000], BANK[88]
; ROM $58 : $160000 - $163FFF


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


;SECTION "rom99", ROMX[$4000], BANK[99]
; ROM $63 : $18C000 - $18FFFF


;SECTION "rom100", ROMX[$4000], BANK[100]
; ROM $64 : $190000 - $193FFF


;SECTION "rom103", ROMX[$4000], BANK[103]
; ROM $67 : $19C000 - $19FFFF


;SECTION "rom104", ROMX[$4000], BANK[104]
; ROM $68 : $1A0000 - $1A3FFF


;SECTION "rom105", ROMX[$4000], BANK[105]
; ROM $69 : $1A4000 - $1A7FFF


;SECTION "rom106", ROMX[$4000], BANK[106]
; ROM $6a : $1A8000 - $1ABFFF


;SECTION "rom107", ROMX[$4000], BANK[107]
; ROM $6b : $1AC000 - $1AFFFF


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


;SECTION "rom111", ROMX[$4000], BANK[111]
; ROM $6f : $1BC000 - $1BFFFF


SECTION "rom112", ROMX[$4000], BANK[112]
; ROM $70 : $1C0000 - $1C3FFF

	dr _DudeAutoInput_A, $4b16


;SECTION "rom113", ROMX[$4000], BANK[113]
; ROM $71 : $1C4000 - $1C7FFF


SECTION "rom114", ROMX[$4000], BANK[114]
; ROM $72 : $1C8000 - $1CBFFF

	dr Function1c8000, $4000


;SECTION "rom115", ROMX[$4000], BANK[115]
; ROM $73 : $1CC000 - $1CFFFF


;SECTION "rom116", ROMX[$4000], BANK[116]
; ROM $74 : $1D0000 - $1D3FFF


;SECTION "rom117", ROMX[$4000], BANK[117]
; ROM $75 : $1D4000 - $1D7FFF


;SECTION "rom118", ROMX[$4000], BANK[118]
; ROM $76 : $1D8000 - $1DBFFF


;SECTION "rom119", ROMX[$4000], BANK[119]
; ROM $77 : $1DC000 - $1DFFFF


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


SECTION "rom127", ROMX[$4000], BANK[127]
; ROM $7f : $1FC000 - $1FFFFF

	dr Function1fc000, $4000
	dr Function1fc019, $4019
	dr Function1fc033, $4033
	dr Function1fc08d, $408d
	dr Function1fc0b8, $40b8
	dr Function1fc0ff, $40ff
	dr Function1fc119, $4119
	dr Function1fc14e, $414e
	dr Function1fc180, $4180
	dr Function1fc1cb, $41cb
	dr Function1fc1f2, $41f2
	dr Function1fc225, $4225
	dr Function1fc2d1, $42d1
	dr Function1fc5a0, $45a0
	dr Function1fc61e, $461e
	dr Function1fc657, $4657
	dr Function1fc6a4, $46a4
	dr Function1fc721, $4721
