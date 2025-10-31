-- VORP Backup System - Config

Config = {}

-- How long (in seconds) before backup command can be used again
Config.Cooldown = 60

-- Maximum number of AI backup units that can spawn
Config.MaxUnits = 3

-- Distances (in meters) for spawn and despawn logic
Config.SpawnDistance = 60.0
Config.DespawnDistance = 120.0

-- Rank-based loadouts
Config.Loadouts = {
  sheriff = { 'WEAPON_REVOLVER_CATTLEMAN', 'WEAPON_REPEATER_CARBINE' },
  marshal = { 'WEAPON_PISTOL_MAUSER', 'WEAPON_REPEATER_WINCHESTER' },
  deputy  = { 'WEAPON_REVOLVER_SCHOFIELD' }
}

-- Command to request backup
Config.BackupCommand = 'backup' -- uses /backup

-- Debug logs toggle
Config.Debug = false