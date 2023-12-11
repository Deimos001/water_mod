return {
	ACTIONFAIL =
	{
		GIVE =
		{
			WELL_NOTEMPTY = "그렇게 할 거 였으면 설계 때부터 도르래를 하나 더 달았어야지.", -- 우물에 말라 빈 양동이 달려있는데 양동이 달려 함
			WELL_BUSY = "그만둬, 우물이 막힐 뿐이야.", -- 우물에 물 든 양동이 달려있는데 달려 함
		}
	},

	ANNOUNCE_DRUNK = "히끅, 이거 일 못하겠군...", -- 취함
	ANNOUNCE_DRUNK_END = "좀 낫군, 힘 좀 내볼까.", --술에서 좀 깸 (그로기)
	ANNOUNCE_DRUNK_IMMUNITY = "", --임시. 위그 전용,
	ANNOUNCE_NOTCHARGE = "흠.. 이 염소가 언제 젖을 만들더라.", --번개염소가 충전이 안되서 양동이로 젖을 짤수 없음
	ANNOUNCE_NOTHIRSTSLEEP = "물 마시고 자야겠어.", -- 목이 마른데 밤에 잘려고 시도
	ANNOUNCE_NOTHIRSTSIESTA = "물 마시고 쉬어야지.", -- 목이 마른데 낮에 잘려고 시도
	ANNOUNCE_SLEEP_END = "후, 다음에는 과음하지 말아야지.", --자고 일어나서 술에서 완전히 깸 
	ANNOUNCE_THIRST = "물 좀 마셔야 겠어.", --너무 목말라!

    ANNOUNCE_CAFFINE_BUFF_START = "출장 수리 서비스 시작!" , -- 카페인 버프 시작
    ANNOUNCE_CAFFINE_BUFF_STOP = "공방에 틀어 박혀야겠군." ,  -- 카페인 버프 끝
    
    ANNOUNCE_CURE_WATERBORNE = "속이 편안하군." ,  -- 수인성 질병을 아이템으로 치료했을때의 대사

	ANNOUNCE_DCAPACITY_CRITICAL = "집중하기 힘들군...", --취하기 직전
	ANNOUNCE_DCAPACITY_HALF = "음, 이제 좀 절제 하는게 좋겠어.", -- 취기가 돌기 시작

	DESCRIBE =
	{
		BOILBOOK = "음료와 술을 만드는 방법이 잔뜩 적혀 있군.",

		WATER_CLEAN_ICE = "씹어 먹어야 하나.",--깨끗한 얼음물
		WATER_DIRTY_ICE = "먼지 섞인 얼음이네.", --더러운 얼음물

		SPICE_CAFFEINPEPPER = "어디 고기만 있으면 완벽할 텐데..", --후추 향신료

		WELL_KIT = "힘 좀 써볼까.", --우물 키트
		WELL_SPRINKLER_KIT = "꽤 정교하게 잘 만들었어.", --스프링클러 키트
		WELL_WATERPUMP_KIT = "배터리로는 에너지 소모를 감당할수 없었어.", --스팀 물펌프 키트
		WELL_BURYING_KIT = "땅에 뚫린 구멍을 위험하게 방치해 두면 안되지, 암.", -- 구멍 매설 키트
		WELL_DRILLING = "튀어오는 돌에 안 맞게 조심해야지.", --드릴로 구멍 뚫는 중
		WELL_DRILLING_ITEM = "작동 시키기 전에 땅에 단단히 고정시키고, 안전수칙 지켜!", --드릴 아이템
		HOLE = "지하수와 연결된 구멍이야.", --우물 구멍
		WELL = "흠, 자동화 시킬 방법이...", --우물

		-- 물 모드 식물

		TEA_TREE = "나무 참 작고 예쁘네.",--차나무
		DUG_TEA_TREE = "난 손 더럽히는 일이 좋아.", --땅에서 파낸 차나무
		TEA_SEED = "나무를 짓는 데에 필요한 물건이야.", -- 차나무 열매
		TEA_SEED_COOKED = "먹을 수 있겠는데. 알 방법은 별 거 없지!", --구운 차나무 열매
		TEA_SEED_SAPLING = "이 나무는 아직 만들어 지는 중이야.", --차나무 새싹
		TEALEAVES = "이파리 주제에 향기로운데?", --찻잎
		TEALEAVES_DRIED = "뜨거운 물 좀 준비 해 볼까.", --말린 찻잎

		CAFFEINBERRY = "커피 콩이 열리잖아! 세상에.", --커피 덤불
		DUG_CAFFEINBERRY = "이걸 다시 땅에 심어야겠어, 내 땅이 있다면 말이야. 하!", --파낸 커피덤불
		CAFFEINBERRY_BEAN = "먼저 불 속에 던져 넣어야 겠지?", --생 커피콩
		CAFFEINBERRY_BEAN_COOKED = "아, 아침에 맡는 커피 원두 향기란!", --구운 커피콩

		RUINCACAO_TREE = "어, 음, 가지를 뻗는 청사진부터 잘못 되었나 보네.", --카카오 나무
		DUG_RUINCACAO_TREE = "다시 볼수록 이상하게 생긴 나무야.", --파낸 카카오 나무
		RUINCACAO_SEED = "열매 안에 있을때부터 꽃이 피어 있던거야?", --카카오 새싹 아이템
		RUINCACAO_SEED_SAPLING = "지금 보니 좀 오싹하네.", -- 카카오 새싹 심은거
		RUINCACAO = "그래서, 이게 목탄이야 아니면 열매야?", --부수기 전 카카오 열매
		RUINCACAO_BEAN = "먹을 수 있는 기름덩어리로는 안 보이는군.", --부순 후 카카오 콩  
		RUINCACAO_BEAN_COOKED = "그럭저럭 씹을만 하네.", --구운 카카오 콩

		-- 증류주 첨가제

		ADDITIVE_SEED = "이상한 씨앗들을 모아놨네.", -- 리큐르에 제조에 첨가 할 씨허브(아니스,쥬니퍼베리,팔각 모티브)첨가제 
		ADDITIVE_PETALS = "풀잎이랑 꽃잎 뭉치들이야.", -- 리큐르에 제조에 첨가 할 허브,녹차,꽃잎 첨가제
		ADDITIVE_NUT = "입이 심심할때 먹으라고 모아 둔 건 아니지?", -- 리큐르에 제조에 첨가 할 버치넛,코코넛,커피콩,카카오콩 첨가제
		ADDITIVE_DAIRY = "우유 크림이네.", -- 리큐르에 제조에 첨가할 유제품 첨가제

		-- 음료

		WATER_CLEAN = "깨끗한 물 한잔에도 고마워 해야 한다니..", --깨끗한 물
		WATER_DIRTY = "아무리 급해도 고인 물을 마시면 안되지.", --더러운 물
		WATER_SALTY = "바닷물을 마시는건 자살행위야.", --바닷물

		GOOPYDRINK = "웩.", --실패한 음료(웻 굽 개념)
		
		-- 주전자 음료

		FRUITJUICE = "이것 저것 많이 들어 갔네.", --잡 과일쥬스
		BERRIES_JUICE = "손에 과즙 묻힐 일은 없겠네.", -- 베리 쥬스
		POMEGRANATE_JUICE = "잘됬네, 그 과일 깨끗하게 먹기 힘들었거든.", -- 석류 쥬스
		BANANA_JUICE = "엄..따뜻한 바나나 차를 원한건 아니였어.", -- 바나나 쥬스
		FIG_JUICE = "식감이 독특하네.", -- 무화과 쥬스
		DRAGONJUICE = "고오급 쥬스네.", --용과 쥬스
		GLOWBERRYJUICE = "굳이 말하자면 글로우 스틱 안의 화합물 같다 랄까.", -- 발광베리 쥬스
		WATERMELON_JUICE = "시원하니 좋네.", --수박 쥬스

		VEGGIE_TEA = "원기 보충은 되겠네.", --녹즙
		CARROT_TEA = "마침 눈이 침침 했는데 잘됬어.", --당근차
		CACTUS_TEA = "가시가 있어도 다 물렁해졌겠네.", --선인차
		TOMATO_JUICE = "굳이 찾아 마시진 않았는데 좋네.", --토마토 쥬스
		LUMPY_TEA = "생각보다 나쁘지 않네, 괜찮아.", --뿌리차
		SEAWEED_SHAKE = "엄.. 변비에 좋을것 같네.", --해초 쉐이크
		
		GREENTEA = "은은하게 향이 좋네.", --생잎 녹차
		BLACKTEA = "난 커피가 더 좋지만 없으면 이거라도 마셔야지.", --홍차
		BLACKTEA_ICED = "땀 좀 흘리고 나서 마셔야 겠다.", -- 홍차 아이스티
		FUER = "의외로 향이 나쁘지 않네.", --보이차,이파리차,고사리차
		MIXFLOWER = "고상한 귀부인 취향인것 같은데 향이 좋긴 좋네.", --잡 꽃잎 차
		HIBISCUSTEA = "과일 하나 안보이는데 시큼 달달 하네.", --히비스커스 차
		CACTUSFLOWER_TEA = "꽃으로 차 하는게 유행인갑네.", --선인꽃차
		LOTUSTEA = "꽤 이국적인걸.", --연꽃차
		SUSHIBISCUS = "뭐 이런 차가 다 있지.", -- 자살차
		MOON_BLOSSOM_TEA = "후! 정신이 반짝 드네 그려.", --달꽃차

		CAFFEINBERRY_JUICE = "야근 뛸 때 자주 달고 살았지.", -- 블랙 커피
        TOFFEE_LATTE = "난 커피에 설탕 안 넣는 파인데.", --토피넛 라떼
		RUINCHA_LATTE = "커피와 초코, 둘 중에 선택하기 어렵다면야.", --모카 라떼(커피+초코)
		
		HOTRUINCOLATE = "포근한걸.", --핫초코
		RUINCOLATE_SMOOTHIE = "시판 음료로 본적 있기는 하는데, 사서 마실 일은 없었지.", --초코 스무디(차가움)
		RUINXOCOLATL = "이거 배기가스 만큼이나 향미가 독한데.", --쇼콜라틀(매캐함)
		TEA_RUINCOLATE_LATTE = "혼란스럽네, 이건 밀크티야 초코 스무디야?", -- 말차 초코 라떼

		MULLED = "내가 한 방이 있는 여자는 아니지만.. 한 잔은 좋아한다고! 헤헤!", --뱅쇼
		BUTTERBEER = "지나치게 발달한 기술은 마법과 진배 없다고.", --해리포터 시리즈의 버터비어

		-- 콜라보 주전자 음료

		COCONUT_JUICE = "달고 시원하네.", --난파선 코코넛 쥬스
		RAINBOW_SHAKE = "무지개 한번 마셔볼까.", --난파선 무지개 해파리 쉐이크
		QUARTZ_SHAKE = "이 정도면 양호하지.", --난파선 광대 물고기 쉐이크
		CHERRY_ROSEBERRIES_TEA = "신맛이 또 별미로군.", --체리숲 로즈힙 차
		CHERRY_HONEY_TEA = "한잔 해서 목에 걸린 먼지를 걸러내야 겠군.", --체리숲 벚꽃꿀 차
		SWEET_RICE_DRINK = "흠, 꽤 달군.", -- 비타협 식혜
		PINEANANAS_JUICE = "통조림에 든 국물 보다는 확실히 낫네.", -- 레기온 파인애플 주스
		ORANGE_JUICE = "탕비실 냉장고에 이게 없는 날을 본 적이 없어.", -- 모어 푸드 팩 오랜지 주스
		STRAWBERRY_SMOOTHIE = "여공들 취향 같은데, 아, 나도 여공이지. 흠!", -- 모어 푸드 팩 딸기 스무디
		STRAWBERRY_MILK_SMOOTHIE = "찻집 디저트 음료 같은데 맛있네.", -- 모어 푸드 팩 딸기 스무디 라떼

		--양조기 음료

		SPOILED_DRINK = "공업용수로도 부적합해.", --썩은 음료

		-- 양조소다
	
		SODA = "플레인 탄산수로군.", -- 탄산수
		FRUITSODA = "파티 갈 일도 없으니 이거 먹을 일도 없었지.", -- 과일소다
		LEMONLIMESODA = "이빨 썩겠는데.", -- 레몬 라임소다(과일소다 상위 호환)
		COLA = "꼭 마시러 하기만 하면 이미 누가 다 마셨더라.", -- 콜라
		COLAQUANTUM = "워, 이거 마셔도 안전한거야?", --콜라 퀀텀
		LUMPY_BEER = "콜라보다 맛있는데 아무도 내 편 안 들어준단 말이지.", --루트비어(술이 아님)

		-- 양조주

		CORN_BEER = "일과 마치고 한 잔 하면 딱이야!", -- 콘 맥주
		MADHU = "위그가 좋아할 것 같네.", --벌꿀주
		WINE = "향을 음미할 시간은 없어, 해야 할 일이 산더미 인걸.", --와인 (그냥 베리 양조)
		NOBLEWINE = "이런 고상한건 나랑 거리가 있단 말이지.", --노블 와인(구운 베리 양조)
		SPARKLINGWINE = "맥스 면전에서 흔들어 줘야지.", --스파클링 와인
		GLOWBERRYWINE = "수제 양조의 로망이로군.", --글로우 베리 와인
		KUMIS = "우유로 술을 만드는건 처음 보네.", -- 크므즈,산양유주
		LUMPY_WINE = "꽤 시원한 맛이 나는데?", --서주(감자 고구마등 뿌리 술)
		PULQUE = "선인장으로 술도 만들어지는군.", --풀케(선인주)
		RUINCACAO_WINE = "카카오로 와인이 만들어 졌다면, 만들수 있는거겠지.", -- 카카오 와인 

		-- 콜라보 소다

		CHERRY_DOCTOR_COLA = "이건 콜라가 아닌데.", --체리숲 닥터 페퍼(닥터 체리)
		PINEANANASSODA = "시판 탄산음료 파인애플 맛이네.", -- 탄산 파인애플(오란씨)
		ORANGESODA = "시판 탄산음료 오렌지 맛이야.", -- 탄산 오랜지(환타)
		STRAWBERRYSODA = "딸기맛 탄산음료가 있다해도 놀랍진 않지.", -- 탄산 딸기(웰치스 딸기)

		--콜라보 양조주

		AUROBOW = "무지개 술이네, 원재료는 좀 거시기 하지만.", -- 난파선 오로보우,무지개 해파리주
		COCONUT_WINE = "야자 열매 술이야.", -- 난파선 코코넛 와인
		CHERRY_BLOOM_MADHU = "이제 풀은 아니게 되었군.", -- 체리숲 벚꽃꿀주 (포밍레인: 위노나가 체리꿀을 조사할떄 '이게 꿀인지 '풀 = glue'인지 확실하지 않네'' 라고 하는 대사가 있습니다.)
		GIANT_BLUEBERRY_WINE = "블루베리로 와인을 못 만들것도 없지.", -- 비타협 붐베리 와인 (불 붙히면 폭발함)
		RICE_WINE = "술이 좀 탁하네.", -- 비타협 막걸리
		WHEAT_BEER = "작업 끝나면 한잔 걸쳐야지!", -- 힙 오브 푸드 밀맥주
		PALE_BEER = "맥주 색이 좀 이상하면 어떠하리.", -- 레기온 페일에일 (몬스트라 열매를 쓴 청록색 맥주)

		--증류주

		DISINFECTANT = "응급처치용이지.", -- 소독약
		CORN_WHISKEY = "난 찔금 찔금 마시는 것보다 왕창 마시는게 취향인데.", -- 콘 위스키
		LUMPY_VODKA = "날씨가 추워질떄까지 가지고 있어야 겠다.", -- 보드카
		TEQUILA = "향이 꽤 터프한데!", -- 데킬라
		MADHU_RUM = "뱃사람이 물에 럼을 섞어서 식수를 보존하는 시대는 좀 됬지.", -- 럼주
		BERRY_BRANDY = "이런 비싼 술은 마셔볼 기회가 별로 없는데 말이지.", -- 베리 브랜디
		AREUHI = "본 적 없는 양주네.", -- 크므즈 증류주 아르히

		--왈리 전용 증류주

		BERRY_GIN = "이거 떄문에 나락 간 친구를 몇명 알지.", --진
		GLOWBERRY_GIN = "에너지가 무한히 공급되진 않을텐데 언제까지 빛나려나.", --글로우 베리 진
		ABSINTHE = "적어도 우린 황산구리를 섞진 않지!", -- 압생트
		TEA_LUMPY_VODKA = "압생트랑은 다른건가?", -- 녹차 리큐르
		PETALS_BERRY_BRANDY = "꽤나 사치스런 술 같네.", -- 장미향 브랜디
		KAHLUA = "아무래도 술과 커피는 따로 마셔야 겠다.", -- 커피 리큐르 깔루아
		NUT_CORN_WHISKY = "향이 납처럼 묵직하군.", -- 너트 위스키
        RUINCACAO_CREAM_LIQUEUR = "이런 달달한 술도 다 있네, 허!", --베일리스 카카오 크림 리큐르
        RUMCHATA = "키 다 큰 어른들을 위한 우유구먼!", -- 럼차타(럼에 오우차타 라는 유제품 섞은)

		--콜라보 증류주

		MOONWAY = "열량 높아 보이는데 연료로도 쓸 수 있을까?", -- 무지개 해파리주 증류주
		ARRACK = "야자 단내가 나는군.", -- 아락 인도네시아 버전 코코넛 와인 증류주
		CHERRY_BLOOM_RUM = "공항 기념품 같아 보이는데, 어차피 다 같은 술이야.", -- 체리 꿀주 증류주 벛꽃잎 떠다
		RICE_SPIRITS = "이제 꽤 맑네!", --청주
		WHEAT_WHISKEY = "일할때는 술 금지야.", -- 밀 위스크
		PALE_WHISKEY = "이런 색의 양주는 처음 보는군.", -- 페일 몰트 위스키

		--왈리 전용 콜라보 증류주

		NUT_COCONUT_BRANDY = "꽤 달달한 향이 나네.", -- 코코넛 브랜디 (캐러비안 럼을 만들수 없어서 카리브 브랜디 라는 이름으로 대체)
	    GIANT_BLUEBERRY_GIN = "식용 보다는 공업용에 가깝지 않나?", -- 붐 베리 사파이어 (당근 폭발함)

		--냄비 요리

        DARK_RUINCOLATE = "친구가 쉬엄쉬엄 하라고 간식을 준비 했나 보네.", --다크 초콜릿.
        WHITE_RUINCOLATE = "오 왈리, 나 단거 싫어하는거 알잖아.", --화이트 초콜릿
        RUINCOLATE = "녹기 쉬우니깐 잘 먹진 않았지.", -- 그냥 초콜릿
        RUIN_SCHOKAKOLA = "이거야, 잘 녹지도 않고 케이스도 있고 일하면서 힘 도 나지.", -- 쇼카콜라

		BUCKET_STEEL_EMPTY = 
		{
			EMPTY = "튼튼하게 잘 만들었네.", --빈 양철 양동이
			FULL = "빗물이 고였네.", -- 깨끗한 빗물이 참
			FULL_ICE = "빼려면 고생해야 겠는데?", -- 빗물이 얼어버림
			DIRTY = "걸레라도 한번 빤 물 같군.", --빗물이 더러워짐
			DIRTY_ICE = "한겨울에 청소하고 물 버리는걸 잊었나 보군.", --더러운 빗물이 얼어버림
		},

		BUCKET_WOODIE_EMPTY = 
		{
			EMPTY = "내구성은 좀 의심이 가는걸.", --우디의 빈 나무 양동이
			FULL = "빗물이 고였네.",  --깨끗한 빗물이 참
			FULL_ICE = "빼려면 고생해야 겠는데?", --빗물이 얼어버림
			DIRTY = "걸레라도 한번 빤 물 같군.", --빗물이 더러워짐
			DIRTY_ICE = "한겨울에 청소하고 물 버리는걸 잊었나 보군.", --더러운 빗물 얼어버림
		},

		BUCKET_EMPTY = 
		{
			EMPTY = "뭘 좀 담아볼까.", -- 빈 나무 양동이
			FULL = "빗물이 고였네.", -- 깨끗한 빗물이 참
			FULL_ICE = "빼려면 고생해야 겠는데?", --빗물이 얼어버림
			DIRTY = "걸레라도 한번 빤 물 같군.", --빗물이 더러워짐
			DIRTY_ICE = "한겨울에 청소하고 물 버리는걸 잊었나 보군.", --더러운 빗물 얼어버림
		},

		DESALINATOR =
		{
			EMPTY = "이걸 구상하는데 꽤 고생했어.", --제염기에 물이 없음
			PURIFY_LONG = "어디보자..아직 염도가 높아.", -- 정수 끝나기까지 많이 남음
			PURIFY_SHORT = "어디보자..염도가 높진 않군.", -- 정수가 곧 끝남
			HASWATER = "안에 든게 바닷물이 아님을 보증하지.", --제염기에 깨끗한 물이 있음
			BURNT = "이건 좀 열받네.",   --제염기가 타버림
			HASSALT = "필터박스에서 소금부터 제거해야 해.", --제염기에 소금이 남아 있음
		},

		BARREL =
		{
			GENERIC = "나랑 우디가 물이 썩지 않을 방법을 고민했지.", -- 물통 조사 대사
			BURNT = "괜찮아, 하나 더 만들지 뭐.", -- 물통이 타버림
		},

		BREWERY =
		{
			EMPTY = "꽤 비싼 나무가 들어갔다, 이 말씀!", --양조기 조사 대사
			BURNT = "아무리 그래도 이건 화내야 겠는걸.", --양조기 타버림
			FERMENTING_LONG = "발효라는게 원래 오래 걸린다고 했지?", --양조 끝나기 까지 많이 남음
			FERMENTING_SHORT = "거의 다 되지 않았을까?", --양조가 곧 끝남
			DONE = "어디 한번 맛 좀 볼까?", --양조기에 음료가 들어있음
		},

		CAMPKETTLE_ITEM = "공장제 보단 좀 무거울거야.", --휴대 주전자 아이템 조사 대사
		CAMPKETTLE =
		{
			GENERIC = "내가 물을 가져와야 겠군.", -- 화덕에 건 휴대 주전자 안에 물이 없음
			BOILING_LONG = "아직 68°F 정도로군.", -- 물 끓이기 시작함
			BOILING_SHORT = "192.2°F로 끓고 있어.", -- 물 거의 다 끓음
			DONE = "충분해 보이는데, 확인 해 봐야겠지.", --깨끗한 물이 들음
			STOP = "워, 아직 마시면 안될거야.", --화덕에 불이 없어서 더러운물이 끓지 않는 상태
		},

		CAMPDESALINATOR_ITEM = "'휴대용'이라기에는 많이 무겁긴 하지.", --휴대 제염기 아이템 조사 대사
		CAMPDESALINATOR = 
		{
			GENERIC = "텅 빈 깡통이네.", --물 없음
			BOILING_LONG = "아직 바닷물쪽의 수위가 높아.", --물 끓이기 시작
			BOILING_SHORT = "이제 담수쪽 수위가 더 높군.", --거의 다 끓음 
			DONE = "담수가 다 모였군!", -- 깨끗한 물이 들음
			STOP = "땔감이 있어야 할 텐데.", -- 화덕에 불이 없어서 소금물이 정수 되지 않는 상태
		},

		KETTLE =
		{
			EMPTY = "내가 커피 하난 기가맥히게 내리는데 말이야.", --빈 주전자 조사대사
			BURNT = "너무 진하게 우러냈나?", --주전자가 불탐
			BOILING_LONG = "아직 더 기다려야 겠는걸.", -- 음료를 만들기 시작한지 얼마 안됨
			BOILING_SHORT = "거의 다 됬어.", --음료 조리가 거의 끝나감
			DONE = "휴게시간!", --음료가 완성됨
			PURIFY_LONG = "아직 68°F 정도로군.", -- 더러운 물을 끓이기 시작한지 얼마 안됨
			PURIFY_SHORT = "192.2°F로 끓고 있어.", --더러운물을 거의 다 끓여감
			HASWATER = "어디보자, 커피가 있으면 좋겠건만.", -- 깨끗한 물이 차 있는 상태
			MELT_LONG = "아직 꽝 꽝 얼어있어.", -- 얼음물을 녹이기 시작한지 얼마 안됨
			MELT_SHORT = "거의 녹아가네.", -- 얼음물을 거의 녹여감
		},

		PORTABLEKETTLE_ITEM =
		{
			GENERIC = "품질면에서 공장제 티포트에 뒤쳐지지 않아.", -- 휴대용 주전자(아이템) 조사 대사
			EMPTY = "물 한 방울 없군.", -- 설치한 빈 휴대용 주전자 조사 대사
			BOILING_LONG = "좋은건 다 시간이 필요한 법이야.", -- 음료를 만들기 시작한지 얼마 안됨
			BOILING_SHORT = "눈 깜짝할 새면 다 되겠어!", --음료 조리가 거의 끝나감
			DONE = "그 난리를 친 보람이 있을지 보자고.", --음료가 완성됨
			PURIFY_LONG = "아직 미지근한 정도이네.", -- 더러운 물을 끓이기 시작한지 얼마 안됨
			PURIFY_SHORT = "기포 소리가 들리네.", --더러운물을 거의 다 끓여감
			HASWATER = "이제 재료를 투입해야 겠군.", -- 깨끗한 물이 차 있는 상태
			MELT_LONG = "온통 얼음이야.", -- 얼음물을 녹이기 시작한지 얼마 안됨
			MELT_SHORT = "얼음이 거의 녹아 떠있네.", -- 얼음물을 거의 녹여감
		},
		
		DISTILLERS =
		{   
		    EMPTY = "열과 압력을 버티도록 설계되었어.", --증류기 조사 대사
			DISTILLTING_LONG = "타이머가 거의 돌아가지도 않았군.", --증류가 끝나기 까지 많이 남음
			DISTILLING_SHORT = "끝나기까지 얼마 남지 않았어.", --증류가 곧 끝남
			DONE = "어디 한번 맛 좀 볼까?", --증류기에 음료가 들어있음
		},

		WELL_WATERPUMP = {
			HIGH_PRESSURE = "약 123 psi의 압력으로 물을 끌어오고 있어.", -- 압력 최대
			MIDDLE_PRESSURE = "약 81 psi의 압력으로 물을 끌어  있어.", -- 압력이 중간
			LOW_PRESSURE = "약 47 psi의 압력으로 물을 끌어오고 있어.", -- 압력이 거의 없을때
			RECHARG_PRESSURE = "이 압력으로는 물을 끌어 올릴때까지 엄청 오래 걸릴거야.", -- 압력이 아예 없을때(여기까지 쓰면 압력이 최대가 될때까지 못씀.)
		},
		
		WELL_SPRINKLER =
		{ 
			LOWFUEL = "연료를 채워줘야 해.", -- 연료가 거의 없는 상태에서의 조사 대사
			ON = "내 장비를 들고는 가까이 가지 말아야지.", -- 작동중임
			OFF = "일정 부분은 '마법'으로 작동해.", --작동을 멈춘상태에서의 조사 대사
		},	
	},
}