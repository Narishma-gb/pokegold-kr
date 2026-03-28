HangulStructureTable0:
rept 16 * 16
	dw -1
endr

HangulStructureTable1:
	dw -1
	kr_struct INITIAL_GIYEOK,      MEDIAL_A                       ; 가
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_GIYEOK       ; 각
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_NIEUN        ; 간
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_DIGEUT       ; 갇
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_RIEUL        ; 갈
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 갉
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 갊
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_MIEUM        ; 감
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_BIEUP        ; 갑
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_BIEUP_SIOT   ; 값
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_SIOT         ; 갓
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_SSANGSIOT    ; 갔
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_IEUNG        ; 강
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_JIEUT        ; 갖
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_CHIEUT       ; 갗

	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_TIEUT        ; 같
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_PIEUP        ; 갚
	kr_struct INITIAL_GIYEOK,      MEDIAL_A,   FINAL_HIEUT        ; 갛
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE                      ; 개
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_GIYEOK       ; 객
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_NIEUN        ; 갠
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_RIEUL        ; 갤
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_MIEUM        ; 갬
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_BIEUP        ; 갭
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_SIOT         ; 갯
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_SSANGSIOT    ; 갰
	kr_struct INITIAL_GIYEOK,      MEDIAL_AE,  FINAL_IEUNG        ; 갱
	kr_struct INITIAL_GIYEOK,      MEDIAL_YA                      ; 갸
	kr_struct INITIAL_GIYEOK,      MEDIAL_YA,  FINAL_GIYEOK       ; 갹
	kr_struct INITIAL_GIYEOK,      MEDIAL_YA,  FINAL_NIEUN        ; 갼
	kr_struct INITIAL_GIYEOK,      MEDIAL_YA,  FINAL_RIEUL        ; 걀

	kr_struct INITIAL_GIYEOK,      MEDIAL_YA,  FINAL_SIOT         ; 걋
	kr_struct INITIAL_GIYEOK,      MEDIAL_YA,  FINAL_IEUNG        ; 걍
	kr_struct INITIAL_GIYEOK,      MEDIAL_YAE                     ; 걔
	kr_struct INITIAL_GIYEOK,      MEDIAL_YAE, FINAL_NIEUN        ; 걘
	kr_struct INITIAL_GIYEOK,      MEDIAL_YAE, FINAL_RIEUL        ; 걜
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO                      ; 거
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_GIYEOK       ; 걱
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_NIEUN        ; 건
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_DIGEUT       ; 걷
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_RIEUL        ; 걸
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 걺
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_MIEUM        ; 검
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_BIEUP        ; 겁
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_SIOT         ; 것
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_SSANGSIOT    ; 겄
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_IEUNG        ; 겅

	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_JIEUT        ; 겆
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_TIEUT        ; 겉
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_PIEUP        ; 겊
	kr_struct INITIAL_GIYEOK,      MEDIAL_EO,  FINAL_HIEUT        ; 겋
	kr_struct INITIAL_GIYEOK,      MEDIAL_E                       ; 게
	kr_struct INITIAL_GIYEOK,      MEDIAL_E,   FINAL_NIEUN        ; 겐
	kr_struct INITIAL_GIYEOK,      MEDIAL_E,   FINAL_RIEUL        ; 겔
	kr_struct INITIAL_GIYEOK,      MEDIAL_E,   FINAL_MIEUM        ; 겜
	kr_struct INITIAL_GIYEOK,      MEDIAL_E,   FINAL_BIEUP        ; 겝
	kr_struct INITIAL_GIYEOK,      MEDIAL_E,   FINAL_SIOT         ; 겟
	kr_struct INITIAL_GIYEOK,      MEDIAL_E,   FINAL_SSANGSIOT    ; 겠
	kr_struct INITIAL_GIYEOK,      MEDIAL_E,   FINAL_IEUNG        ; 겡
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO                     ; 겨
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_GIYEOK       ; 격
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_SSANGGIYEOK  ; 겪
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_NIEUN        ; 견

	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_DIGEUT       ; 겯
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_RIEUL        ; 결
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_BIEUP        ; 겹
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_MIEUM        ; 겸
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_SIOT         ; 겻
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_SSANGSIOT    ; 겼
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_IEUNG        ; 경
	kr_struct INITIAL_GIYEOK,      MEDIAL_YEO, FINAL_TIEUT        ; 곁
	kr_struct INITIAL_GIYEOK,      MEDIAL_YE                      ; 계
	kr_struct INITIAL_GIYEOK,      MEDIAL_YE,  FINAL_NIEUN        ; 곈
	kr_struct INITIAL_GIYEOK,      MEDIAL_YE,  FINAL_RIEUL        ; 곌
	kr_struct INITIAL_GIYEOK,      MEDIAL_YE,  FINAL_BIEUP        ; 곕
	kr_struct INITIAL_GIYEOK,      MEDIAL_YE,  FINAL_SIOT         ; 곗
	kr_struct INITIAL_GIYEOK,      MEDIAL_O                       ; 고
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_GIYEOK       ; 곡
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_NIEUN        ; 곤

rept 16
	dw -1
endr

	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_DIGEUT       ; 곧
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_RIEUL        ; 골
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 곪
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_RIEUL_SIOT   ; 곬
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_RIEUL_HIEUT  ; 곯
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_MIEUM        ; 곰
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_BIEUP        ; 곱
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_SIOT         ; 곳
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_IEUNG        ; 공
	kr_struct INITIAL_GIYEOK,      MEDIAL_O,   FINAL_JIEUT        ; 곶
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA                      ; 과
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_GIYEOK       ; 곽
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_NIEUN        ; 관
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_RIEUL        ; 괄
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_RIEUL_MIEUM  ; 괆
	dw -1

	dw -1
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_MIEUM        ; 괌
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_BIEUP        ; 괍
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_SIOT         ; 괏
	kr_struct INITIAL_GIYEOK,      MEDIAL_WA,  FINAL_IEUNG        ; 광
	kr_struct INITIAL_GIYEOK,      MEDIAL_WAE                     ; 괘
	kr_struct INITIAL_GIYEOK,      MEDIAL_WAE, FINAL_NIEUN        ; 괜
	kr_struct INITIAL_GIYEOK,      MEDIAL_WAE, FINAL_RIEUL        ; 괠
	kr_struct INITIAL_GIYEOK,      MEDIAL_WAE, FINAL_BIEUP        ; 괩
	kr_struct INITIAL_GIYEOK,      MEDIAL_WAE, FINAL_SSANGSIOT    ; 괬
	kr_struct INITIAL_GIYEOK,      MEDIAL_WAE, FINAL_IEUNG        ; 괭
	kr_struct INITIAL_GIYEOK,      MEDIAL_OE                      ; 괴
	kr_struct INITIAL_GIYEOK,      MEDIAL_OE,  FINAL_GIYEOK       ; 괵
	kr_struct INITIAL_GIYEOK,      MEDIAL_OE,  FINAL_NIEUN        ; 괸
	kr_struct INITIAL_GIYEOK,      MEDIAL_OE,  FINAL_RIEUL        ; 괼
	kr_struct INITIAL_GIYEOK,      MEDIAL_OE,  FINAL_DIGEUT       ; 괻

	kr_struct INITIAL_GIYEOK,      MEDIAL_OE,  FINAL_BIEUP        ; 굅
	kr_struct INITIAL_GIYEOK,      MEDIAL_OE,  FINAL_SIOT         ; 굇
	kr_struct INITIAL_GIYEOK,      MEDIAL_OE,  FINAL_IEUNG        ; 굉
	kr_struct INITIAL_GIYEOK,      MEDIAL_YO                      ; 교
	kr_struct INITIAL_GIYEOK,      MEDIAL_YO,  FINAL_NIEUN        ; 굔
	kr_struct INITIAL_GIYEOK,      MEDIAL_YO,  FINAL_RIEUL        ; 굘
	kr_struct INITIAL_GIYEOK,      MEDIAL_YO,  FINAL_BIEUP        ; 굡
	kr_struct INITIAL_GIYEOK,      MEDIAL_YO,  FINAL_SIOT         ; 굣
	kr_struct INITIAL_GIYEOK,      MEDIAL_U                       ; 구
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_GIYEOK       ; 국
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_NIEUN        ; 군
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_DIGEUT       ; 굳
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_RIEUL        ; 굴
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_RIEUL_GIYEOK ; 굵
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_RIEUL_MIEUM  ; 굶
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_RIEUL_HIEUT  ; 굻

	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_MIEUM        ; 굼
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_BIEUP        ; 굽
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_SIOT         ; 굿
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_IEUNG        ; 궁
	kr_struct INITIAL_GIYEOK,      MEDIAL_U,   FINAL_JIEUT        ; 궂
	kr_struct INITIAL_GIYEOK,      MEDIAL_WO                      ; 궈
	kr_struct INITIAL_GIYEOK,      MEDIAL_WO,  FINAL_GIYEOK       ; 궉
	kr_struct INITIAL_GIYEOK,      MEDIAL_WO,  FINAL_NIEUN        ; 권
	kr_struct INITIAL_GIYEOK,      MEDIAL_WO,  FINAL_RIEUL        ; 궐
	kr_struct INITIAL_GIYEOK,      MEDIAL_WO,  FINAL_SSANGSIOT    ; 궜
	kr_struct INITIAL_GIYEOK,      MEDIAL_WO,  FINAL_IEUNG        ; 궝
	kr_struct INITIAL_GIYEOK,      MEDIAL_WE                      ; 궤
	kr_struct INITIAL_GIYEOK,      MEDIAL_WE,  FINAL_SIOT         ; 궷
	kr_struct INITIAL_GIYEOK,      MEDIAL_WI                      ; 귀
	kr_struct INITIAL_GIYEOK,      MEDIAL_WI,  FINAL_GIYEOK       ; 귁
	kr_struct INITIAL_GIYEOK,      MEDIAL_WI,  FINAL_NIEUN        ; 귄

	kr_struct INITIAL_GIYEOK,      MEDIAL_WI,  FINAL_RIEUL        ; 귈
	kr_struct INITIAL_GIYEOK,      MEDIAL_WI,  FINAL_MIEUM        ; 귐
	kr_struct INITIAL_GIYEOK,      MEDIAL_WI,  FINAL_BIEUP        ; 귑
	kr_struct INITIAL_GIYEOK,      MEDIAL_WI,  FINAL_SIOT         ; 귓
	kr_struct INITIAL_GIYEOK,      MEDIAL_YU                      ; 규
	kr_struct INITIAL_GIYEOK,      MEDIAL_YU,  FINAL_NIEUN        ; 균
	kr_struct INITIAL_GIYEOK,      MEDIAL_YU,  FINAL_RIEUL        ; 귤
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU                      ; 그
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_GIYEOK       ; 극
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_NIEUN        ; 근
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_DIGEUT       ; 귿
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_RIEUL        ; 글
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_RIEUL_GIYEOK ; 긁
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_MIEUM        ; 금
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_BIEUP        ; 급
	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_SIOT         ; 긋

	kr_struct INITIAL_GIYEOK,      MEDIAL_EU,  FINAL_IEUNG        ; 긍
	kr_struct INITIAL_GIYEOK,      MEDIAL_UI                      ; 긔
	kr_struct INITIAL_GIYEOK,      MEDIAL_I                       ; 기
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_GIYEOK       ; 긱
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_NIEUN        ; 긴
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_DIGEUT       ; 긷
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_RIEUL        ; 길
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_RIEUL_MIEUM  ; 긺
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_MIEUM        ; 김
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_BIEUP        ; 깁
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_SIOT         ; 깃
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_IEUNG        ; 깅
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_JIEUT        ; 깆
	kr_struct INITIAL_GIYEOK,      MEDIAL_I,   FINAL_PIEUP        ; 깊
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A                       ; 까
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_GIYEOK       ; 깍

	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_SSANGGIYEOK  ; 깎
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_NIEUN        ; 깐
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_RIEUL        ; 깔
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 깖
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_MIEUM        ; 깜
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_BIEUP        ; 깝
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_SIOT         ; 깟
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_SSANGSIOT    ; 깠
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_IEUNG        ; 깡
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_A,   FINAL_TIEUT        ; 깥
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE                      ; 깨
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_GIYEOK       ; 깩
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_NIEUN        ; 깬
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_RIEUL        ; 깰
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_MIEUM        ; 깸
	dw -1

	dw -1
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_BIEUP        ; 깹
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_SIOT         ; 깻
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_SSANGSIOT    ; 깼
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_AE,  FINAL_IEUNG        ; 깽
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YA                      ; 꺄
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YA,  FINAL_GIYEOK       ; 꺅
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YA,  FINAL_RIEUL        ; 꺌
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO                      ; 꺼
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_GIYEOK       ; 꺽
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_SSANGGIYEOK  ; 꺾
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_NIEUN        ; 껀
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_RIEUL        ; 껄
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_MIEUM        ; 껌
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_BIEUP        ; 껍
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_SIOT         ; 껏

	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_SSANGSIOT    ; 껐
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EO,  FINAL_IEUNG        ; 껑
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_E                       ; 께
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_E,   FINAL_GIYEOK       ; 껙
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_E,   FINAL_NIEUN        ; 껜
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_E,   FINAL_MIEUM        ; 껨
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_E,   FINAL_SIOT         ; 껫
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_E,   FINAL_IEUNG        ; 껭
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YEO                     ; 껴
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YEO, FINAL_NIEUN        ; 껸
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YEO, FINAL_RIEUL        ; 껼
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YEO, FINAL_SIOT         ; 꼇
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YEO, FINAL_SSANGSIOT    ; 꼈
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YEO, FINAL_TIEUT        ; 꼍
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YE                      ; 꼐
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O                       ; 꼬

	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_GIYEOK       ; 꼭
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_NIEUN        ; 꼰
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_NIEUN_HIEUT  ; 꼲
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_RIEUL        ; 꼴
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_MIEUM        ; 꼼
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_BIEUP        ; 꼽
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_SIOT         ; 꼿
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_IEUNG        ; 꽁
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_JIEUT        ; 꽂
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_O,   FINAL_CHIEUT       ; 꽃
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WA                      ; 꽈
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WA,  FINAL_GIYEOK       ; 꽉
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WA,  FINAL_RIEUL        ; 꽐
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WA,  FINAL_SSANGSIOT    ; 꽜
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WA,  FINAL_IEUNG        ; 꽝
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WAE                     ; 꽤

HangulStructureTable2:
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WAE, FINAL_GIYEOK       ; 꽥
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WAE, FINAL_IEUNG        ; 꽹
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_OE                      ; 꾀
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_OE,  FINAL_NIEUN        ; 꾄
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_OE,  FINAL_RIEUL        ; 꾈
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_OE,  FINAL_MIEUM        ; 꾐
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_OE,  FINAL_BIEUP        ; 꾑
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_OE,  FINAL_IEUNG        ; 꾕
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YO                      ; 꾜
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U                       ; 꾸
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_GIYEOK       ; 꾹
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_NIEUN        ; 꾼
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_RIEUL        ; 꿀
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_RIEUL_HIEUT  ; 꿇
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_MIEUM        ; 꿈
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_BIEUP        ; 꿉

	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_SIOT         ; 꿋
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_IEUNG        ; 꿍
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_U,   FINAL_JIEUT        ; 꿎
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WO                      ; 꿔
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WO,  FINAL_RIEUL        ; 꿜
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WO,  FINAL_SSANGSIOT    ; 꿨
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WO,  FINAL_IEUNG        ; 꿩
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WE                      ; 꿰
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WE,  FINAL_GIYEOK       ; 꿱
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WE,  FINAL_NIEUN        ; 꿴
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WE,  FINAL_RIEUL        ; 꿸
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WE,  FINAL_MIEUM        ; 뀀
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WE,  FINAL_BIEUP        ; 뀁
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WE,  FINAL_SSANGSIOT    ; 뀄
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WI                      ; 뀌
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WI,  FINAL_NIEUN        ; 뀐

	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WI,  FINAL_RIEUL        ; 뀔
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WI,  FINAL_MIEUM        ; 뀜
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_WI,  FINAL_BIEUP        ; 뀝
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_YU                      ; 뀨
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU                      ; 끄
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_GIYEOK       ; 끅
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_NIEUN        ; 끈
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_NIEUN_HIEUT  ; 끊
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_RIEUL        ; 끌
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_RIEUL_MIEUM  ; 끎
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_RIEUL_HIEUT  ; 끓
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_MIEUM        ; 끔
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_BIEUP        ; 끕
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_SIOT         ; 끗
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_IEUNG        ; 끙
	dw -1

	dw -1
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_EU,  FINAL_TIEUT        ; 끝
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I                       ; 끼
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I,   FINAL_GIYEOK       ; 끽
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I,   FINAL_NIEUN        ; 낀
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I,   FINAL_RIEUL        ; 낄
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I,   FINAL_MIEUM        ; 낌
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I,   FINAL_BIEUP        ; 낍
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I,   FINAL_SIOT         ; 낏
	kr_struct INITIAL_SSANGGIYEOK, MEDIAL_I,   FINAL_IEUNG        ; 낑
	kr_struct INITIAL_NIEUN,       MEDIAL_A                       ; 나
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_GIYEOK       ; 낙
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_SSANGGIYEOK  ; 낚
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_NIEUN        ; 난
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_DIGEUT       ; 낟
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_RIEUL        ; 날

	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 낡
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 낢
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_MIEUM        ; 남
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_BIEUP        ; 납
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_SIOT         ; 낫
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_SSANGSIOT    ; 났
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_IEUNG        ; 낭
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_JIEUT        ; 낮
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_CHIEUT       ; 낯
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_TIEUT        ; 낱
	kr_struct INITIAL_NIEUN,       MEDIAL_A,   FINAL_HIEUT        ; 낳
	kr_struct INITIAL_NIEUN,       MEDIAL_AE                      ; 내
	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_GIYEOK       ; 낵
	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_NIEUN        ; 낸
	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_RIEUL        ; 낼
	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_MIEUM        ; 냄

rept 16
	dw -1
endr

	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_BIEUP        ; 냅
	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_SIOT         ; 냇
	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 냈
	kr_struct INITIAL_NIEUN,       MEDIAL_AE,  FINAL_IEUNG        ; 냉
	kr_struct INITIAL_NIEUN,       MEDIAL_YA                      ; 냐
	kr_struct INITIAL_NIEUN,       MEDIAL_YA,  FINAL_GIYEOK       ; 냑
	kr_struct INITIAL_NIEUN,       MEDIAL_YA,  FINAL_NIEUN        ; 냔
	kr_struct INITIAL_NIEUN,       MEDIAL_YA,  FINAL_RIEUL        ; 냘
	kr_struct INITIAL_NIEUN,       MEDIAL_YA,  FINAL_MIEUM        ; 냠
	kr_struct INITIAL_NIEUN,       MEDIAL_YA,  FINAL_IEUNG        ; 냥
	kr_struct INITIAL_NIEUN,       MEDIAL_EO                      ; 너
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_GIYEOK       ; 넉
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_GIYEOK_SIOT  ; 넋
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_NIEUN        ; 넌
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_RIEUL        ; 널
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 넒

	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_RIEUL_BIEUP  ; 넓
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_MIEUM        ; 넘
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_BIEUP        ; 넙
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_SIOT         ; 넛
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_SSANGSIOT    ; 넜
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_IEUNG        ; 넝
	kr_struct INITIAL_NIEUN,       MEDIAL_EO,  FINAL_HIEUT        ; 넣
	kr_struct INITIAL_NIEUN,       MEDIAL_E                       ; 네
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_GIYEOK       ; 넥
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_NIEUN        ; 넨
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_RIEUL        ; 넬
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_MIEUM        ; 넴
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_BIEUP        ; 넵
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_SIOT         ; 넷
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_SSANGSIOT    ; 넸
	kr_struct INITIAL_NIEUN,       MEDIAL_E,   FINAL_IEUNG        ; 넹

	kr_struct INITIAL_NIEUN,       MEDIAL_YEO                     ; 녀
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_GIYEOK       ; 녁
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_NIEUN        ; 년
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_RIEUL        ; 녈
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_MIEUM        ; 념
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_BIEUP        ; 녑
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 녔
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_IEUNG        ; 녕
	kr_struct INITIAL_NIEUN,       MEDIAL_YEO, FINAL_KIEUK        ; 녘
	kr_struct INITIAL_NIEUN,       MEDIAL_YE                      ; 녜
	kr_struct INITIAL_NIEUN,       MEDIAL_YE,  FINAL_NIEUN        ; 녠
	kr_struct INITIAL_NIEUN,       MEDIAL_O                       ; 노
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_GIYEOK       ; 녹
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_NIEUN        ; 논
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_RIEUL        ; 놀
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 놂

	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_MIEUM        ; 놈
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_BIEUP        ; 놉
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_SIOT         ; 놋
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_IEUNG        ; 농
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_PIEUP        ; 높
	kr_struct INITIAL_NIEUN,       MEDIAL_O,   FINAL_HIEUT        ; 놓
	kr_struct INITIAL_NIEUN,       MEDIAL_WA                      ; 놔
	kr_struct INITIAL_NIEUN,       MEDIAL_WA,  FINAL_NIEUN        ; 놘
	kr_struct INITIAL_NIEUN,       MEDIAL_WA,  FINAL_RIEUL        ; 놜
	kr_struct INITIAL_NIEUN,       MEDIAL_WA,  FINAL_SSANGSIOT    ; 놨
	kr_struct INITIAL_NIEUN,       MEDIAL_OE                      ; 뇌
	kr_struct INITIAL_NIEUN,       MEDIAL_OE,  FINAL_NIEUN        ; 뇐
	kr_struct INITIAL_NIEUN,       MEDIAL_OE,  FINAL_RIEUL        ; 뇔
	kr_struct INITIAL_NIEUN,       MEDIAL_OE,  FINAL_MIEUM        ; 뇜
	kr_struct INITIAL_NIEUN,       MEDIAL_OE,  FINAL_BIEUP        ; 뇝
	dw -1

	dw -1
	kr_struct INITIAL_NIEUN,       MEDIAL_OE,  FINAL_SIOT         ; 뇟
	kr_struct INITIAL_NIEUN,       MEDIAL_YO                      ; 뇨
	kr_struct INITIAL_NIEUN,       MEDIAL_YO,  FINAL_GIYEOK       ; 뇩
	kr_struct INITIAL_NIEUN,       MEDIAL_YO,  FINAL_NIEUN        ; 뇬
	kr_struct INITIAL_NIEUN,       MEDIAL_YO,  FINAL_RIEUL        ; 뇰
	kr_struct INITIAL_NIEUN,       MEDIAL_YO,  FINAL_BIEUP        ; 뇹
	kr_struct INITIAL_NIEUN,       MEDIAL_YO,  FINAL_SIOT         ; 뇻
	kr_struct INITIAL_NIEUN,       MEDIAL_YO,  FINAL_IEUNG        ; 뇽
	kr_struct INITIAL_NIEUN,       MEDIAL_U                       ; 누
	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_GIYEOK       ; 눅
	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_NIEUN        ; 눈
	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_DIGEUT       ; 눋
	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_RIEUL        ; 눌
	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_MIEUM        ; 눔
	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_BIEUP        ; 눕

	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_SIOT         ; 눗
	kr_struct INITIAL_NIEUN,       MEDIAL_U,   FINAL_IEUNG        ; 눙
	kr_struct INITIAL_NIEUN,       MEDIAL_WO                      ; 눠
	kr_struct INITIAL_NIEUN,       MEDIAL_WO,  FINAL_SSANGSIOT    ; 눴
	kr_struct INITIAL_NIEUN,       MEDIAL_WE                      ; 눼
	kr_struct INITIAL_NIEUN,       MEDIAL_WI                      ; 뉘
	kr_struct INITIAL_NIEUN,       MEDIAL_WI,  FINAL_NIEUN        ; 뉜
	kr_struct INITIAL_NIEUN,       MEDIAL_WI,  FINAL_RIEUL        ; 뉠
	kr_struct INITIAL_NIEUN,       MEDIAL_WI,  FINAL_MIEUM        ; 뉨
	kr_struct INITIAL_NIEUN,       MEDIAL_WI,  FINAL_BIEUP        ; 뉩
	kr_struct INITIAL_NIEUN,       MEDIAL_YU                      ; 뉴
	kr_struct INITIAL_NIEUN,       MEDIAL_YU,  FINAL_GIYEOK       ; 뉵
	kr_struct INITIAL_NIEUN,       MEDIAL_YU,  FINAL_RIEUL        ; 뉼
	kr_struct INITIAL_NIEUN,       MEDIAL_YU,  FINAL_MIEUM        ; 늄
	kr_struct INITIAL_NIEUN,       MEDIAL_YU,  FINAL_BIEUP        ; 늅
	kr_struct INITIAL_NIEUN,       MEDIAL_YU,  FINAL_IEUNG        ; 늉

	kr_struct INITIAL_NIEUN,       MEDIAL_EU                      ; 느
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_GIYEOK       ; 늑
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_NIEUN        ; 는
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_RIEUL        ; 늘
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_RIEUL_GIYEOK ; 늙
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_RIEUL_MIEUM  ; 늚
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_MIEUM        ; 늠
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_BIEUP        ; 늡
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_SIOT         ; 늣
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_IEUNG        ; 능
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_JIEUT        ; 늦
	kr_struct INITIAL_NIEUN,       MEDIAL_EU,  FINAL_PIEUP        ; 늪
	kr_struct INITIAL_NIEUN,       MEDIAL_UI                      ; 늬
	kr_struct INITIAL_NIEUN,       MEDIAL_UI,  FINAL_NIEUN        ; 늰
	kr_struct INITIAL_NIEUN,       MEDIAL_UI,  FINAL_RIEUL        ; 늴
	kr_struct INITIAL_NIEUN,       MEDIAL_I                       ; 니

	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_GIYEOK       ; 닉
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_NIEUN        ; 닌
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_RIEUL        ; 닐
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_RIEUL_MIEUM  ; 닒
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_MIEUM        ; 님
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_BIEUP        ; 닙
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_SIOT         ; 닛
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_IEUNG        ; 닝
	kr_struct INITIAL_NIEUN,       MEDIAL_I,   FINAL_PIEUP        ; 닢
	kr_struct INITIAL_DIGEUT,      MEDIAL_A                       ; 다
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_GIYEOK       ; 닥
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_SSANGGIYEOK  ; 닦
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_NIEUN        ; 단
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_DIGEUT       ; 닫
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_RIEUL        ; 달
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 닭

	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 닮
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_RIEUL_BIEUP  ; 닯
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_RIEUL_HIEUT  ; 닳
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_MIEUM        ; 담
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_BIEUP        ; 답
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_SIOT         ; 닷
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_SSANGSIOT    ; 닸
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_IEUNG        ; 당
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_JIEUT        ; 닺
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_CHIEUT       ; 닻
	kr_struct INITIAL_DIGEUT,      MEDIAL_A,   FINAL_HIEUT        ; 닿
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE                      ; 대
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_GIYEOK       ; 댁
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_NIEUN        ; 댄
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_RIEUL        ; 댈
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_MIEUM        ; 댐

	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_BIEUP        ; 댑
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_SIOT         ; 댓
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_SSANGSIOT    ; 댔
	kr_struct INITIAL_DIGEUT,      MEDIAL_AE,  FINAL_IEUNG        ; 댕
	dw -1
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO                      ; 더
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_GIYEOK       ; 덕
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_SSANGGIYEOK  ; 덖
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_NIEUN        ; 던
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_DIGEUT       ; 덛
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_RIEUL        ; 덜
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 덞
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_RIEUL_BIEUP  ; 덟
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_MIEUM        ; 덤
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_BIEUP        ; 덥
	dw -1

HangulStructureTable3:
	dw -1
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_SIOT         ; 덧
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_IEUNG        ; 덩
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_CHIEUT       ; 덫
	kr_struct INITIAL_DIGEUT,      MEDIAL_EO,  FINAL_PIEUP        ; 덮
	kr_struct INITIAL_DIGEUT,      MEDIAL_E                       ; 데
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_GIYEOK       ; 덱
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_NIEUN        ; 덴
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_RIEUL        ; 델
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_MIEUM        ; 뎀
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_BIEUP        ; 뎁
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_SIOT         ; 뎃
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_SSANGSIOT    ; 뎄
	kr_struct INITIAL_DIGEUT,      MEDIAL_E,   FINAL_IEUNG        ; 뎅
	kr_struct INITIAL_DIGEUT,      MEDIAL_YEO                     ; 뎌
	kr_struct INITIAL_DIGEUT,      MEDIAL_YEO, FINAL_NIEUN        ; 뎐

	kr_struct INITIAL_DIGEUT,      MEDIAL_YEO, FINAL_RIEUL        ; 뎔
	kr_struct INITIAL_DIGEUT,      MEDIAL_YEO, FINAL_SSANGSIOT    ; 뎠
	kr_struct INITIAL_DIGEUT,      MEDIAL_YEO, FINAL_IEUNG        ; 뎡
	kr_struct INITIAL_DIGEUT,      MEDIAL_YE                      ; 뎨
	kr_struct INITIAL_DIGEUT,      MEDIAL_YE,  FINAL_NIEUN        ; 뎬
	kr_struct INITIAL_DIGEUT,      MEDIAL_O                       ; 도
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_GIYEOK       ; 독
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_NIEUN        ; 돈
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_DIGEUT       ; 돋
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_RIEUL        ; 돌
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 돎
	dw -1
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_MIEUM        ; 돔
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_BIEUP        ; 돕
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_SIOT         ; 돗
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_IEUNG        ; 동

	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_CHIEUT       ; 돛
	kr_struct INITIAL_DIGEUT,      MEDIAL_O,   FINAL_TIEUT        ; 돝
	kr_struct INITIAL_DIGEUT,      MEDIAL_WA                      ; 돠
	kr_struct INITIAL_DIGEUT,      MEDIAL_WA,  FINAL_NIEUN        ; 돤
	kr_struct INITIAL_DIGEUT,      MEDIAL_WA,  FINAL_RIEUL        ; 돨
	kr_struct INITIAL_DIGEUT,      MEDIAL_WAE                     ; 돼
	kr_struct INITIAL_DIGEUT,      MEDIAL_WAE, FINAL_SSANGSIOT    ; 됐
	kr_struct INITIAL_DIGEUT,      MEDIAL_OE                      ; 되
	kr_struct INITIAL_DIGEUT,      MEDIAL_OE,  FINAL_NIEUN        ; 된
	kr_struct INITIAL_DIGEUT,      MEDIAL_OE,  FINAL_RIEUL        ; 될
	kr_struct INITIAL_DIGEUT,      MEDIAL_OE,  FINAL_MIEUM        ; 됨
	kr_struct INITIAL_DIGEUT,      MEDIAL_OE,  FINAL_BIEUP        ; 됩
	kr_struct INITIAL_DIGEUT,      MEDIAL_OE,  FINAL_SIOT         ; 됫
	kr_struct INITIAL_DIGEUT,      MEDIAL_YO                      ; 됴
	kr_struct INITIAL_DIGEUT,      MEDIAL_U                       ; 두
	kr_struct INITIAL_DIGEUT,      MEDIAL_U,   FINAL_GIYEOK       ; 둑

	kr_struct INITIAL_DIGEUT,      MEDIAL_U,   FINAL_NIEUN        ; 둔
	kr_struct INITIAL_DIGEUT,      MEDIAL_U,   FINAL_RIEUL        ; 둘
	kr_struct INITIAL_DIGEUT,      MEDIAL_U,   FINAL_MIEUM        ; 둠
	kr_struct INITIAL_DIGEUT,      MEDIAL_U,   FINAL_BIEUP        ; 둡
	kr_struct INITIAL_DIGEUT,      MEDIAL_U,   FINAL_SIOT         ; 둣
	kr_struct INITIAL_DIGEUT,      MEDIAL_U,   FINAL_IEUNG        ; 둥
	kr_struct INITIAL_DIGEUT,      MEDIAL_WO                      ; 둬
	kr_struct INITIAL_DIGEUT,      MEDIAL_WO,  FINAL_SSANGSIOT    ; 뒀
	kr_struct INITIAL_DIGEUT,      MEDIAL_WE                      ; 뒈
	kr_struct INITIAL_DIGEUT,      MEDIAL_WE,  FINAL_IEUNG        ; 뒝
	kr_struct INITIAL_DIGEUT,      MEDIAL_WI                      ; 뒤
	kr_struct INITIAL_DIGEUT,      MEDIAL_WI,  FINAL_NIEUN        ; 뒨
	kr_struct INITIAL_DIGEUT,      MEDIAL_WI,  FINAL_RIEUL        ; 뒬
	kr_struct INITIAL_DIGEUT,      MEDIAL_WI,  FINAL_BIEUP        ; 뒵
	kr_struct INITIAL_DIGEUT,      MEDIAL_WI,  FINAL_SIOT         ; 뒷
	kr_struct INITIAL_DIGEUT,      MEDIAL_WI,  FINAL_IEUNG        ; 뒹

	kr_struct INITIAL_DIGEUT,      MEDIAL_YU                      ; 듀
	kr_struct INITIAL_DIGEUT,      MEDIAL_YU,  FINAL_NIEUN        ; 듄
	kr_struct INITIAL_DIGEUT,      MEDIAL_YU,  FINAL_RIEUL        ; 듈
	kr_struct INITIAL_DIGEUT,      MEDIAL_YU,  FINAL_MIEUM        ; 듐
	kr_struct INITIAL_DIGEUT,      MEDIAL_YU,  FINAL_IEUNG        ; 듕
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU                      ; 드
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_GIYEOK       ; 득
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_NIEUN        ; 든
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_DIGEUT       ; 듣
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_RIEUL        ; 들
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_RIEUL_MIEUM  ; 듦
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_MIEUM        ; 듬
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_BIEUP        ; 듭
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_SIOT         ; 듯
	kr_struct INITIAL_DIGEUT,      MEDIAL_EU,  FINAL_IEUNG        ; 등
	kr_struct INITIAL_DIGEUT,      MEDIAL_UI                      ; 듸

rept 16
	dw -1
endr

	kr_struct INITIAL_DIGEUT,      MEDIAL_I                       ; 디
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_GIYEOK       ; 딕
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_NIEUN        ; 딘
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_DIGEUT       ; 딛
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_RIEUL        ; 딜
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_MIEUM        ; 딤
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_BIEUP        ; 딥
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_SIOT         ; 딧
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_SSANGSIOT    ; 딨
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_IEUNG        ; 딩
	kr_struct INITIAL_DIGEUT,      MEDIAL_I,   FINAL_JIEUT        ; 딪
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A                       ; 따
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_GIYEOK       ; 딱
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_NIEUN        ; 딴
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_RIEUL        ; 딸
	dw -1

	dw -1
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_MIEUM        ; 땀
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_BIEUP        ; 땁
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_SIOT         ; 땃
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_SSANGSIOT    ; 땄
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_IEUNG        ; 땅
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_A,   FINAL_HIEUT        ; 땋
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE                      ; 때
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_GIYEOK       ; 땍
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_NIEUN        ; 땐
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_RIEUL        ; 땔
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_MIEUM        ; 땜
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_BIEUP        ; 땝
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_SIOT         ; 땟
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_SSANGSIOT    ; 땠
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_AE,  FINAL_IEUNG        ; 땡

	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO                      ; 떠
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_GIYEOK       ; 떡
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_NIEUN        ; 떤
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_RIEUL        ; 떨
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 떪
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_RIEUL_BIEUP  ; 떫
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_MIEUM        ; 떰
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_BIEUP        ; 떱
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_SIOT         ; 떳
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_SSANGSIOT    ; 떴
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_IEUNG        ; 떵
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EO,  FINAL_HIEUT        ; 떻
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E                       ; 떼
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_GIYEOK       ; 떽
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_NIEUN        ; 뗀
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_RIEUL        ; 뗄

	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_MIEUM        ; 뗌
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_BIEUP        ; 뗍
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_SIOT         ; 뗏
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_SSANGSIOT    ; 뗐
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_E,   FINAL_IEUNG        ; 뗑
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_YEO                     ; 뗘
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_YEO, FINAL_SSANGSIOT    ; 뗬
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_O                       ; 또
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_O,   FINAL_GIYEOK       ; 똑
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_O,   FINAL_NIEUN        ; 똔
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_O,   FINAL_RIEUL        ; 똘
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_O,   FINAL_IEUNG        ; 똥
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WA                      ; 똬
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WA,  FINAL_RIEUL        ; 똴
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WAE                     ; 뙈
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_OE                      ; 뙤

	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_OE,  FINAL_NIEUN        ; 뙨
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_U                       ; 뚜
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_U,   FINAL_GIYEOK       ; 뚝
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_U,   FINAL_NIEUN        ; 뚠
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_U,   FINAL_RIEUL        ; 뚤
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_U,   FINAL_RIEUL_HIEUT  ; 뚫
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_U,   FINAL_MIEUM        ; 뚬
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_U,   FINAL_IEUNG        ; 뚱
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WE                      ; 뛔
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WI                      ; 뛰
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WI,  FINAL_NIEUN        ; 뛴
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WI,  FINAL_RIEUL        ; 뛸
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WI,  FINAL_MIEUM        ; 뜀
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WI,  FINAL_BIEUP        ; 뜁
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_WI,  FINAL_IEUNG        ; 뜅
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU                      ; 뜨

	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU,  FINAL_GIYEOK       ; 뜩
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU,  FINAL_NIEUN        ; 뜬
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU,  FINAL_DIGEUT       ; 뜯
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU,  FINAL_RIEUL        ; 뜰
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU,  FINAL_MIEUM        ; 뜸
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU,  FINAL_BIEUP        ; 뜹
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_EU,  FINAL_SIOT         ; 뜻
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_UI                      ; 띄
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_UI,  FINAL_NIEUN        ; 띈
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_UI,  FINAL_RIEUL        ; 띌
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_UI,  FINAL_MIEUM        ; 띔
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_UI,  FINAL_BIEUP        ; 띕
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_I                       ; 띠
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_I,   FINAL_NIEUN        ; 띤
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_I,   FINAL_RIEUL        ; 띨
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_I,   FINAL_MIEUM        ; 띰

	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_I,   FINAL_BIEUP        ; 띱
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_I,   FINAL_SIOT         ; 띳
	kr_struct INITIAL_SSANGDIGEUT, MEDIAL_I,   FINAL_IEUNG        ; 띵
	kr_struct INITIAL_RIEUL,       MEDIAL_A                       ; 라
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_GIYEOK       ; 락
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_NIEUN        ; 란
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_RIEUL        ; 랄
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_MIEUM        ; 람
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_BIEUP        ; 랍
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_SIOT         ; 랏
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_SSANGSIOT    ; 랐
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_IEUNG        ; 랑
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_JIEUT        ; 랒
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_PIEUP        ; 랖
	kr_struct INITIAL_RIEUL,       MEDIAL_A,   FINAL_HIEUT        ; 랗
	dw -1

	kr_struct INITIAL_RIEUL,       MEDIAL_WAE                     ; 뢔
	kr_struct INITIAL_RIEUL,       MEDIAL_AE                      ; 래
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_GIYEOK       ; 랙
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_NIEUN        ; 랜
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_RIEUL        ; 랠
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_MIEUM        ; 램
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_BIEUP        ; 랩
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_SIOT         ; 랫
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 랬
	kr_struct INITIAL_RIEUL,       MEDIAL_AE,  FINAL_IEUNG        ; 랭
	kr_struct INITIAL_RIEUL,       MEDIAL_YA                      ; 랴
	kr_struct INITIAL_RIEUL,       MEDIAL_YA,  FINAL_GIYEOK       ; 략
	kr_struct INITIAL_RIEUL,       MEDIAL_YA,  FINAL_NIEUN        ; 랸
	kr_struct INITIAL_RIEUL,       MEDIAL_YA,  FINAL_SIOT         ; 럇
	kr_struct INITIAL_RIEUL,       MEDIAL_YA,  FINAL_IEUNG        ; 량
	kr_struct INITIAL_RIEUL,       MEDIAL_EO                      ; 러

	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_GIYEOK       ; 럭
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_NIEUN        ; 런
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_RIEUL        ; 럴
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_MIEUM        ; 럼
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_BIEUP        ; 럽
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_SIOT         ; 럿
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_SSANGSIOT    ; 렀
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_IEUNG        ; 렁
	kr_struct INITIAL_RIEUL,       MEDIAL_EO,  FINAL_HIEUT        ; 렇
	kr_struct INITIAL_RIEUL,       MEDIAL_E                       ; 레
	kr_struct INITIAL_RIEUL,       MEDIAL_E,   FINAL_GIYEOK       ; 렉
	kr_struct INITIAL_RIEUL,       MEDIAL_E,   FINAL_NIEUN        ; 렌
	kr_struct INITIAL_RIEUL,       MEDIAL_E,   FINAL_RIEUL        ; 렐
	kr_struct INITIAL_RIEUL,       MEDIAL_E,   FINAL_MIEUM        ; 렘
	kr_struct INITIAL_RIEUL,       MEDIAL_E,   FINAL_BIEUP        ; 렙
	kr_struct INITIAL_RIEUL,       MEDIAL_E,   FINAL_SIOT         ; 렛

	kr_struct INITIAL_RIEUL,       MEDIAL_E,   FINAL_IEUNG        ; 렝
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO                     ; 려
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_GIYEOK       ; 력
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_NIEUN        ; 련
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_RIEUL        ; 렬
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_MIEUM        ; 렴
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_BIEUP        ; 렵
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_SIOT         ; 렷
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 렸
	kr_struct INITIAL_RIEUL,       MEDIAL_YEO, FINAL_IEUNG        ; 령
	kr_struct INITIAL_RIEUL,       MEDIAL_YE                      ; 례
	kr_struct INITIAL_RIEUL,       MEDIAL_YE,  FINAL_NIEUN        ; 롄
	kr_struct INITIAL_RIEUL,       MEDIAL_YE,  FINAL_BIEUP        ; 롑
	kr_struct INITIAL_RIEUL,       MEDIAL_YE,  FINAL_SIOT         ; 롓
	kr_struct INITIAL_RIEUL,       MEDIAL_O                       ; 로
	kr_struct INITIAL_RIEUL,       MEDIAL_O,   FINAL_GIYEOK       ; 록

HangulStructureTable4:
	kr_struct INITIAL_RIEUL,       MEDIAL_O,   FINAL_NIEUN        ; 론
	kr_struct INITIAL_RIEUL,       MEDIAL_O,   FINAL_RIEUL        ; 롤
	kr_struct INITIAL_RIEUL,       MEDIAL_O,   FINAL_MIEUM        ; 롬
	kr_struct INITIAL_RIEUL,       MEDIAL_O,   FINAL_BIEUP        ; 롭
	kr_struct INITIAL_RIEUL,       MEDIAL_O,   FINAL_SIOT         ; 롯
	kr_struct INITIAL_RIEUL,       MEDIAL_O,   FINAL_IEUNG        ; 롱
	kr_struct INITIAL_RIEUL,       MEDIAL_WA                      ; 롸
	kr_struct INITIAL_RIEUL,       MEDIAL_WA,  FINAL_NIEUN        ; 롼
	kr_struct INITIAL_RIEUL,       MEDIAL_WA,  FINAL_IEUNG        ; 뢍
	kr_struct INITIAL_RIEUL,       MEDIAL_WAE, FINAL_SSANGSIOT    ; 뢨
	kr_struct INITIAL_RIEUL,       MEDIAL_OE                      ; 뢰
	kr_struct INITIAL_RIEUL,       MEDIAL_OE,  FINAL_NIEUN        ; 뢴
	kr_struct INITIAL_RIEUL,       MEDIAL_OE,  FINAL_RIEUL        ; 뢸
	kr_struct INITIAL_RIEUL,       MEDIAL_OE,  FINAL_MIEUM        ; 룀
	kr_struct INITIAL_RIEUL,       MEDIAL_OE,  FINAL_BIEUP        ; 룁
	kr_struct INITIAL_RIEUL,       MEDIAL_OE,  FINAL_SIOT         ; 룃

	kr_struct INITIAL_RIEUL,       MEDIAL_OE,  FINAL_IEUNG        ; 룅
	kr_struct INITIAL_RIEUL,       MEDIAL_YO                      ; 료
	kr_struct INITIAL_RIEUL,       MEDIAL_YO,  FINAL_NIEUN        ; 룐
	kr_struct INITIAL_RIEUL,       MEDIAL_YO,  FINAL_RIEUL        ; 룔
	kr_struct INITIAL_RIEUL,       MEDIAL_YO,  FINAL_BIEUP        ; 룝
	kr_struct INITIAL_RIEUL,       MEDIAL_YO,  FINAL_SIOT         ; 룟
	kr_struct INITIAL_RIEUL,       MEDIAL_YO,  FINAL_IEUNG        ; 룡
	kr_struct INITIAL_RIEUL,       MEDIAL_U                       ; 루
	kr_struct INITIAL_RIEUL,       MEDIAL_U,   FINAL_GIYEOK       ; 룩
	kr_struct INITIAL_RIEUL,       MEDIAL_U,   FINAL_NIEUN        ; 룬
	kr_struct INITIAL_RIEUL,       MEDIAL_U,   FINAL_RIEUL        ; 룰
	kr_struct INITIAL_RIEUL,       MEDIAL_U,   FINAL_MIEUM        ; 룸
	kr_struct INITIAL_RIEUL,       MEDIAL_U,   FINAL_BIEUP        ; 룹
	kr_struct INITIAL_RIEUL,       MEDIAL_U,   FINAL_SIOT         ; 룻
	kr_struct INITIAL_RIEUL,       MEDIAL_U,   FINAL_IEUNG        ; 룽
	kr_struct INITIAL_RIEUL,       MEDIAL_WO                      ; 뤄

	kr_struct INITIAL_RIEUL,       MEDIAL_WO,  FINAL_SSANGSIOT    ; 뤘
	kr_struct INITIAL_RIEUL,       MEDIAL_WE                      ; 뤠
	kr_struct INITIAL_RIEUL,       MEDIAL_WI                      ; 뤼
	kr_struct INITIAL_RIEUL,       MEDIAL_WI,  FINAL_GIYEOK       ; 뤽
	kr_struct INITIAL_RIEUL,       MEDIAL_WI,  FINAL_NIEUN        ; 륀
	kr_struct INITIAL_RIEUL,       MEDIAL_WI,  FINAL_RIEUL        ; 륄
	kr_struct INITIAL_RIEUL,       MEDIAL_WI,  FINAL_MIEUM        ; 륌
	kr_struct INITIAL_RIEUL,       MEDIAL_WI,  FINAL_SIOT         ; 륏
	kr_struct INITIAL_RIEUL,       MEDIAL_WI,  FINAL_IEUNG        ; 륑
	kr_struct INITIAL_RIEUL,       MEDIAL_YU                      ; 류
	kr_struct INITIAL_RIEUL,       MEDIAL_YU,  FINAL_GIYEOK       ; 륙
	kr_struct INITIAL_RIEUL,       MEDIAL_YU,  FINAL_NIEUN        ; 륜
	kr_struct INITIAL_RIEUL,       MEDIAL_YU,  FINAL_RIEUL        ; 률
	kr_struct INITIAL_RIEUL,       MEDIAL_YU,  FINAL_MIEUM        ; 륨
	kr_struct INITIAL_RIEUL,       MEDIAL_YU,  FINAL_BIEUP        ; 륩
	dw -1

	dw -1
	kr_struct INITIAL_RIEUL,       MEDIAL_YU,  FINAL_SIOT         ; 륫
	kr_struct INITIAL_RIEUL,       MEDIAL_YU,  FINAL_IEUNG        ; 륭
	kr_struct INITIAL_RIEUL,       MEDIAL_EU                      ; 르
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_GIYEOK       ; 륵
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_NIEUN        ; 른
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_RIEUL        ; 를
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_MIEUM        ; 름
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_BIEUP        ; 릅
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_SIOT         ; 릇
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_IEUNG        ; 릉
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_JIEUT        ; 릊
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_TIEUT        ; 릍
	kr_struct INITIAL_RIEUL,       MEDIAL_EU,  FINAL_PIEUP        ; 릎
	kr_struct INITIAL_RIEUL,       MEDIAL_I                       ; 리
	kr_struct INITIAL_RIEUL,       MEDIAL_I,   FINAL_GIYEOK       ; 릭

	kr_struct INITIAL_RIEUL,       MEDIAL_I,   FINAL_NIEUN        ; 린
	kr_struct INITIAL_RIEUL,       MEDIAL_I,   FINAL_RIEUL        ; 릴
	kr_struct INITIAL_RIEUL,       MEDIAL_I,   FINAL_MIEUM        ; 림
	kr_struct INITIAL_RIEUL,       MEDIAL_I,   FINAL_BIEUP        ; 립
	kr_struct INITIAL_RIEUL,       MEDIAL_I,   FINAL_SIOT         ; 릿
	kr_struct INITIAL_RIEUL,       MEDIAL_I,   FINAL_IEUNG        ; 링
	kr_struct INITIAL_MIEUM,       MEDIAL_A                       ; 마
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_GIYEOK       ; 막
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_NIEUN        ; 만
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_NIEUN_HIEUT  ; 많
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_DIGEUT       ; 맏
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_RIEUL        ; 말
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 맑
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 맒
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_MIEUM        ; 맘
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_BIEUP        ; 맙

rept 16
	dw -1
endr

	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_SIOT         ; 맛
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_IEUNG        ; 망
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_JIEUT        ; 맞
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_TIEUT        ; 맡
	kr_struct INITIAL_MIEUM,       MEDIAL_A,   FINAL_HIEUT        ; 맣
	kr_struct INITIAL_MIEUM,       MEDIAL_AE                      ; 매
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_GIYEOK       ; 맥
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_NIEUN        ; 맨
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_RIEUL        ; 맬
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_MIEUM        ; 맴
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_BIEUP        ; 맵
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_SIOT         ; 맷
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 맸
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_IEUNG        ; 맹
	kr_struct INITIAL_MIEUM,       MEDIAL_AE,  FINAL_JIEUT        ; 맺
	kr_struct INITIAL_MIEUM,       MEDIAL_YA                      ; 먀

	kr_struct INITIAL_MIEUM,       MEDIAL_YA,  FINAL_GIYEOK       ; 먁
	kr_struct INITIAL_MIEUM,       MEDIAL_YA,  FINAL_RIEUL        ; 먈
	kr_struct INITIAL_MIEUM,       MEDIAL_YA,  FINAL_IEUNG        ; 먕
	kr_struct INITIAL_MIEUM,       MEDIAL_EO                      ; 머
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_GIYEOK       ; 먹
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_NIEUN        ; 먼
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_RIEUL        ; 멀
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 멂
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_MIEUM        ; 멈
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_BIEUP        ; 멉
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_SIOT         ; 멋
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_IEUNG        ; 멍
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_JIEUT        ; 멎
	kr_struct INITIAL_MIEUM,       MEDIAL_EO,  FINAL_HIEUT        ; 멓
	kr_struct INITIAL_MIEUM,       MEDIAL_E                       ; 메
	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_GIYEOK       ; 멕

	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_NIEUN        ; 멘
	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_RIEUL        ; 멜
	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_MIEUM        ; 멤
	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_BIEUP        ; 멥
	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_SIOT         ; 멧
	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_SSANGSIOT    ; 멨
	kr_struct INITIAL_MIEUM,       MEDIAL_E,   FINAL_IEUNG        ; 멩
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO                     ; 며
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO, FINAL_GIYEOK       ; 멱
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO, FINAL_NIEUN        ; 면
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO, FINAL_RIEUL        ; 멸
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO, FINAL_SIOT         ; 몃
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 몄
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO, FINAL_IEUNG        ; 명
	kr_struct INITIAL_MIEUM,       MEDIAL_YEO, FINAL_CHIEUT       ; 몇
	kr_struct INITIAL_MIEUM,       MEDIAL_YE                      ; 몌

	kr_struct INITIAL_MIEUM,       MEDIAL_O                       ; 모
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_GIYEOK       ; 목
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_GIYEOK_SIOT  ; 몫
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_NIEUN        ; 몬
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_RIEUL        ; 몰
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 몲
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_MIEUM        ; 몸
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_BIEUP        ; 몹
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_SIOT         ; 못
	kr_struct INITIAL_MIEUM,       MEDIAL_O,   FINAL_IEUNG        ; 몽
	kr_struct INITIAL_MIEUM,       MEDIAL_WA                      ; 뫄
	kr_struct INITIAL_MIEUM,       MEDIAL_WA,  FINAL_NIEUN        ; 뫈
	kr_struct INITIAL_MIEUM,       MEDIAL_WA,  FINAL_SSANGSIOT    ; 뫘
	kr_struct INITIAL_MIEUM,       MEDIAL_WA,  FINAL_IEUNG        ; 뫙
	kr_struct INITIAL_MIEUM,       MEDIAL_OE                      ; 뫼
	dw -1

	dw -1
	kr_struct INITIAL_MIEUM,       MEDIAL_OE,  FINAL_NIEUN        ; 묀
	kr_struct INITIAL_MIEUM,       MEDIAL_OE,  FINAL_RIEUL        ; 묄
	kr_struct INITIAL_MIEUM,       MEDIAL_OE,  FINAL_BIEUP        ; 묍
	kr_struct INITIAL_MIEUM,       MEDIAL_OE,  FINAL_SIOT         ; 묏
	kr_struct INITIAL_MIEUM,       MEDIAL_OE,  FINAL_IEUNG        ; 묑
	kr_struct INITIAL_MIEUM,       MEDIAL_YO                      ; 묘
	kr_struct INITIAL_MIEUM,       MEDIAL_YO,  FINAL_NIEUN        ; 묜
	kr_struct INITIAL_MIEUM,       MEDIAL_YO,  FINAL_RIEUL        ; 묠
	kr_struct INITIAL_MIEUM,       MEDIAL_YO,  FINAL_BIEUP        ; 묩
	kr_struct INITIAL_MIEUM,       MEDIAL_YO,  FINAL_SIOT         ; 묫
	kr_struct INITIAL_MIEUM,       MEDIAL_U                       ; 무
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_GIYEOK       ; 묵
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_SSANGGIYEOK  ; 묶
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_NIEUN        ; 문
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_DIGEUT       ; 묻

	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_RIEUL        ; 물
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_RIEUL_GIYEOK ; 묽
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_RIEUL_MIEUM  ; 묾
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_MIEUM        ; 뭄
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_BIEUP        ; 뭅
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_SIOT         ; 뭇
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_IEUNG        ; 뭉
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_TIEUT        ; 뭍
	kr_struct INITIAL_MIEUM,       MEDIAL_U,   FINAL_HIEUT        ; 뭏
	kr_struct INITIAL_MIEUM,       MEDIAL_WO                      ; 뭐
	kr_struct INITIAL_MIEUM,       MEDIAL_WO,  FINAL_NIEUN        ; 뭔
	kr_struct INITIAL_MIEUM,       MEDIAL_WO,  FINAL_RIEUL        ; 뭘
	kr_struct INITIAL_MIEUM,       MEDIAL_WO,  FINAL_BIEUP        ; 뭡
	kr_struct INITIAL_MIEUM,       MEDIAL_WO,  FINAL_SIOT         ; 뭣
	kr_struct INITIAL_MIEUM,       MEDIAL_WE                      ; 뭬
	kr_struct INITIAL_MIEUM,       MEDIAL_WI                      ; 뮈

	kr_struct INITIAL_MIEUM,       MEDIAL_WI,  FINAL_NIEUN        ; 뮌
	kr_struct INITIAL_MIEUM,       MEDIAL_WI,  FINAL_RIEUL        ; 뮐
	kr_struct INITIAL_MIEUM,       MEDIAL_YU                      ; 뮤
	kr_struct INITIAL_MIEUM,       MEDIAL_YU,  FINAL_NIEUN        ; 뮨
	kr_struct INITIAL_MIEUM,       MEDIAL_YU,  FINAL_RIEUL        ; 뮬
	kr_struct INITIAL_MIEUM,       MEDIAL_YU,  FINAL_MIEUM        ; 뮴
	kr_struct INITIAL_MIEUM,       MEDIAL_YU,  FINAL_SIOT         ; 뮷
	kr_struct INITIAL_MIEUM,       MEDIAL_EU                      ; 므
	kr_struct INITIAL_MIEUM,       MEDIAL_EU,  FINAL_NIEUN        ; 믄
	kr_struct INITIAL_MIEUM,       MEDIAL_EU,  FINAL_RIEUL        ; 믈
	kr_struct INITIAL_MIEUM,       MEDIAL_EU,  FINAL_MIEUM        ; 믐
	kr_struct INITIAL_MIEUM,       MEDIAL_EU,  FINAL_SIOT         ; 믓
	kr_struct INITIAL_MIEUM,       MEDIAL_I                       ; 미
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_GIYEOK       ; 믹
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_NIEUN        ; 민
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_DIGEUT       ; 믿

	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_RIEUL        ; 밀
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_RIEUL_MIEUM  ; 밂
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_MIEUM        ; 밈
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_BIEUP        ; 밉
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_SIOT         ; 밋
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_SSANGSIOT    ; 밌
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_IEUNG        ; 밍
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_CHIEUT       ; 및
	kr_struct INITIAL_MIEUM,       MEDIAL_I,   FINAL_TIEUT        ; 밑
	kr_struct INITIAL_BIEUP,       MEDIAL_A                       ; 바
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_GIYEOK       ; 박
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_SSANGGIYEOK  ; 밖
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_GIYEOK_SIOT  ; 밗
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_NIEUN        ; 반
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_DIGEUT       ; 받
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_RIEUL        ; 발

	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 밝
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 밞
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_RIEUL_BIEUP  ; 밟
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_MIEUM        ; 밤
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_BIEUP        ; 밥
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_SIOT         ; 밧
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_IEUNG        ; 방
	kr_struct INITIAL_BIEUP,       MEDIAL_A,   FINAL_TIEUT        ; 밭
	kr_struct INITIAL_BIEUP,       MEDIAL_AE                      ; 배
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_GIYEOK       ; 백
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_NIEUN        ; 밴
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_RIEUL        ; 밸
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_MIEUM        ; 뱀
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_BIEUP        ; 뱁
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_SIOT         ; 뱃
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 뱄

	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_IEUNG        ; 뱅
	kr_struct INITIAL_BIEUP,       MEDIAL_AE,  FINAL_TIEUT        ; 뱉
	kr_struct INITIAL_BIEUP,       MEDIAL_YA                      ; 뱌
	kr_struct INITIAL_BIEUP,       MEDIAL_YA,  FINAL_GIYEOK       ; 뱍
	kr_struct INITIAL_BIEUP,       MEDIAL_YA,  FINAL_NIEUN        ; 뱐
	kr_struct INITIAL_BIEUP,       MEDIAL_YA,  FINAL_BIEUP        ; 뱝
	kr_struct INITIAL_BIEUP,       MEDIAL_EO                      ; 버
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_GIYEOK       ; 벅
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_NIEUN        ; 번
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_DIGEUT       ; 벋
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_RIEUL        ; 벌
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 벎
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_MIEUM        ; 범
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_BIEUP        ; 법
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_SIOT         ; 벗
	dw -1

HangulStructureTable5:
	dw -1
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_IEUNG        ; 벙
	kr_struct INITIAL_BIEUP,       MEDIAL_EO,  FINAL_JIEUT        ; 벚
	kr_struct INITIAL_BIEUP,       MEDIAL_E                       ; 베
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_GIYEOK       ; 벡
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_NIEUN        ; 벤
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_DIGEUT       ; 벧
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_RIEUL        ; 벨
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_MIEUM        ; 벰
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_BIEUP        ; 벱
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_SIOT         ; 벳
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_SSANGSIOT    ; 벴
	kr_struct INITIAL_BIEUP,       MEDIAL_E,   FINAL_IEUNG        ; 벵
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO                     ; 벼
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_GIYEOK       ; 벽
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_NIEUN        ; 변

	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_RIEUL        ; 별
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_BIEUP        ; 볍
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_SIOT         ; 볏
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 볐
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_IEUNG        ; 병
	kr_struct INITIAL_BIEUP,       MEDIAL_YEO, FINAL_TIEUT        ; 볕
	kr_struct INITIAL_BIEUP,       MEDIAL_YE                      ; 볘
	kr_struct INITIAL_BIEUP,       MEDIAL_YE,  FINAL_NIEUN        ; 볜
	kr_struct INITIAL_BIEUP,       MEDIAL_O                       ; 보
	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_GIYEOK       ; 복
	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_SSANGGIYEOK  ; 볶
	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_NIEUN        ; 본
	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_RIEUL        ; 볼
	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_MIEUM        ; 봄
	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_BIEUP        ; 봅
	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_SIOT         ; 봇

	kr_struct INITIAL_BIEUP,       MEDIAL_O,   FINAL_IEUNG        ; 봉
	kr_struct INITIAL_BIEUP,       MEDIAL_WA                      ; 봐
	kr_struct INITIAL_BIEUP,       MEDIAL_WA,  FINAL_NIEUN        ; 봔
	kr_struct INITIAL_BIEUP,       MEDIAL_WA,  FINAL_SSANGSIOT    ; 봤
	kr_struct INITIAL_BIEUP,       MEDIAL_WAE                     ; 봬
	kr_struct INITIAL_BIEUP,       MEDIAL_WAE, FINAL_SSANGSIOT    ; 뵀
	kr_struct INITIAL_BIEUP,       MEDIAL_OE                      ; 뵈
	kr_struct INITIAL_BIEUP,       MEDIAL_OE,  FINAL_GIYEOK       ; 뵉
	kr_struct INITIAL_BIEUP,       MEDIAL_OE,  FINAL_NIEUN        ; 뵌
	kr_struct INITIAL_BIEUP,       MEDIAL_OE,  FINAL_RIEUL        ; 뵐
	kr_struct INITIAL_BIEUP,       MEDIAL_OE,  FINAL_MIEUM        ; 뵘
	kr_struct INITIAL_BIEUP,       MEDIAL_OE,  FINAL_BIEUP        ; 뵙
	kr_struct INITIAL_BIEUP,       MEDIAL_YO                      ; 뵤
	kr_struct INITIAL_BIEUP,       MEDIAL_YO,  FINAL_NIEUN        ; 뵨
	kr_struct INITIAL_BIEUP,       MEDIAL_U                       ; 부
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_GIYEOK       ; 북

	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_NIEUN        ; 분
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_DIGEUT       ; 붇
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_RIEUL        ; 불
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_RIEUL_GIYEOK ; 붉
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_RIEUL_MIEUM  ; 붊
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_MIEUM        ; 붐
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_BIEUP        ; 붑
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_SIOT         ; 붓
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_IEUNG        ; 붕
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_TIEUT        ; 붙
	kr_struct INITIAL_BIEUP,       MEDIAL_U,   FINAL_PIEUP        ; 붚
	kr_struct INITIAL_BIEUP,       MEDIAL_WO                      ; 붜
	kr_struct INITIAL_BIEUP,       MEDIAL_WO,  FINAL_RIEUL        ; 붤
	kr_struct INITIAL_BIEUP,       MEDIAL_WO,  FINAL_SSANGSIOT    ; 붰
	kr_struct INITIAL_BIEUP,       MEDIAL_WE                      ; 붸
	kr_struct INITIAL_BIEUP,       MEDIAL_WI                      ; 뷔

	kr_struct INITIAL_BIEUP,       MEDIAL_WI,  FINAL_GIYEOK       ; 뷕
	kr_struct INITIAL_BIEUP,       MEDIAL_WI,  FINAL_NIEUN        ; 뷘
	kr_struct INITIAL_BIEUP,       MEDIAL_WI,  FINAL_RIEUL        ; 뷜
	kr_struct INITIAL_BIEUP,       MEDIAL_WI,  FINAL_IEUNG        ; 뷩
	kr_struct INITIAL_BIEUP,       MEDIAL_YU                      ; 뷰
	kr_struct INITIAL_BIEUP,       MEDIAL_YU,  FINAL_NIEUN        ; 뷴
	kr_struct INITIAL_BIEUP,       MEDIAL_YU,  FINAL_RIEUL        ; 뷸
	kr_struct INITIAL_BIEUP,       MEDIAL_YU,  FINAL_MIEUM        ; 븀
	kr_struct INITIAL_BIEUP,       MEDIAL_YU,  FINAL_SIOT         ; 븃
	kr_struct INITIAL_BIEUP,       MEDIAL_YU,  FINAL_IEUNG        ; 븅
	kr_struct INITIAL_BIEUP,       MEDIAL_EU                      ; 브
	kr_struct INITIAL_BIEUP,       MEDIAL_EU,  FINAL_GIYEOK       ; 븍
	kr_struct INITIAL_BIEUP,       MEDIAL_EU,  FINAL_NIEUN        ; 븐
	kr_struct INITIAL_BIEUP,       MEDIAL_EU,  FINAL_RIEUL        ; 블
	kr_struct INITIAL_BIEUP,       MEDIAL_EU,  FINAL_MIEUM        ; 븜
	kr_struct INITIAL_BIEUP,       MEDIAL_EU,  FINAL_BIEUP        ; 븝

rept 16
	dw -1
endr

	kr_struct INITIAL_BIEUP,       MEDIAL_EU,  FINAL_SIOT         ; 븟
	kr_struct INITIAL_BIEUP,       MEDIAL_I                       ; 비
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_GIYEOK       ; 빅
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_NIEUN        ; 빈
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_RIEUL        ; 빌
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_RIEUL_MIEUM  ; 빎
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_MIEUM        ; 빔
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_BIEUP        ; 빕
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_SIOT         ; 빗
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_IEUNG        ; 빙
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_JIEUT        ; 빚
	kr_struct INITIAL_BIEUP,       MEDIAL_I,   FINAL_CHIEUT       ; 빛
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A                       ; 빠
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_GIYEOK       ; 빡
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_NIEUN        ; 빤
	dw -1

	dw -1
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_RIEUL        ; 빨
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 빪
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_MIEUM        ; 빰
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_BIEUP        ; 빱
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_SIOT         ; 빳
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_SSANGSIOT    ; 빴
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_IEUNG        ; 빵
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_A,   FINAL_HIEUT        ; 빻
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE                      ; 빼
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_GIYEOK       ; 빽
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_NIEUN        ; 뺀
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_RIEUL        ; 뺄
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_MIEUM        ; 뺌
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_BIEUP        ; 뺍
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_SIOT         ; 뺏

	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_SSANGSIOT    ; 뺐
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_AE,  FINAL_IEUNG        ; 뺑
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YA                      ; 뺘
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YA,  FINAL_GIYEOK       ; 뺙
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YA,  FINAL_MIEUM        ; 뺨
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO                      ; 뻐
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_GIYEOK       ; 뻑
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_NIEUN        ; 뻔
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_DIGEUT       ; 뻗
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_RIEUL        ; 뻘
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_MIEUM        ; 뻠
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_SIOT         ; 뻣
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_SSANGSIOT    ; 뻤
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EO,  FINAL_IEUNG        ; 뻥
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_E                       ; 뻬
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_E,   FINAL_IEUNG        ; 뼁

	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YEO                     ; 뼈
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YEO, FINAL_GIYEOK       ; 뼉
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YEO, FINAL_MIEUM        ; 뼘
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YEO, FINAL_BIEUP        ; 뼙
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YEO, FINAL_SIOT         ; 뼛
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YEO, FINAL_SSANGSIOT    ; 뼜
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YEO, FINAL_IEUNG        ; 뼝
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_O                       ; 뽀
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_O,   FINAL_GIYEOK       ; 뽁
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_O,   FINAL_NIEUN        ; 뽄
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_O,   FINAL_RIEUL        ; 뽈
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_O,   FINAL_MIEUM        ; 뽐
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_O,   FINAL_BIEUP        ; 뽑
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_O,   FINAL_IEUNG        ; 뽕
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_OE                      ; 뾔
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YO                      ; 뾰

	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YO,  FINAL_IEUNG        ; 뿅
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_U                       ; 뿌
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_U,   FINAL_GIYEOK       ; 뿍
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_U,   FINAL_NIEUN        ; 뿐
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_U,   FINAL_RIEUL        ; 뿔
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_U,   FINAL_MIEUM        ; 뿜
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_U,   FINAL_SIOT         ; 뿟
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_U,   FINAL_IEUNG        ; 뿡
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YU                      ; 쀼
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_YU,  FINAL_IEUNG        ; 쁑
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EU                      ; 쁘
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EU,  FINAL_NIEUN        ; 쁜
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EU,  FINAL_RIEUL        ; 쁠
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EU,  FINAL_MIEUM        ; 쁨
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_EU,  FINAL_BIEUP        ; 쁩
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I                       ; 삐

	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I,   FINAL_GIYEOK       ; 삑
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I,   FINAL_NIEUN        ; 삔
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I,   FINAL_RIEUL        ; 삘
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I,   FINAL_MIEUM        ; 삠
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I,   FINAL_BIEUP        ; 삡
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I,   FINAL_SIOT         ; 삣
	kr_struct INITIAL_SSANGBIEUP,  MEDIAL_I,   FINAL_IEUNG        ; 삥
	kr_struct INITIAL_SIOT,        MEDIAL_A                       ; 사
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_GIYEOK       ; 삭
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_GIYEOK_SIOT  ; 삯
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_NIEUN        ; 산
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_DIGEUT       ; 삳
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_RIEUL        ; 살
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 삵
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 삶
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_MIEUM        ; 삼

	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_BIEUP        ; 삽
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_SIOT         ; 삿
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_SSANGSIOT    ; 샀
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_IEUNG        ; 상
	kr_struct INITIAL_SIOT,        MEDIAL_A,   FINAL_TIEUT        ; 샅
	kr_struct INITIAL_SIOT,        MEDIAL_AE                      ; 새
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_GIYEOK       ; 색
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_NIEUN        ; 샌
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_RIEUL        ; 샐
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_MIEUM        ; 샘
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_BIEUP        ; 샙
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_SIOT         ; 샛
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_SSANGSIOT    ; 샜
	kr_struct INITIAL_SIOT,        MEDIAL_AE,  FINAL_IEUNG        ; 생
	kr_struct INITIAL_SIOT,        MEDIAL_YA                      ; 샤
	dw -1

	dw -1
	kr_struct INITIAL_SIOT,        MEDIAL_YA,  FINAL_GIYEOK       ; 샥
	kr_struct INITIAL_SIOT,        MEDIAL_YA,  FINAL_NIEUN        ; 샨
	kr_struct INITIAL_SIOT,        MEDIAL_YA,  FINAL_RIEUL        ; 샬
	kr_struct INITIAL_SIOT,        MEDIAL_YA,  FINAL_MIEUM        ; 샴
	kr_struct INITIAL_SIOT,        MEDIAL_YA,  FINAL_BIEUP        ; 샵
	kr_struct INITIAL_SIOT,        MEDIAL_YA,  FINAL_SIOT         ; 샷
	kr_struct INITIAL_SIOT,        MEDIAL_YA,  FINAL_IEUNG        ; 샹
	kr_struct INITIAL_SIOT,        MEDIAL_YAE                     ; 섀
	kr_struct INITIAL_SIOT,        MEDIAL_YAE, FINAL_NIEUN        ; 섄
	kr_struct INITIAL_SIOT,        MEDIAL_YAE, FINAL_RIEUL        ; 섈
	kr_struct INITIAL_SIOT,        MEDIAL_YAE, FINAL_MIEUM        ; 섐
	kr_struct INITIAL_SIOT,        MEDIAL_YAE, FINAL_IEUNG        ; 섕
	kr_struct INITIAL_SIOT,        MEDIAL_EO                      ; 서
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_GIYEOK       ; 석
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_SSANGGIYEOK  ; 섞

	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_GIYEOK_SIOT  ; 섟
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_NIEUN        ; 선
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_DIGEUT       ; 섣
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_RIEUL        ; 설
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 섦
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_RIEUL_BIEUP  ; 섧
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_MIEUM        ; 섬
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_BIEUP        ; 섭
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_SIOT         ; 섯
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_SSANGSIOT    ; 섰
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_IEUNG        ; 성
	kr_struct INITIAL_SIOT,        MEDIAL_EO,  FINAL_PIEUP        ; 섶
	kr_struct INITIAL_SIOT,        MEDIAL_E                       ; 세
	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_GIYEOK       ; 섹
	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_NIEUN        ; 센
	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_RIEUL        ; 셀

	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_MIEUM        ; 셈
	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_BIEUP        ; 셉
	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_SIOT         ; 셋
	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_SSANGSIOT    ; 셌
	kr_struct INITIAL_SIOT,        MEDIAL_E,   FINAL_IEUNG        ; 셍
	kr_struct INITIAL_SIOT,        MEDIAL_YEO                     ; 셔
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_GIYEOK       ; 셕
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_NIEUN        ; 션
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_RIEUL        ; 셜
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_MIEUM        ; 셤
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_BIEUP        ; 셥
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_SIOT         ; 셧
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_SSANGSIOT    ; 셨
	kr_struct INITIAL_SIOT,        MEDIAL_YEO, FINAL_IEUNG        ; 셩
	kr_struct INITIAL_SIOT,        MEDIAL_YE                      ; 셰
	kr_struct INITIAL_SIOT,        MEDIAL_YE,  FINAL_NIEUN        ; 셴

HangulStructureTable6:
	kr_struct INITIAL_SIOT,        MEDIAL_YE,  FINAL_RIEUL        ; 셸
	kr_struct INITIAL_SIOT,        MEDIAL_YE,  FINAL_IEUNG        ; 솅
	kr_struct INITIAL_SIOT,        MEDIAL_O                       ; 소
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_GIYEOK       ; 속
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_SSANGGIYEOK  ; 솎
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_NIEUN        ; 손
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_RIEUL        ; 솔
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 솖
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_MIEUM        ; 솜
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_BIEUP        ; 솝
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_SIOT         ; 솟
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_IEUNG        ; 송
	kr_struct INITIAL_SIOT,        MEDIAL_O,   FINAL_TIEUT        ; 솥
	kr_struct INITIAL_SIOT,        MEDIAL_WA                      ; 솨
	kr_struct INITIAL_SIOT,        MEDIAL_WA,  FINAL_GIYEOK       ; 솩
	kr_struct INITIAL_SIOT,        MEDIAL_WA,  FINAL_NIEUN        ; 솬

	kr_struct INITIAL_SIOT,        MEDIAL_WA,  FINAL_RIEUL        ; 솰
	kr_struct INITIAL_SIOT,        MEDIAL_WA,  FINAL_IEUNG        ; 솽
	kr_struct INITIAL_SIOT,        MEDIAL_WAE                     ; 쇄
	kr_struct INITIAL_SIOT,        MEDIAL_WAE, FINAL_NIEUN        ; 쇈
	kr_struct INITIAL_SIOT,        MEDIAL_WAE, FINAL_RIEUL        ; 쇌
	kr_struct INITIAL_SIOT,        MEDIAL_WAE, FINAL_MIEUM        ; 쇔
	kr_struct INITIAL_SIOT,        MEDIAL_WAE, FINAL_SIOT         ; 쇗
	kr_struct INITIAL_SIOT,        MEDIAL_WAE, FINAL_SSANGSIOT    ; 쇘
	kr_struct INITIAL_SIOT,        MEDIAL_OE                      ; 쇠
	kr_struct INITIAL_SIOT,        MEDIAL_OE,  FINAL_NIEUN        ; 쇤
	kr_struct INITIAL_SIOT,        MEDIAL_OE,  FINAL_RIEUL        ; 쇨
	kr_struct INITIAL_SIOT,        MEDIAL_OE,  FINAL_MIEUM        ; 쇰
	kr_struct INITIAL_SIOT,        MEDIAL_OE,  FINAL_BIEUP        ; 쇱
	kr_struct INITIAL_SIOT,        MEDIAL_OE,  FINAL_SIOT         ; 쇳
	kr_struct INITIAL_SIOT,        MEDIAL_YO                      ; 쇼
	kr_struct INITIAL_SIOT,        MEDIAL_YO,  FINAL_GIYEOK       ; 쇽

	kr_struct INITIAL_SIOT,        MEDIAL_YO,  FINAL_NIEUN        ; 숀
	kr_struct INITIAL_SIOT,        MEDIAL_YO,  FINAL_RIEUL        ; 숄
	kr_struct INITIAL_SIOT,        MEDIAL_YO,  FINAL_MIEUM        ; 숌
	kr_struct INITIAL_SIOT,        MEDIAL_YO,  FINAL_BIEUP        ; 숍
	kr_struct INITIAL_SIOT,        MEDIAL_YO,  FINAL_SIOT         ; 숏
	kr_struct INITIAL_SIOT,        MEDIAL_YO,  FINAL_IEUNG        ; 숑
	kr_struct INITIAL_SIOT,        MEDIAL_U                       ; 수
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_GIYEOK       ; 숙
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_NIEUN        ; 순
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_DIGEUT       ; 숟
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_RIEUL        ; 술
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_MIEUM        ; 숨
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_BIEUP        ; 숩
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_SIOT         ; 숫
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_IEUNG        ; 숭
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_YA                      ; 쌰

	kr_struct INITIAL_SSANGSIOT,   MEDIAL_YE                      ; 쎼
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_CHIEUT       ; 숯
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_TIEUT        ; 숱
	kr_struct INITIAL_SIOT,        MEDIAL_U,   FINAL_PIEUP        ; 숲
	kr_struct INITIAL_SIOT,        MEDIAL_WO                      ; 숴
	kr_struct INITIAL_SIOT,        MEDIAL_WO,  FINAL_SSANGSIOT    ; 쉈
	kr_struct INITIAL_SIOT,        MEDIAL_WE                      ; 쉐
	kr_struct INITIAL_SIOT,        MEDIAL_WE,  FINAL_GIYEOK       ; 쉑
	kr_struct INITIAL_SIOT,        MEDIAL_WE,  FINAL_NIEUN        ; 쉔
	kr_struct INITIAL_SIOT,        MEDIAL_WE,  FINAL_RIEUL        ; 쉘
	kr_struct INITIAL_SIOT,        MEDIAL_WE,  FINAL_MIEUM        ; 쉠
	kr_struct INITIAL_SIOT,        MEDIAL_WE,  FINAL_IEUNG        ; 쉥
	kr_struct INITIAL_SIOT,        MEDIAL_WI                      ; 쉬
	kr_struct INITIAL_SIOT,        MEDIAL_WI,  FINAL_GIYEOK       ; 쉭
	kr_struct INITIAL_SIOT,        MEDIAL_WI,  FINAL_NIEUN        ; 쉰
	kr_struct INITIAL_SIOT,        MEDIAL_WI,  FINAL_RIEUL        ; 쉴

	kr_struct INITIAL_SIOT,        MEDIAL_WI,  FINAL_MIEUM        ; 쉼
	kr_struct INITIAL_SIOT,        MEDIAL_WI,  FINAL_BIEUP        ; 쉽
	kr_struct INITIAL_SIOT,        MEDIAL_WI,  FINAL_SIOT         ; 쉿
	kr_struct INITIAL_SIOT,        MEDIAL_WI,  FINAL_IEUNG        ; 슁
	kr_struct INITIAL_SIOT,        MEDIAL_YU                      ; 슈
	kr_struct INITIAL_SIOT,        MEDIAL_YU,  FINAL_GIYEOK       ; 슉
	kr_struct INITIAL_SIOT,        MEDIAL_YU,  FINAL_RIEUL        ; 슐
	kr_struct INITIAL_SIOT,        MEDIAL_YU,  FINAL_MIEUM        ; 슘
	kr_struct INITIAL_SIOT,        MEDIAL_YU,  FINAL_SIOT         ; 슛
	kr_struct INITIAL_SIOT,        MEDIAL_YU,  FINAL_IEUNG        ; 슝
	kr_struct INITIAL_SIOT,        MEDIAL_EU                      ; 스
	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_GIYEOK       ; 슥
	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_NIEUN        ; 슨
	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_RIEUL        ; 슬
	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_RIEUL_GIYEOK ; 슭
	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_MIEUM        ; 슴

rept 16
	dw -1
endr

	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_BIEUP        ; 습
	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_SIOT         ; 슷
	kr_struct INITIAL_SIOT,        MEDIAL_EU,  FINAL_IEUNG        ; 승
	kr_struct INITIAL_SIOT,        MEDIAL_I                       ; 시
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_GIYEOK       ; 식
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_NIEUN        ; 신
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_DIGEUT       ; 싣
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_RIEUL        ; 실
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_RIEUL_HIEUT  ; 싫
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_MIEUM        ; 심
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_BIEUP        ; 십
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_SIOT         ; 싯
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_IEUNG        ; 싱
	kr_struct INITIAL_SIOT,        MEDIAL_I,   FINAL_PIEUP        ; 싶
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A                       ; 싸
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_GIYEOK       ; 싹

	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_GIYEOK_SIOT  ; 싻
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_NIEUN        ; 싼
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_RIEUL        ; 쌀
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_MIEUM        ; 쌈
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_BIEUP        ; 쌉
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_SSANGSIOT    ; 쌌
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_IEUNG        ; 쌍
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_A,   FINAL_HIEUT        ; 쌓
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE                      ; 쌔
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE,  FINAL_GIYEOK       ; 쌕
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE,  FINAL_NIEUN        ; 쌘
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE,  FINAL_RIEUL        ; 쌜
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE,  FINAL_MIEUM        ; 쌤
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE,  FINAL_BIEUP        ; 쌥
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE,  FINAL_SSANGSIOT    ; 쌨
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_AE,  FINAL_IEUNG        ; 쌩

	kr_struct INITIAL_SSANGSIOT,   MEDIAL_YA,  FINAL_IEUNG        ; 썅
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO                      ; 써
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_GIYEOK       ; 썩
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_NIEUN        ; 썬
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_RIEUL        ; 썰
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 썲
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_MIEUM        ; 썸
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_BIEUP        ; 썹
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_SSANGSIOT    ; 썼
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EO,  FINAL_IEUNG        ; 썽
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_E                       ; 쎄
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_E,   FINAL_NIEUN        ; 쎈
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_E,   FINAL_RIEUL        ; 쎌
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_YE,  FINAL_NIEUN        ; 쏀
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O                       ; 쏘
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_GIYEOK       ; 쏙

	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_NIEUN        ; 쏜
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_DIGEUT       ; 쏟
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_RIEUL        ; 쏠
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 쏢
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_MIEUM        ; 쏨
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_BIEUP        ; 쏩
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_O,   FINAL_IEUNG        ; 쏭
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WA                      ; 쏴
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WA,  FINAL_GIYEOK       ; 쏵
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WA,  FINAL_NIEUN        ; 쏸
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WA,  FINAL_SSANGSIOT    ; 쐈
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WAE                     ; 쐐
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WAE, FINAL_SSANGSIOT    ; 쐤
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_OE                      ; 쐬
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_OE,  FINAL_NIEUN        ; 쐰
	dw -1

	kr_struct INITIAL_SSANGSIOT,   MEDIAL_YU                      ; 쓔
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_OE,  FINAL_RIEUL        ; 쐴
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_OE,  FINAL_MIEUM        ; 쐼
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_OE,  FINAL_BIEUP        ; 쐽
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_YO                      ; 쑈
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_U                       ; 쑤
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_U,   FINAL_GIYEOK       ; 쑥
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_U,   FINAL_NIEUN        ; 쑨
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_U,   FINAL_RIEUL        ; 쑬
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_U,   FINAL_MIEUM        ; 쑴
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_U,   FINAL_BIEUP        ; 쑵
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_U,   FINAL_IEUNG        ; 쑹
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WO                      ; 쒀
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WO,  FINAL_SSANGSIOT    ; 쒔
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WE                      ; 쒜
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WI                      ; 쒸

	kr_struct INITIAL_SSANGSIOT,   MEDIAL_WI,  FINAL_NIEUN        ; 쒼
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_YU,  FINAL_IEUNG        ; 쓩
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU                      ; 쓰
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU,  FINAL_GIYEOK       ; 쓱
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU,  FINAL_NIEUN        ; 쓴
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU,  FINAL_RIEUL        ; 쓸
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU,  FINAL_RIEUL_MIEUM  ; 쓺
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU,  FINAL_RIEUL_HIEUT  ; 쓿
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU,  FINAL_MIEUM        ; 씀
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_EU,  FINAL_BIEUP        ; 씁
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_UI                      ; 씌
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_UI,  FINAL_NIEUN        ; 씐
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_UI,  FINAL_RIEUL        ; 씔
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_UI,  FINAL_MIEUM        ; 씜
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I                       ; 씨
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I,   FINAL_GIYEOK       ; 씩

	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I,   FINAL_NIEUN        ; 씬
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I,   FINAL_RIEUL        ; 씰
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I,   FINAL_MIEUM        ; 씸
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I,   FINAL_BIEUP        ; 씹
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I,   FINAL_SIOT         ; 씻
	kr_struct INITIAL_SSANGSIOT,   MEDIAL_I,   FINAL_IEUNG        ; 씽
	kr_struct INITIAL_IEUNG,       MEDIAL_A                       ; 아
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_GIYEOK       ; 악
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_NIEUN        ; 안
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_NIEUN_JIEUT  ; 앉
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_NIEUN_HIEUT  ; 않
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_RIEUL        ; 알
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 앍
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 앎
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_RIEUL_HIEUT  ; 앓
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_MIEUM        ; 암

	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_BIEUP        ; 압
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_SIOT         ; 앗
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_SSANGSIOT    ; 았
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_IEUNG        ; 앙
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_TIEUT        ; 앝
	kr_struct INITIAL_IEUNG,       MEDIAL_A,   FINAL_PIEUP        ; 앞
	kr_struct INITIAL_IEUNG,       MEDIAL_AE                      ; 애
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_GIYEOK       ; 액
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_NIEUN        ; 앤
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_RIEUL        ; 앨
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_MIEUM        ; 앰
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_BIEUP        ; 앱
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_SIOT         ; 앳
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 앴
	kr_struct INITIAL_IEUNG,       MEDIAL_AE,  FINAL_IEUNG        ; 앵
	kr_struct INITIAL_IEUNG,       MEDIAL_YA                      ; 야

	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_GIYEOK       ; 약
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_NIEUN        ; 얀
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_RIEUL        ; 얄
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_RIEUL_BIEUP  ; 얇
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_MIEUM        ; 얌
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_BIEUP        ; 얍
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_SIOT         ; 얏
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_IEUNG        ; 양
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_TIEUT        ; 얕
	kr_struct INITIAL_IEUNG,       MEDIAL_YA,  FINAL_HIEUT        ; 얗
	kr_struct INITIAL_IEUNG,       MEDIAL_YAE                     ; 얘
	kr_struct INITIAL_IEUNG,       MEDIAL_YAE, FINAL_NIEUN        ; 얜
	kr_struct INITIAL_IEUNG,       MEDIAL_YAE, FINAL_RIEUL        ; 얠
	kr_struct INITIAL_IEUNG,       MEDIAL_YAE, FINAL_BIEUP        ; 얩
	kr_struct INITIAL_IEUNG,       MEDIAL_EO                      ; 어
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_GIYEOK       ; 억

	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_NIEUN        ; 언
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_NIEUN_JIEUT  ; 얹
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_DIGEUT       ; 얻
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_RIEUL        ; 얼
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_RIEUL_GIYEOK ; 얽
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 얾
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_MIEUM        ; 엄
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_BIEUP        ; 업
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_BIEUP_SIOT   ; 없
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_SIOT         ; 엇
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_SSANGSIOT    ; 었
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_IEUNG        ; 엉
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_JIEUT        ; 엊
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_KIEUK        ; 엌
	kr_struct INITIAL_IEUNG,       MEDIAL_EO,  FINAL_PIEUP        ; 엎
	dw -1

HangulStructureTable7:
	dw -1
	kr_struct INITIAL_IEUNG,       MEDIAL_E                       ; 에
	kr_struct INITIAL_IEUNG,       MEDIAL_E,   FINAL_GIYEOK       ; 엑
	kr_struct INITIAL_IEUNG,       MEDIAL_E,   FINAL_NIEUN        ; 엔
	kr_struct INITIAL_IEUNG,       MEDIAL_E,   FINAL_RIEUL        ; 엘
	kr_struct INITIAL_IEUNG,       MEDIAL_E,   FINAL_MIEUM        ; 엠
	kr_struct INITIAL_IEUNG,       MEDIAL_E,   FINAL_BIEUP        ; 엡
	kr_struct INITIAL_IEUNG,       MEDIAL_E,   FINAL_SIOT         ; 엣
	kr_struct INITIAL_IEUNG,       MEDIAL_E,   FINAL_IEUNG        ; 엥
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO                     ; 여
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_GIYEOK       ; 역
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_SSANGGIYEOK  ; 엮
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_NIEUN        ; 연
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_RIEUL        ; 열
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_RIEUL_MIEUM  ; 엶
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_RIEUL_BIEUP  ; 엷

	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_MIEUM        ; 염
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_BIEUP        ; 엽
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_BIEUP_SIOT   ; 엾
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_SIOT         ; 엿
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 였
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_IEUNG        ; 영
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_TIEUT        ; 옅
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_PIEUP        ; 옆
	kr_struct INITIAL_IEUNG,       MEDIAL_YEO, FINAL_HIEUT        ; 옇
	kr_struct INITIAL_IEUNG,       MEDIAL_YE                      ; 예
	kr_struct INITIAL_IEUNG,       MEDIAL_YE,  FINAL_NIEUN        ; 옌
	kr_struct INITIAL_IEUNG,       MEDIAL_YE,  FINAL_RIEUL        ; 옐
	kr_struct INITIAL_IEUNG,       MEDIAL_YE,  FINAL_MIEUM        ; 옘
	kr_struct INITIAL_IEUNG,       MEDIAL_YE,  FINAL_BIEUP        ; 옙
	kr_struct INITIAL_IEUNG,       MEDIAL_YE,  FINAL_SIOT         ; 옛
	kr_struct INITIAL_IEUNG,       MEDIAL_YE,  FINAL_SSANGSIOT    ; 옜

	kr_struct INITIAL_IEUNG,       MEDIAL_O                       ; 오
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_GIYEOK       ; 옥
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_NIEUN        ; 온
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_RIEUL        ; 올
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_RIEUL_GIYEOK ; 옭
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 옮
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_RIEUL_SIOT   ; 옰
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_RIEUL_HIEUT  ; 옳
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_MIEUM        ; 옴
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_BIEUP        ; 옵
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_SIOT         ; 옷
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_IEUNG        ; 옹
	kr_struct INITIAL_IEUNG,       MEDIAL_O,   FINAL_CHIEUT       ; 옻
	kr_struct INITIAL_IEUNG,       MEDIAL_WA                      ; 와
	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_GIYEOK       ; 왁
	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_NIEUN        ; 완

	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_RIEUL        ; 왈
	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_MIEUM        ; 왐
	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_BIEUP        ; 왑
	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_SIOT         ; 왓
	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_SSANGSIOT    ; 왔
	kr_struct INITIAL_IEUNG,       MEDIAL_WA,  FINAL_IEUNG        ; 왕
	kr_struct INITIAL_IEUNG,       MEDIAL_WAE                     ; 왜
	kr_struct INITIAL_IEUNG,       MEDIAL_WAE, FINAL_GIYEOK       ; 왝
	kr_struct INITIAL_IEUNG,       MEDIAL_WAE, FINAL_NIEUN        ; 왠
	kr_struct INITIAL_IEUNG,       MEDIAL_WAE, FINAL_MIEUM        ; 왬
	kr_struct INITIAL_IEUNG,       MEDIAL_WAE, FINAL_SIOT         ; 왯
	kr_struct INITIAL_IEUNG,       MEDIAL_WAE, FINAL_IEUNG        ; 왱
	kr_struct INITIAL_IEUNG,       MEDIAL_OE                      ; 외
	kr_struct INITIAL_IEUNG,       MEDIAL_OE,  FINAL_GIYEOK       ; 왹
	kr_struct INITIAL_IEUNG,       MEDIAL_OE,  FINAL_NIEUN        ; 왼
	kr_struct INITIAL_IEUNG,       MEDIAL_OE,  FINAL_RIEUL        ; 욀

	kr_struct INITIAL_IEUNG,       MEDIAL_OE,  FINAL_MIEUM        ; 욈
	kr_struct INITIAL_IEUNG,       MEDIAL_OE,  FINAL_BIEUP        ; 욉
	kr_struct INITIAL_IEUNG,       MEDIAL_OE,  FINAL_SIOT         ; 욋
	kr_struct INITIAL_IEUNG,       MEDIAL_OE,  FINAL_IEUNG        ; 욍
	kr_struct INITIAL_IEUNG,       MEDIAL_YO                      ; 요
	kr_struct INITIAL_IEUNG,       MEDIAL_YO,  FINAL_GIYEOK       ; 욕
	kr_struct INITIAL_IEUNG,       MEDIAL_YO,  FINAL_NIEUN        ; 욘
	kr_struct INITIAL_IEUNG,       MEDIAL_YO,  FINAL_RIEUL        ; 욜
	kr_struct INITIAL_IEUNG,       MEDIAL_YO,  FINAL_MIEUM        ; 욤
	kr_struct INITIAL_IEUNG,       MEDIAL_YO,  FINAL_BIEUP        ; 욥
	kr_struct INITIAL_IEUNG,       MEDIAL_YO,  FINAL_SIOT         ; 욧
	kr_struct INITIAL_IEUNG,       MEDIAL_YO,  FINAL_IEUNG        ; 용
	kr_struct INITIAL_IEUNG,       MEDIAL_U                       ; 우
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_GIYEOK       ; 욱
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_NIEUN        ; 운
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_RIEUL        ; 울

rept 16
	dw -1
endr

	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_RIEUL_GIYEOK ; 욹
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_RIEUL_MIEUM  ; 욺
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_MIEUM        ; 움
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_BIEUP        ; 웁
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_SIOT         ; 웃
	kr_struct INITIAL_IEUNG,       MEDIAL_U,   FINAL_IEUNG        ; 웅
	kr_struct INITIAL_IEUNG,       MEDIAL_WO                      ; 워
	kr_struct INITIAL_IEUNG,       MEDIAL_WO,  FINAL_GIYEOK       ; 웍
	kr_struct INITIAL_IEUNG,       MEDIAL_WO,  FINAL_NIEUN        ; 원
	kr_struct INITIAL_IEUNG,       MEDIAL_WO,  FINAL_RIEUL        ; 월
	kr_struct INITIAL_IEUNG,       MEDIAL_WO,  FINAL_MIEUM        ; 웜
	kr_struct INITIAL_IEUNG,       MEDIAL_WO,  FINAL_BIEUP        ; 웝
	kr_struct INITIAL_IEUNG,       MEDIAL_WO,  FINAL_SSANGSIOT    ; 웠
	kr_struct INITIAL_IEUNG,       MEDIAL_WO,  FINAL_IEUNG        ; 웡
	kr_struct INITIAL_IEUNG,       MEDIAL_WE                      ; 웨
	dw -1

	dw -1
	kr_struct INITIAL_IEUNG,       MEDIAL_WE,  FINAL_GIYEOK       ; 웩
	kr_struct INITIAL_IEUNG,       MEDIAL_WE,  FINAL_NIEUN        ; 웬
	kr_struct INITIAL_IEUNG,       MEDIAL_WE,  FINAL_RIEUL        ; 웰
	kr_struct INITIAL_IEUNG,       MEDIAL_WE,  FINAL_MIEUM        ; 웸
	kr_struct INITIAL_IEUNG,       MEDIAL_WE,  FINAL_BIEUP        ; 웹
	kr_struct INITIAL_IEUNG,       MEDIAL_WE,  FINAL_IEUNG        ; 웽
	kr_struct INITIAL_IEUNG,       MEDIAL_WI                      ; 위
	kr_struct INITIAL_IEUNG,       MEDIAL_WI,  FINAL_GIYEOK       ; 윅
	kr_struct INITIAL_IEUNG,       MEDIAL_WI,  FINAL_NIEUN        ; 윈
	kr_struct INITIAL_IEUNG,       MEDIAL_WI,  FINAL_RIEUL        ; 윌
	kr_struct INITIAL_IEUNG,       MEDIAL_WI,  FINAL_MIEUM        ; 윔
	kr_struct INITIAL_IEUNG,       MEDIAL_WI,  FINAL_BIEUP        ; 윕
	kr_struct INITIAL_IEUNG,       MEDIAL_WI,  FINAL_SIOT         ; 윗
	kr_struct INITIAL_IEUNG,       MEDIAL_WI,  FINAL_IEUNG        ; 윙
	kr_struct INITIAL_IEUNG,       MEDIAL_YU                      ; 유

	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_GIYEOK       ; 육
	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_NIEUN        ; 윤
	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_RIEUL        ; 율
	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_MIEUM        ; 윰
	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_BIEUP        ; 윱
	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_SIOT         ; 윳
	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_IEUNG        ; 융
	kr_struct INITIAL_IEUNG,       MEDIAL_YU,  FINAL_CHIEUT       ; 윷
	kr_struct INITIAL_IEUNG,       MEDIAL_EU                      ; 으
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_GIYEOK       ; 윽
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_NIEUN        ; 은
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_RIEUL        ; 을
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_RIEUL_MIEUM  ; 읆
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_MIEUM        ; 음
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_BIEUP        ; 읍
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_SIOT         ; 읏

	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_IEUNG        ; 응
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_JIEUT        ; 읒
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_CHIEUT       ; 읓
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_KIEUK        ; 읔
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_TIEUT        ; 읕
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_PIEUP        ; 읖
	kr_struct INITIAL_IEUNG,       MEDIAL_EU,  FINAL_HIEUT        ; 읗
	kr_struct INITIAL_IEUNG,       MEDIAL_UI                      ; 의
	kr_struct INITIAL_IEUNG,       MEDIAL_UI,  FINAL_NIEUN        ; 읜
	kr_struct INITIAL_IEUNG,       MEDIAL_UI,  FINAL_RIEUL        ; 읠
	kr_struct INITIAL_IEUNG,       MEDIAL_UI,  FINAL_MIEUM        ; 읨
	kr_struct INITIAL_IEUNG,       MEDIAL_UI,  FINAL_SIOT         ; 읫
	kr_struct INITIAL_IEUNG,       MEDIAL_I                       ; 이
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_GIYEOK       ; 익
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_NIEUN        ; 인
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_RIEUL        ; 일

	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_RIEUL_GIYEOK ; 읽
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_RIEUL_MIEUM  ; 읾
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_RIEUL_HIEUT  ; 잃
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_MIEUM        ; 임
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_BIEUP        ; 입
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_SIOT         ; 잇
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_SSANGSIOT    ; 있
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_IEUNG        ; 잉
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_JIEUT        ; 잊
	kr_struct INITIAL_IEUNG,       MEDIAL_I,   FINAL_PIEUP        ; 잎
	kr_struct INITIAL_JIEUT,       MEDIAL_A                       ; 자
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_GIYEOK       ; 작
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_NIEUN        ; 잔
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_NIEUN_HIEUT  ; 잖
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_DIGEUT       ; 잗
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_RIEUL        ; 잘

	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 잚
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_MIEUM        ; 잠
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_BIEUP        ; 잡
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_SIOT         ; 잣
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_SSANGSIOT    ; 잤
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_IEUNG        ; 장
	kr_struct INITIAL_JIEUT,       MEDIAL_A,   FINAL_JIEUT        ; 잦
	kr_struct INITIAL_JIEUT,       MEDIAL_AE                      ; 재
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_GIYEOK       ; 잭
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_NIEUN        ; 잰
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_RIEUL        ; 잴
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_MIEUM        ; 잼
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_BIEUP        ; 잽
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_SIOT         ; 잿
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 쟀
	kr_struct INITIAL_JIEUT,       MEDIAL_AE,  FINAL_IEUNG        ; 쟁

	kr_struct INITIAL_JIEUT,       MEDIAL_YA                      ; 쟈
	kr_struct INITIAL_JIEUT,       MEDIAL_YA,  FINAL_GIYEOK       ; 쟉
	kr_struct INITIAL_JIEUT,       MEDIAL_YA,  FINAL_NIEUN        ; 쟌
	kr_struct INITIAL_JIEUT,       MEDIAL_YA,  FINAL_NIEUN_HIEUT  ; 쟎
	kr_struct INITIAL_JIEUT,       MEDIAL_YA,  FINAL_RIEUL        ; 쟐
	kr_struct INITIAL_JIEUT,       MEDIAL_YA,  FINAL_MIEUM        ; 쟘
	kr_struct INITIAL_JIEUT,       MEDIAL_YA,  FINAL_IEUNG        ; 쟝
	kr_struct INITIAL_JIEUT,       MEDIAL_YAE                     ; 쟤
	kr_struct INITIAL_JIEUT,       MEDIAL_YAE, FINAL_NIEUN        ; 쟨
	kr_struct INITIAL_JIEUT,       MEDIAL_YAE, FINAL_RIEUL        ; 쟬
	kr_struct INITIAL_JIEUT,       MEDIAL_EO                      ; 저
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_GIYEOK       ; 적
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_NIEUN        ; 전
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_RIEUL        ; 절
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 젊
	dw -1

	dw -1
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_MIEUM        ; 점
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_BIEUP        ; 접
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_SIOT         ; 젓
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_IEUNG        ; 정
	kr_struct INITIAL_JIEUT,       MEDIAL_EO,  FINAL_JIEUT        ; 젖
	kr_struct INITIAL_JIEUT,       MEDIAL_E                       ; 제
	kr_struct INITIAL_JIEUT,       MEDIAL_E,   FINAL_GIYEOK       ; 젝
	kr_struct INITIAL_JIEUT,       MEDIAL_E,   FINAL_NIEUN        ; 젠
	kr_struct INITIAL_JIEUT,       MEDIAL_E,   FINAL_RIEUL        ; 젤
	kr_struct INITIAL_JIEUT,       MEDIAL_E,   FINAL_MIEUM        ; 젬
	kr_struct INITIAL_JIEUT,       MEDIAL_E,   FINAL_BIEUP        ; 젭
	kr_struct INITIAL_JIEUT,       MEDIAL_E,   FINAL_SIOT         ; 젯
	kr_struct INITIAL_JIEUT,       MEDIAL_E,   FINAL_IEUNG        ; 젱
	kr_struct INITIAL_JIEUT,       MEDIAL_YEO                     ; 져
	kr_struct INITIAL_JIEUT,       MEDIAL_YEO, FINAL_NIEUN        ; 젼

	kr_struct INITIAL_JIEUT,       MEDIAL_YEO, FINAL_RIEUL        ; 졀
	kr_struct INITIAL_JIEUT,       MEDIAL_YEO, FINAL_MIEUM        ; 졈
	kr_struct INITIAL_JIEUT,       MEDIAL_YEO, FINAL_BIEUP        ; 졉
	kr_struct INITIAL_JIEUT,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 졌
	kr_struct INITIAL_JIEUT,       MEDIAL_YEO, FINAL_IEUNG        ; 졍
	kr_struct INITIAL_JIEUT,       MEDIAL_YE                      ; 졔
	kr_struct INITIAL_JIEUT,       MEDIAL_O                       ; 조
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_GIYEOK       ; 족
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_NIEUN        ; 존
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_RIEUL        ; 졸
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_RIEUL_MIEUM  ; 졺
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_MIEUM        ; 좀
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_BIEUP        ; 좁
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_SIOT         ; 좃
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_IEUNG        ; 종
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_JIEUT        ; 좆

	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_CHIEUT       ; 좇
	kr_struct INITIAL_JIEUT,       MEDIAL_O,   FINAL_HIEUT        ; 좋
	kr_struct INITIAL_JIEUT,       MEDIAL_WA                      ; 좌
	kr_struct INITIAL_JIEUT,       MEDIAL_WA,  FINAL_GIYEOK       ; 좍
	kr_struct INITIAL_JIEUT,       MEDIAL_WA,  FINAL_RIEUL        ; 좔
	kr_struct INITIAL_JIEUT,       MEDIAL_WA,  FINAL_BIEUP        ; 좝
	kr_struct INITIAL_JIEUT,       MEDIAL_WA,  FINAL_SIOT         ; 좟
	kr_struct INITIAL_JIEUT,       MEDIAL_WA,  FINAL_IEUNG        ; 좡
	kr_struct INITIAL_JIEUT,       MEDIAL_WAE                     ; 좨
	kr_struct INITIAL_JIEUT,       MEDIAL_WAE, FINAL_SSANGSIOT    ; 좼
	kr_struct INITIAL_JIEUT,       MEDIAL_WAE, FINAL_IEUNG        ; 좽
	kr_struct INITIAL_JIEUT,       MEDIAL_OE                      ; 죄
	kr_struct INITIAL_JIEUT,       MEDIAL_OE,  FINAL_NIEUN        ; 죈
	kr_struct INITIAL_JIEUT,       MEDIAL_OE,  FINAL_RIEUL        ; 죌
	kr_struct INITIAL_JIEUT,       MEDIAL_OE,  FINAL_MIEUM        ; 죔
	kr_struct INITIAL_JIEUT,       MEDIAL_OE,  FINAL_BIEUP        ; 죕

HangulStructureTable8:
	kr_struct INITIAL_JIEUT,       MEDIAL_OE,  FINAL_SIOT         ; 죗
	kr_struct INITIAL_JIEUT,       MEDIAL_OE,  FINAL_IEUNG        ; 죙
	kr_struct INITIAL_JIEUT,       MEDIAL_YO                      ; 죠
	kr_struct INITIAL_JIEUT,       MEDIAL_YO,  FINAL_GIYEOK       ; 죡
	kr_struct INITIAL_JIEUT,       MEDIAL_YO,  FINAL_NIEUN        ; 죤
	kr_struct INITIAL_JIEUT,       MEDIAL_YO,  FINAL_IEUNG        ; 죵
	kr_struct INITIAL_JIEUT,       MEDIAL_U                       ; 주
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_GIYEOK       ; 죽
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_NIEUN        ; 준
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_RIEUL        ; 줄
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_RIEUL_GIYEOK ; 줅
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_RIEUL_MIEUM  ; 줆
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_MIEUM        ; 줌
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_BIEUP        ; 줍
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_SIOT         ; 줏
	kr_struct INITIAL_JIEUT,       MEDIAL_U,   FINAL_IEUNG        ; 중

	kr_struct INITIAL_JIEUT,       MEDIAL_WO                      ; 줘
	kr_struct INITIAL_JIEUT,       MEDIAL_WO,  FINAL_SSANGSIOT    ; 줬
	kr_struct INITIAL_JIEUT,       MEDIAL_WE                      ; 줴
	kr_struct INITIAL_JIEUT,       MEDIAL_WI                      ; 쥐
	kr_struct INITIAL_JIEUT,       MEDIAL_WI,  FINAL_GIYEOK       ; 쥑
	kr_struct INITIAL_JIEUT,       MEDIAL_WI,  FINAL_NIEUN        ; 쥔
	kr_struct INITIAL_JIEUT,       MEDIAL_WI,  FINAL_RIEUL        ; 쥘
	kr_struct INITIAL_JIEUT,       MEDIAL_WI,  FINAL_MIEUM        ; 쥠
	kr_struct INITIAL_JIEUT,       MEDIAL_WI,  FINAL_BIEUP        ; 쥡
	kr_struct INITIAL_JIEUT,       MEDIAL_WI,  FINAL_SIOT         ; 쥣
	kr_struct INITIAL_JIEUT,       MEDIAL_YU                      ; 쥬
	kr_struct INITIAL_JIEUT,       MEDIAL_YU,  FINAL_NIEUN        ; 쥰
	kr_struct INITIAL_JIEUT,       MEDIAL_YU,  FINAL_RIEUL        ; 쥴
	kr_struct INITIAL_JIEUT,       MEDIAL_YU,  FINAL_MIEUM        ; 쥼
	kr_struct INITIAL_JIEUT,       MEDIAL_EU                      ; 즈
	kr_struct INITIAL_JIEUT,       MEDIAL_EU,  FINAL_GIYEOK       ; 즉

	kr_struct INITIAL_JIEUT,       MEDIAL_EU,  FINAL_NIEUN        ; 즌
	kr_struct INITIAL_JIEUT,       MEDIAL_EU,  FINAL_RIEUL        ; 즐
	kr_struct INITIAL_JIEUT,       MEDIAL_EU,  FINAL_MIEUM        ; 즘
	kr_struct INITIAL_JIEUT,       MEDIAL_EU,  FINAL_BIEUP        ; 즙
	kr_struct INITIAL_JIEUT,       MEDIAL_EU,  FINAL_SIOT         ; 즛
	kr_struct INITIAL_JIEUT,       MEDIAL_EU,  FINAL_IEUNG        ; 증
	kr_struct INITIAL_JIEUT,       MEDIAL_I                       ; 지
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_GIYEOK       ; 직
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_NIEUN        ; 진
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_DIGEUT       ; 짇
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_RIEUL        ; 질
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_RIEUL_MIEUM  ; 짊
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_MIEUM        ; 짐
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_BIEUP        ; 집
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_SIOT         ; 짓
	dw -1

	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YO                      ; 쬬
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_IEUNG        ; 징
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_JIEUT        ; 짖
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_TIEUT        ; 짙
	kr_struct INITIAL_JIEUT,       MEDIAL_I,   FINAL_PIEUP        ; 짚
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A                       ; 짜
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_GIYEOK       ; 짝
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_NIEUN        ; 짠
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_NIEUN_HIEUT  ; 짢
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_RIEUL        ; 짤
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_RIEUL_BIEUP  ; 짧
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_MIEUM        ; 짬
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_BIEUP        ; 짭
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_SIOT         ; 짯
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_SSANGSIOT    ; 짰
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_A,   FINAL_IEUNG        ; 짱

	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE                      ; 째
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_GIYEOK       ; 짹
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_NIEUN        ; 짼
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_RIEUL        ; 쨀
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_MIEUM        ; 쨈
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_BIEUP        ; 쨉
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_SIOT         ; 쨋
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_SSANGSIOT    ; 쨌
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_AE,  FINAL_IEUNG        ; 쨍
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YA                      ; 쨔
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YA,  FINAL_NIEUN        ; 쨘
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YA,  FINAL_IEUNG        ; 쨩
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO                      ; 쩌
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_GIYEOK       ; 쩍
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_NIEUN        ; 쩐
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_RIEUL        ; 쩔

rept 16
	dw -1
endr

	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_MIEUM        ; 쩜
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_BIEUP        ; 쩝
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_SIOT         ; 쩟
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_SSANGSIOT    ; 쩠
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EO,  FINAL_IEUNG        ; 쩡
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_E                       ; 쩨
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_E,   FINAL_IEUNG        ; 쩽
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YEO                     ; 쪄
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YEO, FINAL_SSANGSIOT    ; 쪘
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O                       ; 쪼
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_GIYEOK       ; 쪽
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_NIEUN        ; 쫀
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_RIEUL        ; 쫄
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_MIEUM        ; 쫌
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_BIEUP        ; 쫍
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_SIOT         ; 쫏

	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_IEUNG        ; 쫑
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_O,   FINAL_CHIEUT       ; 쫓
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WA                      ; 쫘
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WA,  FINAL_GIYEOK       ; 쫙
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WA,  FINAL_RIEUL        ; 쫠
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WA,  FINAL_SSANGSIOT    ; 쫬
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WAE                     ; 쫴
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WAE, FINAL_SSANGSIOT    ; 쬈
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_OE                      ; 쬐
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_OE,  FINAL_NIEUN        ; 쬔
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_OE,  FINAL_RIEUL        ; 쬘
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_OE,  FINAL_MIEUM        ; 쬠
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_OE,  FINAL_BIEUP        ; 쬡
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YO,  FINAL_IEUNG        ; 쭁
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_U                       ; 쭈
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_U,   FINAL_GIYEOK       ; 쭉

	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_U,   FINAL_NIEUN        ; 쭌
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_U,   FINAL_RIEUL        ; 쭐
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_U,   FINAL_MIEUM        ; 쭘
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_U,   FINAL_BIEUP        ; 쭙
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_U,   FINAL_IEUNG        ; 쭝
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WO                      ; 쭤
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WO,  FINAL_SSANGSIOT    ; 쭸
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WO,  FINAL_IEUNG        ; 쭹
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_WI                      ; 쮜
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_YU                      ; 쮸
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EU                      ; 쯔
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EU,  FINAL_MIEUM        ; 쯤
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EU,  FINAL_SIOT         ; 쯧
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_EU,  FINAL_IEUNG        ; 쯩
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I                       ; 찌
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_GIYEOK       ; 찍

	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_NIEUN        ; 찐
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_RIEUL        ; 찔
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_MIEUM        ; 찜
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_BIEUP        ; 찝
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_IEUNG        ; 찡
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_JIEUT        ; 찢
	kr_struct INITIAL_SSANGJIEUT,  MEDIAL_I,   FINAL_HIEUT        ; 찧
	kr_struct INITIAL_CHIEUT,      MEDIAL_A                       ; 차
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_GIYEOK       ; 착
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_NIEUN        ; 찬
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_NIEUN_HIEUT  ; 찮
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_RIEUL        ; 찰
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_MIEUM        ; 참
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_BIEUP        ; 찹
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_SIOT         ; 찻
	dw -1

	dw -1
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_SSANGSIOT    ; 찼
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_IEUNG        ; 창
	kr_struct INITIAL_CHIEUT,      MEDIAL_A,   FINAL_JIEUT        ; 찾
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE                      ; 채
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_GIYEOK       ; 책
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_NIEUN        ; 챈
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_RIEUL        ; 챌
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_MIEUM        ; 챔
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_BIEUP        ; 챕
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_SIOT         ; 챗
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_SSANGSIOT    ; 챘
	kr_struct INITIAL_CHIEUT,      MEDIAL_AE,  FINAL_IEUNG        ; 챙
	kr_struct INITIAL_CHIEUT,      MEDIAL_YA                      ; 챠
	kr_struct INITIAL_CHIEUT,      MEDIAL_YA,  FINAL_NIEUN        ; 챤
	kr_struct INITIAL_CHIEUT,      MEDIAL_YA,  FINAL_NIEUN_HIEUT  ; 챦

	kr_struct INITIAL_CHIEUT,      MEDIAL_YA,  FINAL_RIEUL        ; 챨
	kr_struct INITIAL_CHIEUT,      MEDIAL_YA,  FINAL_MIEUM        ; 챰
	kr_struct INITIAL_CHIEUT,      MEDIAL_YA,  FINAL_IEUNG        ; 챵
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO                      ; 처
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_GIYEOK       ; 척
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_NIEUN        ; 천
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_RIEUL        ; 철
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_MIEUM        ; 첨
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_BIEUP        ; 첩
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_SIOT         ; 첫
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_SSANGSIOT    ; 첬
	kr_struct INITIAL_CHIEUT,      MEDIAL_EO,  FINAL_IEUNG        ; 청
	kr_struct INITIAL_CHIEUT,      MEDIAL_E                       ; 체
	kr_struct INITIAL_CHIEUT,      MEDIAL_E,   FINAL_GIYEOK       ; 첵
	kr_struct INITIAL_CHIEUT,      MEDIAL_E,   FINAL_NIEUN        ; 첸
	kr_struct INITIAL_CHIEUT,      MEDIAL_E,   FINAL_RIEUL        ; 첼

	kr_struct INITIAL_CHIEUT,      MEDIAL_E,   FINAL_MIEUM        ; 쳄
	kr_struct INITIAL_CHIEUT,      MEDIAL_E,   FINAL_BIEUP        ; 쳅
	kr_struct INITIAL_CHIEUT,      MEDIAL_E,   FINAL_SIOT         ; 쳇
	kr_struct INITIAL_CHIEUT,      MEDIAL_E,   FINAL_IEUNG        ; 쳉
	kr_struct INITIAL_CHIEUT,      MEDIAL_YEO                     ; 쳐
	kr_struct INITIAL_CHIEUT,      MEDIAL_YEO, FINAL_NIEUN        ; 쳔
	kr_struct INITIAL_CHIEUT,      MEDIAL_YEO, FINAL_SSANGSIOT    ; 쳤
	kr_struct INITIAL_CHIEUT,      MEDIAL_YE                      ; 쳬
	kr_struct INITIAL_CHIEUT,      MEDIAL_YE,  FINAL_NIEUN        ; 쳰
	kr_struct INITIAL_CHIEUT,      MEDIAL_YE,  FINAL_IEUNG        ; 촁
	kr_struct INITIAL_CHIEUT,      MEDIAL_O                       ; 초
	kr_struct INITIAL_CHIEUT,      MEDIAL_O,   FINAL_GIYEOK       ; 촉
	kr_struct INITIAL_CHIEUT,      MEDIAL_O,   FINAL_NIEUN        ; 촌
	kr_struct INITIAL_CHIEUT,      MEDIAL_O,   FINAL_RIEUL        ; 촐
	kr_struct INITIAL_CHIEUT,      MEDIAL_O,   FINAL_MIEUM        ; 촘
	kr_struct INITIAL_CHIEUT,      MEDIAL_O,   FINAL_BIEUP        ; 촙

	kr_struct INITIAL_CHIEUT,      MEDIAL_O,   FINAL_SIOT         ; 촛
	kr_struct INITIAL_CHIEUT,      MEDIAL_O,   FINAL_IEUNG        ; 총
	kr_struct INITIAL_CHIEUT,      MEDIAL_WA                      ; 촤
	kr_struct INITIAL_CHIEUT,      MEDIAL_WA,  FINAL_NIEUN        ; 촨
	kr_struct INITIAL_CHIEUT,      MEDIAL_WA,  FINAL_RIEUL        ; 촬
	kr_struct INITIAL_CHIEUT,      MEDIAL_WA,  FINAL_IEUNG        ; 촹
	kr_struct INITIAL_CHIEUT,      MEDIAL_OE                      ; 최
	kr_struct INITIAL_CHIEUT,      MEDIAL_OE,  FINAL_NIEUN        ; 쵠
	kr_struct INITIAL_CHIEUT,      MEDIAL_OE,  FINAL_RIEUL        ; 쵤
	kr_struct INITIAL_CHIEUT,      MEDIAL_OE,  FINAL_MIEUM        ; 쵬
	kr_struct INITIAL_CHIEUT,      MEDIAL_OE,  FINAL_BIEUP        ; 쵭
	kr_struct INITIAL_CHIEUT,      MEDIAL_OE,  FINAL_SIOT         ; 쵯
	kr_struct INITIAL_CHIEUT,      MEDIAL_OE,  FINAL_IEUNG        ; 쵱
	kr_struct INITIAL_CHIEUT,      MEDIAL_YO                      ; 쵸
	kr_struct INITIAL_CHIEUT,      MEDIAL_YO,  FINAL_MIEUM        ; 춈
	kr_struct INITIAL_CHIEUT,      MEDIAL_U                       ; 추

	kr_struct INITIAL_CHIEUT,      MEDIAL_U,   FINAL_GIYEOK       ; 축
	kr_struct INITIAL_CHIEUT,      MEDIAL_U,   FINAL_NIEUN        ; 춘
	kr_struct INITIAL_CHIEUT,      MEDIAL_U,   FINAL_RIEUL        ; 출
	kr_struct INITIAL_CHIEUT,      MEDIAL_U,   FINAL_MIEUM        ; 춤
	kr_struct INITIAL_CHIEUT,      MEDIAL_U,   FINAL_BIEUP        ; 춥
	kr_struct INITIAL_CHIEUT,      MEDIAL_U,   FINAL_SIOT         ; 춧
	kr_struct INITIAL_CHIEUT,      MEDIAL_U,   FINAL_IEUNG        ; 충
	kr_struct INITIAL_CHIEUT,      MEDIAL_WO                      ; 춰
	kr_struct INITIAL_CHIEUT,      MEDIAL_WO,  FINAL_SSANGSIOT    ; 췄
	kr_struct INITIAL_CHIEUT,      MEDIAL_WE                      ; 췌
	kr_struct INITIAL_CHIEUT,      MEDIAL_WE,  FINAL_NIEUN        ; 췐
	kr_struct INITIAL_CHIEUT,      MEDIAL_WI                      ; 취
	kr_struct INITIAL_CHIEUT,      MEDIAL_WI,  FINAL_NIEUN        ; 췬
	kr_struct INITIAL_CHIEUT,      MEDIAL_WI,  FINAL_RIEUL        ; 췰
	kr_struct INITIAL_CHIEUT,      MEDIAL_WI,  FINAL_MIEUM        ; 췸
	kr_struct INITIAL_CHIEUT,      MEDIAL_WI,  FINAL_BIEUP        ; 췹

	kr_struct INITIAL_CHIEUT,      MEDIAL_WI,  FINAL_SIOT         ; 췻
	kr_struct INITIAL_CHIEUT,      MEDIAL_WI,  FINAL_IEUNG        ; 췽
	kr_struct INITIAL_CHIEUT,      MEDIAL_YU                      ; 츄
	kr_struct INITIAL_CHIEUT,      MEDIAL_YU,  FINAL_NIEUN        ; 츈
	kr_struct INITIAL_CHIEUT,      MEDIAL_YU,  FINAL_RIEUL        ; 츌
	kr_struct INITIAL_CHIEUT,      MEDIAL_YU,  FINAL_MIEUM        ; 츔
	kr_struct INITIAL_CHIEUT,      MEDIAL_YU,  FINAL_IEUNG        ; 츙
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU                      ; 츠
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU,  FINAL_GIYEOK       ; 측
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU,  FINAL_NIEUN        ; 츤
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU,  FINAL_RIEUL        ; 츨
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU,  FINAL_MIEUM        ; 츰
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU,  FINAL_BIEUP        ; 츱
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU,  FINAL_SIOT         ; 츳
	kr_struct INITIAL_CHIEUT,      MEDIAL_EU,  FINAL_IEUNG        ; 층
	dw -1

HangulStructureTable9:
	dw -1
	kr_struct INITIAL_CHIEUT,      MEDIAL_I                       ; 치
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_GIYEOK       ; 칙
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_NIEUN        ; 친
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_DIGEUT       ; 칟
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_RIEUL        ; 칠
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_RIEUL_GIYEOK ; 칡
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_MIEUM        ; 침
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_BIEUP        ; 칩
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_SIOT         ; 칫
	kr_struct INITIAL_CHIEUT,      MEDIAL_I,   FINAL_IEUNG        ; 칭
	kr_struct INITIAL_KIEUK,       MEDIAL_A                       ; 카
	kr_struct INITIAL_KIEUK,       MEDIAL_A,   FINAL_GIYEOK       ; 칵
	kr_struct INITIAL_KIEUK,       MEDIAL_A,   FINAL_NIEUN        ; 칸
	kr_struct INITIAL_KIEUK,       MEDIAL_A,   FINAL_RIEUL        ; 칼
	kr_struct INITIAL_KIEUK,       MEDIAL_A,   FINAL_MIEUM        ; 캄

	kr_struct INITIAL_KIEUK,       MEDIAL_A,   FINAL_BIEUP        ; 캅
	kr_struct INITIAL_KIEUK,       MEDIAL_A,   FINAL_SIOT         ; 캇
	kr_struct INITIAL_KIEUK,       MEDIAL_A,   FINAL_IEUNG        ; 캉
	kr_struct INITIAL_KIEUK,       MEDIAL_AE                      ; 캐
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_GIYEOK       ; 캑
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_NIEUN        ; 캔
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_RIEUL        ; 캘
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_MIEUM        ; 캠
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_BIEUP        ; 캡
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_SIOT         ; 캣
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 캤
	kr_struct INITIAL_KIEUK,       MEDIAL_AE,  FINAL_IEUNG        ; 캥
	kr_struct INITIAL_KIEUK,       MEDIAL_YA                      ; 캬
	kr_struct INITIAL_KIEUK,       MEDIAL_YA,  FINAL_GIYEOK       ; 캭
	kr_struct INITIAL_KIEUK,       MEDIAL_YA,  FINAL_IEUNG        ; 컁
	kr_struct INITIAL_KIEUK,       MEDIAL_EO                      ; 커

	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_GIYEOK       ; 컥
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_NIEUN        ; 컨
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_DIGEUT       ; 컫
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_RIEUL        ; 컬
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_MIEUM        ; 컴
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_BIEUP        ; 컵
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_SIOT         ; 컷
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_SSANGSIOT    ; 컸
	kr_struct INITIAL_KIEUK,       MEDIAL_EO,  FINAL_IEUNG        ; 컹
	kr_struct INITIAL_KIEUK,       MEDIAL_E                       ; 케
	kr_struct INITIAL_KIEUK,       MEDIAL_E,   FINAL_GIYEOK       ; 켁
	kr_struct INITIAL_KIEUK,       MEDIAL_E,   FINAL_NIEUN        ; 켄
	kr_struct INITIAL_KIEUK,       MEDIAL_E,   FINAL_RIEUL        ; 켈
	kr_struct INITIAL_KIEUK,       MEDIAL_E,   FINAL_MIEUM        ; 켐
	kr_struct INITIAL_KIEUK,       MEDIAL_E,   FINAL_BIEUP        ; 켑
	kr_struct INITIAL_KIEUK,       MEDIAL_E,   FINAL_SIOT         ; 켓

	kr_struct INITIAL_KIEUK,       MEDIAL_E,   FINAL_IEUNG        ; 켕
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO                     ; 켜
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO, FINAL_NIEUN        ; 켠
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO, FINAL_RIEUL        ; 켤
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO, FINAL_MIEUM        ; 켬
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO, FINAL_BIEUP        ; 켭
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO, FINAL_SIOT         ; 켯
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 켰
	kr_struct INITIAL_KIEUK,       MEDIAL_YEO, FINAL_IEUNG        ; 켱
	kr_struct INITIAL_KIEUK,       MEDIAL_YE                      ; 켸
	kr_struct INITIAL_KIEUK,       MEDIAL_O                       ; 코
	kr_struct INITIAL_KIEUK,       MEDIAL_O,   FINAL_GIYEOK       ; 콕
	kr_struct INITIAL_KIEUK,       MEDIAL_O,   FINAL_NIEUN        ; 콘
	kr_struct INITIAL_KIEUK,       MEDIAL_O,   FINAL_RIEUL        ; 콜
	kr_struct INITIAL_KIEUK,       MEDIAL_O,   FINAL_MIEUM        ; 콤
	kr_struct INITIAL_KIEUK,       MEDIAL_O,   FINAL_BIEUP        ; 콥

	kr_struct INITIAL_KIEUK,       MEDIAL_O,   FINAL_SIOT         ; 콧
	kr_struct INITIAL_KIEUK,       MEDIAL_O,   FINAL_IEUNG        ; 콩
	kr_struct INITIAL_KIEUK,       MEDIAL_WA                      ; 콰
	kr_struct INITIAL_KIEUK,       MEDIAL_WA,  FINAL_GIYEOK       ; 콱
	kr_struct INITIAL_KIEUK,       MEDIAL_WA,  FINAL_NIEUN        ; 콴
	kr_struct INITIAL_KIEUK,       MEDIAL_WA,  FINAL_RIEUL        ; 콸
	kr_struct INITIAL_KIEUK,       MEDIAL_WA,  FINAL_MIEUM        ; 쾀
	kr_struct INITIAL_KIEUK,       MEDIAL_WA,  FINAL_IEUNG        ; 쾅
	kr_struct INITIAL_KIEUK,       MEDIAL_WAE                     ; 쾌
	kr_struct INITIAL_KIEUK,       MEDIAL_WAE, FINAL_IEUNG        ; 쾡
	kr_struct INITIAL_KIEUK,       MEDIAL_OE                      ; 쾨
	kr_struct INITIAL_KIEUK,       MEDIAL_OE,  FINAL_RIEUL        ; 쾰
	kr_struct INITIAL_KIEUK,       MEDIAL_YO                      ; 쿄
	kr_struct INITIAL_KIEUK,       MEDIAL_U                       ; 쿠
	kr_struct INITIAL_KIEUK,       MEDIAL_U,   FINAL_GIYEOK       ; 쿡
	kr_struct INITIAL_KIEUK,       MEDIAL_U,   FINAL_NIEUN        ; 쿤

rept 16
	dw -1
endr

	kr_struct INITIAL_KIEUK,       MEDIAL_U,   FINAL_RIEUL        ; 쿨
	kr_struct INITIAL_KIEUK,       MEDIAL_U,   FINAL_MIEUM        ; 쿰
	kr_struct INITIAL_KIEUK,       MEDIAL_U,   FINAL_BIEUP        ; 쿱
	kr_struct INITIAL_KIEUK,       MEDIAL_U,   FINAL_SIOT         ; 쿳
	kr_struct INITIAL_KIEUK,       MEDIAL_U,   FINAL_IEUNG        ; 쿵
	kr_struct INITIAL_KIEUK,       MEDIAL_WO                      ; 쿼
	kr_struct INITIAL_KIEUK,       MEDIAL_WO,  FINAL_NIEUN        ; 퀀
	kr_struct INITIAL_KIEUK,       MEDIAL_WO,  FINAL_RIEUL        ; 퀄
	kr_struct INITIAL_KIEUK,       MEDIAL_WO,  FINAL_IEUNG        ; 퀑
	kr_struct INITIAL_KIEUK,       MEDIAL_WE                      ; 퀘
	kr_struct INITIAL_KIEUK,       MEDIAL_WE,  FINAL_IEUNG        ; 퀭
	kr_struct INITIAL_KIEUK,       MEDIAL_WI                      ; 퀴
	kr_struct INITIAL_KIEUK,       MEDIAL_WI,  FINAL_GIYEOK       ; 퀵
	kr_struct INITIAL_KIEUK,       MEDIAL_WI,  FINAL_NIEUN        ; 퀸
	kr_struct INITIAL_KIEUK,       MEDIAL_WI,  FINAL_RIEUL        ; 퀼
	dw -1

	dw -1
	kr_struct INITIAL_KIEUK,       MEDIAL_WI,  FINAL_MIEUM        ; 큄
	kr_struct INITIAL_KIEUK,       MEDIAL_WI,  FINAL_BIEUP        ; 큅
	kr_struct INITIAL_KIEUK,       MEDIAL_WI,  FINAL_SIOT         ; 큇
	kr_struct INITIAL_KIEUK,       MEDIAL_WI,  FINAL_IEUNG        ; 큉
	kr_struct INITIAL_KIEUK,       MEDIAL_YU                      ; 큐
	kr_struct INITIAL_KIEUK,       MEDIAL_YU,  FINAL_NIEUN        ; 큔
	kr_struct INITIAL_KIEUK,       MEDIAL_YU,  FINAL_RIEUL        ; 큘
	kr_struct INITIAL_KIEUK,       MEDIAL_YU,  FINAL_MIEUM        ; 큠
	kr_struct INITIAL_KIEUK,       MEDIAL_EU                      ; 크
	kr_struct INITIAL_KIEUK,       MEDIAL_EU,  FINAL_GIYEOK       ; 큭
	kr_struct INITIAL_KIEUK,       MEDIAL_EU,  FINAL_NIEUN        ; 큰
	kr_struct INITIAL_KIEUK,       MEDIAL_EU,  FINAL_RIEUL        ; 클
	kr_struct INITIAL_KIEUK,       MEDIAL_EU,  FINAL_MIEUM        ; 큼
	kr_struct INITIAL_KIEUK,       MEDIAL_EU,  FINAL_BIEUP        ; 큽
	kr_struct INITIAL_KIEUK,       MEDIAL_EU,  FINAL_IEUNG        ; 킁

	kr_struct INITIAL_KIEUK,       MEDIAL_I                       ; 키
	kr_struct INITIAL_KIEUK,       MEDIAL_I,   FINAL_GIYEOK       ; 킥
	kr_struct INITIAL_KIEUK,       MEDIAL_I,   FINAL_NIEUN        ; 킨
	kr_struct INITIAL_KIEUK,       MEDIAL_I,   FINAL_RIEUL        ; 킬
	kr_struct INITIAL_KIEUK,       MEDIAL_I,   FINAL_MIEUM        ; 킴
	kr_struct INITIAL_KIEUK,       MEDIAL_I,   FINAL_BIEUP        ; 킵
	kr_struct INITIAL_KIEUK,       MEDIAL_I,   FINAL_SIOT         ; 킷
	kr_struct INITIAL_KIEUK,       MEDIAL_I,   FINAL_IEUNG        ; 킹
	kr_struct INITIAL_TIEUT,       MEDIAL_A                       ; 타
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_GIYEOK       ; 탁
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_NIEUN        ; 탄
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_RIEUL        ; 탈
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_RIEUL_GIYEOK ; 탉
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_MIEUM        ; 탐
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_BIEUP        ; 탑
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_SIOT         ; 탓

	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_SSANGSIOT    ; 탔
	kr_struct INITIAL_TIEUT,       MEDIAL_A,   FINAL_IEUNG        ; 탕
	kr_struct INITIAL_TIEUT,       MEDIAL_AE                      ; 태
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_GIYEOK       ; 택
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_NIEUN        ; 탠
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_RIEUL        ; 탤
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_MIEUM        ; 탬
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_BIEUP        ; 탭
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_SIOT         ; 탯
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 탰
	kr_struct INITIAL_TIEUT,       MEDIAL_AE,  FINAL_IEUNG        ; 탱
	kr_struct INITIAL_TIEUT,       MEDIAL_YA                      ; 탸
	kr_struct INITIAL_TIEUT,       MEDIAL_YA,  FINAL_IEUNG        ; 턍
	kr_struct INITIAL_TIEUT,       MEDIAL_EO                      ; 터
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_GIYEOK       ; 턱
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_NIEUN        ; 턴

	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_RIEUL        ; 털
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 턺
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_MIEUM        ; 텀
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_BIEUP        ; 텁
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_SIOT         ; 텃
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_SSANGSIOT    ; 텄
	kr_struct INITIAL_TIEUT,       MEDIAL_EO,  FINAL_IEUNG        ; 텅
	kr_struct INITIAL_TIEUT,       MEDIAL_E                       ; 테
	kr_struct INITIAL_TIEUT,       MEDIAL_E,   FINAL_GIYEOK       ; 텍
	kr_struct INITIAL_TIEUT,       MEDIAL_E,   FINAL_NIEUN        ; 텐
	kr_struct INITIAL_TIEUT,       MEDIAL_E,   FINAL_RIEUL        ; 텔
	kr_struct INITIAL_TIEUT,       MEDIAL_E,   FINAL_MIEUM        ; 템
	kr_struct INITIAL_TIEUT,       MEDIAL_E,   FINAL_BIEUP        ; 텝
	kr_struct INITIAL_TIEUT,       MEDIAL_E,   FINAL_SIOT         ; 텟
	kr_struct INITIAL_TIEUT,       MEDIAL_E,   FINAL_IEUNG        ; 텡
	kr_struct INITIAL_TIEUT,       MEDIAL_YEO                     ; 텨

	kr_struct INITIAL_TIEUT,       MEDIAL_YEO, FINAL_NIEUN        ; 텬
	kr_struct INITIAL_TIEUT,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 텼
	kr_struct INITIAL_TIEUT,       MEDIAL_YE                      ; 톄
	kr_struct INITIAL_TIEUT,       MEDIAL_YE,  FINAL_NIEUN        ; 톈
	kr_struct INITIAL_TIEUT,       MEDIAL_O                       ; 토
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_GIYEOK       ; 톡
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_NIEUN        ; 톤
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_RIEUL        ; 톨
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_MIEUM        ; 톰
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_BIEUP        ; 톱
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_SIOT         ; 톳
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_IEUNG        ; 통
	kr_struct INITIAL_TIEUT,       MEDIAL_O,   FINAL_PIEUP        ; 톺
	kr_struct INITIAL_TIEUT,       MEDIAL_WA                      ; 톼
	kr_struct INITIAL_TIEUT,       MEDIAL_WA,  FINAL_NIEUN        ; 퇀
	kr_struct INITIAL_TIEUT,       MEDIAL_WAE                     ; 퇘

	kr_struct INITIAL_TIEUT,       MEDIAL_OE                      ; 퇴
	kr_struct INITIAL_TIEUT,       MEDIAL_OE,  FINAL_NIEUN        ; 퇸
	kr_struct INITIAL_TIEUT,       MEDIAL_OE,  FINAL_SIOT         ; 툇
	kr_struct INITIAL_TIEUT,       MEDIAL_OE,  FINAL_IEUNG        ; 툉
	kr_struct INITIAL_TIEUT,       MEDIAL_YO                      ; 툐
	kr_struct INITIAL_TIEUT,       MEDIAL_U                       ; 투
	kr_struct INITIAL_TIEUT,       MEDIAL_U,   FINAL_GIYEOK       ; 툭
	kr_struct INITIAL_TIEUT,       MEDIAL_U,   FINAL_NIEUN        ; 툰
	kr_struct INITIAL_TIEUT,       MEDIAL_U,   FINAL_RIEUL        ; 툴
	kr_struct INITIAL_TIEUT,       MEDIAL_U,   FINAL_MIEUM        ; 툼
	kr_struct INITIAL_TIEUT,       MEDIAL_U,   FINAL_BIEUP        ; 툽
	kr_struct INITIAL_TIEUT,       MEDIAL_U,   FINAL_SIOT         ; 툿
	kr_struct INITIAL_TIEUT,       MEDIAL_U,   FINAL_IEUNG        ; 퉁
	kr_struct INITIAL_TIEUT,       MEDIAL_WO                      ; 퉈
	kr_struct INITIAL_TIEUT,       MEDIAL_WO,  FINAL_SSANGSIOT    ; 퉜
	dw -1

	dw -1
	kr_struct INITIAL_TIEUT,       MEDIAL_WE                      ; 퉤
	kr_struct INITIAL_TIEUT,       MEDIAL_WI                      ; 튀
	kr_struct INITIAL_TIEUT,       MEDIAL_WI,  FINAL_GIYEOK       ; 튁
	kr_struct INITIAL_TIEUT,       MEDIAL_WI,  FINAL_NIEUN        ; 튄
	kr_struct INITIAL_TIEUT,       MEDIAL_WI,  FINAL_RIEUL        ; 튈
	kr_struct INITIAL_TIEUT,       MEDIAL_WI,  FINAL_MIEUM        ; 튐
	kr_struct INITIAL_TIEUT,       MEDIAL_WI,  FINAL_BIEUP        ; 튑
	kr_struct INITIAL_TIEUT,       MEDIAL_WI,  FINAL_IEUNG        ; 튕
	kr_struct INITIAL_TIEUT,       MEDIAL_YU                      ; 튜
	kr_struct INITIAL_TIEUT,       MEDIAL_YU,  FINAL_NIEUN        ; 튠
	kr_struct INITIAL_TIEUT,       MEDIAL_YU,  FINAL_RIEUL        ; 튤
	kr_struct INITIAL_TIEUT,       MEDIAL_YU,  FINAL_MIEUM        ; 튬
	kr_struct INITIAL_TIEUT,       MEDIAL_YU,  FINAL_IEUNG        ; 튱
	kr_struct INITIAL_TIEUT,       MEDIAL_EU                      ; 트
	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_GIYEOK       ; 특

	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_NIEUN        ; 튼
	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_DIGEUT       ; 튿
	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_RIEUL        ; 틀
	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_RIEUL_MIEUM  ; 틂
	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_MIEUM        ; 틈
	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_BIEUP        ; 틉
	kr_struct INITIAL_TIEUT,       MEDIAL_EU,  FINAL_SIOT         ; 틋
	kr_struct INITIAL_TIEUT,       MEDIAL_UI                      ; 틔
	kr_struct INITIAL_TIEUT,       MEDIAL_UI,  FINAL_NIEUN        ; 틘
	kr_struct INITIAL_TIEUT,       MEDIAL_UI,  FINAL_RIEUL        ; 틜
	kr_struct INITIAL_TIEUT,       MEDIAL_UI,  FINAL_MIEUM        ; 틤
	kr_struct INITIAL_TIEUT,       MEDIAL_UI,  FINAL_BIEUP        ; 틥
	kr_struct INITIAL_TIEUT,       MEDIAL_I                       ; 티
	kr_struct INITIAL_TIEUT,       MEDIAL_I,   FINAL_GIYEOK       ; 틱
	kr_struct INITIAL_TIEUT,       MEDIAL_I,   FINAL_NIEUN        ; 틴
	kr_struct INITIAL_TIEUT,       MEDIAL_I,   FINAL_RIEUL        ; 틸

	kr_struct INITIAL_TIEUT,       MEDIAL_I,   FINAL_MIEUM        ; 팀
	kr_struct INITIAL_TIEUT,       MEDIAL_I,   FINAL_BIEUP        ; 팁
	kr_struct INITIAL_TIEUT,       MEDIAL_I,   FINAL_SIOT         ; 팃
	kr_struct INITIAL_TIEUT,       MEDIAL_I,   FINAL_IEUNG        ; 팅
	kr_struct INITIAL_PIEUP,       MEDIAL_A                       ; 파
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_GIYEOK       ; 팍
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_SSANGGIYEOK  ; 팎
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_NIEUN        ; 판
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_RIEUL        ; 팔
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_RIEUL_MIEUM  ; 팖
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_MIEUM        ; 팜
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_BIEUP        ; 팝
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_SIOT         ; 팟
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_SSANGSIOT    ; 팠
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_IEUNG        ; 팡
	kr_struct INITIAL_PIEUP,       MEDIAL_A,   FINAL_TIEUT        ; 팥

HangulStructureTableA:
	kr_struct INITIAL_PIEUP,       MEDIAL_AE                      ; 패
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_GIYEOK       ; 팩
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_NIEUN        ; 팬
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_RIEUL        ; 팰
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_MIEUM        ; 팸
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_BIEUP        ; 팹
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_SIOT         ; 팻
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 팼
	kr_struct INITIAL_PIEUP,       MEDIAL_AE,  FINAL_IEUNG        ; 팽
	kr_struct INITIAL_PIEUP,       MEDIAL_YA                      ; 퍄
	kr_struct INITIAL_PIEUP,       MEDIAL_YA,  FINAL_GIYEOK       ; 퍅
	kr_struct INITIAL_PIEUP,       MEDIAL_EO                      ; 퍼
	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_GIYEOK       ; 퍽
	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_NIEUN        ; 펀
	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_RIEUL        ; 펄
	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_MIEUM        ; 펌

	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_BIEUP        ; 펍
	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_SIOT         ; 펏
	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_SSANGSIOT    ; 펐
	kr_struct INITIAL_PIEUP,       MEDIAL_EO,  FINAL_IEUNG        ; 펑
	kr_struct INITIAL_PIEUP,       MEDIAL_E                       ; 페
	kr_struct INITIAL_PIEUP,       MEDIAL_E,   FINAL_GIYEOK       ; 펙
	kr_struct INITIAL_PIEUP,       MEDIAL_E,   FINAL_NIEUN        ; 펜
	kr_struct INITIAL_PIEUP,       MEDIAL_E,   FINAL_RIEUL        ; 펠
	kr_struct INITIAL_PIEUP,       MEDIAL_E,   FINAL_MIEUM        ; 펨
	kr_struct INITIAL_PIEUP,       MEDIAL_E,   FINAL_BIEUP        ; 펩
	kr_struct INITIAL_PIEUP,       MEDIAL_E,   FINAL_SIOT         ; 펫
	kr_struct INITIAL_PIEUP,       MEDIAL_E,   FINAL_IEUNG        ; 펭
	kr_struct INITIAL_PIEUP,       MEDIAL_YEO                     ; 펴
	kr_struct INITIAL_PIEUP,       MEDIAL_YEO, FINAL_NIEUN        ; 편
	kr_struct INITIAL_PIEUP,       MEDIAL_YEO, FINAL_RIEUL        ; 펼
	kr_struct INITIAL_PIEUP,       MEDIAL_YEO, FINAL_MIEUM        ; 폄

	kr_struct INITIAL_PIEUP,       MEDIAL_YEO, FINAL_BIEUP        ; 폅
	kr_struct INITIAL_PIEUP,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 폈
	kr_struct INITIAL_PIEUP,       MEDIAL_YEO, FINAL_IEUNG        ; 평
	kr_struct INITIAL_PIEUP,       MEDIAL_YE                      ; 폐
	kr_struct INITIAL_PIEUP,       MEDIAL_YE,  FINAL_RIEUL        ; 폘
	kr_struct INITIAL_PIEUP,       MEDIAL_YE,  FINAL_BIEUP        ; 폡
	kr_struct INITIAL_PIEUP,       MEDIAL_YE,  FINAL_SIOT         ; 폣
	kr_struct INITIAL_PIEUP,       MEDIAL_O                       ; 포
	kr_struct INITIAL_PIEUP,       MEDIAL_O,   FINAL_GIYEOK       ; 폭
	kr_struct INITIAL_PIEUP,       MEDIAL_O,   FINAL_NIEUN        ; 폰
	kr_struct INITIAL_PIEUP,       MEDIAL_O,   FINAL_RIEUL        ; 폴
	kr_struct INITIAL_PIEUP,       MEDIAL_O,   FINAL_MIEUM        ; 폼
	kr_struct INITIAL_PIEUP,       MEDIAL_O,   FINAL_BIEUP        ; 폽
	kr_struct INITIAL_PIEUP,       MEDIAL_O,   FINAL_SIOT         ; 폿
	kr_struct INITIAL_PIEUP,       MEDIAL_O,   FINAL_IEUNG        ; 퐁
	dw -1

	dw -1
	kr_struct INITIAL_PIEUP,       MEDIAL_WA                      ; 퐈
	kr_struct INITIAL_PIEUP,       MEDIAL_WA,  FINAL_IEUNG        ; 퐝
	kr_struct INITIAL_PIEUP,       MEDIAL_OE                      ; 푀
	kr_struct INITIAL_PIEUP,       MEDIAL_OE,  FINAL_NIEUN        ; 푄
	kr_struct INITIAL_PIEUP,       MEDIAL_YO                      ; 표
	kr_struct INITIAL_PIEUP,       MEDIAL_YO,  FINAL_NIEUN        ; 푠
	kr_struct INITIAL_PIEUP,       MEDIAL_YO,  FINAL_RIEUL        ; 푤
	kr_struct INITIAL_PIEUP,       MEDIAL_YO,  FINAL_BIEUP        ; 푭
	kr_struct INITIAL_PIEUP,       MEDIAL_YO,  FINAL_SIOT         ; 푯
	kr_struct INITIAL_PIEUP,       MEDIAL_U                       ; 푸
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_GIYEOK       ; 푹
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_NIEUN        ; 푼
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_DIGEUT       ; 푿
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_RIEUL        ; 풀
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_RIEUL_MIEUM  ; 풂

	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_MIEUM        ; 품
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_BIEUP        ; 풉
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_SIOT         ; 풋
	kr_struct INITIAL_PIEUP,       MEDIAL_U,   FINAL_IEUNG        ; 풍
	kr_struct INITIAL_PIEUP,       MEDIAL_WO                      ; 풔
	kr_struct INITIAL_PIEUP,       MEDIAL_WO,  FINAL_IEUNG        ; 풩
	kr_struct INITIAL_PIEUP,       MEDIAL_WI                      ; 퓌
	kr_struct INITIAL_PIEUP,       MEDIAL_WI,  FINAL_NIEUN        ; 퓐
	kr_struct INITIAL_PIEUP,       MEDIAL_WI,  FINAL_RIEUL        ; 퓔
	kr_struct INITIAL_PIEUP,       MEDIAL_WI,  FINAL_MIEUM        ; 퓜
	kr_struct INITIAL_PIEUP,       MEDIAL_WI,  FINAL_SIOT         ; 퓟
	kr_struct INITIAL_PIEUP,       MEDIAL_YU                      ; 퓨
	kr_struct INITIAL_PIEUP,       MEDIAL_YU,  FINAL_NIEUN        ; 퓬
	kr_struct INITIAL_PIEUP,       MEDIAL_YU,  FINAL_RIEUL        ; 퓰
	kr_struct INITIAL_PIEUP,       MEDIAL_YU,  FINAL_MIEUM        ; 퓸
	kr_struct INITIAL_PIEUP,       MEDIAL_YU,  FINAL_SIOT         ; 퓻

rept 16
	dw -1
endr

	kr_struct INITIAL_PIEUP,       MEDIAL_YU,  FINAL_IEUNG        ; 퓽
	kr_struct INITIAL_PIEUP,       MEDIAL_EU                      ; 프
	kr_struct INITIAL_PIEUP,       MEDIAL_EU,  FINAL_NIEUN        ; 픈
	kr_struct INITIAL_PIEUP,       MEDIAL_EU,  FINAL_RIEUL        ; 플
	kr_struct INITIAL_PIEUP,       MEDIAL_EU,  FINAL_MIEUM        ; 픔
	kr_struct INITIAL_PIEUP,       MEDIAL_EU,  FINAL_BIEUP        ; 픕
	kr_struct INITIAL_PIEUP,       MEDIAL_EU,  FINAL_SIOT         ; 픗
	kr_struct INITIAL_PIEUP,       MEDIAL_I                       ; 피
	kr_struct INITIAL_PIEUP,       MEDIAL_I,   FINAL_GIYEOK       ; 픽
	kr_struct INITIAL_PIEUP,       MEDIAL_I,   FINAL_NIEUN        ; 핀
	kr_struct INITIAL_PIEUP,       MEDIAL_I,   FINAL_RIEUL        ; 필
	kr_struct INITIAL_PIEUP,       MEDIAL_I,   FINAL_MIEUM        ; 핌
	kr_struct INITIAL_PIEUP,       MEDIAL_I,   FINAL_BIEUP        ; 핍
	kr_struct INITIAL_PIEUP,       MEDIAL_I,   FINAL_SIOT         ; 핏
	kr_struct INITIAL_PIEUP,       MEDIAL_I,   FINAL_IEUNG        ; 핑
	kr_struct INITIAL_HIEUT,       MEDIAL_A                       ; 하

	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_GIYEOK       ; 학
	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_NIEUN        ; 한
	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_RIEUL        ; 할
	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_RIEUL_TIEUT  ; 핥
	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_MIEUM        ; 함
	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_BIEUP        ; 합
	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_SIOT         ; 핫
	kr_struct INITIAL_HIEUT,       MEDIAL_A,   FINAL_IEUNG        ; 항
	kr_struct INITIAL_HIEUT,       MEDIAL_AE                      ; 해
	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_GIYEOK       ; 핵
	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_NIEUN        ; 핸
	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_RIEUL        ; 핼
	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_MIEUM        ; 햄
	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_BIEUP        ; 햅
	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_SIOT         ; 햇
	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_SSANGSIOT    ; 했

	kr_struct INITIAL_HIEUT,       MEDIAL_AE,  FINAL_IEUNG        ; 행
	kr_struct INITIAL_HIEUT,       MEDIAL_YA                      ; 햐
	kr_struct INITIAL_HIEUT,       MEDIAL_YA,  FINAL_IEUNG        ; 향
	kr_struct INITIAL_HIEUT,       MEDIAL_EO                      ; 허
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_GIYEOK       ; 헉
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_NIEUN        ; 헌
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_RIEUL        ; 헐
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_RIEUL_MIEUM  ; 헒
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_MIEUM        ; 험
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_BIEUP        ; 헙
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_SIOT         ; 헛
	kr_struct INITIAL_HIEUT,       MEDIAL_EO,  FINAL_IEUNG        ; 헝
	kr_struct INITIAL_HIEUT,       MEDIAL_E                       ; 헤
	kr_struct INITIAL_HIEUT,       MEDIAL_E,   FINAL_GIYEOK       ; 헥
	kr_struct INITIAL_HIEUT,       MEDIAL_E,   FINAL_NIEUN        ; 헨
	kr_struct INITIAL_HIEUT,       MEDIAL_E,   FINAL_RIEUL        ; 헬

	kr_struct INITIAL_HIEUT,       MEDIAL_E,   FINAL_MIEUM        ; 헴
	kr_struct INITIAL_HIEUT,       MEDIAL_E,   FINAL_BIEUP        ; 헵
	kr_struct INITIAL_HIEUT,       MEDIAL_E,   FINAL_SIOT         ; 헷
	kr_struct INITIAL_HIEUT,       MEDIAL_E,   FINAL_IEUNG        ; 헹
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO                     ; 혀
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_GIYEOK       ; 혁
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_NIEUN        ; 현
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_RIEUL        ; 혈
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_MIEUM        ; 혐
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_BIEUP        ; 협
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_SIOT         ; 혓
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_SSANGSIOT    ; 혔
	kr_struct INITIAL_HIEUT,       MEDIAL_YEO, FINAL_IEUNG        ; 형
	kr_struct INITIAL_HIEUT,       MEDIAL_YE                      ; 혜
	kr_struct INITIAL_HIEUT,       MEDIAL_YE,  FINAL_NIEUN        ; 혠
	dw -1

	dw -1
	kr_struct INITIAL_HIEUT,       MEDIAL_YE,  FINAL_RIEUL        ; 혤
	kr_struct INITIAL_HIEUT,       MEDIAL_YE,  FINAL_BIEUP        ; 혭
	kr_struct INITIAL_HIEUT,       MEDIAL_O                       ; 호
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_GIYEOK       ; 혹
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_NIEUN        ; 혼
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_RIEUL        ; 홀
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_RIEUL_TIEUT  ; 홅
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_MIEUM        ; 홈
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_BIEUP        ; 홉
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_SIOT         ; 홋
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_IEUNG        ; 홍
	kr_struct INITIAL_HIEUT,       MEDIAL_O,   FINAL_TIEUT        ; 홑
	kr_struct INITIAL_HIEUT,       MEDIAL_WA                      ; 화
	kr_struct INITIAL_HIEUT,       MEDIAL_WA,  FINAL_GIYEOK       ; 확
	kr_struct INITIAL_HIEUT,       MEDIAL_WA,  FINAL_NIEUN        ; 환

	kr_struct INITIAL_HIEUT,       MEDIAL_WA,  FINAL_RIEUL        ; 활
	kr_struct INITIAL_HIEUT,       MEDIAL_WA,  FINAL_SIOT         ; 홧
	kr_struct INITIAL_HIEUT,       MEDIAL_WA,  FINAL_IEUNG        ; 황
	kr_struct INITIAL_HIEUT,       MEDIAL_WAE                     ; 홰
	kr_struct INITIAL_HIEUT,       MEDIAL_WAE, FINAL_GIYEOK       ; 홱
	kr_struct INITIAL_HIEUT,       MEDIAL_WAE, FINAL_NIEUN        ; 홴
	kr_struct INITIAL_HIEUT,       MEDIAL_WAE, FINAL_SIOT         ; 횃
	kr_struct INITIAL_HIEUT,       MEDIAL_WAE, FINAL_IEUNG        ; 횅
	kr_struct INITIAL_HIEUT,       MEDIAL_OE                      ; 회
	kr_struct INITIAL_HIEUT,       MEDIAL_OE,  FINAL_GIYEOK       ; 획
	kr_struct INITIAL_HIEUT,       MEDIAL_OE,  FINAL_NIEUN        ; 횐
	kr_struct INITIAL_HIEUT,       MEDIAL_OE,  FINAL_RIEUL        ; 횔
	kr_struct INITIAL_HIEUT,       MEDIAL_OE,  FINAL_BIEUP        ; 횝
	kr_struct INITIAL_HIEUT,       MEDIAL_OE,  FINAL_SIOT         ; 횟
	kr_struct INITIAL_HIEUT,       MEDIAL_OE,  FINAL_IEUNG        ; 횡
	kr_struct INITIAL_HIEUT,       MEDIAL_YO                      ; 효

	kr_struct INITIAL_HIEUT,       MEDIAL_YO,  FINAL_NIEUN        ; 횬
	kr_struct INITIAL_HIEUT,       MEDIAL_YO,  FINAL_RIEUL        ; 횰
	kr_struct INITIAL_HIEUT,       MEDIAL_YO,  FINAL_BIEUP        ; 횹
	kr_struct INITIAL_HIEUT,       MEDIAL_YO,  FINAL_SIOT         ; 횻
	kr_struct INITIAL_HIEUT,       MEDIAL_U                       ; 후
	kr_struct INITIAL_HIEUT,       MEDIAL_U,   FINAL_GIYEOK       ; 훅
	kr_struct INITIAL_HIEUT,       MEDIAL_U,   FINAL_NIEUN        ; 훈
	kr_struct INITIAL_HIEUT,       MEDIAL_U,   FINAL_RIEUL        ; 훌
	kr_struct INITIAL_HIEUT,       MEDIAL_U,   FINAL_RIEUL_TIEUT  ; 훑
	kr_struct INITIAL_HIEUT,       MEDIAL_U,   FINAL_MIEUM        ; 훔
	kr_struct INITIAL_HIEUT,       MEDIAL_U,   FINAL_SIOT         ; 훗
	kr_struct INITIAL_HIEUT,       MEDIAL_U,   FINAL_IEUNG        ; 훙
	kr_struct INITIAL_HIEUT,       MEDIAL_WO                      ; 훠
	kr_struct INITIAL_HIEUT,       MEDIAL_WO,  FINAL_NIEUN        ; 훤
	kr_struct INITIAL_HIEUT,       MEDIAL_WO,  FINAL_RIEUL        ; 훨
	kr_struct INITIAL_HIEUT,       MEDIAL_WO,  FINAL_MIEUM        ; 훰

	kr_struct INITIAL_HIEUT,       MEDIAL_WO,  FINAL_IEUNG        ; 훵
	kr_struct INITIAL_HIEUT,       MEDIAL_WE                      ; 훼
	kr_struct INITIAL_HIEUT,       MEDIAL_WE,  FINAL_GIYEOK       ; 훽
	kr_struct INITIAL_HIEUT,       MEDIAL_WE,  FINAL_NIEUN        ; 휀
	kr_struct INITIAL_HIEUT,       MEDIAL_WE,  FINAL_RIEUL        ; 휄
	kr_struct INITIAL_HIEUT,       MEDIAL_WE,  FINAL_IEUNG        ; 휑
	kr_struct INITIAL_HIEUT,       MEDIAL_WI                      ; 휘
	kr_struct INITIAL_HIEUT,       MEDIAL_WI,  FINAL_GIYEOK       ; 휙
	kr_struct INITIAL_HIEUT,       MEDIAL_WI,  FINAL_NIEUN        ; 휜
	kr_struct INITIAL_HIEUT,       MEDIAL_WI,  FINAL_RIEUL        ; 휠
	kr_struct INITIAL_HIEUT,       MEDIAL_WI,  FINAL_MIEUM        ; 휨
	kr_struct INITIAL_HIEUT,       MEDIAL_WI,  FINAL_BIEUP        ; 휩
	kr_struct INITIAL_HIEUT,       MEDIAL_WI,  FINAL_SIOT         ; 휫
	kr_struct INITIAL_HIEUT,       MEDIAL_WI,  FINAL_IEUNG        ; 휭
	kr_struct INITIAL_HIEUT,       MEDIAL_YU                      ; 휴
	kr_struct INITIAL_HIEUT,       MEDIAL_YU,  FINAL_GIYEOK       ; 휵

	kr_struct INITIAL_HIEUT,       MEDIAL_YU,  FINAL_NIEUN        ; 휸
	kr_struct INITIAL_HIEUT,       MEDIAL_YU,  FINAL_RIEUL        ; 휼
	kr_struct INITIAL_HIEUT,       MEDIAL_YU,  FINAL_MIEUM        ; 흄
	kr_struct INITIAL_HIEUT,       MEDIAL_YU,  FINAL_SIOT         ; 흇
	kr_struct INITIAL_HIEUT,       MEDIAL_YU,  FINAL_IEUNG        ; 흉
	kr_struct INITIAL_HIEUT,       MEDIAL_EU                      ; 흐
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_GIYEOK       ; 흑
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_NIEUN        ; 흔
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_NIEUN_HIEUT  ; 흖
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_DIGEUT       ; 흗
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_RIEUL        ; 흘
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_RIEUL_GIYEOK ; 흙
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_MIEUM        ; 흠
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_BIEUP        ; 흡
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_SIOT         ; 흣
	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_IEUNG        ; 흥

	kr_struct INITIAL_HIEUT,       MEDIAL_EU,  FINAL_TIEUT        ; 흩
	kr_struct INITIAL_HIEUT,       MEDIAL_UI                      ; 희
	kr_struct INITIAL_HIEUT,       MEDIAL_UI,  FINAL_NIEUN        ; 흰
	kr_struct INITIAL_HIEUT,       MEDIAL_UI,  FINAL_RIEUL        ; 흴
	kr_struct INITIAL_HIEUT,       MEDIAL_UI,  FINAL_MIEUM        ; 흼
	kr_struct INITIAL_HIEUT,       MEDIAL_UI,  FINAL_BIEUP        ; 흽
	kr_struct INITIAL_HIEUT,       MEDIAL_UI,  FINAL_IEUNG        ; 힁
	kr_struct INITIAL_HIEUT,       MEDIAL_I                       ; 히
	kr_struct INITIAL_HIEUT,       MEDIAL_I,   FINAL_GIYEOK       ; 힉
	kr_struct INITIAL_HIEUT,       MEDIAL_I,   FINAL_NIEUN        ; 힌
	kr_struct INITIAL_HIEUT,       MEDIAL_I,   FINAL_RIEUL        ; 힐
	kr_struct INITIAL_HIEUT,       MEDIAL_I,   FINAL_MIEUM        ; 힘
	kr_struct INITIAL_HIEUT,       MEDIAL_I,   FINAL_BIEUP        ; 힙
	kr_struct INITIAL_HIEUT,       MEDIAL_I,   FINAL_SIOT         ; 힛
	kr_struct INITIAL_HIEUT,       MEDIAL_I,   FINAL_IEUNG        ; 힝
	dw -1

HangulStructureTableB:
	kr_struct INITIAL_GIYEOK      ; ㄱ
	kr_struct INITIAL_NIEUN       ; ㄴ
	kr_struct INITIAL_DIGEUT      ; ㄷ
	kr_struct INITIAL_RIEUL       ; ㄹ
	kr_struct INITIAL_MIEUM       ; ㅁ
	kr_struct INITIAL_BIEUP       ; ㅂ
	kr_struct INITIAL_SIOT        ; ㅅ
	kr_struct INITIAL_IEUNG       ; ㅇ
	kr_struct INITIAL_JIEUT       ; ㅈ
	kr_struct INITIAL_CHIEUT      ; ㅊ
	kr_struct INITIAL_KIEUK       ; ㅋ
	kr_struct INITIAL_TIEUT       ; ㅌ
	kr_struct INITIAL_PIEUP       ; ㅍ
	kr_struct INITIAL_HIEUT       ; ㅎ
	kr_struct INITIAL_SSANGGIYEOK ; ㄲ
	kr_struct INITIAL_SSANGDIGEUT ; ㄸ

	kr_struct INITIAL_SSANGBIEUP  ; ㅃ
	kr_struct INITIAL_SSANGSIOT   ; ㅆ
	kr_struct INITIAL_SSANGJIEUT  ; ㅉ
rept 13
	dw -1
endr

	kr_struct 0, MEDIAL_A   ; ㅏ
	kr_struct 0, MEDIAL_YA  ; ㅑ
	kr_struct 0, MEDIAL_EO  ; ㅓ
	kr_struct 0, MEDIAL_YEO ; ㅕ
	kr_struct 0, MEDIAL_O   ; ㅗ
	kr_struct 0, MEDIAL_YO  ; ㅛ
	kr_struct 0, MEDIAL_U   ; ㅜ
	kr_struct 0, MEDIAL_YU  ; ㅠ
	kr_struct 0, MEDIAL_EU  ; ㅡ
	kr_struct 0, MEDIAL_I   ; ㅣ
	kr_struct 0, MEDIAL_AE  ; ㅐ
	kr_struct 0, MEDIAL_YAE ; ㅒ
	kr_struct 0, MEDIAL_E   ; ㅔ
	kr_struct 0, MEDIAL_YE  ; ㅖ
	kr_struct 0, MEDIAL_WA  ; ㅘ
	kr_struct 0, MEDIAL_WAE ; ㅙ

	kr_struct 0, MEDIAL_OE  ; ㅚ
	kr_struct 0, MEDIAL_WO  ; ㅝ
	kr_struct 0, MEDIAL_WE  ; ㅞ
	kr_struct 0, MEDIAL_WI  ; ㅟ
	kr_struct 0, MEDIAL_UI  ; ㅢ
rept 11
	dw -1
endr

rept 16 * 12
	dw -1
endr
