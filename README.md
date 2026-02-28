# ConROC – TBC Anniversary Edition

**Conflict Rotation Optimizer Classic** is a World of Warcraft addon that provides real-time spell suggestions and visual rotation cues to help players optimise their gameplay.

This repository is a fork of the original [ConROC by Vae2009](https://github.com/Vae2009/ConROC), rebuilt and maintained for **The Burning Crusade Classic Anniversary Edition (Interface 20504)**. Development continues with the kind permission of the original author.

> 💡 **Special thanks to Vae2009** for creating ConROC and for generously allowing this project to carry it forward into TBC Classic. The original concept, core framework, and addon architecture are entirely his work.

---

## What's New in This Fork

This fork addresses significant compatibility issues that prevented the original addon from running correctly in TBC Anniversary Edition, including:

- Full removal of Season of Discovery (SoD) content that contaminated the class modules
- Replacement of retail-only API calls with TBC Classic compatible equivalents
- Correct TBC spell IDs and ranks across all supported class modules
- Spell rank flexibility — any rank of a suggested spell now satisfies the rotation requirement
- Automatic talent-based spec detection replacing manual configuration
- Interface version correctly targeting TBC Anniversary (20504)

---

## Supported Classes & Specs

All eight class modules have been fully rebuilt for TBC Classic:

| Class | Supported Specs |
|-------|----------------|
| **Warlock** | Affliction, Demonology, Destruction |
| **Rogue** | Combat, Assassination, Subtlety |
| **Paladin** | Holy, Protection, Retribution |
| **Hunter** | Beast Mastery, Marksmanship, Survival |
| **Priest** | Holy, Discipline, Shadow |
| **Druid** | Balance, Feral (Cat & Bear), Restoration |
| **Shaman** | Elemental, Enhancement, Restoration |
| **Warrior** | Arms, Fury, Protection |

---

## Installation

1. Download the latest release from the [Releases](../../releases) page
2. Extract the zip file
3. Copy **all** extracted addon folders into your WoW addons directory:
   ```
   World of Warcraft\_classic_era_\Interface\AddOns\
   ```
4. Launch WoW and enable the addons in the **AddOns** menu on the character select screen
5. Log in — ConROC will automatically detect your spec and begin suggesting rotations

> ⚠️ Make sure to enable **all** ConROC folders (the core addon plus your class module). Only the module for your class is required alongside the core.

---

## How to Use

Once in game, ConROC displays a visual indicator showing your next recommended ability. The suggestion updates in real time based on your current buffs, debuffs, cooldowns, and talent spec.

**Slash Commands:**

| Command | Description |
|---------|-------------|
| `/conroc` | Toggle the addon on/off |
| `/conroc menu` | Open the spell menu configuration |
| `/ConROCPT` | Print your current talent tree and IDs (for debugging) |

---

## Reporting Issues

Found a bug or have a suggestion? Please open an [Issue](../../issues) and include:

- Your **class and spec**
- What ConROC **suggested** vs what the **correct action** was
- Your addon version (shown in the release zip filename)
- Any error output from **BugSack** if applicable

The more detail you provide, the faster it can be investigated.

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a full history of changes.

---

## Credits

| Contributor | Role |
|-------------|------|
| [Vae2009](https://github.com/Vae2009) | Original creator of ConROC — core framework, addon architecture, original class modules |
| This fork | TBC Anniversary Edition compatibility rebuild, class module reconstruction, bug fixes |

---

## License

This project follows the MIT licence established by the original ConROC project. Original copyright by Vae2009.
