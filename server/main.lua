RegisterServerEvent('qb-taxi:server:NpcPay')
AddEventHandler('qb-taxi:server:NpcPay', function(Payment)
    local fooikansasah = math.random(1, 2)
    local r1, r2 = math.random(1, 2), math.random(1, 2)

    if fooikansasah == r1 or fooikansasah == r2 then
        Payment = Payment + math.random(200, 500)
    end

    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddMoney('cash', Payment)

    local chance = math.random(1, 100)
    if chance < 20 then
        Player.Functions.AddItem("cashroll", 4, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["cashroll"], "add")
    end
end)

