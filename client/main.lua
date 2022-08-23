
QBCore = exports['qb-core']:GetCoreObject()

local ParachuteEquiped = false

-- Functions

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

function EquipParachuteAnim()
    loadAnimDict("clothingshirt")
    TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
end


RegisterNetEvent('re2-parachute:client:UseParachute', function(tintIndex)
    EquipParachuteAnim()
    local cfg = Config.chutes[tintIndex]
    QBCore.Functions.Progressbar("use_parachute", QBCore.Shared.Items[cfg.name].label.." using..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local ped = PlayerPedId()
        
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[cfg.name], "remove")

        local ped_id = PlayerPedId()
        local player_id = PlayerId()
        local weap = `gadget_parachute`
        local parachuteModel = `pil_p_para_pilot_sp_s`


        GiveWeaponToPed(ped_id, weap, 1)
        SetPlayerHasReserveParachute(player_id)

        SetPedParachuteTintIndex(PlayerPedId(), tintIndex)

        SetPlayerParachuteModelOverride(player_id, parachuteModel)
        SetPlayerReserveParachuteModelOverride(player_id, parachuteModel)
        local ParachuteData = {
            outfitData = {
                ["bag"]   = { item = cfg.item, texture = cfg.texture},  -- Adding Parachute Clothing
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', ParachuteData)
        ParachuteEquiped = true
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    end)
end)



RegisterNetEvent('re2-parachute:client:ResetParachute', function()
    if ParachuteEquiped then
        EquipParachuteAnim()
        QBCore.Functions.Progressbar("reset_parachute", "Packing parachute..", 40000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            local ped = PlayerPedId()
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["parachute"], "add")
            local ParachuteRemoveData = {
                outfitData = {
                    ["bag"] = { item = 0, texture = 0} -- Removing Parachute Clothing
                }
            }
            TriggerEvent('qb-clothing:client:loadOutfit', ParachuteRemoveData)
            TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
            TriggerServerEvent("re2-parachute:server:AddParachute")
            ParachuteEquiped = false
        end)
    else
        QBCore.Functions.Notify("You dont have a parachute!", "error")
    end
end)

