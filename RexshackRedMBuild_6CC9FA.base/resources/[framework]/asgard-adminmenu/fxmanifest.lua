fx_version 'cerulean'
games { 'rdr3' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'



ui_page "ui-build/index.html"

files {
  "ui-build/*",
}

client_scripts {
  'config.lua',
  'client/cl_*.lua',
}

server_scripts {
  'config.lua',
  'server/sv_*.lua',
}

