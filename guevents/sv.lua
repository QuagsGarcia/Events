RegisterServerEvent('GUPlayerDied-SV')
AddEventHandler('GUPlayerDied-SV', function(a)
    TriggerClientEvent("GUPlayerDied", -1, a)
end)