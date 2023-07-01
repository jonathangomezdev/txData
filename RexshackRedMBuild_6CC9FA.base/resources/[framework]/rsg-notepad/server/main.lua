local RSGCore = exports['rsg-core']:GetCoreObject()
local savedNotes = {}

TriggerEvent('rsg-notepad:server:LoadsNote')

RSGCore.Functions.CreateUseableItem('notepad', function(source)
    local src = source
    TriggerClientEvent('rsg-notepad:client:note', src)
    TriggerClientEvent('rsg-notepad:client:OpenNotepadGui', src)
end)

RegisterNetEvent('rsg-notepad:server:LoadsNote', function()
    TriggerClientEvent('rsg-notepad:client:updateNotes', -1, savedNotes)
end)

RegisterNetEvent('rsg-notepad:server:newNote', function(text, x, y, z)
    local import = {['text'] = '' .. text .. '', ['x'] = x, ['y'] = y, ['z'] = z}
    table.insert(savedNotes, import)
    TriggerEvent('rsg-notepad:server:LoadsNote')
end)

RegisterNetEvent('rsg-notepad:server:updateNote', function(noteID, text)
    savedNotes[noteID]['text'] = text
    TriggerEvent('rsg-notepad:server:LoadsNote')
end)