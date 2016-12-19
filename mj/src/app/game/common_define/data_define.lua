--一副整牌
mjArray= {
	1, 2, 3, 4, 5, 6, 7, 8, 9,  --万
	1, 2, 3, 4, 5, 6, 7, 8, 9,
	1, 2, 3, 4, 5, 6, 7, 8, 9,
	1, 2, 3, 4, 5, 6, 7, 8, 9,
	10, 11, 12, 13, 14, 15, 16, 17, 18,  --條
	10, 11, 12, 13, 14, 15, 16, 17, 18,  --條
	10, 11, 12, 13, 14, 15, 16, 17, 18,  --條
	10, 11, 12, 13, 14, 15, 16, 17, 18,  --條
	19, 20, 21, 22, 23, 24, 25, 26, 27,
	19, 20, 21, 22, 23, 24, 25, 26, 27,
	19, 20, 21, 22, 23, 24, 25, 26, 27,
	19, 20, 21, 22, 23, 24, 25, 26, 27,  --筒
	-- 31, 32, 33, 34,  --东南西北
	-- 31, 32, 33, 34,
	-- 31, 32, 33, 34,
	-- 31, 32, 33, 34,
	-- 41, 42, 43,  --中发白
	-- 41, 42, 43,
	-- 41, 42, 43,
	-- 41, 42, 43,
	--51, 52, 53, 54, 55, 56, 57, 58  --花
}

mjCardTxt = {
	"一万","二万","三万","四万","五万","六万","七万","八万","九万",  
    "一索","二索","三索","四索","五索","六索","七索","八索","九索",  
    "一筒","二筒","三筒","四筒","五筒","六筒","七筒","八筒","九筒",  
    "东", "南", "西", "北", "中", "发", "白",  
    "春", "夏", "秋", "冬", "梅", "兰", "竹", "菊"  
}

--万 == id
--筒 == id-1
--条 == id-2
--风 == id-3
--箭 == id-9
mjCardIndex = {}  --存储42个 1-9:万 10-18:筒 19-27:条 28-31:(东南西北) 32-34:(中发白)
for i=1, 42 do
	mjCardIndex[i] = 0
end

--麻將四家位置
GPositions = {
		[1] = {
			id = 1,
			name = "本家",
			pos = cc.p(100, 100),
		},
		[2] = {
			id = 2,
			name = "下家",
			pos = cc.p(display.width -79-50, 20),
		},
		[3] = {
			id = 3,
			name = "对家",
			pos = cc.p(200, display.height-100),
		},
		[4] = {
			id = 4,
			name = "上家",
			pos = cc.p(50, 20),
		}
}

--用户信息位置
mjPlayerInfoPos = {
	[1] = {
		pos = cc.p(display.width - 60, 170)
	},
	[2] = {
		pos = cc.p(display.width - 60, display.cy)
	},
	[3] = { 
		pos = cc.p(70, display.top - 70)
	},
	[4] = {
		pos = cc.p(55, display.cy)
	}
}

--手牌位置
mjDarkPositions = {
	[1] = cc.p(0, 50),  --本家手牌的位置
	[2] = cc.p(display.width - 120, 100),
	[3] = cc.p(display.width, display.height-50),
	[4] = cc.p(120, 100 + 40*13-20)
}

--出牌起始位置
mjPlayPositions = {
	[1] = cc.p(display.cx - 100, display.cy - 100),
	[2] = cc.p(display.cx + 150, display.cy - 120),
	[3] = cc.p(display.cx + 100, display.cy + 100),
	[4] = cc.p(display.cx - 150, display.cy + 120),
}

--胡牌起始未知
mjHuCardPositions = {
	[1] = cc.p(display.cx + 100, 150),
	[2] = cc.p(display.width - 50, 100),
	[3] = cc.p(display.width - 50, display.height-50),
	[4] = cc.p(50, display.height - 50)
}

--头像（时钟位置）
mjPlayerPositions = {
	[1] = cc.p(0, 50),  --本家手牌的位置
	[2] = cc.p(display.width - 50, 100),
	[3] = cc.p(display.width - 50, display.height-50),
	[4] = cc.p(50, display.height - 50)
}