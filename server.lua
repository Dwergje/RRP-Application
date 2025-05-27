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


--[[
-- inv: table, string, or number
-- search: 'slots' or 'count'
-- item: table or string
-- ox_inventory:Search(inv, search, item)

local document = ox_inventory:Search(source, slots, ??item.name??)
for k, v in pairs(document) do
    print('\n___________'..'\n index '..k)
    print(v.name, 'slot: '..v.slot, 'metadata: '..json.encode(v.metadata))
    document = v
    break
end

document.metadata.type = 'userInput.Owner'
ox_inventory:SetMetadata(source, document.slot, document.metadata)
print(('modified %sx documents in slot %s with new metadata'):format(document.count, document.slot))


]]--
