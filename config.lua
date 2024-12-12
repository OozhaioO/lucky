Config = {}

Config.player = 10 -- 玩家人數要大於此數量時才啟動
Config.timer = 600 -- 冷卻時間，單位為秒
Config.Wait = 5000--自動關閉要等多久(1秒=1000)

Config.giveItem = true
Config.giveMoney = true

Config.cash = 10000 -- 現金獎勵
Config.item = {
    {name = "afk_ticket", chance = 300}, 
    {name = "afk_gacha", chance = 100},
    {name = "ex_ticket", chance = 10},
}

