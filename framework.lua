Framework = {}

function Framework.ESX()
    return GetResourceState("es_extended") ~= "missing"
end

function Framework.QBCore()
    return GetResourceState("qb-core") ~= "missing"
end

if Framework.ESX() then
    local ESX = exports["es_extended"]:getSharedObject()

    function Framework.UpdatePlayerData()
        local data = ESX.GetPlayerData()
        Framework.PlayerData = data
    end
end

if Framework.QBCore() then
    local QBCore = exports["qb-core"]:GetCoreObject()

    function Framework.UpdatePlayerData()
        local data = QBCore.Functions.GetPlayerData()
        Framework.PlayerData = data
    end
end
