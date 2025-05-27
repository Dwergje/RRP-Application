local ox_inventory = exports.ox_inventory

exports('fakedocument', function(event, item, inventory, slot, data)
    if event == 'usingItem' then
        print('Using '..item.label)

    elseif event == 'usedItem' then
        print('Used '..item.label)

    else
        print('Item use invalid -'..item.label)

    end
end)

RegisterNetEvent('rrp-application:SetItemwithInput')
AddEventHandler('rrp-application:SetItemwithInput', function(userInput, itemSlot)
    -- print(json.encode(source))

    -- set metadata on item
    local document = ox_inventory:Search(source, 'slots', itemSlot.name)
    for k, v in pairs(document) do
        -- print('\n___________'..'\n index '..k)
        -- print(v.name, 'slot: '..v.slot, 'metadata: '..json.encode(v.metadata))
        document = v
        break
    end

    document.metadata.type = userInput[1]
    document.metadata.description = 'Written with '..userInput[2]
    ox_inventory:SetMetadata(source, document.slot, document.metadata)

    -- local checkDocument = ox_inventory:Search(source, 'slots', itemSlot.name)
    -- print(json.encode(checkDocument), {indent=true})
end)