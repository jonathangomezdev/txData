--[[ TriggerEvent("getCore",function(core)
    VorpCore = core
end) ]]

local RSGCore = exports['rsg-core']:GetCoreObject()

--VorpInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent("syn_jobboard:get_jobposters")
AddEventHandler("syn_jobboard:get_jobposters", function(city)
    local _source = source
    local tablex = {}
    local _source = source
	local xPlayer = RSGCore.Functions.GetPlayer(_source)
    local group = RSGCore.Functions.GetPermission(_source)
    local cid = xPlayer.PlayerData.citizenid
--[[     local User = VorpCore.getUser(source) 
    local Character = User.getUsedCharacter
    local charidentifier = Character.charIdentifier
    local group = User.getGroup ]]

--[[     exports.ghmattimysql:execute('SELECT * FROM jobposters WHERE city=@city', {['city'] = city}, function(result)
        if result[1] ~= nil then 
            for i=1, #result, 1 do
                table.insert(tablex, {
                    title = result[i].title,
                    poster_link = result[i].poster_link,
                    charidentifier = result[i].charidentifier,
                    id = result[i].id,
                })
            end
        end
        TriggerClientEvent("syn_jobboard:send_list",_source,tablex,charidentifier,group)
    end) ]]

    MySQL.Async.fetchAll('SELECT * FROM jobposters WHERE city=@city', {['@city'] = city}, function (result)
    
        if #result > 0 then
            for i=1, #result, 1 do
                tablex[i] = {
                    title = result[i].title,
                    poster_link = result[i].poster_link,
                    charidentifier = result[i].charidentifier,
                    id = result[i].id,
                }
            end

            
        end

        TriggerClientEvent("syn_jobboard:send_list",_source,tablex,cid,group)
    end)
end)

RegisterServerEvent("syn_jobboard:set_link")
AddEventHandler("syn_jobboard:set_link", function(title,poster_link,city)
    local _source = source
    local xPlayer = RSGCore.Functions.GetPlayer(_source)
    local xPlayerName = xPlayer.PlayerData.charinfo.firstname .. ' ' .. xPlayer.PlayerData.charinfo.lastname
    if poster_link ~= nil then 
        --local Character = VorpCore.getUser(source).getUsedCharacter
        --local charidentifier = Character.charIdentifier
        local cid = xPlayer.PlayerData.citizenid
        Discord(Config.webhook,title,poster_link, 3447003,city, xPlayerName)
        local parameters = { ['title'] = title,  ['poster_link'] = poster_link, ['city'] = city, ['charidentifier'] = cid}
        --exports.ghmattimysql:execute("INSERT INTO jobposters ( `title`, `poster_link`, `city`, `charidentifier`) VALUES ( @title, @poster_link, @city, @charidentifier)", parameters)

        MySQL.Async.execute("INSERT INTO jobposters ( `title`, `poster_link`, `city`, `charidentifier`) VALUES ( @title, @poster_link, @city, @charidentifier)" ,parameters,
        function(rowsChanged)
        end)
    end
end)

RegisterServerEvent("syn_jobboard:removeposter")
AddEventHandler("syn_jobboard:removeposter", function(id)
    local _source = source
    MySQL.update('DELETE FROM jobposters WHERE id = ?', { id })
end)

--[[ RegisterCommand("clearpins", function(source, args)
    
    if args ~= nil then
  local User = VorpCore.getUser(source) -- Return User with functions and all characters
  local Character = User.getUsedCharacter
  local group = User.getGroup -- Return user group (not character group)
    if group == "admin" then
		MySQL.Async.execute("TRUNCATE TABLE jobposters", {})
    else return false
    end
   end
end) ]]

RSGCore.Commands.Add('clearpins', 'clear all the pins', {}, false, function(source)
    MySQL.Async.execute("TRUNCATE TABLE jobposters", {})
end, 'admin')


function Discord(webhook, title, description, color,city, name)
   -- local _source = source
    --local Character = VorpCore.getUser(_source).getUsedCharacter
   -- local name        = Character.firstname .. ' ' .. Character.lastname
    local logs = "https://discord.com/api/webhooks/1113156893435777065/PU302MvPbyj3GDIts-j0ap3Vke5MvC47TqYV1GHiKFOjjd14En7JaonGNCeyy25GRjZW"
    local avatar = "https://media.discordapp.net/attachments/805495169901789194/911350679447150603/unknown.png"
    if string.match(description, "http") then
        logs = {
          {
              ["color"] = color,
              ["title"] = title,
              ["image"]={["url"]= description},
              ["footer"] = {["text"]="Town: "..city,["icon_url"]= "https://cdn.discordapp.com/attachments/1077333723835547809/1077333761068388352/Untitled_Project_Comp_1_2023-01-30_18.07.25.png"}
          }
        }
    else
        logs = {
            {
                ["color"] = color,
                ["title"] = title,
                ["description"] = description,
                ["footer"] = {["text"]="Town: "..city,["icon_url"]= "https://cdn.discordapp.com/attachments/1077333723835547809/1077333761068388352/Untitled_Project_Comp_1_2023-01-30_18.07.25.png"}
            }
          }
    end
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({["username"] = name ,["avatar_url"] = avatar ,embeds = logs}), { ['Content-Type'] = 'application/json' })
  end