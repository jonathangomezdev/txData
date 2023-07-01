fx_version "cerulean"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
--game "rdr3"
games { "rdr3" }

name "qb-WooshPD"
description "A QB-Core script designed to allow police job, on duty players to interact with locals/NPC's."

lua54 'yes'

escrow_ignore {
    'core/shared/sh_config.lua',
}

client_scripts {
    "core/client/*.lua",
}

server_scripts {
    "core/server/*.lua",
}

shared_scripts {
    "core/shared/*.lua",
    '@ox_lib/init.lua', --YOU HAVE TO UNCOMMENT THIS IF YOU WANT TO USE OX LIB MENU.
}
dependency '/assetpacks'