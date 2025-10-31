-- cl_rank_loadouts.lua
-- Applies rank-based loadouts to AI or players when needed.

local function giveLoadoutToPed(ped, rank)
  local loadout = Config.Loadouts[rank]
  if not loadout then return end
  for _, weapon in ipairs(loadout) do
    -- GiveWeaponToPed is GTA V native; for RedM use appropriate equip function/mapping
    -- This is a placeholder to avoid runtime errors in a skeleton.
    -- exports['vorp_weapons']:GiveWeapon(ped, weapon) -- example if using a weapons resource
  end
end

exports('GiveLoadoutToPed', giveLoadoutToPed)