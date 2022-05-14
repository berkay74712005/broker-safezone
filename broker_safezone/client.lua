local inzone = false
local Zones = {}
InSafezone = false
InToSafezone = false
MySafezone = ''

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local coord = GetEntityCoords(ped)
        Wait(100)
        for z, zone in pairs(Zones) do
            if Zones[z]:isPointInside(coord) then
                inzone = true
                TriggerEvent(''..Broker.Triggerlabel..':enter', z)
                while inzone do
                    local plyPed = PlayerPedId()
                    local isped = GetEntityCoords(plyPed)
                    if not Zones[z]:isPointInside(isped) then 
                        inzone = false
                    end
                    Wait(100)
                end
                TriggerEvent(''..Broker.Triggerlabel..':exit', z)
            end
        end
    end
end)

RegisterNetEvent(''..Broker.Triggerlabel..':exit')
AddEventHandler(''..Broker.Triggerlabel..':exit',function (data)
    MySafezone = data
    InToSafezone = false
    if Safezones[MySafezone].Settings.Logs then
    TriggerServerEvent(''..Broker.Triggerlabel..':jumweujnzsle', MySafezone)
    end

    if Safezones[MySafezone].Settings.EnableBanner then
    SendNUIMessage({message = 'hide'})
    end

    local ped = PlayerPedId()
    if Safezones[MySafezone].Settings.SetPlayerUnarmedOnLeave then
        SetCurrentPedWeapon(ped, 'weapon_unarmed', true)
    end
    if Safezones[MySafezone].Settings.SetGodModeInSafeZone then
        SetEntityInvincible(ped, false)
    end
    if Safezones[MySafezone].Settings.DisableWeapons then
        SetPedCanSwitchWeapon(ped, true)
    end
    if Safezones[MySafezone].Settings.RemoveWeapons then
        for g, c in ipairs(Safezones[MySafezone].Settings.Weapons) do
        RemoveWeaponFromPed(ped, c[1])
        RemoveWeaponFromPed(ped, c[2])
        RemoveWeaponFromPed(ped, c[3])
        RemoveWeaponFromPed(ped, c[4])
        RemoveWeaponFromPed(ped, c[5])
        RemoveWeaponFromPed(ped, c[6])
        RemoveWeaponFromPed(ped, c[7])
        RemoveWeaponFromPed(ped, c[8])
        RemoveWeaponFromPed(ped, c[9])
        RemoveWeaponFromPed(ped, c[10])
        RemoveWeaponFromPed(ped, c[11])
        RemoveWeaponFromPed(ped, c[12])
        RemoveWeaponFromPed(ped, c[13])
        RemoveWeaponFromPed(ped, c[14])
        RemoveWeaponFromPed(ped, c[15])
        RemoveWeaponFromPed(ped, c[16])
        RemoveWeaponFromPed(ped, c[17])
        RemoveWeaponFromPed(ped, c[18])
        RemoveWeaponFromPed(ped, c[19])
        RemoveWeaponFromPed(ped, c[20])
        end
    end
end)

RegisterNetEvent(''..Broker.Triggerlabel..':enter')
AddEventHandler(''..Broker.Triggerlabel..':enter',function (data)
    local ped = PlayerPedId()
    MySafezone = data
    InToSafezone = true

    if Safezones[MySafezone].Settings.Logs then
    TriggerServerEvent(''..Broker.Triggerlabel..':jumweujnzsen', MySafezone)
    end

if Safezones[MySafezone].Settings.EnableBanner then
	SendNUIMessage({
        message = 'show',
        zone = MySafezone,
        label = Safezones[MySafezone].Settings.label
    })
end

    while inzone do

    SetPedMoveRateOverride(ped, Safezones[MySafezone].Settings.PedSpeedInSafezone)

    if Safezones[MySafezone].Settings.GiveWeapons then
        for g, c in ipairs(Safezones[MySafezone].Settings.Weapons) do
        GiveWeaponToPed(ped, c[1], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[2], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[3], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[4], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[5], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[6], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[7], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[8], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[9], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[10], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[11], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[12], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[13], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[14], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[15], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[16], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[17], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[18], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[19], Safezones[MySafezone].Settings.Ammo, false, false)
        GiveWeaponToPed(ped, c[20], Safezones[MySafezone].Settings.Ammo, false, false)
        end
    end

    if Safezones[MySafezone].Settings.SetPlayerUnarmedInZone then
        SetCurrentPedWeapon(ped, 'weapon_unarmed', true)
    end
    if Safezones[MySafezone].Settings.SetGodModeInSafeZone then
        SetEntityInvincible(ped, true)
    end
    if Safezones[MySafezone].Settings.DisableWeapons then
        SetPedCanSwitchWeapon(ped, false)
    end
    if Safezones[MySafezone].Settings.RemoveVehiclesOnEnter then
        if IsPedInAnyVehicle(ped, false) then
            local veh = GetVehiclePedIsIn(ped, false)
            DeleteVehicle(veh)
        end
    end
		for a, b in ipairs(Safezones[MySafezone].Settings.Keys) do
		if Safezones[MySafezone].Settings.DisableKeysInSafezone then
			DisableControlAction(0, b[1], true)
            DisableControlAction(0, b[2], true)
            DisableControlAction(0, b[3], true)
            DisableControlAction(0, b[4], true)
            DisableControlAction(0, b[5], true)
            DisableControlAction(0, b[6], true)
            DisableControlAction(0, b[7], true)
            DisableControlAction(0, b[8], true)
            DisableControlAction(0, b[9], true)
            DisableControlAction(0, b[10], true)
            DisableControlAction(0, b[11], true)
            DisableControlAction(0, b[12], true)
            DisableControlAction(0, b[13], true)
            DisableControlAction(0, b[14], true)
            DisableControlAction(0, b[15], true)
            DisableControlAction(0, b[16], true)
            DisableControlAction(0, b[17], true)
            DisableControlAction(0, b[18], true)
            DisableControlAction(0, b[19], true)
            DisableControlAction(0, b[20], true)
            DisableControlAction(0, b[21], true)
            DisableControlAction(0, b[22], true)
            DisableControlAction(0, b[23], true)
            DisableControlAction(0, b[24], true)
            DisableControlAction(0, b[25], true)
            DisableControlAction(0, b[26], true)
            DisableControlAction(0, b[27], true)
            DisableControlAction(0, b[28], true)
            DisableControlAction(0, b[29], true)
            DisableControlAction(0, b[30], true)
            DisableControlAction(0, b[31], true)
            DisableControlAction(0, b[32], true)
            DisableControlAction(0, b[33], true)
            DisableControlAction(0, b[34], true)
            DisableControlAction(0, b[35], true)
            DisableControlAction(0, b[36], true)
            DisableControlAction(0, b[37], true)
            DisableControlAction(0, b[38], true)
            DisableControlAction(0, b[39], true)
            DisableControlAction(0, b[40], true)
            DisableControlAction(0, b[41], true)
            DisableControlAction(0, b[42], true)
            DisableControlAction(0, b[43], true)
            DisableControlAction(0, b[44], true)
            DisableControlAction(0, b[45], true)
            DisableControlAction(0, b[46], true)
            DisableControlAction(0, b[47], true)
            DisableControlAction(0, b[48], true)
            DisableControlAction(0, b[49], true)
            DisableControlAction(0, b[50], true)
		end
        if Safezones[MySafezone].Settings.DisableAttack then
            DisableControlAction(0, 24, true)
        end
	end
		Wait(0)
	end
end)

-- ZONE CREATION --
function AddPolyZone(name, points, options)Zones[name] = PolyZone:Create(points, options)end

CreateThread(function() for p, o in pairs(Safezones) do AddPolyZone(p,o.coords, {name= p,minZ= o.minZ,maxZ= o.maxZ,debugGrid=Broker.Grid,gridDivisions=1})end end)




