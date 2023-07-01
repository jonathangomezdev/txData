fx_version "adamant"

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'


author 'R S K#6739'

description 'R S K#6739 : Cinema'
games {"rdr3"}

client_scripts {
    'client.lua',
    'config.lua'
}

shared_script 'config.lua'

server_scripts {
    'config.lua',
    'server.lua',
}

lua54 'yes'