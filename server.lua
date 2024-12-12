
local CanGive = false

local nowPlayer = 0

function nowPlayers()
    local xPlayers = ESX.GetExtendedPlayers() -- 獲取所有在線玩家
    nowPlayer = 0

    for i, xPlayer in pairs(xPlayers) do
        if xPlayer then
            nowPlayer = nowPlayer + 1
        end
    end

    if nowPlayer >= Config.player then
        CanGive = true
        TriggerClientEvent('OosupriseoO:Start', -1)
    else
        CanGive = false
    end
end

function itemChance()
    local chance = math.random(1, 1000)
    local activeChance = 0

    for i, item in ipairs(Config.item) do
        activeChance = activeChance + item.chance
        if chance <= activeChance then
            xPlayer.addInventoryItem(item.name, 1)
        end
    end

    return nil
end

Citizen.CreateThread(function()
    while true do
        local timer = Config.timer
        while timer > 0 do
            Citizen.Wait(1000)
            timer = timer - 1
        end
        nowPlayers()
        Citizen.Wait(1)
    end
end)

RegisterNetEvent('OosupriseoO:Give')
AddEventHandler('OosupriseoO:Give', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if CanGive then
        local reward = Config.cash
        xPlayer.addMoney(reward)
        itemChance()
        TriggerClientEvent('esx:showNotification', source, '~g~恭喜搶到紅包了！')
        CanGive = false
    else
        TriggerClientEvent('esx:showNotification', source, '~r~紅包已被搶走！')
    end
end)
