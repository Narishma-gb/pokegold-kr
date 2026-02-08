_CantSurfText::
	text "여기서는 타는 기술을"
	next "사용할 수 없습니다"
	prompt

_AlreadySurfingText::
	text "이미 파도타기를"
	line "사용하고 있습니다"
	prompt

_AskSurfText::
	text "수면은 조용히 흔들리고 있다"
	line "……파도타기를 사용하겠습니까?"
	done

_UseWaterfallText::
	text "@"
	text_ram wStringBuffer2
	text "는(은) "
	line "폭포오르기를 사용했다!"
	done

_HugeWaterfallText::
	text "커다란 소리를 내며"
	line "물이 흘러 떨어지고 있다!"
	done

_AskWaterfallText::
	text "엄청 큰 폭포다!"
	line "……폭포오르기를 사용하겠습니까?"
	done

_UseDigText::
	text "@"
	text_ram wStringBuffer2
	text "는(은) "
	line "구멍파기를 사용했다!"
	done

_UseEscapeRopeText::
	text "<PLAYER>는(은) 동굴탈출 로프를"
	line "사용했다!"
	done

_CantUseDigText::
	text "여기서는 사용할 수 없습니다!"
	done

_TeleportReturnText::
	text "마지막에 가까이 왔다"
	line "포켓몬 센터로 돌아갑니다"
	done

_CantUseTeleportText::
	text "여기서는 사용할 수 없습니다!"

	para ""
	done

_AlreadyUsingStrengthText::
	text "이미 괴력을"
	line "발휘하고 있습니다"
	prompt

_UseStrengthText::
	text "@"
	text_ram wStringBuffer2
	text "는(은)"
	line "괴력을 발휘했다!"
	done

_MoveBoulderText::
	text "@"
	text_ram wStringBuffer1
	text "의 괴력덕분에"
	line "바위를 밀 수 있게 되었다!"
	prompt

_AskStrengthText::
	text "커다란 바위지만……"
	line "포켓몬의 기술로 밀 수 있을지도?"

	para "괴력을 사용하겠습니까?"
	done

_BouldersMoveText::
	text "괴력덕분에"
	line "바위를 밀어 움직이게 했다!"
	done

_BouldersMayMoveText::
	text "커다란 바위지만……"
	line "포켓몬의 기술로 밀 수 있을지도?"
	done

_UseWhirlpoolText::
	text "@"
	text_ram wStringBuffer2
	text "는(은) "
	line "소용돌이를 사용했다"
	prompt

_MayPassWhirlpoolText::
	text "세차게 소용돌이치고 있다"

	para "……포켓몬의 기술로"
	line "어떻게 될지도 몰라"
	done

_AskWhirlpoolText::
	text "앞길을 거친 소용돌이가"
	line "가로막고 있다!"

	para "소용돌이를 사용하겠습니까?"
	done

_UseHeadbuttText::
	text "@"
	text_ram wStringBuffer2
	text "는(은) "
	line "박치기를 사용했다!"
	prompt

_HeadbuttNothingText::
	text "……없군……"
	done

_AskHeadbuttText::
	text "이런 나무에는"
	line "포켓몬이 있을지도…"

	para "박치기를 사용하겠습니까?"
	done

_UseRockSmashText::
	text "@"
	text_ram wStringBuffer2
	text "는(은) "
	line "바위깨기를 사용했다!"
	prompt

_MaySmashText::
	text "단단해 보이는 바위지만……"
	line "포켓몬의 기술로 부술 수 있을지도"
	done

_AskRockSmashText::
	text "포켓몬의 기술로 부술 수 있겠다!"
	line "……바위깨기를 사용하겠습니까?"
	done

_RodBiteText::
	text "오!"
	line "걸렸다! 걸렸다!"
	prompt

_RodNothingText::
	text "낚이지 않는군……"
	prompt

_UnusedNothingHereText::
	text "이곳에는 아무것도"
	line "없는 것 같다"
	prompt

_CantGetOffBikeText::
	text "이곳에서는 내릴 수 없다!"
	done

_GotOnBikeText::
	text "<PLAYER>는(은)"
	line "@"
	text_ram wStringBuffer2
	text "에 탔다"
	done

_GotOffBikeText::
	text "<PLAYER>는(은)"
	line "@"
	text_ram wStringBuffer2
	text "로부터 내렸다"
	done

_AskCutText::
	text "……이 나무는 어쩐지"
	line "베어질 것 같다!"

	para "풀베기로 베겠습니까?"
	done

_CanCutText::
	text "이 나무는 어쩐지"
	line "베어질 것 같다!"
	done

_FoundItemText::
	text "<PLAYER>는(은)"
	line "@"
	text_ram wStringBuffer3
	text "를(을)"
	cont "발견했다!"
	done

_CantCarryItemText::
	text "그러나 <PLAYER>는(은)"
	line "더 이상 도구를 지닐 수 없다!"
	done

_WhitedOutText::
	text "<PLAYER>의 곁에는"
	line "싸울 수 있는 포켓몬이 없다!"

	para "<PLAYER>는(은)"
	line "눈앞이 깜깜해졌다!"
	done

_ItemfinderItemNearbyText::
	text "옷!"
	line "머신이 반응하고 있어!"
	cont "근처에 도구가 묻혀있다!"
	prompt

_ItemfinderNopeText::
	text "…… …… 후우!"
	line "…… 아무것도 반응하지 않는군"
	prompt

_PoisonFaintText::
	text "@"
	text_ram wStringBuffer3
	text "는(은)"
	line "힘이 빠졌다"
	prompt

_PoisonWhiteoutText::
	text "<PLAYER>의 곁에는"
	line "싸울 수 있는 포켓몬이 없다!"

	para "<PLAYER>는(은)"
	line "눈앞이 깜깜해졌다!"
	prompt

_UseSweetScentText::
	text "@"
	text_ram wStringBuffer3
	text "는(은)"
	line "달콤한 향기를 사용했다!"
	done

_SweetScentNothingText::
	text "……이곳에는"
	line "아무것도 없는 것 같다……"
	done

_SquirtbottleNothingText::
	text "<PLAYER>는(은) 물을 뿌렸다!"
	line "……아무것도 일어나지 않는다"
	done

_UseSacredAshText::
	text "<PLAYER>의 포켓몬은"
	line "모두 건강해졌다!"
	done

_AnEggCantHoldAnItemText::
	text "알에게는"
	line "물건을 지니게 할 수 없습니다!"
	prompt

_PackNoItemText::
	text "들고갈 수 없습니다"
	done

_AskThrowAwayText::
	text "몇 개 버리시겠습니까?"
	done

_AskQuantityThrowAwayText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line " @"
	text_decimal wItemQuantityChange, 1, 2
	text "개"
	cont "버려도 괜찮겠습니까?"
	done

_ThrewAwayText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "버렸습니다!"
	prompt

_OakThisIsntTheTimeText::
	text "오박사님의 말씀……"
	line "<PLAYER>야(아)! 이런 것에는"
	cont "사용할 때가 따로 있는 법!"
	prompt

_YouDontHaveAMonText::
	text "포켓몬을 가지고갈 수 없습니다!"
	prompt

_RegisteredItemText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "편리버튼에 등록했다!"
	prompt

_CantRegisterText::
	text "그 도구는"
	line "등록할 수 없습니다!"
	prompt

_AskItemMoveText::
	text "어디로"
	line "이동하겠습니까?"
	done

_PackEmptyText::
	text_start
	done

_YouCantUseItInABattleText::
	text "전투 중에는"
	line "할 수 없습니다!"
	prompt

_ActorNameText::
	text "<USER>@"
	text_end

_UsedMove1Text::
	text "의 @"
	text_end

_UsedMove2Text::
	text "는(은) @"
	text_end

_UsedInsteadText::
	text "명령을 무시하고@"
	text_end

_MoveNameText::
	text_start
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_EndUsedMove1Text::
	text "를(을) 사용했다!"
	done

_EndUsedMove2Text::
	text "했다!"
	done

_EndUsedMove3Text::
	text "를(을) 했다!"
	done

_EndUsedMove4Text::
	text " 공격!"
	done

_EndUsedMove5Text::
	text "!"
	done

Text_BattleEffectActivate::
	text "<USER>의"
	line "@"
	text_ram wStringBuffer2
	text "(이)가@"
	text_end

_BattleStatWentWayUpText::
	text "@"
	text_pause
	text_start
	scrl "부쩍 올랐다!"
	prompt

_BattleStatWentUpText::
	text " 올랐다!"
	prompt

Text_BattleFoeEffectActivate::
	text "<TARGET>의"
	line "@"
	text_ram wStringBuffer2
	text "(이)가@"
	text_end

_BattleStatSharplyFellText::
	text "@"
	text_pause
	text_start
	scrl "확 떨어졌다!"
	prompt

_BattleStatFellText::
	text " 떨어졌다!"
	prompt

Text_BattleUser::
	text "<USER>@"
	text_end

_BattleMadeWhirlwindText::
	text "의 주변에서"
	line "공기가 소용돌이를 감는다!"
	prompt

_BattleTookSunlightText::
	text "는(은)"
	line "빛을 흡수했다!"
	prompt

_BattleLoweredHeadText::
	text "는(은)"
	line "목을 집어넣었다!"
	prompt

_BattleGlowingText::
	text "는(은)"
	line "세찬 빛이 감싼다!"
	prompt

_BattleFlewText::
	text "는(은)"
	line "하늘높이 날아올랐다!"
	prompt

_BattleDugText::
	text "는(은)"
	line "구멍을 파서 땅속으로 숨었다!"
	prompt

Text_BreedHuh::
	text "얼라리…………?"

	para "@"
	text_end

_BreedClearboxText::
	text_start
	done

_BreedEggHatchText::
	text "알이 부화해서"
	line "@"
	text_ram wStringBuffer1
	text "(이)가"
	cont "태어났다!@"
	sound_caught_mon
	text_promptbutton
	text_end

_BreedAskNicknameText::
	text "태어난 @"
	text_ram wStringBuffer1
	text "에게"
	line "별명을 붙이겠습니까?"
	done

_LeftWithDayCareLadyText::
	text "보모 할머니에게 맡겼던"
	line "@"
	text_ram wBreedMon2Nickname
	text "(이)다"
	done

_LeftWithDayCareManText::
	text "보모 할아버지에게 맡겼던"
	line "@"
	text_ram wBreedMon1Nickname
	text "(이)다"
	done

_BreedBrimmingWithEnergyText::
	text "기운이 넘친다!"
	prompt

_BreedNoInterestText::
	text "@"
	text_ram wStringBuffer1
	text "에게는 전혀"
	line "흥미가 없는 것 같다"
	prompt

_BreedAppearsToCareForText::
	text "@"
	text_ram wStringBuffer1
	text "를(을) 매우"
	line "마음에 들어하고 있는 듯 하다!"
	prompt

_BreedFriendlyText::
	text "@"
	text_ram wStringBuffer1
	text "(이)랑은 매우"
	line "사이가 좋은 듯 하다"
	prompt

_BreedShowsInterestText::
	text "@"
	text_ram wStringBuffer1
	text "을(를) 약간"
	line "걱정하고 있는 듯 하다"
	prompt

_EmptyMailboxText::
	text "메일은 1통도"
	line "없습니다"
	prompt

_MailClearedPutAwayText::
	text "내용을 지운 메일을"
	line "가방에 넣었습니다"
	prompt

_MailPackFullText::
	text "가방이 가득 차서"
	line "메일이 들어갈 수 없습니다!"
	prompt

_MailMessageLostText::
	text "내용이 지워져버리겠지만"
	line "괜찮습니까?"
	done

_MailAlreadyHoldingItemText::
	text "이미 도구를 지니고 있어서"
	line "메일을 지니게할 수 없습니다"
	prompt

_MailEggText::
	text "알에게는 들게 할 수 없습니다!"
	prompt

_MailMovedFromBoxText::
	text "박스로부터 메일을 복사했습니다"
	prompt

_WasSentToBillsPCText::
	text "@"
	text_ram wStringBuffer1
	text "는(은) 이수재"
	line "가 있는 곳에 전송되어졌다!"
	prompt

_PCGottaHavePokemonText::
	text "포켓몬을 가지고있지 않는 놈은"
	line "거절이야!"
	prompt

_PCWhatText::
	text "뭐 할꺼야?"
	done

_PCMonHoldingMailText::
	text "메일을 가지고 있는"
	line "포켓몬이 있습니다"
	cont "메일을 받아주세요"
	prompt

_PCNoSingleMonText::
	text "1마리도 가지고있지 않냐?"
	prompt

_PCCantDepositLastMonText::
	text "그걸 맡기면"
	line "곤란하게되지 않겠니?"
	prompt

_PCCantTakeText::
	text "그이상 잘 정리하지 않으면"
	line "포켓몬 지닐 수 없을껄!"
	prompt

_ContestCaughtMonText::
	text "@"
	text_ram wStringBuffer1
	text "를(을)"
	line "잡았다!"
	prompt

_ContestAskSwitchText::
	text "포켓몬을 바꿔 넣을래?"
	done

_ContestAlreadyCaughtText::
	text "이미 "
	line "@"
	text_ram wStringBuffer1
	text "를(을)"
	cont "잡아놓았습니다"
	prompt

_ContestJudging_FirstPlaceText::
	text "그리고! 이번 대회"
	line "1등의 우승자는@"
	text_pause
	text_dots 3
	text_start

	para "@"
	text_ram wStringBuffer1
	text "를(을) 잡은"
	line "@"
	text_ram wBugContestWinnerName
	text "님!@"
	text_end

_ContestJudging_FirstPlaceScoreText::
	text_start

	para "득점은 @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text "점 입니다!"
	prompt

_ContestJudging_SecondPlaceText::
	text "2등은 @"
	text_ram wStringBuffer1
	text "를(을)"
	line "잡은 @"
	text_ram wBugContestWinnerName
	text "님@"
	text_end

_ContestJudging_SecondPlaceScoreText::
	text_start

	para "득점은 @"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text "점 입니다!"
	prompt

_ContestJudging_ThirdPlaceText::
	text "3등은 @"
	text_ram wStringBuffer1
	text "를(을)"
	line "잡은 @"
	text_ram wBugContestWinnerName
	text "님@"
	text_end

_ContestJudging_ThirdPlaceScoreText::
	text_start

	para "득점은 @"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text "점 입니다!"
	prompt

_MagikarpGuruMeasureText::
	text "그럼 너의 잉어킹"
	line "크기를 재보겠다"

	para "@"
	text_dots 3
	text "움 @"
	text_ram wStringBuffer1
	text "cm!"
	prompt

_KarpGuruRecordText::
	text "현재의 기록"
	line "@"
	text_ram wStringBuffer1
	text "cm"
	cont "@"
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

_LuckyNumberMatchPartyText::
	text "축하합니다! 당신이"
	line "데리고 있는@"
	text_ram wStringBuffer1
	text "의"

	para "아이디 넘버가 완전히"
	line "일치했습니다"
	prompt

_LuckyNumberMatchPCText::
	text "축하합니다! 컴퓨터에"
	line "맡겨 놓은@"
	text_ram wStringBuffer1
	text "의"

	para "아이디 넘버가 완벽하게"
	line "일치했습니다"
	prompt

_CaughtAskNicknameText::
	text "받은 @"
	text_ram wStringBuffer1
	text "에게"
	line "이름을 붙이겠습니까?"
	done

_PokecenterPCCantUseText::
	text "삐<HYPHEN>익!"
	line "포켓몬을 가지고있지 않는"
	cont "사람은 사용 할 수 없습니다!"
	prompt

_PlayersPCTurnOnText::
	text "<PLAYER>는(은)"
	line "컴퓨터의 스위치를 넣었다!"
	prompt

_PlayersPCAskWhatDoText::
	text "무엇을 하겠습니까?"
	done

_PlayersPCHowManyWithdrawText::
	text "몇 개를 꺼내겠습니까?"
	done

_PlayersPCWithdrewItemsText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "@"
	text_decimal wItemQuantityChange, 1, 2
	text "개 "
	cont "꺼냈습니다"
	prompt

_PlayersPCNoRoomWithdrawText::
	text "지닌 물건이 잔뜩 있어서"
	line "꺼낼 수 없습니다!"
	prompt

_PlayersPCNoItemsText::
	text "도구를 하나도"
	line "가지고 있지 않아!"
	prompt

_PlayersPCHowManyDepositText::
	text "몇 개를 맡기겠습니까?"
	done

_PlayersPCDepositItemsText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "@"
	text_decimal wItemQuantityChange, 1, 2
	text "개 "
	cont "맡겼습니다"
	prompt

_PlayersPCNoRoomDepositText::
	text "도구가 가득 있습니다"
	line "더 이상 맡길 수 없습니다!"
	prompt

_PokecenterPCTurnOnText::
	text "<PLAYER>는(은)"
	line "컴퓨터의 스위치를 켰다!"
	prompt

_PokecenterPCWhoseText::
	text "어느 곳의 컴퓨터와 연결해서"
	line "통신하겠습니까?"
	done

_PokecenterBillsPCText::
	text "이수재의 컴퓨터와 연결했다!"

	para "포켓몬 맡김 시스템을"
	line "불러냈습니다!"
	prompt

_PokecenterPlayersPCText::
	text "자신의 컴퓨터와 연결했다!"

	para "도구 맡김 시스템을"
	line "불러냈습니다!"
	prompt

_PokecenterOaksPCText::
	text "오박사의 컴퓨터와 연결했다!"

	para "포켓몬 도감"
	line "평가 시스템을 불러냈습니다!"
	prompt

_PokecenterPCOaksClosedText::
	text "…… …… ……"
	line "…… …… 통신 종료!"
	done

_OakPCText1::
	text "현재의 포켓몬 도감을"
	line "평가받겠습니까?"
	done

_OakPCText2::
	text "포켓몬 도감의"
	line "현재 완성도……"
	prompt

_OakPCText3::
	text "발견한 포켓몬 @"
	text_ram wStringBuffer3
	text_start
	line "잡은 포켓몬 @"
	text_ram wStringBuffer4
	text "!"

	para "오박사의 평가……"
	line "…… …… ……"
	done

_OakRating01::
	text "여기저기의 풀숲에 들어가"
	line "포켓몬을 잡는 것이다!"
	done

_OakRating02::
	text "움! 몬스터볼의"
	line "사용방법은 알고있는 것 같군!"
	done

_OakRating03::
	text "그럭저럭 적응된 것 같구나"
	line "하지만 아직도 갈 길은 멀단다!"
	done

_OakRating04::
	text "포켓몬 도감으로는 아직"
	line "양이 부족해! 여러"
	cont "종류의 포켓몬을 잡도록 하거라!"
	done

_OakRating05::
	text "후움, 열심히 하고 있군"
	line "그런대로 포켓몬 도감"
	cont "답게 되어가고 있단다!"
	done

_OakRating06::
	text "키워서 진화하는 것"
	line "돌의 영향으로 진화하는 것"
	cont "여러 포켓몬이 있단다!"
	done

_OakRating07::
	text "낚싯대는 손에 넣었는가?"
	line "여기저기서 낚시를 한다면"
	cont "더욱 많이 모을 수 있단다!"
	done

_OakRating08::
	text "굉장하군!"
	line "너는 물건을 수집하는 것을"
	cont "좋아하지?"
	done

_OakRating09::
	text "정해진 시간대밖에 움직이지"
	line "않는 포켓몬이 있다고 한다"
	done

_OakRating10::
	text "페이지도 늘어난 것 같구나!"
	line "그 상태로 더욱 열심히 하거라!"
	done

_OakRating11::
	text "호오! 흥미가 생기는구나!"
	line "잡는 것뿐만 아니라"
	cont "진화도 시켜놓거라!"
	done

_OakRating12::
	text "강집이란 사람과는 만났나?"
	line "볼을 만들어 받으면"
	cont "모으는 것도 순조롭다고 생각한다!"
	done

_OakRating13::
	text "옷! 생각해보면 저번에"
	line "조사했을 때보다도"
	cont "많은 포켓몬이 발견되었었지"
	done

_OakRating14::
	text "친구들과 교환하고 있는가?"
	line "혼자서는 매우 힘들테니까"
	done

_OakRating15::
	text "뭐랏! 200종류를 넘었다고!"
	line "이것은 대단히 좋은 도감이"
	cont "될 것 같구나! 기대하겠다!"
	done

_OakRating16::
	text "이렇게 발견할줄은……"
	line "이번 포켓몬 연구는"
	cont "너의 덕분이다!"
	done

_OakRating17::
	text "대단해! 말할 것도 없다!"
	line "너는 포켓몬 박사가 될꺼야!"
	done

_OakRating18::
	text "여기까지 도감이 만들어졌다면"
	line "이미 프로의 경지다!"
	done

_OakRating19::
	text "오옷 꿈에서도 그리던"
	line "퍼펙트한 도감의"
	cont "완성이구나!…… 축하한다!"
	done

_OakPCText4::
	text "…… 오박사의 컴퓨터와의"
	line "접속을 끝냈다!"
	done

_MemoryGameYeahText::
	text " 잘먹을께!"
	done

_MemoryGameDarnText::
	text "안됐다……"
	done

_StartMenuContestEndText::
	text "대회를"
	line "끝내겠습니까?"
	done

_ItemsTossOutHowManyText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "몇 개 버리겠습니까?"
	done

_ItemsThrowAwayText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "@"
	text_decimal wItemQuantityChange, 1, 2
	text "개"
	cont "버려도 되겠습니까?"
	done

_ItemsDiscardedText::
	text "@"
	text_ram wStringBuffer1
	text "를(을)"
	line "버렸습니다!"
	prompt

_ItemsTooImportantText::
	text "그것은 매우 중요한 것 입니다!"
	line "버리는 것은 할 수 없습니다!"
	prompt

_ItemsOakWarningText::
	text "오박사의 말씀……"
	line "<PLAYER>야(아)! 그런 것은"
	cont "사용할 때가 따로 있단다!"
	done

_PokemonSwapItemText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "(이)가"
	line "가지고 있던"
	cont "@"
	text_ram wStringBuffer1
	text "를(을) 맡아서"

	para "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "지니게 했다!"
	prompt

_PokemonHoldItemText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "에게"
	line "@"
	text_ram wStringBuffer2
	text "를(을)"
	cont "지니게 했다!"
	prompt

_PokemonRemoveMailText::
	text "메일을 풀지않으면"
	line "도구는 지닐 수 없습니다!"
	prompt

_PokemonNotHoldingText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "는(은)"
	line "아무것도 지니고 있지 않습니다!"
	prompt

_ItemStorageFullText::
	text "도구가 잔뜩 있어서"
	line "지닌 물건을 맡을 수 없습니다!"
	prompt

_PokemonTookItemText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "(으)로부터"
	line "@"
	text_ram wStringBuffer1
	text "를(을)"
	cont "맡았습니다!"
	prompt

_PokemonAskSwapItemText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text "는(은)"
	line "@"
	text_ram wStringBuffer1
	text "를(을)"
	cont "이미 지니고 있습니다"

	para "들고 있는 도구를"
	line "바꾸겠습니까?"
	done

_ItemCantHeldText::
	text "이 도구는"
	line "지닐 수가 없습니다!"
	prompt

_MailLoseMessageText::
	text "메일을 읽으면 메세지가"
	line "사라져버립니다만 괜찮습니까?"
	done

_MailDetachedText::
	text "@"
	text_ram wStringBuffer1
	text "에게서 메일을"
	line "받았습니다!"
	prompt

_MailNoSpaceText::
	text "도구가 잔뜩 있어서"
	line "메일을 받을 수 없습니다"
	prompt

_MailAskSendToPCText::
	text "받은 메일을 컴퓨터에"
	line "전송하겠습니까?"
	done

_MailboxFullText::
	text "컴퓨터의 메일박스가"
	line "가득 찼습니다!"
	prompt

_MailSentToPCText::
	text "메일을 컴퓨터에"
	line "전송했습니다"
	prompt

_PokemonNotEnoughHPText::
	text "체력이 부족합니다!"
	prompt

_MayRegisterItemText::
	text "가방에 넣어둔 도구를"
	line "편리버튼에 등록할 수 있습니다"
	done

_MainMenuTimeUnknownText::
	text "시계의 시각이 불명"
	done

_OakText1::
	text "이야<HYPHEN> 오래 기다리게 했다!"

	para "포켓몬스터의 세계에"
	line "잘왔단다!"

	para "나의 이름은 오박사"

	para "모두로부터는 포켓몬박사라고"
	line "존경받고 있단다"
	prompt

_OakText2::
	text "포켓몬스터………포켓몬"

	para "이 세계에는"
	line "포켓몬스터라고 불려지는"
	cont "생명체들이"
	cont "도처에 살고있다!@"
	text_end

_OakText3::
	text "@"
	text_promptbutton
	text_end

_OakText4::
	text "사람은 포켓몬들과"
	line "정답게 지내거나"
	cont "함께 싸우거나…………"
	cont "서로 도와가며"
	cont "살아가고 있단다"
	prompt

_OakText5::
	text "하지만 우리들은 포켓몬 전부를"
	line "알고 있지는 못하다"

	para "포켓몬의 비밀은"
	line "아직도 잔뜩 있다!"

	para "나는 그것을 밝혀내기 위하여"
	line "매일 포켓몬의 연구를"
	cont "계속하고 있다는 말이다!"
	prompt

_OakText6::
	text "그럼……"
	line "슬슬 너의 이름을"
	cont "가르쳐다오!"
	prompt

_OakText7::
	text "<PLAYER>!"
	line "준비는 되었는가?"

	para "드디어 이제부터"
	line "너의 이야기가 시작되어진다"

	para "즐거운 것도 괴로운 것도"
	line "잔뜩 너를 기다리고 있을 것이다!"

	para "꿈과 모험과!"
	line "포켓몬스터의 세계에!"
	cont "렛츠 고!"

	para "그럼 다음에 다시 만나자!"
	done

_ClockTimeMayBeWrongText::
	text "시계의 시간이 넘어가"
	line "있는지도 모릅니다"

	para "시간을 맞춰주십시오"
	prompt

_ClockSetWithControlPadText::
	text "십자키로 선택"
	line "A로 결정, B로 캔슬"
	done

_ClockIsThisOKText::
	text "이것으로 결정하겠습니까?"
	done

_ClockHasResetText::
	text "시간을 재 설정했습니다!"
	done

_LinkTimeoutText::
	text "기다린 시간이 길어서"
	line "한번 더 수정해주십시오"
	prompt

_LinkTradeCantBattleText::
	text "그 포켓몬을 교환한다면"
	line "싸우지 못하게 되어버립니다!"
	prompt

_LinkAbnormalMonText::
	text "상대가 고른@"
	text_ram wStringBuffer1
	text "에게"
	line "이상이 있는 것 같습니다!!"
	prompt

_LinkAskTradeForText::
	text "@"
	text_ram wBufferTrademonNickname
	text "과(와)"
	line "@"
	text_ram wStringBuffer1
	text "를(을)"
	cont "교한합니다!"
	done

_WouldYouLikeToSaveTheGameText::
	text "여기까지의 활약을"
	line "포켓몬 레포트에 기록하겠습니까?"
	done

_SavingDontTurnOffThePowerText::
	text "포켓몬 레포트에 기록하고 있습니다"
	line "전원을 끄지 말아주세요"
	done

_SavedTheGameText::
	text "<PLAYER>는(은)"
	line "레포트에 정확히 기록했습니다!"
	done

_AlreadyASaveFileText::
	text "이전에 기록한 레포트에"
	line "덮어써도 괜찮겠습니까?"
	done

_AnotherSaveFileText::
	text "별도의 모험"
	line "레포트가 기록되어져 있습니다!"
	cont "새로 기록해도 괜찮겠습니까?"
	done

_SaveFileCorruptedText::
	text "레포트의 내용이"
	line "손상되어 있습니다!!"
	prompt

_ChangeBoxSaveText::
	text "박스를 바꾸면"
	line "동시에 레포트가 기록되어집니다"
	cont "괜찮습니까?"
	done

_MoveMonWOMailSaveText::
	text "이 기능을 사용하면"
	line "포켓몬을 이동할 때마다"
	cont "레포트가 기록되어집니다"

	para "괜찮겠습니까?"
	done

_WindowAreaExceededErrorText:: ; unreferenced
	text "윈도우의 세이브에리어가"
	next "넘어버렸습니다"
	done

_WindowPoppingErrorText::
	text "켜질 창이"
	next "없습니다!"
	done

_CorruptedEventText:: ; unreferenced
	text "이벤트가 이상해!"
	prompt

_ObjectEventText::
	text "오브제 이벤트"
	done

_BGEventText::
	text "BG 이벤트"
	done

_CoordinatesEventText::
	text "좌표 이벤트"
	done

_ReceivedItemText::
	text "<PLAYER>는(은)"
	line "@"
	text_ram wStringBuffer4
	text "를(을) 얻었다"
	done

_PutItemInPocketText::
	text "<PLAYER>는(은)"
	line "@"
	text_ram wStringBuffer1
	text "를(을)"
	cont "@"
	text_ram wStringBuffer3
	text "에 넣었다!"
	prompt

_PocketIsFullText::
	text "저런!"
	line "@"
	text_ram wStringBuffer3
	text "(이)가 가득…"
	prompt

_CongratulationsYourPokemonText::
	text "축하합니다! @"
	text_ram wStringBuffer2
	text "는(은)"
	done

_EvolvedIntoText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "(으)로"
	cont "진화했다!"
	done

_StoppedEvolvingText::
	text "얼라리……?"
	line "@"
	text_ram wStringBuffer2
	text "의 변화가"
	cont "멈췄다!"
	prompt

_EvolvingText::
	text "…… 오잉!?"
	line "@"
	text_ram wStringBuffer2
	text "의 상태가……!"
	done

_MartHowManyText::
	text "몇 개를 구입하겠습니까?"
	done

_MartFinalPriceText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "@"
	text_decimal wItemQuantityChange, 1, 2
	text "개로"
	cont "@"
	text_decimal hMoneyTemp, 3, 6
	text "원 구입하시겠습니까?"
	done

_HerbShopLadyIntroText::
	text "…… 어서오너라"

	para "싸고 잘 듣는"
	line "한약방이란다"

	para "우리집 한약은 맛이 쓰기 때문에"
	line "포켓몬은 약간 싫어할지도"
	cont "호호호호……"
	done

_HerbalLadyHowManyText::
	text "몇 개를 원하니?"
	done

_HerbalLadyFinalPriceText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "@"
	text_decimal wItemQuantityChange, 1, 2
	text "개로"
	cont "@"
	text_decimal hMoneyTemp, 3, 6
	text "원 이란다"
	done

_HerbalLadyThanksText::
	text "늘상 이용해줘서"
	line "고맙구나…… 호호호"
	done

_HerbalLadyPackFullText::
	text "오잉?"
	line "가방이 가득 찬 것 같구나!"
	done

_HerbalLadyNoMoneyText::
	text "호호호호……!"
	line "돈이 부족하구나!"
	done

_HerbalLadyComeAgainText::
	text "다음에 오거라!"
	line "호호호……"
	done

_BargainShopIntroText::
	text "어서오너라"
	line "우리집은 싸게 파는 도구가게란다"

	para "다른 가게에서는 팔지 않는"
	line "진귀한 것을 가지고 있단다!"
	cont "단, 1개씩밖에 없단다!"
	done

_BargainShopFinalPriceText::
	text "@"
	text_ram wStringBuffer2
	text "는(은)"
	line "@"
	text_decimal hMoneyTemp, 3, 6
	text "원이다"
	cont "사고싶니?"
	done

_BargainShopThanksText::
	text "고맙구나"
	done

_BargainShopPackFullText::
	text "어이 어이"
	line "가방이 가득 찼잖아!"
	done

_BargainShopSoldOutText::
	text "그건 아까 샀잖아"
	line "이젠 품절이야"
	done

_BargainShopNoFundsText::
	text "어이 어이"
	line "돈이 부족한 것 같군"
	done

_BargainShopComeAgainText::
	text "다음에 사러오너라"
	done

_PharmacyIntroText::
	text "응? 무슨 볼일이라도?"
	line "약을 살꺼니?"
	done

_PharmacyHowManyText::
	text "얼만큼 살꺼니?"
	done

_PharmacyFinalPriceText::
	text "@"
	text_ram wStringBuffer2
	text "를(을)"
	line "@"
	text_decimal wItemQuantityChange, 1, 2
	text "개 해서"
	cont "@"
	text_decimal hMoneyTemp, 3, 6
	text "원 되겠다"
	done

_PharmacyThanksText::
	text "고맙구나!"
	done

_PharmacyPackFullText::
	text "짐이 잔뜩 있잖아"
	done

_PharmacyNoMoneyText::
	text "응? 돈이 부족하군"
	done

_PharmacyComeAgainText::
	text "그럼 할 수 없지"
	line "다음에 또 오너라"
	done

;unused
_NothingToSellText::
	text "도구를 한개도"
	next "지니고 있지 않습니다!"
	prompt

_MartSellHowManyText::
	text "몇 개 팔겠습니까?"
	done

_MartSellPriceText::
	text "@"
	text_decimal hMoneyTemp, 3, 6
	text "원 으로"
	line "쳐서 받겠습니다"

	para "괜찮겠습니까?"
	done

_MartWelcomeText::
	text "어서오세요!"
	line "물건을 사러 오셨군요!"
	done

_MartThanksText::
	text "예! 여기 있습니다!"
	line "고맙습니다"
	done

_MartNoMoneyText::
	text "돈이 부족하군요!"
	done

_MartPackFullText::
	text "그 이상은"
	line "지닐 수 없어요!"
	done

_MartCantBuyText::
	text "그 도구를"
	line "사들일 수는 없습니다!"

	para ""
	done

_MartComeAgainText::
	text "또 오세요!"
	done

_MartAskMoreText::
	text "그 밖에 우리들로서"
	line "무언가 힘이 될 수 있는 일은?"
	done

_MartBoughtText::
	text "@"
	text_ram wStringBuffer2
	text "를(을) 건네고"
	line "@"
	text_decimal hMoneyTemp, 3, 6
	text "원을 받았다!"
	done

_SlotsBetHowManyCoinsText::
	text "동전을"
	line "몇 개 걸겠습니까?"
	done
