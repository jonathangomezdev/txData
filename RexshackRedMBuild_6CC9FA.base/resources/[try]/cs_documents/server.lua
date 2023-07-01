local RSGCore = exports['rsg-core']:GetCoreObject()

RSGCore.Functions.CreateUseableItem("documents", function(source)
    TriggerClientEvent("hhfw:documents:open",source)
end)

RSGCore.Functions.CreateCallback('documents:submitDocument', function(source, cb, data)
    local xPlayer = RSGCore.Functions.GetPlayer(source)
    local db_form = nil;
    local _data = data;
    MySQL.Async.insert("INSERT INTO user_documents (owner, data) VALUES (@owner, @data)", {['@owner'] = xPlayer.PlayerData.citizenid, ['@data'] = json.encode(data)}, function(id)
        if id ~= nil then
            MySQL.Async.fetchAll('SELECT * FROM user_documents where id = @id', {['@id']=id}, function (result)
                if(result[1] ~= nil) then
                    db_form = result[1]
                    db_form.data = json.decode(result[1].data)
                    cb(db_form)
                end
            end)
        else
            cb(db_form)
        end
    end)
end)

RSGCore.Functions.CreateCallback('documents:deleteDocument', function(source, cb, id)
    local db_document = nil;
    local xPlayer = RSGCore.Functions.GetPlayer(source)
    MySQL.Async.execute('DELETE FROM user_documents WHERE id = @id AND owner = @owner',
    {
        ['@id']  = id,
        ['@owner'] = xPlayer.PlayerData.citizenid
    }, function(rowsChanged)

        if rowsChanged >= 1 then
            TriggerClientEvent('RSGCore:Notify', source, 'Document was deleted..', 'success', 3000)
            cb(true)
        else
            TriggerClientEvent('RSGCore:Notify', source, 'Document delete failed..', 'success', 3000)
            cb(false)
        end
    end)
end)




RSGCore.Functions.CreateCallback('documents:getPlayerDocuments', function(source, cb)
    local xPlayer = RSGCore.Functions.GetPlayer(source)
    local forms = {}
    if xPlayer ~= nil then
        MySQL.Async.fetchAll("SELECT * FROM user_documents WHERE owner = @owner", {['@owner'] = xPlayer.PlayerData.citizenid}, function(result)
           if #result > 0 then
                for i=1, #result, 1 do
                    local tmp_result = result[i]
                    tmp_result.data = json.decode(result[i].data)
                    table.insert(forms, tmp_result)
                --print(dump(tmp_result))
                end
                cb(forms)
            end
        end)
    end
end)


RSGCore.Functions.CreateCallback('documents:getPlayerDetails', function(source, cb)
    local xPlayer = RSGCore.Functions.GetPlayer(source)
    cb_data = {}
    cb_data.bank = xPlayer.PlayerData.money["bank"]
    cb_data.dateofbirth = xPlayer.PlayerData.charinfo.birthdate
    cb_data.firstname = xPlayer.PlayerData.charinfo.firstname
    cb_data.lastname = xPlayer.PlayerData.charinfo.lastname
    cb(cb_data)
end)


RegisterServerEvent('documents:ShowToPlayer')
AddEventHandler('documents:ShowToPlayer', function(targetID, aForm)
    TriggerClientEvent('documents:viewDocument', targetID, aForm)
end)

RegisterServerEvent('documents:CopyToPlayer')
AddEventHandler('documents:CopyToPlayer', function(targetID, aForm)
    local _source   = source
    local _targetid = RSGCore.Functions.GetPlayer(targetID).PlayerData.source
    local targetxPlayer = RSGCore.Functions.GetPlayer(_targetid)
    local _aForm    = aForm
    MySQL.Async.insert("INSERT INTO user_documents (owner, data) VALUES (@owner, @data)", {['@owner'] = targetxPlayer.PlayerData.citizenid, ['@data'] = json.encode(aForm)}, function(id)
        if id ~= nil then
            MySQL.Async.fetchAll('SELECT * FROM user_documents where id = @id', {['@id']=id}, function (result)
                --print("Trying to dump: " .. dump(result))
                if(result[1] ~= nil) then
                    db_form = result[1]
                    db_form.data = json.decode(result[1].data)
                    TriggerClientEvent('documents:copyForm', _targetid, db_form)
                    TriggerClientEvent('RSGCore:Notify', _targetid, 'You received a form copy from a player', 'success', 3000)
                    TriggerClientEvent('RSGCore:Notify', _source, 'Form copied to player', 'success', 3000)
                else
                    TriggerClientEvent('RSGCore:Notify', _source, 'Could not copy form to player', 'error', 3000)
                end
            end)
        else
            TriggerClientEvent('RSGCore:Notify', _source, 'Could not copy form to player', 'error', 3000)
        end
    end)
end)

