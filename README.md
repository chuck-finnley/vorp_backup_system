# VORP Police Backup System 🚨

**Author:** Chuck Finnley  
**Framework:** RedM — VORP Core  
**Description:**  
A modular and expandable **police backup and AI dispatch system** for RedM roleplay servers.  
This repo is ready-to-upload on GitHub and structured for easy drop-in testing.

---

## ⚙️ Features
- AI police backup units that respond to player distress calls.  
- Rank-based loadouts with automatic assignment.  
- Simple server-side cooldown & client request flow.  
- Clean separation of `client/`, `server/`, and `config.lua`.  
- Ready fxmanifest for RedM + Lua 5.4.

---

## 🧩 Requirements
- **RedM FXServer** (build 6010+ recommended)
- **VORP Core** (latest stable)
- Optional: weapon/loadout helper resources (adjust calls in `cl_rank_loadouts.lua`).

---

## 🛠️ Installation

1. Download or clone this repository:
   ```bash
   git clone https://github.com/chuck-finnley/vorp_backup_system.git
   ```

2. Drop the folder into your RedM server’s `/resources/` directory:
   ```
   resources/
   └── vorp_backup_system/
   ```

3. Add the following line to your `server.cfg`:
   ```
   ensure vorp_backup_system
   ```

4. Restart your server.

> Test in-game with the **/backup** command (default) or press **G** (keybinding registered).

---

## 🧾 Configuration
Open `config.lua` to tweak:
- `Cooldown` — seconds between backup calls  
- `MaxUnits` — how many backup AI units to spawn  
- `SpawnDistance`, `DespawnDistance` — AI range controls  
- `Loadouts` — ranks → weapons mapping  
- `BackupCommand` — change `/backup` if needed  
- `Debug` — prints helpful info in console/logs

---

## 🧪 Testing Notes
1. Start your RedM server with VORP Core loaded.  
2. Join the server and use `/backup` (or the **G** key).  
3. Watch console/logs for debug messages.  
4. If you’re using a weapons framework, wire it up in `client/cl_rank_loadouts.lua` (marked in comments).

---

## 📜 License
Released under the **MIT License** (see `LICENSE`).

---

## 💬 Support
Open an [Issue](../../issues) with logs/screenshots and steps to reproduce.
