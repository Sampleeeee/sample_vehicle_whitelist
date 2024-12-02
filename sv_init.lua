function RejectPlayer( player, message )
    TriggerClientEvent( "SAMPLE_VEHICLE_WHITELIST::REJECT_PLAYER", player, message )
end

RegisterNetEvent "SAMPLE_VEHICLE_WHITELIST::ENTER_VEHICLE"
AddEventHandler("SAMPLE_VEHICLE_WHITELIST::ENTER_VEHICLE", function( netVehicle, class )
    local player = source
    local entity = NetworkGetEntityFromNetworkId( netVehicle )
    local state = Player( player ).state.clockin or { isLeo = false, isFire = false }

    local model = GetEntityModel( entity )
    local member = exports["sample_util"]:IsRolePresent( player, "Member" )
    local management = exports["sample_util"]:IsRolePresent( player, "ManagementVehicles" )

    if ( POLICE_VEHICLES[model] or PATREON_POLICE_VEHICLES[model] ) then
        if not member then
            RejectPlayer( player, '~r~You must be a member to drive this vehicle.' )
            return
        else
            if not state.isLeo and not state.isFire then
                RejectPlayer( player, '~r~You must be clocked in to drive this vehicle.' )
                return
            end
        end
    end

    if FIRE_VEHICLES[model] then
        if not member then
            RejectPlayer( player, '~r~You must be a member to drive this vehicle.' )
            return
        else
            if not state.isLeo and not state.isFire then
                RejectPlayer( player, '~r~You must be clocked in to drive this vehicle.' )
                return
            end
        end
    end

    if CIVILIAN_VEHICLES[model] and not member then
        RejectPlayer( player, '~r~You must be a member to drive this vehicle.' )
        return
    end

    if CIVILIAN_CLASS[class] and not member then
        RejectPlayer( player, '~r~You must be a member to drive this vehicle.' )
        return
    end

    if PATREON_POLICE_VEHICLES[model] then
        local tier = exports.sample_util:GetTierNumber( player )
        if tier < PATREON_POLICE_VEHICLES[model] then
            RejectPlayer( player, "~r~You must be at least patreon tier " .. PATREON_POLICE_VEHICLES[model] .. " to drive this vehicle. You are tier " .. tier .. "." )
        end
    end

    if MANAGEMENT_VEHICLES[model] then
        if not management then
            RejectPlayer( player, '~r~You are not allowed to drive this vehicle.' )
            return
        else
            if not state.isLeo and not state.isFire then
                RejectPlayer( player, '~r~You must be clocked in to drive this vehicle.' )
                return
            end
        end
    end
end )
