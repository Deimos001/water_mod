return {
	ACTIONFAIL =
	{
		GIVE =
		{
			WELL_NOTEMPTY = "먼저 있는 동이부터 치우자.", -- 우물에 양동이가 달려있는데 양동이 달려 함
			WELL_BUSY = "내 인내심을 가져라, 동이가 아직 우물안에 있나니.", -- 우물속에 양동이가 들어가 있는데 달려 함
		}
	},

	ANNOUNCE_DRUNK = "술 내기에서 내가 졌는가, 히끅.", -- 취함
	ANNOUNCE_DRUNK_END = "아직 내가 에기르의 연회장에 있는가?", --술에서 좀 깸 (그로기)
	ANNOUNCE_DRUNK_IMMUNITY = "크하하! 한 잔 더!", --임시. 위그 전용,
	ANNOUNCE_NOTCHARGE = "일각수가 아직 준비가 안되었다 하는군.", --번개염소가 충전이 안되서 양동이로 젖을 짤수 없음
	ANNOUNCE_NOTHIRSTSLEEP = "이대로 자면 밤새 갈사할것이야! 우선 물 부터 마시자.", -- 목이 마른데 밤에 잘려고 시도
	ANNOUNCE_NOTHIRSTSIESTA = "목이 이렇게 타는데 어떻게 쉴 수 있다는 거지!", -- 목이 마른데 낮에 잘려고 시도
	ANNOUNCE_SLEEP_END = "개운하군!", --자고 일어나서 술에서 완전히 깸 
	ANNOUNCE_THIRST = "어서 연회에 참가할수 있었으면 좋겠군.", --너무 목말라!

    ANNOUNCE_CAFFINE_BUFF_START = "누가 내 발걸음을 쫒아 올 수 있으리라!" , -- 카페인 버프 시작
    ANNOUNCE_CAFFINE_BUFF_STOP = "평소와 같은 발걸음으로 돌아왔군." ,  -- 카페인 버프 끝
    
    ANNOUNCE_CURE_WATERBORNE = "다음엔 가려 마셔서 싸움에 지장이 없게 해야겠군." ,  -- 수인성 질병을 아이템으로 치료했을때의 대사

	ANNOUNCE_DCAPACITY_CRITICAL = "하루 종일도 마실수 있다 토르!", --취하기 직전
	ANNOUNCE_DCAPACITY_HALF = "두려움이 사라지는게 느껴진다!", -- 취기가 돌기 시작

	DESCRIBE =
	{
		BOILBOOK = "만찬에 곁들일 연회주가 얼마나 많이 적혀있지?",

		WATER_CLEAN_ICE = "얼어붙었도다.",--깨끗한 얼음물
		WATER_DIRTY_ICE = "얼음 찌거기로군.", --더러운 얼음물

		SPICE_CAFFEINPEPPER = "내 만찬에 전투의 흥분을 더하는 가루로다." --후추 향신료

		WELL_KIT = "내 기꺼이 우물을 설치하리.", --우물 키트
		WELL_SPRINKLER_KIT = "구름 없이 비를 뿌리는 기계로다.", --스프링클러 키트
		WELL_WATERPUMP_KIT = "기계의 힘이 지하 세계를 약탈할 것이라.", --스팀 물펌프 키트
		WELL_BURYING_KIT = "발 헛 딛는 자가 없도록 하자.", -- 구멍 매설 키트
		WELL_DRILLING = "스틱스 강까지 밀어붙혀라!", --드릴로 구멍 뚫는 중
		WELL_DRILLING_ITEM = "지하세계까지 길을 뚫을 막강한 도구로다.", --드릴 아이템
		HOLE = "저 아래 물소리가 들리나니.", --우물 구멍
		WELL = "목마른 자가 우물을 파는 법.", --우물

		-- 물 모드 식물

		TEA_TREE = "향기로운 관목이도다.",--차나무
		DUG_TEA_TREE = "땅의 여신께 되돌아 갔으면 좋겠구나.", --땅에서 파낸 차나무
		TEA_SEED = "이 어린 나무는 붉은 면포로 감싸여 있군.", -- 차나무 열매
		TEA_SEED_COOKED = "어린 나무가 요리되어 버렸구나.", --구운 차나무 열매
		TEA_SEED_SAPLING = "굳세어라, 어린 나무야!", --차나무 새싹
		TEALEAVES = "향기나는 잎 뭉치로군", --찻잎
		TEALEAVES_DRIED = "찻잎 한줌이로군.", --말린 찻잎

		CAFFEINBERRY = "콩을 맺는 덤불이 마니의 축복을 받았구나.", --커피 덤불
		DUG_CAFFEINBERRY = "나랑 함께 가자꾸나.", --파낸 커피덤불
		CAFFEINBERRY_BEAN = "검게 될 때 까지 볶아야 겠군.", --생 커피콩
		CAFFEINBERRY_BEAN_COOKED = "활력이 넘치는 향이로군.", --구운 커피콩

		RUINCACAO_TREE = "암흑 시대에서 온 나무로다.", --카카오 나무
		DUG_RUINCACAO_TREE = "땅의 여신께 되돌아 갔으면 좋겠구나.", --파낸 카카오 나무
		RUINCACAO_SEED = "공포를 이겨내고 꽃을 피어냈구나.", --카카오 새싹 아이템
		RUINCACAO_SEED_SAPLING = "두려움을 떨쳐냈군. 자라거라, 어린 나무야!", -- 카카오 새싹 심은거
		RUINCACAO = "어린 나무들이 갇힌채 불타기를 기다리고 있는가.", --부수기 전 카카오 열매
		RUINCACAO_BEAN = "기름 부어져 있도다.", --부순 후 카카오 콩  
		RUINCACAO_BEAN_COOKED = "어린 나무들이 요리되어 버렸구나.", --구운 카카오 콩

		-- 증류주 첨가제

		ADDITIVE_SEED = "연회주의 품격을 올려줄 것이다.", -- 리큐르에 제조에 첨가 할 씨허브(아니스,쥬니퍼베리,팔각 모티브)첨가제 
		ADDITIVE_PETALS = "프레야의 선물들이구나.", -- 리큐르에 제조에 첨가 할 허브,녹차,꽃잎 첨가제
		ADDITIVE_NUT = "어린 나무들이 모여있구나.", -- 리큐르에 제조에 첨가 할 버치넛,코코넛,커피콩,카카오콩 첨가제
		ADDITIVE_DAIRY = "유제품을 술에 넣는가?", -- 리큐르에 제조에 첨가할 유제품 첨가제

		-- 음료

		WATER_CLEAN = "순수한 물이로군.", --깨끗한 물
		WATER_DIRTY = "길들어지지 않은 야생의 물이로다.", --더러운 물
		WATER_SALTY = "한 컵의 바닷물이로군.", --바닷물

		GOOPYDRINK = "음식물 찌거기가 물기도 많군.", --실패한 음료(웻 굽 개념)
		
		-- 주전자 음료

		FRUITJUICE = "나는 이 음료의 물 만을 취하겠다.", --잡 과일쥬스
		BERRIES_JUICE = "붉은 과일로 향을 냈군.", -- 베리 쥬스
		POMEGRANATE_JUICE = "과육의 피라 생각해야 겠군.", -- 석류 쥬스
		BANANA_JUICE = "원숭이들 주스로군.", -- 바나나 쥬스
		FIG_JUICE = "불경한 과육이 지나치게 많도다.", -- 무화과 쥬스
		DRAGONJUICE = "하얀 과육으로 가득하군.", --용과 쥬스
		GLOWBERRYJUICE = "빛나는 샘물이라 생각하고자 노력하자.", -- 발광베리 쥬스
		WATERMELON_JUICE = "이건 과일이 아니라 물이라 치자.", --수박 쥬스

		VEGGIE_TEA = "내 정녕 이걸 마셔야 하는가!", --녹즙
		CARROT_TEA = "전사에게 어떻게 이런 토끼밥 우린걸 내놓는가 말인가!", --당근차
		CACTUS_TEA = "그래, 칼날 달린 풀의 예우를 지켜준다 생각하자.", --선인차
		TOMATO_JUICE = "그 채소의 물 만을 취하겠도다.", --토마토 쥬스
		LUMPY_TEA = "물에 땅 채소의 기운을 담았다 생각하겠다." --뿌리차,
		SEAWEED_SHAKE = "끔찍하다 끔찍해!", --해초 쉐이크
		
		GREENTEA = "그냥....이파리 우린 물이다.", --생잎 녹차
		BLACKTEA = "다과회를 즐길 여유 같은건 없다.", --홍차
		BLACKTEA_ICED = "이가 시리는군.", -- 홍차 아이스티
		FUER = "고사리가 좀 들어갔을 뿐!", --보이차,이파리차,고사리차
		MIXFLOWER = "프레이의 축복을 담았구나.", --잡 꽃잎 차
		HIBISCUSTEA = "꽃이 피를 흘리는군.", --히비스커스 차
		CACTUSFLOWER_TEA = "물은 마시겠다. 꽃은 말고.", --선인꽃차
		LOTUSTEA = "물고기를 다오! 물고기를!!", --연꽃차
		SUSHIBISCUS = "이 차는 저주받은것이 틀림없도다.", -- 자살차
		MOON_BLOSSOM_TEA = "과연, 마니의 축복이 담겼구나.", --달꽃차

		CAFFEINBERRY_JUICE = "쓰고 심장이 요동친다네.", -- 블랙 커피
        TOFFEE_LATTE = "참 달고 고소하군.", --토피넛 라떼
		RUINCHA_LATTE = "내 정신이 번쩍 드는군.", --모카 라떼(커피+초코)
		
		HOTRUINCOLATE = "영혼을 데워주는구나.", --핫초코
		RUINCOLATE_SMOOTHIE = "서리 거인들의 음료인가?", --초코 스무디(차가움)
		RUINXOCOLATL = "난폭한 고대 전사들의 음료로다.", --쇼콜라틀(매캐함)
		TEA_RUINCOLATE_LATTE = "내 영혼을 깨워주는군.", -- 말차 초코 라떼

		MULLED = "지친 영혼을 쉬게 해주노라.", --뱅쇼
		BUTTERBEER = "어린 마법사들의 용맹은 내 높게 사노라.", --해리포터 시리즈의 버터비어

		-- 콜라보 주전자 음료

		COCONUT_JUICE = "말랑한 과육으로 가득하구나.", --난파선 코코넛 쥬스
		RAINBOW_SHAKE = "프레야의 축복이 담겨져 있도다!", --난파선 무지개 해파리 쉐이크
		QUARTZ_SHAKE = "내 기꺼이 마시리라!", --난파선 광대 물고기 쉐이크
		CHERRY_ROSEBERRIES_TEA = "이런 추악한 열매를 담은 음료를 마셔야 하는가?", --체리숲 로즈힙 차
		CHERRY_HONEY_TEA = "참 고급진 꿀물이로군.", --체리숲 벚꽃꿀 차
		SWEET_RICE_DRINK = "들어있는건 씨앗이지 아니한가?", -- 비타협 식혜
		PINEANANAS_JUICE = "질긴 비늘을 찢고 과육을 갈아냈도다.", -- 레기온 파인애플 주스
		ORANGE_JUICE = "그 시큼한 과즙을 내 목으로 넘기라 하는건가!", -- 모어 푸드 팩 오랜지 주스
		STRAWBERRY_SMOOTHIE = "차갑고 붉은 과일 곤죽이로군.", -- 모어 푸드 팩 딸기 스무디
		STRAWBERRY_MILK_SMOOTHIE = "분홍 과일 곤죽이로군.", -- 모어 푸드 팩 딸기 스무디 라떼

		--양조기 음료

		SPOILED_DRINK = "시간은 이 음료에게 지혜가 아니라 역겨움을 주었군.", --썩은 음료

		-- 양조소다
	
		SODA = "광천수로군.", -- 탄산수
		FRUITSODA = "후르츠 펀치로군.", -- 과일소다
		LEMONLIMESODA = "전사에게 걸맞는 음료는 아니로다.", -- 레몬 라임소다(과일소다 상위 호환)
		COLA = "검은 유혹과도 같구나.", -- 콜라
		COLAQUANTUM = "내 심장을 뛰게 하는구나!", --콜라 퀀텀
		LUMPY_BEER = "다채로운 향을 담아냈군.", --루트비어(술이 아님)

		-- 양조주

		CORN_BEER = "가짜 게르만의 술이로군.", -- 콘 맥주
		MADHU = "시예의 봉밀주로다!", --벌꿀주
		WINE = "선지자의 피로다.", --와인 (그냥 베리 양조)
		NOBLEWINE = "곁드릴 고기는 어디 있는가!", --노블 와인(구운 베리 양조)
		SPARKLINGWINE = "전사를 위한 연회주는 아니로군.", --스파클링 와인
		GLOWBERRYWINE = "크바시르의 혈주로군.", --글로우 베리 와인
		KUMIS = "일각수 맙소사, 젖으로 술을 만든다고?", -- 크므즈,산양유주
		LUMPY_WINE = "내 주량을 충족시키진 못하도다.", --서주(감자 고구마등 뿌리 술)
		PULQUE = "마야우엘의 피로군!", --풀케(선인주)
		RUINCACAO_WINE = "톨텍의 와인인가?", -- 카카오 와인 

		-- 콜라보 소다

		CHERRY_DOCTOR_COLA = "혐오스런 검붉은 혼돈이로다.", --체리숲 닥터 페퍼(닥터 체리)
		PINEANANASSODA = "솔방울이 들어갔건 과일이 들어갔건 옳지 못하다.", -- 탄산 파인애플(오란씨)
		ORANGESODA = "시큼한 과일즙이 들어간 광천수로다.", -- 탄산 오랜지(환타)
		STRAWBERRYSODA = "전사에게 걸맞지 못한 소다로다.", -- 탄산 딸기(웰치스 딸기)

		--콜라보 양조주

		AUROBOW = "아름답게도 빛나는군!", -- 난파선 오로보우,무지개 해파리주
		COCONUT_WINE = "야자기름 향이 묵직하게 느껴지는구나.", -- 난파선 코코넛 와인
		CHERRY_BLOOM_MADHU = "보기좋은 술이 마시기도 좋은법.", -- 체리숲 벚꽃꿀주
		GIANT_BLUEBERRY_WINE = "강력한 술이로다.", -- 비타협 붐!베리 사파이어(불 붙히면 폭발함)
		RICE_WINE = "내가 보기엔 우유나 마찬가지로다.", -- 비타협 막걸리
		WHEAT_BEER = "에기르의 맥주로도다.", -- 힙 오브 푸드 밀맥주
		PALE_BEER = "이것도 맥주인가?", -- 레기온 페일에일 (몬스트라 열매를 쓴 청록색 맥주)

		--증류주

		DISINFECTANT = "상처를 태워 낫게 하리라!", -- 소독약
		CORN_WHISKEY = "달고 향기롭구나.", -- 콘 위스키
		LUMPY_VODKA = "선언하노라, 나 이 술을 물처럼 마시겠다.", -- 보드카
		TEQUILA = "거칠고 야성적인 술이로군!", -- 데킬라
		MADHU_RUM = "바이킹은 이런 술을 마시지 않았다.", -- 럼주
		BERRY_BRANDY = "호사스런 귀족들의 술이로다.", -- 베리 브랜디
		AREUHI = "생각보다 나쁘지 않군.", -- 크므즈 증류주 아르히

		--왈리 전용 증류주

		BERRY_GIN = "적게 마시면 약주요, 많이 마시면 망주라.", --진
		GLOWBERRY_GIN = "발데르의 축복을 받은 술이로군.", --글로우 베리 진
		ABSINTHE = "청량한 향이 마음에 드는군!", -- 압생트
		TEA_LUMPY_VODKA = "술에서 이파리 향이 나는군.", -- 녹차 리큐르
		PETALS_BERRY_BRANDY = "전사는 꽃향기를 즐길 여유가 없다.", -- 장미향 브랜디
		KAHLUA = "전사로써 이 술은 너무 달군.", -- 커피 리큐르 깔루아
		NUT_CORN_WHISKY = "묵직한 향이 느껴지는군.", -- 너트 위스키
        RUINCACAO_CREAM_LIQUEUR = "어린 아이들을 위한 술인가?", --베일리스 카카오 크림 리큐르
        RUMCHATA = "나는 술과 젖은 따로 마시길 원하노라.", -- 럼차타(럼에 오우차타 라는 유제품 섞은)

		--콜라보 증류주

		MOONWAY = "빛의 정수로다!", -- 무지개 해파리주 증류주
		ARRACK = "야자 나무의 풍채가 느껴지는것 같군.", -- 아락 인도네시아 버전 코코넛 와인 증류주
		CHERRY_BLOOM_RUM = "화려함을 담아냈도다.", -- 체리 꿀주 증류주 벛꽃잎 떠다니는 술
		RICE_SPIRITS = "맑고 깔끔하도다!", --청주
		WHEAT_WHISKEY = "달고 향기롭구나.", -- 밀 위스키
		PALE_WHISKEY = "거칠고 쓴 향이 느껴지도다.", -- 페일 몰트 위스키

		--왈리 전용 콜라보 증류주

		NUT_COCONUT_BRANDY = "바이킹은 전사이자 탐험가이지, 해적이 아니노라.", -- 코코넛 브랜디 (캐러비안 럼을 만들수 없어서 카리브 브랜디 라는 이름으로 대체)
	    GIANT_BLUEBERRY_GIN = "압도적인 힘으로!", -- 붐 베리 사파이어 (당근 폭발함)

		--냄비 요리

        DARK_RUINCOLATE = "내 전우가 살미아키도 만들수 있을지 물어봐야겠군.", --다크 초콜릿.
        WHITE_RUINCOLATE = "바이킹은 이런 달기만 한 과자는 좋아하지 않는다.", --화이트 초콜릿
        RUINCOLATE = "썩 괜찮은 레이션이로군.", -- 그냥 초콜릿
        RUIN_SCHOKAKOLA = "전장의 흥분을 갈망하게 하는군.", -- 쇼카콜라

		BUCKET_STEEL_EMPTY = 
		{
			EMPTY = "양철 동이로군.", --빈 양철 양동이
			FULL = "맑은 물이 차 있구나.", -- 깨끗한 빗물이 참
			FULL_ICE = "향수를 불러 일으키는군.", -- 빗물이 얼어버림
			DIRTY = "더럽도다.", --빗물이 더러워짐
			DIRTY_ICE = "더러운 덩어리가 되어버렸군.", --더러운 빗물이 얼어버림
		},

		BUCKET_WOODIE_EMPTY = 
		{
			EMPTY = "나무 토막을 솜씨좋게 속을 비워냈군.", --우디의 빈 나무 양동이
			FULL = "맑은 물이 차 있구나.",  --깨끗한 빗물이 참
			FULL_ICE = "향수를 불러 일으키는군.", --빗물이 얼어버림
			DIRTY = "더럽도다.", --빗물이 더러워짐
			DIRTY_ICE = "더러운 덩어리가 되어버렸군.", --더러운 빗물 얼어버림
		},

		BUCKET_EMPTY = 
		{
			EMPTY = "빈 나무동이로다.", -- 빈 나무 양동이
			FULL = "맑은 물이 차 있구나.", -- 깨끗한 빗물이 참
			FULL_ICE = "향수를 불러 일으키는군.", --빗물이 얼어버림
			DIRTY = "더럽도다.", --빗물이 더러워짐
			DIRTY_ICE = "더러운 덩어리가 되어버렸군.", --더러운 빗물 얼어버림
		},

		DESALINATOR =
		{
			EMPTY = "텅 비어 있구나.", --제염기에 물이 없음
			PURIFY_LONG = "기다리는 동안 다른 것을 하는 것이 좋겠군.", -- 정수 끝나기까지 많이 남음
			PURIFY_SHORT = "꽤나 싱거워 졌군.", -- 정수가 곧 끝남
			HASWATER = "샘물로 가득하도다.", --제염기에 깨끗한 물이 있음
			BURNT = "불꽃에 삼켜져 버렸구나.",   --제염기가 타버림
			HASSALT = "광물이 지나치게 많노라.", --제염기에 소금이 남아 있음
		},

		BARREL =
		{
			GENERIC = "내 물을 담을것이다.", -- 물통 조사 대사
			BURNT = "로기의 손길에서 벗어나진 못했군.", -- 물통이 타버림
		},

		BREWERY =
		{
			EMPTY = "나 여기서 선언하니, 채소와 과일로 연회주를 만들것이라.", --양조기 조사 대사
			BURNT = "말라버린 술을 두고 울어서 무슨 소용이랴.", --양조기 타버림
			FERMENTING_LONG = "기다리는 동안 다른 것을 하는 것이 좋겠군.", --양조 끝나기 까지 많이 남음
			FERMENTING_SHORT = "연회를 준비해야 겠구나!", --양조가 곧 끝남
			DONE = "연회주가 준비되었는가!", --양조기에 음료가 들어있음
		},

		CAMPKETTLE_ITEM = "간이 주전자로다.", --휴대 주전자 아이템 조사 대사
		CAMPKETTLE =
		{
			GENERIC = "공허하군.", -- 화덕에 건 휴대 주전자 안에 물이 없음
			BOILING_LONG = "인내심을 가지자, 아직 끓지도 않았다.", -- 물 끓이기 시작함
			BOILING_SHORT = "오래 걸리지 않을 것이야.", -- 물 거의 다 끓음
			DONE = "이제 마셔도 될것이야.", --깨끗한 물이 들음
			STOP = "먼저 땔감에 불을 붙혀야 할것이야", --화덕에 불이 없어서 더러운물이 끓지 않는 상태
		},

		CAMPDESALINATOR_ITEM = "바닷물을 샘물로 손환시키는 솥이로다.", --휴대 제염기 아이템 조사 대사
		CAMPDESALINATOR = 
		{
			GENERIC = "솥에 가뭄이 들었나니.", --물 없음
			BOILING_LONG = "바닷물이 구름이 되나니.", --물 끓이기 시작
			BOILING_SHORT = "솥 안에 비가 내리고 있구나!", --거의 다 끓음 
			DONE = "샘물로 가득하도다.", -- 깨끗한 물이 들음
			STOP = "먼저 땔감에 불을 붙혀야 할것이야.", -- 화덕에 불이 없어서 소금물이 정수 되지 않는 상태
		},

		KETTLE =
		{
			EMPTY = "이걸로는 고깃국을 만들수 없다.", --빈 주전자 조사대사
			BURNT = "불길에 삼켜져 버렸군.", --주전자가 불탐
			BOILING_LONG = "기다리지 말고 다른 것을 하는 것이 좋겠군.", -- 음료를 만들기 시작한지 얼마 안됨
			BOILING_SHORT = "차를 거의 다 끓여냈군.", --음료 조리가 거의 끝나감
			DONE = "차를 다 끓여 냈군.", --음료가 완성됨
			PURIFY_LONG = "인내심을 가지자, 아직 끓지도 않았다.", -- 더러운 물을 끓이기 시작한지 얼마 안됨
			PURIFY_SHORT = "오래 걸리지 않을 것이야.", --더러운물을 거의 다 끓여감
			HASWATER = "샘물로 가득하군.", -- 깨끗한 물이 차 있는 상태
			MELT_LONG = "아직 많이 차갑도다.", -- 얼음물을 녹이기 시작한지 얼마 안됨
			MELT_SHORT = "샘물이 거의 다 되었군.", -- 얼음물을 거의 녹여감
		},

		PORTABLEKETTLE_ITEM =
		{
			GENERIC = "전장은 다과회를 하는 곳이 아니다.", -- 휴대용 주전자(아이템) 조사 대사
			EMPTY = "고기를 넣을 곳이 없군.", -- 설치한 빈 휴대용 주전자 조사 대사
			BOILING_LONG = "내 적수를 찾으러 돌아다니는게 낫겠군.", -- 음료를 만들기 시작한지 얼마 안됨
			BOILING_SHORT = "차를 거의 다 끓여냈군.", --음료 조리가 거의 끝나감
			DONE = "얼른 마시고 싸우러 가자.", --음료가 완성됨
			PURIFY_LONG = "인내심을 가지자, 아직 끓지도 않았다", -- 더러운 물을 끓이기 시작한지 얼마 안됨
			PURIFY_SHORT = "오래 걸리지 않을 것이야.", --더러운물을 거의 다 끓여감
			HASWATER = "전사는 다과회를 할 시간이 없다, 물을 빼자.", -- 깨끗한 물이 차 있는 상태
			MELT_LONG = "아직 많이 차갑도다.", -- 얼음물을 녹이기 시작한지 얼마 안됨
			MELT_SHORT = "샘물이 거의 다 되었군.", -- 얼음물을 거의 녹여감
		},
		
		DISTILLERS =
		{   
		    EMPTY = "가히 히미르의 가마솥이라 할수 있겠구나!", --증류기 조사 대사
			DISTILLTING_LONG = "사기가 떨어지는구나..서둘러라, 솥이여!", --증류가 끝나기 까지 많이 남음
			DISTILLING_SHORT = "단시에 끝나리라!", --증류가 곧 끝남
			DONE = "독한 술이 있는가?", --증류기에 음료가 들어있음
		},

		WELL_WATERPUMP = {
			HIGH_PRESSURE = "그 힘이 거인과 맞먹는구나.", -- 압력 최대
			MIDDLE_PRESSURE = "기계가 열심히 일하고 있노라.", -- 압력이 중간
			LOW_PRESSURE = "기계에 힘이 없구나.", -- 압력이 거의 없을때
			RECHARG_PRESSURE = "기계가 쉬고 있군.", -- 압력이 아예 없을때(여기까지 쓰면 압력이 최대가 될때까지 못씀.)
		},
		
		WELL_SPRINKLER =
		{ 
			LOWFUEL = "연료가 거의 다 떨어졌군.", -- 연료가 거의 없는 상태에서의 조사 대사
			ON = "이 비는 지하로부터 오도다.", -- 작동중임
			OFF = "비 뿌릴 곳을 살피고 있는가?", --작동을 멈춘상태에서의 조사 대사
		},	
	},
}