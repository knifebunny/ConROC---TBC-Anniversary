# Changelog

All notable changes to ConROC – TBC Anniversary Edition are documented here.

This project began as a fork of [ConROC by Vae2009](https://github.com/Vae2009/ConROC) and was rebuilt from the ground up for TBC Classic Anniversary (Interface 20504).

---

## [2.3.0] – Auto AoE Detection

### Added

- **Auto AoE Detection** – Automatically switches between Single Target and AoE rotation when a configurable number of enemies are detected within range. Configurable via `/ConROC`: enable/disable toggle, enemy count threshold (2–6, default 3), and detection range (Melee, 10, 20, 25, or 30 yards). Manual Single/AoE button clicks override automatic switching for 5 seconds.

### Fixed

- **Nameplate alpha restoration** – `nameplateNotSelectedAlpha` was not being saved before combat forced nameplates on, causing it to be incorrectly restored to the `nameplateSelectedAlpha` value on combat end. Both CVars are now saved and restored independently.

---

## [2.2.0] – Mage Module

### Added

- **Mage Module** – New class module for Arcane, Fire, and Frost specs, rebuilt from the ground up for TBC Classic Anniversary. The original module was written for Classic Era / Season of Discovery and required a full overhaul

### Mage Module Details

- Full removal of Season of Discovery content (runes, SoD-specific spell IDs and checkboxes)
- TBC-correct spell IDs and all missing TBC ranks added (Fireball R12–13, Frostbolt R12–13, Arcane Missiles R8–9, Arcane Explosion R7–8, and more)
- TBC-only abilities added: Icy Veins, Dragon's Breath, Spellsteal, Summon Water Elemental
- Talent tree positions updated for TBC's 21-talent tree layout (was using Classic Era 16-talent positions)
- Icy Veins added to Cooldowns panel; Dragon's Breath added to AoEs panel in the spellmenu
- Armors panel updated: MoltenArmor (SoD rune) removed; Ice Armor and Mage Armor remain
- Filler panel updated: FrostfireBolt (SoD rune) removed; Fireball, Frostbolt, and Arcane Missiles remain

### Fixed (Mage Module)

- Fireball Rank 8 and Rank 9 spell IDs were swapped in the original `UpdateSpellID` logic — corrected
- `ColdSnap` and `IceBlock` IDs were inverted in the original module (`ColdSnap = 12472` was actually Icy Veins; `IceBlock = 11958` was actually Cold Snap) — all three abilities now use the correct TBC spell IDs
- Unconditional Fire Blast suggestion at the top of the rotation (ran before any spec check, effectively forcing Fire Blast as the first suggestion for all specs) — removed; Fire Blast is now correctly gated to execute range or forced melee situations
- Ice Block emergency suggestion now triggers at ≤10% player health in the Defense module

---

## [2.1.0] – First CurseForge Release

This is the first fully functional release published to CurseForge. Previous versions were available via GitHub only and had outstanding issues preventing correct installation and operation.

### Changed
- Interface version updated to `20505` (TBC Anniversary 2.5.5) across all modules

### Fixed
- `LibRangeCheck-3.0` now correctly loads by including it in the TOC — resolves the `Cannot find a library instance of "LibRangeCheck-3.0"` error on startup
- Removed `Bindings.xml` from the TOC — it is auto-discovered by the WoW client and listing it caused an `Unrecognized XML: Binding` warning by loading it as a UI XML file

---

## [2.0.2] – Hotfix Release

### Fixed
- Additional compatibility fixes across class modules following community testing feedback
- Resolved edge cases with spell rank matching in specific talent configurations

---

## [2.0.1] – Stability Release

### Fixed
- Spell rank flexibility hotfix applied to multiple class modules
- Addressed BugSack errors reported during live testing

---

## [2.0.0] – TBC Anniversary Edition – Full Rebuild

This release represents a complete reconstruction of ConROC for TBC Classic Anniversary Edition. All eight class modules were rebuilt from scratch.

### Core Addon

- **Interface version** updated to `20504` (TBC Anniversary)
- **API compatibility**: Replaced retail-only API calls with TBC Classic equivalents; button state now uses direct attribute access rather than `GetActionInfo()` and related retail functions
- **Spell rank flexibility**: Core now supports name-based spell matching as a fallback to exact spell ID matching — players using lower ranks for mana efficiency will no longer have the rotation stall
- **Removed**: All Season of Discovery (SoD) contamination from core files

---

### Warlock Module

- Full removal of SoD-specific spells and talent references
- Correct TBC spell IDs implemented for Affliction, Demonology, and Destruction specs
- Automatic talent detection for spec identification
- Curse selection logic properly respects player checkbox preferences
- Improved pet management detection
- Corrected debuff tracking for DoT uptime suggestions

---

### Rogue Module

- Full removal of SoD content
- TBC-correct spell IDs for Combat, Assassination, and Subtlety
- Automatic spec detection via talent tree
- Correct combo point logic and finisher prioritisation
- Proper poison and opener ability handling

---

### Paladin Module

- Full removal of SoD content
- TBC-correct spell IDs for Holy, Protection, and Retribution
- Automatic spec detection
- Seal–Judge–Seal rotation logic correctly implemented for Retribution
- Consecration and threat generation priorities for Protection
- Holy spell suggestions respect mana thresholds

---

### Hunter Module

- Full removal of SoD content
- TBC-correct spell IDs for Beast Mastery, Marksmanship, and Survival
- Automatic spec detection
- Pet management warnings (unsummoned pet, dead pet)
- Aspect management integrated into rotation suggestions
- Trap and shot rotation priority corrected for each spec

---

### Priest Module

- Full removal of SoD content including Season of Discovery abilities
- TBC-correct spell IDs for Holy, Discipline, and Shadow
- Automatic spec detection
- Shadow: DoT uptime tracking (Shadow Word: Pain, Vampiric Touch, Devouring Plague), Mind Blast and Mind Flay priority correctly sequenced
- Holy/Discipline: Healing suggestions respect current target health thresholds

---

### Druid Module

- Full removal of SoD content
- TBC-correct spell IDs for Balance, Feral (Cat and Bear), and Restoration
- Automatic spec detection distinguishes Cat from Bear based on talents
- Feral Cat: correct combo point and energy management logic
- Feral Bear: threat generation prioritisation
- Balance: DoT and Eclipse cycle suggestions
- Restoration: healing priority respects HoT uptime

---

### Shaman Module

- Full removal of SoD content
- TBC-correct spell IDs for Elemental, Enhancement, and Restoration
- Automatic spec detection
- Weapon imbue warnings for missing weapon buffs (Windfury, Flametongue etc.)
- Totem suggestions integrated per spec
- Enhancement: melee priority and shock rotation sequenced correctly

---

### Warrior Module

- Full removal of SoD content
- TBC-correct spell IDs for Arms, Fury, and Protection
- Automatic spec detection
- Protection: Devastate correctly implemented as primary threat ability
- Fury: Heroic Strike and Bloodthirst priority sequencing
- Arms: Mortal Strike and execute threshold handling
- Rage-aware suggestions prevent wasted ability usage

---

## [Pre-2.0] – Original ConROC by Vae2009

All versions prior to 2.0.0 are the work of the original author. See the [original repository](https://github.com/Vae2009/ConROC) and its releases for that history.
