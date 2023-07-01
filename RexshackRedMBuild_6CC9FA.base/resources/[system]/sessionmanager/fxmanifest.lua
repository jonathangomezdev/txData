-- This resource is part of the default Cfx.re asset pack (cfx-server-data)
-- Altering or recreating for local use only is strongly discouraged.

version '1.0.0'
author 'Cfx.re <root@cfx.re>'
description 'Handles the "host lock" for non-OneSync servers. Do not disable.'
repository 'https://github.com/citizenfx/cfx-server-data'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
fx_version 'cerulean'
games { 'rdr3' }

server_script 'server/host_lock.lua'
client_script 'client/empty.lua'