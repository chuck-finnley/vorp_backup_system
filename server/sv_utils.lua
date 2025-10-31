-- sv_utils.lua
-- Utility helpers for the backup system.

local Cooldowns = {}

local function canUse(playerId, cd)
  local now = os.time()
  if not Cooldowns[playerId] or now - Cooldowns[playerId] >= cd then
    Cooldowns[playerId] = now
    return true
  end
  return false
end

exports('CanUseCooldown', canUse)