fx_version 'cerulean'
games { 'rdr3' }

author 'Chuck Finnley'
description 'VORP Police Backup System'
version '0.1.0'

lua54 'yes'

client_scripts {
    'config.lua',
    'client/cl_rank_loadouts.lua',
    'client/cl_ai_logic.lua',
    'client/cl_backup.lua'
}

server_scripts {
    'config.lua',
    'server/sv_utils.lua',
    'server/sv_backup.lua'
}

-- Dependencies (uncomment if needed)
-- dependency 'vorp_core'