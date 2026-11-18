# mod-temucraft-mogushan-vaults

Boss and trash scripts for Mogu'shan Vaults (Mists of Pandaria raid): the Stone Guard, Feng the Accursed, Gara'jal the Spiritbinder, the Spirit Kings, Elegon and the Will of the Emperor.

The scripts are the LegionCore 7.3.5 scripts for Mogu'shan Vaults (map 1008), ported to AzerothCore 3.3.5a. LegionCore is a
TrinityCore-based core under the GNU GPL v2; the ported files keep that licence. The creatures, objects, texts and loot
come from [mod-temucraft-world](https://github.com/Temucraft/mod-temucraft-world); this module adds the boss and trash behaviour and sets the script names on them.

## What to expect

- The encounter logic is LegionCore's, built against AzerothCore's script API.
- Difficulties are the 3.3.5 ones: dungeons normal / heroic, raids 10 / 25 normal and heroic. Looking-for-raid,
  flexible and mythic checks never match.
- Some abilities need things the 3.3.5 core or client doesn't have and do nothing or less than intended:
  spell area triggers (pools, walls, beams), the encounter frame and scenario criteria, personal visibility, spell
  effects past the third, and the cast-interrupted hook. Each spot is marked in the source with a comment.
- `TemucraftTCCompat.h` and `TemucraftLegionCompat.h` hold the TrinityCore / LegionCore names the scripts use that
  AzerothCore doesn't have (generic event ids, difficulty ids, roles, a few helpers).

## Install

1. Install [mod-temucraft-world](https://github.com/Temucraft/mod-temucraft-world) first (it holds the spawns this module scripts).
2. Put this folder in `modules/`, re-run CMake and build.
3. The SQL in `data/sql/` is applied by the worldserver on its next start.

## What it changes

| Database | Table | What |
|---|---|---|
| world | `instance_template` | script name of the instance |
| world | `creature_template`, `gameobject_template` | `ScriptName` of the scripted creatures and objects |
| world | `spell_script_names`, `areatrigger_scripts` | the spell and area trigger scripts |

## Works with other modules

- Needs [mod-temucraft-world](https://github.com/Temucraft/mod-temucraft-world) (spawns, creatures, texts, loot). Nothing else.

Part of the Temucraft modules for AzerothCore 3.3.5a.
