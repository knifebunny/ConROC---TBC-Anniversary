# Changelog

All notable changes to ConROC – TBC Anniversary Edition are documented here.

This project began as a fork of [ConROC by Vae2009](https://github.com/Vae2009/ConROC) and was rebuilt from the ground up for TBC Classic Anniversary (Interface 20504).

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
