-- cl_backup.lua
-- Handles the /backup command and sends a request to the server.

local lastCall = 0

RegisterCommand(Config.BackupCommand or 'backup', function()
  local now = GetGameTimer()
  if now - lastCall < (Config.Cooldown * 1000) then
    local remaining = math.floor((Config.Cooldown * 1000 - (now - lastCall)) / 1000)
    TriggerEvent('chat:addMessage', { args = { '^3Backup', ('Please wait %ds before calling backup again.'):format(remaining) } })
    return
  end
  lastCall = now
  TriggerServerEvent('vorp_backup_system:server:requestAssist')
end, false)

RegisterKeyMapping('backup', 'Request police backup', 'keyboard', 'G')