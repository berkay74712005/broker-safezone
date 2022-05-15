fx_version 'cerulean'

lua54 'yes'

author 'broker#7120'
description 'broker safezones'
game 'gta5'

version '1.0.0'

escrow_ignore {
    'config.lua',
    'client.lua',
    'server.lua'
}

ui_page {
    'html/box.html'
}

files {
    'html/box.html',
    'html/js/main.js',
    'html/css/style.css'
}

shared_scripts {
    'config.lua'
}

client_scripts {
    '@PolyZone/client.lua',
    'client.lua'
}

server_scripts {
    'server.lua'
}
