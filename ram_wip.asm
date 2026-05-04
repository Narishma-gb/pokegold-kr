EXPORT DEF wBetaPokerSGBPals EQU $C602
EXPORT DEF wBetaPokerSGBAttr EQU $C605
EXPORT DEF wBetaPokerSGBCol EQU $C606
EXPORT DEF wBetaPokerSGBRow EQU $C607
EXPORT DEF wLinkData EQU $C700
EXPORT DEF wTimeCapsulePlayerData EQU $C713
EXPORT DEF wLinkPlayerData EQU $C713
EXPORT DEF wTimeCapsulePartyMonOTs EQU $C81B
EXPORT DEF wLinkPlayerPartyMonOTs EQU $C835
EXPORT DEF wCurLinkOTPartyMonTypePointer EQU $CAE8
EXPORT DEF wLinkOTPartyMonTypes EQU $CAEA
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
EXPORT DEF wGBPrinterBrightness EQU $D258
EXPORT DEF wOptions2 EQU $D259
EXPORT DEF wGameData EQU $D25C
EXPORT DEF wOptionsEnd EQU $D25C
EXPORT DEF wLinkOTMailMetadata EQU $D3BA
EXPORT DEF wLinkOTMailPatchSet EQU $D40E
EXPORT DEF wLinkOTMailEnd EQU $D468
EXPORT DEF wHallOfFameCount EQU $D736
EXPORT DEF wTempTilemap EQU $D800
EXPORT DEF hClockResetTrigger EQU $FFEE


SECTION UNION "Miscellaneous", WRAM0

	ds 200

wPokedexDataStart::
wPokedexOrder:: ds $100 ; >= NUM_POKEMON
wPokedexOrderEnd::
wDexListingScrollOffset:: db ; offset of the first displayed entry from the start
wDexListingCursor:: db ; Dex cursor
wDexListingEnd:: db ; Last mon to display
wDexListingHeight:: db ; number of entries displayed at once in the dex listing
wCurDexMode:: db ; Pokedex Mode
wDexSearchMonType1:: db ; first type to search
wDexSearchMonType2:: db ; second type to search
wDexSearchResultCount:: db
wDexArrowCursorPosIndex:: db
wDexArrowCursorDelayCounter:: db
wDexArrowCursorBlinkCounter:: db
wDexSearchSlowpokeFrame:: db
wUnlockedUnownMode:: db
wDexCurUnownIndex:: db
wDexUnownCount:: db
wDexConvertedMonType:: db ; mon type converted from dex search mon type
wDexListingScrollOffsetBackup:: db
wDexListingCursorBackup:: db
wBackupDexListingCursor:: db
wBackupDexListingPage:: db
wDexCurLocation:: db
wPokedexDataEnd::
	ds 3

ENDSECTION
