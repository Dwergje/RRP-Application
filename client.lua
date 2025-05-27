local ox_inventory = exports.ox_inventory

exports('fakedocument', function(data, slot)
    
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

            TriggerServerEvent('rrp-application:SetItemwithInput', input, slot)

            lib.notify({
                title = '(client): You used '..data.label,
                type = 'success'
            })
        else
            lib.notify({
                title = 'Item Use cancelled',
                description = 'You cancelled the input.',
                type = 'error'
            })
        end
    end)
end)

