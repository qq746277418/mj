mjDarkGang = 100
mjMGang = 101
mjGang = 102

mjGamgStage = {
	dealing = 1,
	que = 2,
	fighting = 3,
}

mjCardType = {
	mj_wan = 1,
	mj_tiao = 2,
	mj_bing = 3,
	mj_feng = 4,
	mj_zfb = 5,
	mj_hua = 6
}

mjNoDCardType = {
	peng = 1,	--碰
	dgang = 2,  --暗杠
	mgang = 3,  --碰杠
	gang = 4    --明杠
}

--胡牌优先级确定
mjFighintInfoType = {
	common = 0,
	hu = 3,
	gang = 2,
	peng = 1
}

--游戏场景层级
mjLocalZorders = {
	card = 30, 
	common_tip = 200,
	operate_ui = 200, --从100开始
}

mjDCardType = {
	mj_init = 1,
	mj_dark = 2,  --手持
	mj_play = 3,  --已出
	mj_tdark = 4, --未手持（暗杠的暗牌） []
	mj_show = 5,  --未手持（碰、杠牌等）
}


-- 1:本家 2：下家 3：对家 4：上家
--手牌键值(手上暗牌显示形式)
mjDarkCardKey = {
	[1] = "x_",
	[2] = "by.png",
	[3] = "bxx.png",  --33*47  总要统一一下，好乱  
	[4] = "bz.png"
}

mjDarkCardSize = {
	[1] = cc.size(66, 94),
	[2] = cc.size(16, 40),
	[3] = cc.size(37, 64),
	[4] = cc.size(16, 40),
}

--打出的牌键值
mjPlayCardKey = {
	[1] = "szx_",
	[2] = "yx_",
	[3] = "sfx_",
	[4] = "zx_"
}

mjPlayCardSize = {
	
}

--暗杠暗牌情况(手牌区域)
mjTDarkCardKey = {
	[1] = "bs.png", --66 * 94
	[2] = "bh.png",
	[3] = "bsx.png",
	[4] = "bh.png"
}

mjTDarkCardSize = {
	
}

--碰、杠、胡等明牌情况（手牌区域）
mjShowCardKey = {
	[1] = "sz_",
	[2] = mjPlayCardKey[2],
	[3] = mjPlayCardKey[3],
	[4] = mjPlayCardKey[4]
}

mjShowCardSize = {
	[1] = cc.size(66, 94),
	[2] = cc.size(40, 37),
	[3] = cc.size(33, 47),
	[4] = cc.size(40, 37),
}

mjInitCardKey = {
	[1] = "bsx.png",
	[2] = "bh.png",
	[3] = "bsx.png",
	[4] = "bh.png",
}
mjInitCardSize = {
	
}