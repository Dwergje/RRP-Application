--[[ FX Information]]--
fx_version  'cerulean'
game        'gta5'


--[[ Resource Information ]]--
name        'rrp-application'
author      'Dwergje'
version     '0.2.0'
repository  ''
description 'Application resource'


--[[ Manifest ]]--
dependencies{
    '/onesync',
    'ox_lib'
}

server_scripts {
    'server.lua'
}

client_scripts {
    'client.lua'
}
