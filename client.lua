local ox_inventory = exports.ox_inventory

exports('fakedocument', function(data, slot)
    print(json.encode(data, {indent=true}))
    print(json.encode(slot, {indent=true}))
    ox_inventory:useItem(data, function(data)
    print('(client): attempting to use '..data.label)
        if data then
            print('(client) using '..data.label)

            local input = lib.inputDialog('Fill out the document', {
                {type = 'input', label = 'Owner', description = 'The owner of this document'},
                {type = 'color', label = 'Ink color', description = 'The color of ink used on the document', default = '#ff0000'}
            })

            print(json.encode(input))

            local inputr, inputg, inputb = lib.math.hextorgb(input[2])
            print('(client) r: '..inputr)
            print('(client) g: '..inputg)
            print('(client) b: '..inputb)

            TriggerServerEvent('rrp-application:setItemwithInput', input, slot)

            ox_inventory:notify({text = '(client): You used '..data.label})
        else
            lib.notify({
                title = 'Item Use Cancelled',
                description = 'You cancelled the input.',
                type = 'error'
            })
        end
    end)
end)

--[[

-- cancel if no input
if not input then return end
print(json.encode(input))

-- convert input to rgb value
local rgb = lib.math.torgba(input[2])

-- TriggerServerEvent

]]--