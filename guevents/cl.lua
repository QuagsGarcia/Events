diecheck = false
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(50)
		if GetIsTaskActive(PlayerPedId(), 165) then
			ClearPedTasks(GetPlayerPed(-1))
			SetPedConfigFlag(GetPlayerPed(-1), 184, true)
		end
		if IsEntityDead(GetPlayerPed(-1)) and not diecheck then
			diecheck = true
			TriggerServerEvent("GUPlayerDied-SV", GetPlayerServerId(PlayerId()))
		elseif not IsEntityDead(GetPlayerPed(-1)) then
			diecheck = false
		end
		if not IsPedInAnyVehicle(PlayerPedId()) and IsRadarEnabled() then
            DisplayRadar(false)
        elseif IsPedInAnyVehicle(PlayerPedId()) and not IsRadarEnabled() then
            DisplayRadar(true)
        end
	end
end)