--[[ FX Information]]--
fx_version  'cerulean'
game        'gta5'
lua54       'yes'

--[[ Resource Information ]]--
name        'rrp-application'
author      'Dwergje'
version     '0.2.0'
description 'Application resource'


--[[ Manifest ]]--
dependencies {
    '/onesync',
    'ox_lib'
}

shared_scripts {
    '@ox_lib/init.lua'
}

server_scripts {
    'server.lua'
}

client_scripts {
    'client.lua'
}