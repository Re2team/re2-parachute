QBCore = exports['qb-core']:GetCoreObject()
local tintColor = 0
QBCore.Functions.CreateUseableItem("rainbow-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 0
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 0)
    end
end)
QBCore.Functions.CreateUseableItem("red-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 1
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 1)
    end
end)
QBCore.Functions.CreateUseableItem("seaside-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 2
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 2)
    end
end)
QBCore.Functions.CreateUseableItem("widow-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 3
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 3)
    end
end)
QBCore.Functions.CreateUseableItem("patriot-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 4
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 4)
    end
end)
QBCore.Functions.CreateUseableItem("blue-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 5
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 5)
    end
end)
QBCore.Functions.CreateUseableItem("black-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 6
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 6)
    end 
end)
QBCore.Functions.CreateUseableItem("hornet-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 7
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 7)
    end
end)
QBCore.Functions.CreateUseableItem("airforce-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 8
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 8)
    end
end)
QBCore.Functions.CreateUseableItem("desert-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 9
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 9)
    end
end)
QBCore.Functions.CreateUseableItem("shadow-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 10
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 10)
    end
end)
QBCore.Functions.CreateUseableItem("highalt-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 11
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 11)
    end
end)
QBCore.Functions.CreateUseableItem("airborn-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 12
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 12)
    end
end)
QBCore.Functions.CreateUseableItem("sunrise-parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        tintColor = 13
        TriggerClientEvent("re2-parachute:client:UseParachute", source, 13)
    end
end)




QBCore.Commands.Add("takeoffparachute", "TakeOff Parachute", {}, false, function(source)
	TriggerClientEvent("re2-parachute:client:ResetParachute", source)
end)

RegisterNetEvent('re2-parachute:server:AddParachute', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item= Config.chutes[tintColor]
    Player.Functions.AddItem(item.name, 1)
end)