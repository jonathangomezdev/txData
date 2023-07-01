local RSGCore = exports['rsg-core']:GetCoreObject()

-- if Config['CoreSettings']["ASCore"]["Version"] == "new" then
--   CoreName = Config['CoreSettings']["ASCore"]["Export"]
-- else
--   TriggerEvent(Config['CoreSettings']["ASCore"]["Trigger"], function(obj) CoreName = obj end)
-- end


function addLog(message)
  local steamid  = false
  local license  = false
  local discord  = false
  local xbl      = false
  local liveid   = false
  local ip       = false
  for k,v in pairs(GetPlayerIdentifiers(source))do   
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
      steamid = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
      license = v
    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
      xbl  = v
    elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
      ip = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
      discord = v
    elseif string.sub(v, 1, string.len("live:")) == "live:" then
      liveid = v
    end
  end
  local Execute = SQL("INSERT INTO asgard_admin_log(identifier , log , name , date) VALUES(@identifier , @log , @name , @date)",{["@identifier"]=license,['@log']=message,["@name"]=GetPlayerName(source) , ['@date'] = os.time()})

end

function disp_time(time)
  local t = (os.difftime(time, os.time()))
  local d = math.floor(t / 86400)
  local h = math.floor((t % 86400) / 3600)
  local m = math.floor((t % 3600) / 60)
  local s = math.floor((t % 60))
  return {days = d , hours = h , minutes = m, seconds = s}
end


SQL = function(query, parameters, cb)
  local res = nil
  local IsBusy = true
  if Config['General']["SQLWrapper"] == "mysql-async" then
      if string.find(query, "SELECT") then
          MySQL.Async.fetchAll(query, parameters, function(result)
              if cb then
                  cb(result)
              else
                  res = result
                  IsBusy = false
              end
          end)
      else
          MySQL.Async.execute(query, parameters, function(result)
              if cb then
                  cb(result)
              else
                  res = result
                  IsBusy = false
              end
          end)
      end
  elseif Config['General']["SQLWrapper"] == "oxmysql" then
      exports.oxmysql:execute(query, parameters, function(result)
          if cb then
              cb(result)
          else
              res = result
              IsBusy = false
          end
      end)
  elseif Config['General']["SQLWrapper"] == "ghmattimysql" then
      exports.ghmattimysql:execute(query, parameters, function(result)
          if cb then
              cb(result)
          else
              res = result
              IsBusy = false
          end
      end)
  end
  while IsBusy do
      Citizen.Wait(0)
  end
  return res
end

local webhookLink = Config['Webhooks']['Link']
function SendWebhook(message)
  local embed = {
    {
      ["color"] = 1184274,
      ["title"] = "**Admin Menu LOG**",
      ["description"] = message,
      ["footer"] = {
          ["text"] = '© Asgard Scripts',
      },
    }
  }

  PerformHttpRequest(webhookLink, function(err, text, headers) 
  end, 'POST', json.encode({username = 'Asgard Admin', embeds = embed}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('asgard-adminmenu:server:SpawnItem')
AddEventHandler('asgard-adminmenu:server:SpawnItem', function(ItemName, ItemAmount)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local steamid  = false
    local license  = false
    local discord  = false
    local xbl      = false
    local liveid   = false
    local ip       = false
    for k,v in pairs(GetPlayerIdentifiers(source))do   
      if string.sub(v, 1, string.len("steam:")) == "steam:" then
        steamid = v
      elseif string.sub(v, 1, string.len("license:")) == "license:" then
        license = v
      elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
        xbl  = v
      elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
        ip = v
      elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
        discord = v
      elseif string.sub(v, 1, string.len("live:")) == "live:" then
        liveid = v
      end
    end
    local Player = RSGCore.Functions.GetPlayer(source)
    local RSGCore = exports['rsg-core']:GetCoreObject()
    Player.Functions.AddItem(ItemName, tonumber(ItemAmount))
    TriggerClientEvent("inventory:client:ItemBox", source, RSGCore.Shared.Items[item], "add")
    local Execute = SQL("INSERT INTO asgard_admin_log(identifier , log , name , date) VALUES(@identifier , @log , @name , @date)",{["@identifier"]=license,['@log']='Spawned Item: '..ItemName..' ( '..RSGCore.Shared.Items[ItemName].label..' ) | Amount: '..ItemAmount,["@name"]=GetPlayerName(source) , ['@date'] = os.time()})
  end
end)


RegisterServerEvent('asgard-adminmenu:server:Csay')
AddEventHandler('asgard-adminmenu:server:Csay', function(msg)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    TriggerClientEvent("chatMessage", -1, "Admin: ", {255, 0, 0}, msg)
    local Execute = SQL("INSERT INTO asgard_admin_log(identifier , log , name , date) VALUES(@identifier , @log , @name , @date)",{["@identifier"]=license,['@log']='cSaid: '..msg,["@name"]=GetPlayerName(source) , ['@date'] = os.time()})
  end
end)


RegisterServerEvent('asgard-adminmenu:server:GetCoords')
AddEventHandler('asgard-adminmenu:server:GetCoords', function(target, toggle)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local pSrc = tonumber(id)
    local tSrc = tonumber(target)
    local ped = GetPlayerPed(tSrc)
    local playerCoords = GetEntityCoords(ped)
    TriggerClientEvent("asgard-adminmenu:client:attach", source, tSrc, toggle)
    TriggerClientEvent("asgard-adminmenu:client:sendCoords", source, playerCoords)
  end
end)


RegisterServerEvent('asgard-adminmenu:server:bringPlayer')
AddEventHandler('asgard-adminmenu:server:bringPlayer', function(target , pos)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    TriggerClientEvent('asgard-adminmenu:client:bringPlayer', tonumber(target),  pos)
    local Execute = SQL("INSERT INTO asgard_admin_log(identifier , log , name , date) VALUES(@identifier , @log , @name , @date)",{["@identifier"]=license,['@log']='Bringed Player | ID: '..target..' | Display Name: '..GetPlayerName(target),["@name"]=GetPlayerName(source) , ['@date'] = os.time()})
  end
end)


RegisterServerEvent('asgard-adminmenu:server:GiveCash')
AddEventHandler('asgard-adminmenu:server:GiveCash', function(reciever, amount)
  local src = source          
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local Player = RSGCore.Functions.GetPlayer(tonumber(reciever))
    Player.Functions.AddMoney('cash', amount)
    TriggerClientEvent("RSGCore:Notify", source, "You gave "..reciever.." "..amount.." $", 'success', 5000)
    TriggerClientEvent("RSGCore:Notify", reciever, "You have been handed "..amount.." $", 'success', 5000)
    addLog('Gave $'..amount.." to " ..GetPlayerName(reciever) )
  end
end)



RegisterNetEvent("asgard-adminmenu:server:DropPlayer")
AddEventHandler("asgard-adminmenu:server:DropPlayer", function(target, pReason)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    DropPlayer(target, "You were kicked | Reason: " ..pReason)
  end
end)

RegisterNetEvent("asgard-adminmenu:server:setFav")
AddEventHandler("asgard-adminmenu:server:setFav", function(data)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local Player = RSGCore.Functions.GetPlayer(source)
    local cid = Player.PlayerData.citizenid
    local result =  SQL("UPDATE asgard_admin SET favorite = @fav WHERE cid = @cid" , { ["@fav"] = json.encode(data),["@cid"] = cid})
  end
end)


AddEventHandler("playerConnecting", function(playerName, setKickReason, deferrals)
  local player = source
  local steamIdentifier
  local steamid  = false
  local license  = false
  local discord  = false
  local xbl      = false
  local liveid   = false
  local ip       = false
  for k,v in pairs(GetPlayerIdentifiers(player))do
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
      steamid = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
      license = v
    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
      xbl  = v
    elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
      ip = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
      discord = v
    elseif string.sub(v, 1, string.len("live:")) == "live:" then
      liveid = v
    end
  end
  deferrals.defer()
  deferrals.update(string.format(" Hello %s. Checking ban status!", playerName))
  local data = SQL('SELECT * FROM asgard_admin_banned WHERE license = @license' , {['@license'] = license})
  if data ~= nil then
    if(data[1] == nil) then
      deferrals.done()
    else
      local timeremaining = (disp_time(tonumber(data[1].length)))
      if(os.time() > tonumber(data[1].length)) then
          deferrals.done()
          SQL('DELETE FROM asgard_admin_banned WHERE license = @license' , {['@license'] = license})
      else
          SendWebhook('__**Banned player\'s connecting**__ \n `'..playerName..'` Is trying to connect the server. \n Ban reason: `'..data[1].reason..'`' )
          deferrals.done('\n [quotus-admin] '..playerName..', you are banned from this server! \n Your ban will be expired in '..timeremaining.days..' days, '..timeremaining.hours..' hours and '..timeremaining.seconds ..' seconds! ('..os.date("%Y-%m-%d %H:%M",data[1].length)..') ')
      end
    end
  end
end)




RSGCore.Functions.CreateCallback('quotus-admin:GetPlayerData', function(source, cb)
  local src = source
  local pData = RSGCore.Functions.GetPlayer(src)
  local cid = pData.PlayerData.citizenid
  local result =  SQL("SELECT * FROM asgard_admin WHERE cid = @cid" , {["@cid"] = cid})
  if(result[1] == nil) then
    SQL("INSERT INTO asgard_admin (cid , favorite) VALUES(@cid , @favorite)",{["@cid"]=cid,['@favorite']=json.encode({})})
  end
  cb(result)
end)
---------------------------------------------------------------------------------------------
RSGCore.Functions.CreateCallback('quotus-admin:GetBannedPlayers', function(source, cb)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local result =  SQL("SELECT * FROM asgard_admin_banned" , {})
    cb(result)
  end
end)
---------------------------------------------------------------------------------------------
RSGCore.Functions.CreateCallback('quotus-admin:GetLogs', function(source, cb)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local result =  SQL("SELECT * FROM asgard_admin_log" , {})
    cb(result)
  end
end)

---------------------------------------------------------------------------------------------
RSGCore.Functions.CreateCallback('quotus-admin:GetServerName', function(source, cb)
  local src = source     
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    cb(GetConvar("sv_hostname"))
  end
end)
----------------------------------------------------------------------------------------
RSGCore.Functions.CreateCallback('quotus-admin:GetOnlinePlayers', function(source, cb)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local players = {}
    for k,v in pairs(GetPlayers()) do
      table.insert(players , {DisplayName =  GetPlayerName(v) , PlayerID = v , Steam = GetPlayerIdentifier(v, steam)})
    end
    cb(players)
  end
end)

RSGCore.Functions.CreateCallback('quotus-admin:CheckPerms', function(source, cb)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    cb(true)
  else
    cb(false)
  end
end)



RegisterNetEvent("quotus-admin:BanPlayer")
AddEventHandler("quotus-admin:BanPlayer", function(target , reason , length)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    if not target then return end
    local TargetPlayer 
    local Admin = RSGCore.Functions.GetPlayer(source)
    TargetPlayer = RSGCore.Functions.GetPlayer(tonumber(target))
    local identifiers = {}
    local name = nil
    local time = nil
    local data = nil
    local steamid  = false
    local license  = false
    local discord  = false
    local xbl      = false
    local liveid   = false
    local ip       = false
    for k,v in pairs(GetPlayerIdentifiers(source))do        
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
          steamid = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
          license = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
          xbl  = v
        elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
          ip = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
          discord = v
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
          liveid = v
        end
      
    end
      identifiers = GetPlayerIdentifiers(target)

      if length == "" then
          length = nil
      end
      if (reason == ' ') then
        reason = 'No reason provided!'
      end
      local nameofshit = GetPlayerName(source)

      timestring=length
      -- length = os.time({year=year,month=month,day=day,hour=hour,min=minute})
      local Execute = SQL("INSERT INTO asgard_admin_banned(steam , reason , length , ip , discord , license, DisplayName) VALUES(@steam , @reason , @length , @ip , @discord, @license , @name)",{["@steam"]=steamid,['@reason']=reason,["@length"]=length,["@ip"]=ip , ['@discord'] = discord , ['license']= license , ['@name'] = GetPlayerName(target)})
      SQL("INSERT INTO asgard_admin_log(identifier , log , name , date) VALUES(@identifier , @log , @name , @date)",{["@identifier"]=license,['@log']='Banned player: '..GetPlayerName(target)..' | Reason: '..reason..' | Banned till: '..os.date("%Y-%m-%d %H:%M",length)..'',["@name"]=nameofshit, ['@date'] = os.time()})
      if TargetPlayer then
        DropPlayer(target, '[quotus-admin] You have banned 🌶 \n reason: '..reason.. '. Your ban will be expired at: '..os.date("%Y-%m-%d %H:%M",length)..'!')
      end
    end
end)





RegisterServerEvent('quotus-admin:GetPlayersForBlips')       
AddEventHandler('quotus-admin:GetPlayersForBlips', function()
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    local players = {}
    for k, v in pairs(GetPlayers()) do
      local targetped = GetPlayerPed(v)
      local ped = GetPlayerServerId(v)
      table.insert(players, {
        id = v,
      })
    end
    TriggerClientEvent('asgard-adminmenu:client:client:ShowBlips', src, players)  
  end
  
end)

RegisterServerEvent('quotus-admin:server:tSay')       
AddEventHandler('quotus-admin:server:tSay', function(message)
  local src = source                                            
  if RSGCore.Functions.HasPermission(src, 'admin') or IsPlayerAceAllowed(src, 'command') then
    TriggerClientEvent('chatMessage', -1, 'Announcement', 4, message)
    addLog('Announced:  '..message)
  end
end)
