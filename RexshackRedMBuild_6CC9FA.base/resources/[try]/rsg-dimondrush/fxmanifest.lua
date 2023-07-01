fx_version "adamant"
games { "rdr3" }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'Biomimetic#7364' --converted adamdrakon https://github.com/adamdrakon
description 'rsg-crawish'
client_scripts {
    'shared/locale.lua',
    'languages/*.lua',
    'config.lua',
    'client/*.lua'
}

server_scripts {
    'shared/locale.lua',
    'languages/*.lua',
    'config.lua',
    'server/*.lua'
}

dependencies {
    'rsg-core',
}

version '1.0'
