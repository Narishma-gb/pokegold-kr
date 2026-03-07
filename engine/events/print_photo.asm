PhotoStudio:
	ld hl, .WhichMonPhotoText
	call PrintText
	farcall SelectMonFromParty
	jr c, .cancel
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg

	ld hl, .HoldStillText
	call PrintText
	call ReanchorMap
	xor a
	ld [wMonType], a
	farcall CopyMonToTempMon
	ld hl, wTempMonDVs
	predef GetUnownLetter

	farcall Pokepic
	call WaitButton
	farcall ClosePokepic

	call ReanchorMap
	ld hl, .PrestoAllDoneText
	jr .print_text

.cancel
	ld hl, .NoPhotoText
	jr .print_text

.egg
	ld hl, .EggPhotoText

.print_text
	call PrintText
	ret

.WhichMonPhotoText:
	text_far _WhichMonPhotoText
	text_end

.HoldStillText:
	text_far _HoldStillText
	text_end

.PrestoAllDoneText:
	text_far _PrestoAllDoneText
	text_end

.NoPhotoText:
	text_far _NoPhotoText
	text_end

.EggPhotoText:
	text_far _EggPhotoText
	text_end
