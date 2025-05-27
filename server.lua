local ox_inventory = exports.ox_inventory

exports('fakedocument', function(event, item, inventory, slot, data)
    if event == 'usingItem' then
        print('(Server): Using '..item.label)

    elseif event == 'usedItem' then
        print('(Server): Used '..item.label)

    else
        print('(Server): Item use invalid -'..item.label)
    end

end)
