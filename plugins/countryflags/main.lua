local countries = {
    ["NL"] = 1004,
    ["BQ"] = 1004,
    ["FR"] = 1005,
    ["GF"] = 1005,
    ["RE"] = 1005,
    ["BL"] = 1005,
    ["MF"] = 1005,
    ["PM"] = 1005,
    ["WF"] = 1005,
    ["GP"] = 1005,
    ["YT"] = 1005,
    ["GB"] = 1006,
    ["SH"] = 1006,
    ["RU"] = 1007,
    ["NO"] = 1008,
    ["BV"] = 1008,
    ["SJ"] = 1008,
    ["US"] = 1009,
    ["UM"] = 1009,
    ["RO"] = 1010,
    ["FI"] = 1016,
    ["TR"] = 1017,
    ["IE"] = 1018,
    ["TN"] = 1019,
    ["PL"] = 1020,
    ["BE"] = 1021,
    ["LU"] = 1022,
    ["DE"] = 1031,
    ["CH"] = 1032,
    ["SE"] = 1033,
    ["DK"] = 1034,
    ["CA"] = 1035,
    ["CZ"] = 1036,
    ["IS"] = 1037,
    ["ES"] = 1038,
    ["AT"] = 1039,
    ["MR"] = 1040,
    ["DZ"] = 1041,
    ["MA"] = 1042,
    ["LY"] = 1043,
    ["EG"] = 1044,
    ["LT"] = 1045,
    ["LV"] = 1046,
    ["EE"] = 1047,
    ["BY"] = 1048,
    ["UA"] = 1049,
    ["SK"] = 1050,
    ["HU"] = 1051,
    ["SI"] = 1052,
    ["GR"] = 1053,
    ["SA"] = 1054,
    ["OM"] = 1055,
    ["AE"] = 1056,
    ["IL"] = 1057,
    ["LB"] = 1058,
    ["IT"] = 1059,
    ["CN"] = 1060,
    ["IN"] = 1061,
    ["AU"] = 1062,
    ["RS"] = 1063,
    ["BA"] = 1064,
    ["BG"] = 1065,
    ["HR"] = 1066,
    ["MT"] = 1067,
    ["MC"] = 1068,
    ["MD"] = 1069,
    ["CY"] = 1070,
    ["AM"] = 1071,
    ["KZ"] = 1072
}

function GetIsoCode(player)
    if not player then return "NONE" end
    if not player:IsValid() then return end
    return ip:GetIsoCode(player:GetIPAddress())
end

AddEventHandler("OnPlayerSpawn", function (event)
    local player = GetPlayer(event:GetInt("userid"))
    if not player:IsValid() then return end
    
    local countryCode = GetIsoCode(player)
    local badgeId = countries[countryCode] or 1079


    local ranks = player:CCSPlayerController().InventoryServices.Rank
    ranks[6] = badgeId
    player:CCSPlayerController().InventoryServices.Rank = ranks
end)