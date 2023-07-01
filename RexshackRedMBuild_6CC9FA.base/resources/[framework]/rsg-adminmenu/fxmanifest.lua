fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

description "RedM Admin Menu (RSG)"
author "Tek#9945 - based from the script of .dough#0001"
version '1.0.0'
repository 'https://github.com/dough-land/'

ui_page 'html/index.html'

shared_scripts {
	'@rsg-core/shared/locale.lua',
	'locales/en.lua',
  'locales/*.lua',
	'shared/config.lua'
}

client_scripts {
  '@menuv/menuv.lua',
  'client/main.lua',
  'client/noclip.lua',
  'client/events.lua',
}

files {
  'html/index.html',
  'html/index.js'
}

server_script 'server/main.lua'