Broker = {}

Broker.Grid = false

Broker.Triggerlabel = 'Broker'

Safezones = {
    ["Hospital"] = {
        coords = { -- coords of border Points of Safezones
            vec2(231.08, -589.71),
            vec2(350.79, -636.99),
            vec2(414.55, -542.51),
            vec2(261.66, -536.84),
        },
        minZ=26.00, -- Min Hight
        maxZ=50.00, -- Max Hight

        Settings = {
            DisableWeapons = false,
            SetGodModeInSafeZone = true,
            SetPlayerUnarmedInZone = false,
            SetPlayerUnarmedOnLeave = true,
            RemoveVehiclesOnEnter = false,
            DisableKeysInSafezone = false,
            Keys = {{22, 8}}, -- Up to 50 Keys
            DisableAttack = true,
            PedSpeedInSafezone = 1.00, -- 1.00 is normal speed | max is 10.00
            Logs = true, --Logs when Player Enters or Leaves Safezone
            GiveWeapons = false, 
            Weapons = {{'weapon_pistol', 'weapon_appistol'}}, -- Up to 20 Weapons
            Ammo = 144, -- given ammo with weapons
            RemoveWeapons = false, -- Will Remove the Weapons Above when Leaving zone
            EnableBanner = true,
            label = "safezone",
        },
    },

    ["Safezone 2"] = {
        coords = { -- coords of border Points of Safezones
            vec2(1188.33, 2516.0),
            vec2(1055.14, 2557.03),
            vec2(813.36, 2529.83),
            vec2(773.49, 2268.19),
            vec2(948.72, 2187.8),
            vec2(1065.44, 2047.18),
            vec2(1172.93, 2043.47),
            vec2(1207.88, 2483.9),
        },
        minZ=29.4697418212, 
        maxZ=90.00,

        Settings = {
            DisableWeapons = false,
            SetGodModeInSafeZone = true,
            SetPlayerUnarmedInZone = false,
            SetPlayerUnarmedOnLeave = true,
            RemoveVehiclesOnEnter = false,
            DisableKeysInSafezone = false,
            Keys = {{22, 8}}, -- Up to 50 Keys
            DisableAttack = true,
            PedSpeedInSafezone = 1.00, -- 1.00 is normal speed | max is 10.00
            Logs = true, --Logs when Player Enters or Leaves Safezone
            GiveWeapons = false, 
            Weapons = {{'weapon_pistol', 'weapon_appistol'}}, -- Up to 20 Weapons
            Ammo = 144, -- given ammo with weapons
            RemoveWeapons = false, -- Will Remove the Weapons Above when Leaving zone
            EnableBanner = true,
            label = "safezone",
        },
    },
}