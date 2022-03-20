Citizen.CreateThread(function()
    while not ESX do 
        Citizen.Wait(100); 

        ESX = exports['es_extended']:getSharedObject()

        if ESX.IsPlayerLoaded() then 
            ESX.PlayerData = ESX.GetPlayerData()
        end
    end
end)

function SendNotification(message, title, color, sec)
    SendNUIMessage({
        title = title or 'Notifikation', 
        message = message or 'Finns ingen text!', 
        type = color, 
        seconds = sec or 4000
    })
end

exports('SendNotification', function(...)
    SendNotification(...)
end)