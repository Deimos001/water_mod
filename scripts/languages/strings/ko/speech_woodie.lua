return {
	ACTIONFAIL =
	{
		GIVE =
		{
			WELL_NOTEMPTY = "순서가 바뀌었어.", -- 우물에 양동이가 달려있는데 양동이 달려 함
			WELL_BUSY = "있는것부터 먼저 하자고.", -- 우물안에 양동이가 들어가 있는데 달려 함
		}
	},

	ANNOUNCE_DRUNK = "히끅, 내 몸이 나무토막 처럼 느껴져..", -- 취함
	ANNOUNCE_DRUNK_END = "여차 하면 내가 나를 벨 뻔 했잖아.", --술에서 좀 깸 (그로기)
	ANNOUNCE_DRUNK_IMMUNITY = "", --임시. 위그 전용,
	ANNOUNCE_NOTCHARGE = "으음? 젖이 안 나오잖아?", --번개염소가 충전이 안되서 양동이로 젖을 짤수 없음
	ANNOUNCE_NOTHIRSTSLEEP = "목이 너무 말라서 잘수가 없어.", -- 목이 마른데 밤에 잘려고 시도
	ANNOUNCE_NOTHIRSTSIESTA = "목이 너무 말라서 쉴수가 없어.", -- 목이 마른데 낮에 잘려고 시도
	ANNOUNCE_SLEEP_END = "루시? 나를 베지 않을거지? 완전 악몽이였어.", --자고 일어나서 술에서 완전히 깸 
	ANNOUNCE_THIRST = "목이 좀 마르네.", --너무 목말라!

    ANNOUNCE_CAFFINE_BUFF_START = "코요테마냥 빠르게!" , -- 카페인 버프 시작
    ANNOUNCE_CAFFINE_BUFF_STOP = "우두커니 서서 나무나 베야 겠구먼." ,  -- 카페인 버프 끝
    
    ANNOUNCE_CURE_WATERBORNE = "속이 좀 가라 앉는구먼." ,  -- 수인성 질병을 아이템으로 치료했을때의 대사

	ANNOUNCE_DCAPACITY_CRITICAL = "몸이 좀 무겁구먼.", --취하기 직전
	ANNOUNCE_DCAPACITY_HALF = "어허 좋다!", -- 취기가 돌기 시작

	DESCRIBE =
	{
		BOILBOOK = "참 편리하네. 루시, 나 차 우리는 동안 시간좀 재 줄래?",

		WATER_CLEAN_ICE = "녹여야 겠지?",--깨끗한 얼음물
		WATER_DIRTY_ICE = "더럽고 얼었잖아.", --더러운 얼음물

		SPICE_CAFFEINPEPPER = "고기에는 오직 소금 이라고 생각하는데 말이지.", --후추 향신료

		WELL_KIT = "내가 손 좀 써 보지.", --우물 키트
		WELL_SPRINKLER_KIT = "완전 전자동 이잖아?", --스프링클러 키트
		WELL_WATERPUMP_KIT = "이거 참 편리하겠군, 안 그래?", --스팀 물펌프 키트
		WELL_BURYING_KIT = "필요없는 구멍은 막아야지.", -- 구멍 매설 키트
		WELL_DRILLING = "일을 재대로 하고 있는 모양이군.", --드릴로 구멍 뚫는 중
		WELL_DRILLING_ITEM = "바닥에 구멍을 뚫는 기계야.", --드릴 아이템
		HOLE = "이크, 조심해야 겠어.", --우물 구멍
		WELL = "마을마다 이거 하나씩은 있어야지.", --우물

		-- 물 모드 식물

		TEA_TREE = "울타리 처럼 생긴 나무네.",--차나무
		DUG_TEA_TREE = "조경 좀 꾸며 볼 시간이다.", --땅에서 파낸 차나무
		TEA_SEED = "열매라기에는 나무같은 부분이 많네.", -- 차나무 열매
		TEA_SEED_COOKED = "나무를 이렇게 버리다니.", --구운 차나무 열매
		TEA_SEED_SAPLING = "나무가 되려면 한참 멀었겠네.", --차나무 새싹
		TEALEAVES = "생 찻잎 같은데.", --찻잎
		TEALEAVES_DRIED = "말린 찻잎 같은데.", --말린 찻잎

		CAFFEINBERRY = "커피 콩!", --커피 덤불
		DUG_CAFFEINBERRY = "어디든 챙겨야 겠어.", --파낸 커피덤불
		CAFFEINBERRY_BEAN = "어떻게든 조리 해야 겠어.", --생 커피콩
		CAFFEINBERRY_BEAN_COOKED = "캐나다 사람은 커피를 사랑 한다고.", --구운 커피콩

		RUINCACAO_TREE = "저 남쪽에서 자라는건데, 내가 아는거랑 다르게 생겼네.", --카카오 나무
		DUG_RUINCACAO_TREE = "으으음. 가락가락 나뭇가지네.", --파낸 카카오 나무
		RUINCACAO_SEED = "좀 사악해 보이는 꽃이 폈네.", --카카오 새싹 아이템
		RUINCACAO_SEED_SAPLING = "좀 사악해 보이는 꽃이 폈네.", -- 카카오 새싹 심은거
		RUINCACAO = "참숯향이 나잖아?", --부수기 전 카카오 열매
		RUINCACAO_BEAN = "먹을수 있는 버터향이 아니잖아?", --부순 후 카카오 콩  
		RUINCACAO_BEAN_COOKED = "보통 그대로 먹진 않아.", --구운 카카오 콩

		-- 증류주 첨가제

		ADDITIVE_SEED = "밀주라도 만들건가 보지, 안그래?", -- 리큐르에 제조에 첨가 할 씨허브(아니스,쥬니퍼베리,팔각 모티브)첨가제 
		ADDITIVE_PETALS = "술에 이런것 들어가?", -- 리큐르에 제조에 첨가 할 허브,녹차,꽃잎 첨가제
		ADDITIVE_NUT = "간식 먹기 좋은게 모여있네.", -- 리큐르에 제조에 첨가 할 버치넛,코코넛,커피콩,카카오콩 첨가제
		ADDITIVE_DAIRY = "크림이잖아?", -- 리큐르에 제조에 첨가할 유제품 첨가제

		-- 음료

		WATER_CLEAN = "깨끗한 물 이잖아.", --깨끗한 물
		WATER_DIRTY = "더럽잖아.", --더러운 물
		WATER_SALTY = "바닷물 이잖아.", --바닷물

		GOOPYDRINK = "내가 마신것중에 이것보다 더 한 것도 있었지.", --실패한 음료(웻 굽 개념)
		
		-- 주전자 음료

		FRUITJUICE = "과일 모아서 착즙한거야.", --잡 과일쥬스
		BERRIES_JUICE = "물로 양을 늘렸네 그래.", -- 베리 쥬스
		POMEGRANATE_JUICE = "알알히 골라내는 수고를 덜었네.", -- 석류 쥬스
		BANANA_JUICE = "열대의 음료야.", -- 바나나 쥬스
		FIG_JUICE = "나쁘지 않은 주스네.", -- 무화과 쥬스
		DRAGONJUICE = "시럽을 좀 넣었으면 좋겠네.", --용과 쥬스
		GLOWBERRYJUICE = "이거 참 계속 마시고 싶어지네.", -- 발광베리 쥬스
		WATERMELON_JUICE = "물이 엄청 많잖아.", --수박 쥬스

		VEGGIE_TEA = "내 취향일거라 생각한다면 절대 아니야.", --녹즙
		CARROT_TEA = "토끼 밥에 곁들이기라도 할 건가?", --당근차
		CACTUS_TEA = "가시가 남아있을지 의심스러워.", --선인차
		TOMATO_JUICE = "시럽 좀 넣어서 달게 먹자.", --토마토 쥬스
		LUMPY_TEA = "이걸론 차 말고 해쉬를 해서 줘.", --뿌리차
		SEAWEED_SHAKE = "더 나은 방법은 없었어?", --해초 쉐이크
		
		GREENTEA = "차나 한잔 마셔야 겠다.", --생잎 녹차
		BLACKTEA = "벌써 차 마실때인가?", --홍차
		BLACKTEA_ICED = "땀 흘렸는데 마침 좋구먼.", -- 홍차 아이스티
		FUER = "나야 주는대로 마셔야지.", --보이차,이파리차,고사리차
		MIXFLOWER = "차 한번 감성적이네.", --잡 꽃잎 차
		HIBISCUSTEA = "루시 처럼 빨갛네.", --히비스커스 차
		CACTUSFLOWER_TEA = "꽃이 나는 곳의 기후를 생각하면, 물과 함께 마실수 있다는것에 감사해야지.", --선인꽃차
		LOTUSTEA = "본 적 없는 차인데.", --연꽃차
		SUSHIBISCUS = "어쩔까, 루시? 한 번 마셔볼까?", -- 자살차
		MOON_BLOSSOM_TEA = "이거 향 한번 대단하구먼.", --달꽃차

		CAFFEINBERRY_JUICE = "벌써 커피 마실 시간인가?", -- 블랙 커피
        TOFFEE_LATTE = "커피가 엄청 달잖아.", --토피넛 라떼
		RUINCHA_LATTE = "이건 모카가 아니야.", --모카 라떼(커피+초코)
		
		HOTRUINCOLATE = "아늑한 불가에서 마시기 딱이네.", --핫초코
		RUINCOLATE_SMOOTHIE = "달콤하고 시원하네.", --초코 스무디(차가움)
		RUINXOCOLATL = "거 저 남쪽 원주민들이 마셨던거야.", --쇼콜라틀(매캐함)
		TEA_RUINCOLATE_LATTE = "의외로 맛이 조화롭네.", -- 말차 라떼

		MULLED = "몸 아플때는 이것 만한게 없지.", --뱅쇼
		BUTTERBEER = "내가 뭐 마법 생명체나 털보 거인으로 보이나? 허.", --해리포터 시리즈의 버터비어

		-- 콜라보 주전자 음료

		COCONUT_JUICE = "야자 나무 스러운 부분은 많이 없어 졌잖아.", --난파선 코코넛 쥬스
		RAINBOW_SHAKE = "아무 맛도 없는게 강점이네.", --난파선 무지개 해파리 쉐이크
		QUARTZ_SHAKE = "스시로 만들수도 있었잖아.", --난파선 광대 물고기 쉐이크
		CHERRY_ROSEBERRIES_TEA = "머리카락 같은게 남았는지 의심스러워.", --체리숲 로즈힙 차
		CHERRY_HONEY_TEA = "꿀과 나무향, 기가 맥히네.", --체리숲 벚꽃꿀 차
		SWEET_RICE_DRINK = "이상한 곡물 주스네.", -- 비타협 식혜
		PINEANANAS_JUICE = "시원한데 난 셔서 많이 못 먹겠다 그래.", -- 레기온 파인애플 주스
		ORANGE_JUICE = "셔서 시럽좀 넣어 먹고 싶네.", -- 모어 푸드 팩 오랜지 주스
		STRAWBERRY_SMOOTHIE = "찾아서 먹진 않는데 좋지.", -- 모어 푸드 팩 딸기 스무디
		STRAWBERRY_MILK_SMOOTHIE = "부드럽고 시원하잖아.", -- 모어 푸드 팩 딸기 스무디 라떼

		--양조기 음료

		SPOILED_DRINK = "아이고, 곰팡이가 폈잖아.", --썩은 음료

		-- 양조소다
	
		SODA = "광천수잖아.", -- 탄산수
		FRUITSODA = "후르츠 펀치네 그래.", -- 과일소다
		LEMONLIMESODA = "달고 시원하잖아.", -- 레몬 라임소다(과일소다 상위 호환)
		COLA = "일하다 지치면 마셔야 겠어.", -- 콜라
		COLAQUANTUM = "이거 참 중독되네.", --콜라 퀀텀
		LUMPY_BEER = "사르사파릴라 음료인가?", --루트비어(술이 아님)

		-- 양조주

		CORN_BEER = "진짜 맥주는 아니지만 나야 좋지.", -- 콘 맥주
		MADHU = "벌꿀로 만든 술이잖아.", --벌꿀주
		WINE = "포도로 만든 와인은 아니지만 나야 좋지.", --와인 (그냥 베리 양조)
		NOBLEWINE = "고급스러운 와인이잖아.", --노블 와인(구운 베리 양조)
		SPARKLINGWINE = "흔들어서 낭비하는 녀석은 나와 루시가 가만 안둬야 겠어.", --스파클링 와인
		GLOWBERRYWINE = "맛은 나쁘지 않은것 같네.", --글로우 베리 와인
		KUMIS = "술인지 의심스러운데?", -- 크므즈,산양유주
		LUMPY_WINE = "문샤인은 아닌데 그래.", --서주(감자 고구마등 뿌리 술)
		PULQUE = "내 살던 곳 원주민들이 마셨던 술이야.", --풀케(선인주)
		RUINCACAO_WINE = "카카오 와인은 처음 듣는네.", -- 카카오 와인 

		-- 콜라보 소다

		CHERRY_DOCTOR_COLA = "달고 시원하면 그만이지.", --체리숲 닥터 페퍼(닥터 체리)
		PINEANANASSODA = "파인애플 탄산음료야.", -- 탄산 파인애플(오란씨)
		ORANGESODA = "오렌지 탄산음료야.", -- 탄산 오랜지(환타)
		STRAWBERRYSODA = "딸기 탄산음료야.", -- 탄산 딸기(웰치스 딸기)

		--콜라보 양조주

		AUROBOW = "살다 살다 해파리로 만든 술을 보네.", -- 난파선 오로보우,무지개 해파리주
		COCONUT_WINE = "묵직한 나무 향이 나네 그래.", -- 난파선 코코넛 와인
		CHERRY_BLOOM_MADHU = "아무도 안 마실거면 내가 마셔야 겠다 그래.", -- 체리숲 벚꽃꿀주
		GIANT_BLUEBERRY_WINE = "이젠 파란 술이 가득하네 그래.", -- 비타협 붐!베리 사파이어(불 붙히면 폭발함)
		RICE_WINE = "술이 덜 된거 아니야?", -- 비타협 막걸리
		WHEAT_BEER = "진짜 맥주잖아.", -- 힙 오브 푸드 밀맥주
		PALE_BEER = "맥주 색이 이상하잖아.", -- 레기온 페일에일 (몬스트라 열매를 쓴 청록색 맥주)

		--증류주

		DISINFECTANT = "소독은 중요하지 암.", -- 소독약
		CORN_WHISKEY = "미국 얘들 위스키잖아.", -- 콘 위스키
		LUMPY_VODKA = "추울때 이거 마시면 거뜬하지 그래", -- 보드카
		TEQUILA = "남쪽 얘들 독주잖아.", -- 데킬라
		MADHU_RUM = "뱃사람 술이잖아.", -- 럼주
		BERRY_BRANDY = "거 참 고급스런 브랜디네.", -- 베리 브랜디
		AREUHI = "우유로 만든 보드카야?", -- 크므즈 증류주 아르히

		--왈리 전용 증류주

		BERRY_GIN = "진 인것 같네 그래.", --진
		GLOWBERRY_GIN = "빛도 나서 좋잖아?", --글로우 베리 진
		ABSINTHE = "쑥향 가득한 압생트잖아.", -- 압생트
		TEA_LUMPY_VODKA = "처음 보는 술인데 나쁘지 않은것 같네 그래.", -- 말차 리큐르
		PETALS_BERRY_BRANDY = "향긋하니 좋구먼.", -- 장미향 브랜디
		KAHLUA = "난 커피와 술은 따로 마시는게 좋은데 그래.", -- 커피 리큐르 깔루아
		NUT_CORN_WHISKY = "좀 묵직한 향이 나네 그래.", -- 너트 위스키
        RUINCACAO_CREAM_LIQUEUR = "내가 이걸 술로 봐야할지 갈등되네.", --베일리스 카카오 크림 리큐르
        RUMCHATA = "남쪽 얘들이 술에 우유같은거 탄거야.", -- 럼차타(럼에 오우차타 라는 유제품 섞은)

		--콜라보 증류주

		MOONWAY = "색은 예쁜데 좀 의심스럽네.", -- 무지개 해파리주 증류주
		ARRACK = "야자나무향이 가득하네 그래.", -- 아락 인도네시아 버전 코코넛 와인 증류주
		CHERRY_BLOOM_RUM = "구경하고 있을바에는 내가 가져가서 마신다?", -- 체리 꿀주 증류주 벛꽃잎 떠다
		RICE_SPIRITS = "보드카가 아니야?", --청주
		WHEAT_WHISKEY = "손님이 오면 커피를 드릴지 위스키를 드릴지 물어 봐야지.", -- 밀 위스키
		PALE_WHISKEY = "색이 이상하긴 한데 위스키를 주면 마셔야지.", -- 페일 몰트 위스키

		--왈리 전용 콜라보 증류주

		NUT_COCONUT_BRANDY = "모두 준비 됬냐 아그들아!", -- 코코넛 브랜디 (스펀지밥 오프닝 해적 패러디)
	    GIANT_BLUEBERRY_GIN = "그래서, 아이스 하키 이겼냐?", -- 붐 베리 사파이어 (당근 폭발함)

		--냄비 요리

        DARK_RUINCOLATE = "왈리가 요리를 실패한건가, 아니면 건강식을 의도한건가?", --다크 초콜릿.
        WHITE_RUINCOLATE = "달고 느끼하지 않아?", --화이트 초콜릿
        RUINCOLATE = "초콜릿 먹을일은 별로 없었는데 주면 고맙지.", -- 그냥 초콜릿
        RUIN_SCHOKAKOLA = "힘이 솟아나겠어.", -- 쇼카콜라

		BUCKET_STEEL_EMPTY = 
		{
			EMPTY = "참 튼튼한 양동이야.", --빈 양철 양동이
			FULL = "물이 담겨져 있어.", -- 깨끗한 빗물이 참
			FULL_ICE = "누가 물동이를 얼게 방치한거야?", -- 빗물이 얼어버림
			DIRTY = "텃밭에 줄 물로 써야 겠네.", --빗물이 더러워짐
			DIRTY_ICE = "얼어버리기 까지 했네.", --더러운 빗물이 얼어버림
		},

		BUCKET_WOODIE_EMPTY = 
		{
			EMPTY = "열심히 했구나, 루시!", --우디의 빈 나무 양동이
			FULL = "양동이가 썩어버리기 전에 물을 비워 내자.",  --깨끗한 빗물이 참
			FULL_ICE = "누가 물동이를 얼게 방치한거야?", --빗물이 얼어버림
			DIRTY = "텃밭에 줄 물로 써야 겠네.", --빗물이 더러워짐
			DIRTY_ICE = "얼어버리기 까지 했네.", --더러운 빗물 얼어버림
		},

		BUCKET_EMPTY = 
		{
			EMPTY = "나무 판자로 만든 양동이야.", -- 빈 나무 양동이
			FULL = "양동이가 썩어버리기 전에 물을 비워 내자.", -- 깨끗한 빗물이 참
			FULL_ICE = "누가 물동이를 얼게 방치한거야?", --빗물이 얼어버림
			DIRTY = "텃밭에 줄 물로 써야 겠네.", --빗물이 더러워짐
			DIRTY_ICE = "얼어버리기 까지 했네.", --더러운 빗물 얼어버림
		},

		DESALINATOR =
		{
			EMPTY = "좋은 기술이야, 바닷물을 넣어서 사용해보자.", --제염기에 물이 없음
			PURIFY_LONG = "그렇게 빨리 소금이 떨어지진 않을거야.", -- 정수 끝나기까지 많이 남음
			PURIFY_SHORT = "좋아, 깨끗한 물이 되어 가고 있어.", -- 정수가 곧 끝남
			HASWATER = "물이 담겨 있어.", --제염기에 깨끗한 물이 있음
			BURNT = "이거 참 아깝네.",   --제염기가 타버림
			HASSALT = "이렇게나 소금이 많아서 재대로 정수가 될리가, 허.", --제염기에 소금이 남아 있음
		},

		BARREL =
		{
			GENERIC = "방수 처리는 재대로 했어.", -- 물통 조사 대사
			BURNT = "물만 믿고 방염처리를 안한게 실수였나.", -- 물통이 타버림
		},

		BREWERY =
		{
			EMPTY = "술통 하나는 참 세련되네.", --양조기 조사 대사
			BURNT = "정말 타는듯히 아깝네.", --양조기 타버림
			FERMENTING_LONG = "아직은 주스일거야.", --양조 끝나기 까지 많이 남음
			FERMENTING_SHORT = "술 향이 올라오네.", --양조가 곧 끝남
			DONE = "한번 마셔 보자고.", --양조기에 음료가 들어있음
		},

		CAMPKETTLE_ITEM = "숲 속에서 물 끓여 먹던게 생각 나는구먼.", --휴대 주전자 아이템 조사 대사
		CAMPKETTLE =
		{
			GENERIC = "다 쓴거면 치울까?", -- 화덕에 건 휴대 주전자 안에 물이 없음
			BOILING_LONG = "먹고 배탈 나고 싶은건 아니지?", -- 물 끓이기 시작함
			BOILING_SHORT = "거의 다 됬어.", -- 물 거의 다 끓음
			DONE = "이 정도면 마셔도 될거야.", --깨끗한 물이 들음
			STOP = " 루시,땔감 좀 구해오자.", --화덕에 불이 없어서 더러운물이 끓지 않는 상태
		},

		CAMPDESALINATOR_ITEM = "배 위에서 쓰는건가?.", --휴대 제염기 아이템 조사 대사
		CAMPDESALINATOR = 
		{
			GENERIC = "안에 텅 비어 있단 말이지.", --물 없음
			BOILING_LONG = "아직 바닷물이야.", --물 끓이기 시작
			BOILING_SHORT = "거의 다 됬어.", --거의 다 끓음 
			DONE = "이 정도면 마셔도 될거야.", -- 깨끗한 물이 들음
			STOP = "루시, 땔감 좀 구해오자.", -- 화덕에 불이 없어서 소금물이 정수 되지 않는 상태
		},

		KETTLE =
		{
			EMPTY = "저렇게 텅 빈 상태로 두면 낭비 같은데.", --빈 주전자 조사대사
			BURNT = "바싹 타 버렸군.", --주전자가 불탐
			BOILING_LONG = "좀 더 걸리려나?", -- 음료를 만들기 시작한지 얼마 안됨
			BOILING_SHORT = "좋아! 이제 거의 다 됐어!", --음료 조리가 거의 끝나감
			DONE = "티 타임이야!.", --음료가 완성됨
			PURIFY_LONG = "먹고 배탈 나고 싶은건 아니지?", -- 더러운 물을 끓이기 시작한지 얼마 안됨
			PURIFY_SHORT = "거의 다 끓였어.", --더러운물을 거의 다 끓여감
			HASWATER = "물은 준비되었어, 재료만 구하면 되겠네.", -- 깨끗한 물이 차 있는 상태
			MELT_LONG = "얼음으로 차가 우려나올거라 생각하는건 아니지?", -- 얼음물을 녹이기 시작한지 얼마 안됨
			MELT_SHORT = "거의 다 녹였어.", -- 얼음물을 거의 녹여감
		},

		PORTABLEKETTLE_ITEM =
		{
			GENERIC = "찻잎도 좀 챙길까?", -- 휴대용 주전자(아이템) 조사 대사
			EMPTY = "안 쓸거면 챙겨가자.", -- 설치한 빈 휴대용 주전자 조사 대사
			BOILING_LONG = "좀 더 걸리려나?", -- 음료를 만들기 시작한지 얼마 안됨
			BOILING_SHORT = "좋아! 이제 거의 다 됐어!", --음료 조리가 거의 끝나감
			DONE = "이제 마셔볼까?", --음료가 완성됨
			PURIFY_LONG = "먹고 배탈 나고 싶은건 아니지?", -- 더러운 물을 끓이기 시작한지 얼마 안됨
			PURIFY_SHORT = "거의 다 끓였어.", --더러운물을 거의 다 끓여감
			HASWATER = "물은 준비되었어, 재료만 구하면 되겠네.", -- 깨끗한 물이 차 있는 상태
			MELT_LONG = "얼음으로 차가 우려나올거라 생각하는건 아니지?", -- 얼음물을 녹이기 시작한지 얼마 안됨
			MELT_SHORT = "거의 다 녹였어.", -- 얼음물을 거의 녹여감
		},
		
		DISTILLERS =
		{   
		    EMPTY = "난 이거 원리는 잘 모르겠다, 허.", --증류기 조사 대사
			DISTILLTING_LONG = "오래 걸리나 본데?", --증류가 끝나기 까지 많이 남음
			DISTILLING_SHORT = "얼마 안 걸릴거야.", --증류가 곧 끝남
			DONE = "이제 마셔보자.", --증류기에 음료가 들어있음
		},

		WELL_WATERPUMP = {
			HIGH_PRESSURE = "일을 정말 잘 하잖아.", -- 압력 최대
			MIDDLE_PRESSURE = "열심히 물을 뽑아내고 있내 그래.", -- 압력이 중간
			LOW_PRESSURE = "수압이 떨어졌어.", -- 압력이 거의 없을때
			RECHARG_PRESSURE = "물이 안 나와.", -- 압력이 아예 없을때(여기까지 쓰면 압력이 최대가 될때까지 못씀.)
		},
		
		WELL_SPRINKLER =
		{ 
			LOWFUEL = "연료가 떨어진것 같은데.", -- 연료가 거의 없는 상태에서의 조사 대사
			ON = "열심히 일 하고 있어.", -- 작동중임
			OFF = "덕분에 텃밭에서 할 일이 줄었어.", --작동을 멈춘상태에서의 조사 대사
		},	
	},
}