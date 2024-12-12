RegisterNetEvent('esx:playerload')
AddEventHandler('esx:playerload',function(xPlayer)
    PlayerData = xPlayer
end)

local num4 = false
local num5 = false
local num6 = false
local num7 = false
local num8 = false
local num9 = false

function allFalse()
    num4 = false
    num5 = false
    num6 = false
    num7 = false
    num8 = false
    num9 = false
end

function drawTxt(x,y,scale,text,r,g,b,alpha)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.8, 0.8)
    SetTextColour(r,g,b,alpha)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.430, 0.300)
end

RegisterNetEvent('OosupriseoO:Start')
AddEventHandler('OosupriseoO:Start', function()
    local num = math.random(1,6)

    if num == 1 then
        num4 = true
    elseif num == 2 then 
        num5 = true
    elseif num == 3 then 
        num6 = true
    elseif num == 4 then
        num7 = true
    elseif num == 5 then
        num8 = true
    elseif num == 6 then
        num9 = true
    end

    Citizen.Wait(10000)

    allFalse()
end)

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(0)
        if num4 == true then
            drawTxt(0.3, 1.4, 0.55, '⏱️~y~按 ~b~G ~y~搶紅包🧧', 0, 255, 0, 255)  
            if IsControlJustReleased(0, 47) then
                TriggerServerEvent('OosupriseoO:Give')
                num4 = false
            end
        end    
        if num5 == true then
            drawTxt(0.3, 1.4, 0.55, '⏱️~y~按 ~b~R ~y~搶紅包🧧', 0, 255, 0, 255)  
            if IsControlJustReleased(0, 45) then
                TriggerServerEvent('OosupriseoO:Give')
                num5 = false
            end
        end            
        if num6 == true then
            drawTxt(0.3, 1.4, 0.55, '⏱️~y~按 ~b~Q ~y~搶紅包🧧', 0, 255, 0, 255)  
            if IsControlJustReleased(0, 44) then
                TriggerServerEvent('OosupriseoO:Give')
                num6 = false
            end    
        end            
        if num7 == true then
            drawTxt(0.3, 1.4, 0.55, '⏱️~y~按 ~b~F ~y~搶紅包🧧', 0, 255, 0, 255)  
            if IsControlJustReleased(0, 23) then
                TriggerServerEvent('OosupriseoO:Give')
                num7 = false
            end    
        end
        if num8 == true then    
            drawTxt(0.3, 1.4, 0.55, '⏱️~y~按 ~b~X ~y~搶紅包🧧', 0, 255, 0, 255)  
            if IsControlJustReleased(0, 73) then
                TriggerServerEvent('OosupriseoO:Give')
                num8 = false
            end    
        end        
        if num9 == true then    
            drawTxt(0.3, 1.4, 0.55, '⏱️~y~按 ~b~V ~y~搶紅包🧧', 0, 255, 0, 255) 
            if IsControlJustReleased(0, 0) then
                TriggerServerEvent('OosupriseoO:Give')
                num9 = false
            end    
        end
    end
end)