-- sv_backup.lua
-- Receives assist requests and notifies nearby players or spawns AI via client.

RegisterNetEvent('vorp_backup_system:server:requestAssist', function()
  local src = source
  -- basic cooldown gate (server-side)
  local canUse = exports['vorp_backup_system']:CanUseCooldown(src, Config.Cooldown)
  if not canUse then
    TriggerClientEvent('chat:addMessage', src, { args = { '^1Backup', 'Please wait before calling backup again.' } })
    return
  end

  -- Send a simple broadcast back to caller for now (skeleton event)
  TriggerClientEvent('vorp_backup_system:client:assist', src, { count = Config.MaxUnits })
end)