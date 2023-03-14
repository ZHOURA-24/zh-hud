local active = false

RegisterCommand('showhud', function()
    Framework.UpdatePlayerData()
    active = not active
    local PlayerData = Framework.PlayerData
    local job = PlayerData.job.name
    local jobLabel = PlayerData.job.label
    local grade = (Framework.ESX() and PlayerData.job.grade_label) or (Framework.QBCore() and PlayerData.job.grade.name)
    local id = GetPlayerServerId(PlayerId())
    local textDuty = 'OFF DUTY'
    if PlayerData.job.onduty then
        textDuty = 'ON DUTY'
    end
    SendNUIMessage({
        actionhud = active,
        dataHud = {
            id = id,
            job = job,
            jobLabel = jobLabel,
            grade = grade,
            duty = textDuty
        }
    })
end, false)

RegisterKeyMapping('showhud', 'Show / Hide hud', 'keyboard', 'F9')
