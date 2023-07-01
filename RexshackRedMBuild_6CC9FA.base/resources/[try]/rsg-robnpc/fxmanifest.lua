games { 'rdr3' }
fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'


description 'rsg-robnpc'

shared_scripts {
    'config.lua',
}
client_script {
    'client.lua',
}

server_script {
    'server.lua'
}
dependencies {
    'rsg-core',
}

lua54 'yes'
