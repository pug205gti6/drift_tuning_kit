 QBCore.Functions.CreateUseableItem("drift_tuning_kit", function(source, item)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

    if DoesEntityExist(vehicle) then
        QBCore.Functions.AddVehicleMod(vehicle, "drift_tuning_kit", true)

        TriggerClientEvent('QBCore:Notify', source, 'Drift tuning kit applied to your vehicle.', 'success')
    else
        TriggerClientEvent('QBCore:Notify', source, 'No vehicle found.', 'error')
    end
 end)
