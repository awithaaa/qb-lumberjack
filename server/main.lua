local QBCore = exports['qb-core']:GetCoreObject()

------------------------------ Jack Pick----------------------
RegisterServerEvent("qb-lumberjack:server:cutjack")
AddEventHandler("qb-lumberjack:server:cutjack", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        Player.Functions.AddItem("wood", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["wood"], "add")
        TriggerClientEvent('QBCore:Notify', src, 'Cut your trunks.', "success")
end)

----------------------------Process Wood----------------------

QBCore.Functions.CreateCallback('qb-lumberjack:server:get:proccesswood', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local wood = Ply.Functions.GetItemByName("wood")
    if wood ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('qb-lumberjack:server:processwood', function()
    local source = source
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    local wood = 1
    Player.Functions.RemoveItem('wood', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wood'], "remove")
    Wait(1000)
    Player.Functions.AddItem('wood_pro', wood)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wood_pro'], "add")
    TriggerClientEvent('QBCore:Notify', source, "Successfully ", "success")
end)

-------------------------seller-------------------------------
QBCore.Functions.CreateCallback('qb-lumberjack:server:get:sellwood', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local wood = Ply.Functions.GetItemByName("wood_pro")
    if wood ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('qb-lumberjack:server:sellwood')
AddEventHandler('qb-lumberjack:server:sellwood', function()

    local xPlayer = QBCore.Functions.GetPlayer(source)
	local Item = xPlayer.Functions.GetItemByName('wood_pro')
   
	
	if Item == nil then
       TriggerClientEvent('QBCore:Notify', source, 'You dont have Processed Wood', "error")  
	else
	 for k, v in pairs(Config.Prices) do
        
		
		if Item.amount > 0 then
            local reward = math.random(400, 450)
            -- for i = 1, Item.amount do
            --     --reward = reward + math.random(v[1], v[2])
            --     reward = reward + math.random(1, 2)
            -- end
			xPlayer.Functions.RemoveItem('wood_pro', 1)
			TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['wood_pro'], "remove")
			xPlayer.Functions.AddMoney("cash", reward, "sold-pawn-items")
			TriggerClientEvent('QBCore:Notify', source, 'Successfully Selling.', "success")  
			--end
        end
     end
	end
end)