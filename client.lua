local ox_inventory = exports.ox_inventory

exports('fakedocument', function(data, slot)
    print(json.encode(slot, {indent=true}))
    ox_inventory:useItem(data, function(data)
    print('(client): attempting to use '..data.label)
        if data then
            print('(client) using '..data.label)
            ox_inventory:notify({text = '(client): You used '..data.label})
        end
    end)
end)

--[[

-- possibly need to include ox_lib?
local input = lib.inputDialog('Enter metadata', {
    {type = 'input', label = 'Owner', description = 'The owner of this document'}
    {type = 'color', label = 'Ink color', description = 'The color of ink used on the document'}
})

-- cancel if no input
if not input then return end
print(json.encode(input))

-- convert input to rgb value
local rgb = lib.math.torgba(input[2])

-- TriggerServerEvent

]]--
