local sentVehicle = nil
local sentVehicleUpdatedThisFrame = false
local class = nil

Citizen.CreateThread(function()
    local vehicle = nil

    while true do
        local p = PlayerPedId()
        local v = GetVehiclePedIsIn( p, true )

        if DoesEntityExist( v ) and v ~= vehicle and GetPedInVehicleSeat( v, -1 ) == p then
            TriggerServerEvent( "SAMPLE_VEHICLE_WHITELIST::ENTER_VEHICLE", NetworkGetNetworkIdFromEntity( v ), GetVehicleClass( v ) )
--             CheckPlate( v )

            vehicle = v
        end

        if not DoesEntityExist( v ) then vehicle = nil end

        -- if not sentVehicleUpdatedThisFrame then
        --     local p = PlayerPedId()
        --     local v = GetVehiclePedIsIn(p, false)
    
        --     if DoesEntityExist(v) and GetPedInVehicleSeat(v, -1) == p then
        --         if sentVehicle ~= v then
        --             sentVehicle = v
        --             TriggerServerEvent("SAMPLE_VEHICLE_WHITELIST::ENTER_VEHICLE", NetworkGetNetworkIdFromEntity(v), GetVehicleClass(v))
		--             CheckPlate( v )
        --         end
        --     end
        -- end

        -- sentVehicleUpdatedThisFrame = false
        Citizen.Wait( 0 )
    end
end)

Citizen.CreateThread( function()
    while true do
        local p = PlayerPedId()
        local v = GetVehiclePedIsIn( p, true )

        if DoesEntityExist( v ) and GetPedInVehicleSeat( v, -1 ) == p then
            TriggerServerEvent( "SAMPLE_VEHICLE_WHITELIST::ENTER_VEHICLE", NetworkGetNetworkIdFromEntity( v ), GetVehicleClass( v ) )
        end

        Citizen.Wait( 10000 )
    end
end )

function CheckPlate( v )
	local model = GetEntityModel( v )
	if POLICE_VEHICLES[model] or PATREON_POLICE_VEHICLES[model] then
		if GetVehicleNumberPlateTextIndex( v ) ~= 1 then
			SetVehicleNumberPlateTextIndex( v, 1 )
		end
	end
end

RegisterNetEvent "SAMPLE_VEHICLE_WHITELIST::REJECT_PLAYER"
AddEventHandler("SAMPLE_VEHICLE_WHITELIST::REJECT_PLAYER", function( message )
    TaskLeaveAnyVehicle(PlayerPedId(), 1, 16)
    if message then
        ShowInfo( message )
    else
        ShowInfo("~r~You are not allowed to drive this vehicle.")
    end
    
    sentVehicle = nil
    sentVehicleUpdatedThisFrame = true
end)

function ShowInfo(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	DrawNotification(false, false)
end
