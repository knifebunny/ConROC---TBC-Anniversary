# Changelog

All notable changes to ConROC – TBC Anniversary Edition are documented here.

This project began as a fork of [ConROC by Vae2009](https://github.com/Vae2009/ConROC) and was rebuilt from the ground up for TBC Classic Anniversary (Interface 20504).

---

## [2.5.1] – Warlock Demonic Sacrifice

### Added

- **Warlock – Demonic Sacrifice rotation support** – Demonic Sacrifice (Demonology talent, tier 5) was defined in the spell IDs but never used in the rotation. Added a "Sacrifice" checkbox section to the spellmenu below the Demons radio group. When enabled, the addon tracks all four sacrifice buffs (Burning Wish, Fel Stamina, Touch of Shadow, Fel Energy) and manages the summon-then-sacrifice cycle automatically: summons the selected pet when no sacrifice buff is active, suggests Demonic Sacrifice once the pet is out, and skips pet summoning while the buff persists. Pet-dependent abilities (Dark Pact, Spell Lock, Health Funnel, Soul Link) are naturally suppressed when no pet is present. Disabled by default.

---

## [2.5.0] – Warlock Module Overhaul

### Fixed

- **Warlock – Incubus summoning broken** – `SummonIncubus` was never declared via `AbilityReady()` and the summon condition referenced the undefined variable `sumIncRDY`. Added the missing ability declaration and corrected the variable name to `_SummonIncubus_RDY`. Incubus summoning now works correctly when selected in the Demons menu.
- **Warlock – Fillers never fired in TBC rotation** – The non-SoD Shadow Bolt and Searing Pain filler checks referenced `ConROC_SM_Spell_ShadowBolt` and `ConROC_SM_Spell_SearingPain`, which are globals that do not exist. The spellmenu defines them as `ConROC_SM_Filler_*`. Both references corrected; the TBC rotation no longer always falls through to the Waiting Spell icon.

### Added

- **Warlock – Incinerate filler in TBC rotation** – Incinerate (TBC spell IDs 29722/32231) was missing from both the spell ID table and the non-SoD rotation. Added to `ids.Ability`, `ids.Rank`, and `UpdateSpellID()`. The non-SoD rotation now uses the TBC spell instead of the SoD rune version, and the Incinerate filler option between Shadow Bolt and Searing Pain now works correctly in both game modes.
- **Warlock – PvE Conflagrate** – Conflagrate was only suggested in the PvP section. Destruction warlocks in PvE now have Conflagrate suggested immediately after Immolate is applied, consuming the Immolate debuff as intended by the talent design.
- **Warlock – Seed of Corruption** – Seed of Corruption (spell ID 27243) was completely absent from the module. Added to `ids.Ability`, the AoE rotation (fires alongside Rain of Fire when AoE mode is active with 3+ enemies in range), and the AoEs spellmenu section with a dedicated checkbox. Enabled by default.
- **Warlock – Dark Pact mana recovery** – Dark Pact was defined in the spell IDs but never used. Added to the mana recovery section (after Life Tap in priority) with a checkbox in the Mana spellmenu group. Triggers when a pet is active and mana falls below 30%, providing an alternative to Life Tap that does not cost player health. Disabled by default.
- **Warlock – Amplify Curse guard** – Amplify Curse was suggested for any hostile NPC target regardless of whether a curse actually needed to be applied. The condition now checks that at least one selected curse is not already active on the target before spending the Amplify Curse cooldown.

---

## [2.4.1] – Dominos ActionButton_CalculateAction Fix

### Fixed

- **Dominos – `ActionButton_CalculateAction` nil error** – `FetchDominos`, `DefFetchDominos`, and the ElvUI/ButtonForge slot lookup all called `ActionButton_CalculateAction` without a nil guard. On TBC clients where this API function does not exist, enabling the rotation with Dominos loaded caused a hard error. The call is now guarded identically to `ActionButton_GetPagedID`, falling through to `button:GetAttribute('action')` when neither function is available.

---

## [2.4.0] – Hunter Module Overhaul & Dominos Fix

### Fixed

- **Hunter – AOE rotation priority** – MultiShot and Volley now fire immediately after cooldowns (Hunter's Mark → Bestial Wrath → Rapid Fire → MultiShot → Volley → Arcane Shot filler) when AoE mode is active. Previously they were placed after Aimed Shot and all stings, making the AoE rotation nearly identical to single-target. Stings and Aimed Shot are skipped in AoE mode as they are single-target only.
- **Hunter – Volley dead code** – Volley referenced a nil UI checkbox (`ConROC_SM_Ability_Volley`) and could never be suggested. A dedicated "AoEs" spellmenu section (matching Mage/Warlock) now provides separate MultiShot and Volley checkboxes (`AoE_MultiShot`, `AoE_Volley`) for use in AoE mode.
- **Hunter – Arcane Shot mana gate** – Arcane Shot was blocked below 50% mana, causing the rotation to suggest nothing but Auto Shot for the remainder of a fight. The redundant mana check was removed; mana sufficiency is already enforced by `IsSpellUsable()` inside `AbilityReady()`.
- **Dominos – `ActionButton_GetPagedID` nil error** – `FetchDominos` and `DefFetchDominos` called `ActionButton_GetPagedID` unconditionally, which does not exist in TBC Classic and caused a hard error on load for any player using Dominos. The call is now guarded with a nil check; `ActionButton_CalculateAction` is used as the fallback, matching the existing intent of the code.

### Added

- **Hunter – Steady Shot** – Steady Shot (spell ID 34120) was missing from the module entirely. Added as the primary single-target filler in the ranged rotation (before Arcane Shot), with a checkbox in the Abilities spellmenu section. Enabled by default for Ranged role; disabled for Melee role.

---

## [2.3.2] – Hotfix: Nameplate Nil Error on Combat Entry

### Fixed

- **Nameplate combat error** – Entering combat caused `helper.lua:125: attempt to index field` when `ConROC.db.profile` nameplate alpha values were not yet configured. `forceNameplates()` now guards against a nil DB/profile and skips `SetCVar` calls when the profile keys are absent. `restoreNameplates()` also guards against nil defaults to prevent errors when leaving combat if `forceNameplates` never completed.

---

## [2.3.0] – Auto AoE Detection

### Added

- **Auto AoE Detection** – Automatically switches between Single Target and AoE rotation when a configurable number of enemies are detected within range. Configurable via `/ConROC`: enable/disable toggle, enemy count threshold (2–6, default 3), and detection range (Melee, 10, 20, 25, or 30 yards). Manual Single/AoE button clicks override automatic switching for 5 seconds.

### Fixed

- **Nameplate alpha restoration** – `nameplateNotSelectedAlpha` was not being saved before combat forced nameplates on, causing it to be incorrectly restored to the `nameplateSelectedAlpha` value on combat end. Both CVars are now saved and restored independently.

---

## [2.3.1] – Hotfix: CurseForge Load Order

### Fixed

- **CurseForge install error** – Players installing ConROC without other Ace3-embedding addons (ElvUI, Bartender4, etc.) received `helper.lua:1: attempt to index global 'ConROC' (a nil value)` on every load. The bundled Ace3 libraries (AceGUI, AceConfig, AceConsole, AceEvent, AceTimer, AceDB, AceDBOptions) were never loaded because `Libs\Libs.xml` was missing from the TOC — only four libraries were listed individually. `core.lua` called `LibStub('AceGUI-3.0')` on its first line, which failed on clean installs and crashed the file before `ConROC` was created.
- Fixed by replacing the individual library TOC entries with `Libs\Libs.xml`, which correctly loads the full Ace3 suite.
- `Locale\locale.xml` load order also corrected — moved to after `core.lua` in the TOC and removed from `Libs\Libs.xml` to avoid loading locale before the `ConROC` global exists.

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
