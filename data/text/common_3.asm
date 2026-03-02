_SlotsStartText::
	text "스타트!"
	done

_SlotsNotEnoughCoinsText::
	text "동전이 부족합니다!"
	prompt

_SlotsRanOutOfCoinsText::
	text "동전이"
	line "다 떨어져버렸다……"
	done

_SlotsPlayAgainText::
	text "다시한번"
	line "하겠습니까?"
	done

_SlotsLinedUpText::
	text "(이)가 모였다"
	line "동전 @"
	text_ram wStringBuffer2
	text "개 확보!"
	done

_SlotsDarnText::
	text "꽝-"
	done

_GearTodayText::
	text "@"
	text_today
	text_end

_GearEllipseText::
	text "……"
	done

_GearOutOfServiceText::
	text "이곳은  범위 밖 같군……"
	prompt

_PokegearAskWhoCallText::
	text "누구에게"
	line "전화를 걸겠습니까?"
	done

_PokegearPressButtonText::
	text "버튼을 누르면"
	line "포켓기어를 종료합니다"
	done

_PokegearAskDeleteText::
	text "정말 삭제하겠습니까?"
	done

_PhoneWrongNumberText::
	text "앗?"
	line "죄송합니다 틀렸네요……"
	done

_PhoneClickText::
	text "삑!"
	done

_PhoneEllipseText::
	text "……"
	done

_PhoneOutOfAreaText::
	text "……연결되지 않는군!"
	line "범위 밖에 있는 것 같다……"
	done

_PhoneJustTalkToThemText::
	text "근처에 있으니까"
	line "직접 만나서 이야기하자!"
	done

_PhoneThankYouText::
	text "고마워!"
	done

_SpaceSpaceColonText:: ; unreferenced
	text "   시"
	line "   분"
	done

_PasswordAskResetText::
	text "패스워드를 확인했습니다"
	line "「모험을 계속하다」를 선택"
	cont "재 설정을 해 주십시오"
	prompt

_PasswordWrongText::
	text "패스워드가 틀렸습니다!"
	prompt

_PasswordAskResetClockText::
	text "시계를 재 설정 하겠습니까?"
	done

_PasswordAskEnterText::
	text "패스워드를"
	line "넣어주세요"
	done

_ClearAllSaveDataText::
	text "모든 세이브 데이터 영역을"
	line "지우겠습니까?"
	done

_LearnedMoveText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "는(은) 새로"
	line "@"
	text_ram wStringBuffer2
	text "를(을) 배웠다@"
	sound_dex_fanfare_50_79
	text_promptbutton
	text_end

_MoveAskForgetText::
	text "어느 기술을"
	next "잊게 하고싶은가?"
	done

_StopLearningMoveText::
	text "그렇다면……"
	line "@"
	text_ram wStringBuffer2
	text "를(을)"
	cont "배우는 것을 그만두겠습니까?"
	done

_DidNotLearnMoveText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "는(은)"
	line "@"
	text_ram wStringBuffer2
	text "를(을)"
	cont "배우지 않고 끝났다!"
	prompt

_AskForgetMoveText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "는(은) 새로"
	line "@"
	text_ram wStringBuffer2
	text "를(을)"
	cont "배우고싶다……!"

	para "그러나 @"
	text_ram wMonOrItemNameBuffer
	text "는(은)"
	line "기술을 4개"
	cont "기억하고있기에 더 이상은 무리다"

	para "@"
	text_ram wStringBuffer2
	text "의 대신"
	line "다른 기술을 잊게하겠습니까?"
	done

Text_MoveForgetCount::
	text "1 2 ……@"
	text_pause
	text_end

	text_end ; unreferenced

_MoveForgotText::
	text "짠!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text "는(은)"
	line "@"
	text_ram wStringBuffer1
	text "의"
	cont "사용방법을 깨끗이 잊었다!"

	para "그리고……!"
	prompt

_MoveCantForgetHMText::
	text "그것은 중요한 기술입니다"
	line "잊게하는 것은 할 수 없습니다!"
	prompt

_CardFlipPlayWithThreeCoinsText::
	text "동전 3개로 도전할 수 있습니다"
	line "하시겠습니까?"
	done

_CardFlipNotEnoughCoinsText::
	text "동전이 부족해……"
	prompt

_CardFlipChooseACardText::
	text "카드를 골라주십시오"
	done

_CardFlipPlaceYourBetText::
	text "어디에 걸겠습니까?"
	done

_CardFlipPlayAgainText::
	text "다시 한번 하겠습니까?"
	done

_CardFlipShuffledText::
	text "카드를 섞겠습니다"
	prompt

_CardFlipYeahText::
	text "당첨-"
	done

_CardFlipDarnText::
	text "꽝-"
	done

_BallDodgedText::
	text "빠져나갔다!"
	line "이녀석은 붙잡지 못할 것 같다!"
	prompt

_BallMissedText::
	text "포켓몬에게"
	line "잘 맞추지 못했다!"
	prompt

_BallBrokeFreeText::
	text "이런! 포켓몬이"
	line "볼에서 튀어 나와버렸다!"
	prompt

_BallAppearedCaughtText::
	text "으으!"
	line "잡았다고 생각했는데!"
	prompt

_BallAlmostHadItText::
	text "분하다!"
	line "조금만 더하면 잡을 수 있었는데!"
	prompt

_BallSoCloseText::
	text "아까워라!"
	line "이제 곧 잡을 수 있었는데!"
	prompt

Text_BallCaught::
	text "신난다!"
	line "@"
	text_ram wEnemyMonNickname
	text "를(을) 잡았다@"
	sound_caught_mon
	text_end

	text_end ; unreferenced

_WaitButtonText::
	text "@"
	text_promptbutton
	text_end

_BallSentToPCText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "는(은) 이수재"
	line "가 있는 곳에 전송되었다!"
	prompt

_NewDexDataText::
	text "@"
	text_ram wEnemyMonNickname
	text "의"
	line "데이터가 새롭게"
	cont "포켓몬 도감에 세이브 되어집니다!@"
	sound_slot_machine_start
	text_promptbutton
	text_end

_AskGiveNicknameText::
	text "잡은 @"
	text_ram wStringBuffer1
	text "에게"
	line "별명을 붙이겠습니까?"
	done

_ItemStatRoseText::
	text "@"
	text_ram wStringBuffer1
	text "의"
	line "@"
	text_ram wStringBuffer2
	text "의"
	cont "기초 포인트가 올라갔다!"
	prompt

_ItemCantUseOnMonText::
	text "그 포켓몬에는"
	line "사용할 수 없습니다"
	prompt

_RepelUsedEarlierIsStillInEffectText::
	text "아직 전에 사용한 스프레이의"
	line "효과가 남아있습니다!"
	prompt

_PlayedFluteText::
	text "포켓몬의 피리를 불었다!"

	para "우음!"
	line "훌륭한 음색이다!"
	prompt

_FluteWakeUpText::
	text "모든 포켓몬이"
	line "눈을 떴다!"
	prompt

Text_PlayedPokeFlute::
	text "<PLAYER>는(은)"
	line "포켓몬의 피리를 불어보았다!@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_CoinCaseCountText::
	text "당신의 동전은"
	line "@"
	text_decimal wCoins, 2, 4
	text "개"
	done

_RaiseThePPOfWhichMoveText::
	text "어느 기술의"
	line "포인트를 늘릴까?"
	done

_RestoreThePPOfWhichMoveText::
	text "어느 기술을"
	line "회복할까?"
	done

_PPIsMaxedOutText::
	text "@"
	text_ram wStringBuffer2
	text "는(은) 더이상"
	line "늘릴 수가 없습니다!"
	prompt

_PPsIncreasedText::
	text "@"
	text_ram wStringBuffer2
	text "의"
	line "기술 포인트가 늘었다!"
	prompt

_PPRestoredText::
	text "기술 포인트가"
	line "회복되었다!"
	prompt

_SentTrophyHomeText::
	text "안으로부터 트로피가 나왔다!"
	line "@"
	sound_dex_fanfare_50_79
	text_ram wPlayerName
	text "는(은) 그것을"

	para "집으로 보냈다"
	prompt

_ItemLooksBitterText::
	text "…굉장히 맛이 쓸 것 같다……"
	prompt

_ItemCantUseOnEggText::
	text "알에 사용해도"
	line "효과가 없을꺼야"
	prompt

_ItemOakWarningText::
	text "오박사님의 말씀……"
	line "<PLAYER>야(아)! 그런 것은"
	cont "사용할 때가 따로 있단다!"
	prompt

_ItemBelongsToSomeoneElseText::
	text "중요한 보관품입니다!"
	next "사용하는 것은 할 수 없습니다!"
	prompt

_ItemWontHaveEffectText::
	text "사용해도 효과가 없을껄"
	prompt

_BallBlockedText::
	text "트레이너가 볼을 쳐냈다!"
	prompt

_BallDontBeAThiefText::
	text "다른사람의 물건을 훔치면 도둑놈!"
	prompt

_NoCyclingText::
	text "여기서는 자전거에"
	next "탈 수 없습니다"
	prompt

_ItemCantGetOnText::
	text "여기서는@"
	text_ram wStringBuffer1
	text "에"
	line "탈 수 없습니다"
	prompt

_BallBoxFullText::
	text "박스에 맡겨놓은 포켓몬이"
	line "가득차서 더는 사용 못합니다!"
	prompt

_ItemUsedText::
	text "<PLAYER>는(은)"
	line "@"
	text_low
	text_ram wStringBuffer2
	text "를(을)"
	cont "사용했다!"
	done

_ItemGotOnText::
	text "<PLAYER>는(은)@"
	text_low
	text_ram wStringBuffer2
	text "에 탔다"
	prompt

_ItemGotOffText::
	text "<PLAYER>는(은)@"
	text_low
	text_ram wStringBuffer2
	text "에서 내렸다"
	prompt

_KnowsMoveText::
	text "@"
	text_ram wStringBuffer1
	text "는(은) 이미"
	line "@"
	text_ram wStringBuffer2
	text "를(을)"
	cont "알고 있습니다"
	prompt

_MoveKnowsOneText::
	text "그 포켓몬은 기술을 1개밖에"
	line "가지고 있지 않아"
	done

_AskDeleteMoveText::
	text "오오! @"
	text_ram wStringBuffer1
	text "인가?"
	done

_DeleterForgotMoveText::
	text "대성공! 너의 포켓몬"
	line "기술을 잊게했다"
	done

_DeleterEggText::
	text "어이 어이"
	line "그건 알이잖아"
	done

_DeleterNoComeAgainText::
	text "그래? 잊게 하고싶은 기술이"
	line "있다면 또 오너라"
	done

_DeleterAskWhichMoveText::
	text "어느 기술을"
	line "잊게 하고싶니?"
	prompt

_DeleterIntroText::
	text "움 그리고……"
	line "그래 나는 망각의 아저씨"

	para "포켓몬의 기술을"
	line "잊게할 수 있단다"

	para "기술을 잊게하겠니?"
	done

_DeleterAskWhichMonText::
	text "어느 포켓몬?"
	prompt
