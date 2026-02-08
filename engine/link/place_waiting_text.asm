PlaceWaitingText::
	hlcoord 3, 9
	ld b, 2
	ld c, 11

	ld a, [wBattleMode]
	and a
	jr z, .notinbattle

	call Textbox
	jr .proceed

.notinbattle
	predef LinkTextboxAtHL

.proceed
	hlcoord 6, 11
	ld de, .Waiting
	call PlaceString
	ld c, 50
	jp DelayFrames

.Waiting:
	db "통신 대기중!@"

DummyPredef1:
	ret
