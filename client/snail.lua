local health
local armour

Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(100)
        print(health)
        print(armour)
        SendNUIMessage({
            health = health,
            armour = armour
        })
    end
end)

Citizen.CreateThread(function()
    while (true) do
        health = (GetEntityHealth(GetPlayerPed(-1))-101)
        armour = GetPedArmour(GetPlayerPed(-1))
        Citizen.Wait(100)
    end
end)
