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
