# Changelog

All notable changes to ConROC – TBC Anniversary Edition are documented here.

This project began as a fork of [ConROC by Vae2009](https://github.com/Vae2009/ConROC) and was rebuilt from the ground up for TBC Classic Anniversary (Interface 20504).

---

## [2.11.0] – TBC Talent Tree Indices for All Remaining Classes

### Fixed

- **Hunter, Paladin, Priest, Rogue, Warlock, Warrior – All talent trees used Classic Era indices** – Every remaining class module was using Classic Era `GetTalentInfo(tab, index)` positions instead of TBC. Talent checks were silently reading the wrong talent, and TBC-exclusive talents (41-point capstones, new mid-tree additions) were completely absent. Rebuilt all talent tables from scratch against the TBC 2.4.3 talent tree layout:
  - **Hunter** – Beast Mastery: 16→21 talents, Marksmanship: 14→20, Survival: 16→23. Added: The Beast Within, Serpent's Swiftness, Focused Fire, Silencing Shot, Readiness, Expose Weakness, and more. Removed Classic-only Improved Eyes of the Beast.
  - **Paladin** – Holy: 14→20 talents, Protection: 15→21, Retribution: 15→22. Added: Divine Illumination, Avenger's Shield, Crusader Strike, Sanctified Seals, Fanaticism, and more. Consecration removed as talent (became trainable in TBC).
  - **Priest** – Discipline: 15→22 talents, Holy: 16→21, Shadow: 16→21. Added: Pain Suppression, Circle of Healing, Vampiric Touch, Misery, Empowered Healing, and more.
  - **Rogue** – Assassination: 15→21 talents, Combat: 19→24, Subtlety: 17→22. Added: Mutilate, Surprise Attacks, Shadowstep, Cheat Death, Combat Potency, and more. Improved Backstab renamed to Puncturing Wounds; Improved Slice and Dice moved from Assassination to Combat.
  - **Warlock** – Affliction: 17→21 talents, Demonology: 17→22, Destruction: 16→21. Added: Unstable Affliction, Summon Felguard, Shadowfury, Shadow and Flame, Contagion, and more. Removed Classic-only Improved Drain Mana and Improved Drain Life.
  - **Warrior** – Arms: 18→23 talents, Fury: 17→21, Protection: 17→22. Added: Endless Rage, Rampage, Devastate, Second Wind, Blood Frenzy, and more. Sweeping Strikes moved from Arms to Fury; Tactical Mastery moved from Arms to Protection; Death Wish moved from Fury to Arms.
- **Warrior – Death Wish talent check used wrong tree** – `TalentChosen(Spec.Fury, Fury_Talent.DeathWish)` referenced the Fury tree, but Death Wish moved to the Arms tree in TBC. The Recklessness cooldown coordination logic always evaluated to "no Death Wish talent" and fired Recklessness independently. Fixed to `TalentChosen(Spec.Arms, Arms_Talent.DeathWish)`.

### Notes

- These changes fix the talent index tables only. Full module overhauls (rotation logic, TBC spell rank coverage, spellmenu additions, SoD cleanup) for these six classes are planned for future releases.
- All talent indices sourced from TBC 2.4.3 game data. Run `/script ConROC:PopulateTalentIDs()` in-game on each class to verify.

---

## [2.10.0] – Shaman Module Overhaul

### Fixed

- **Shaman – Windfury Weapon Rank 5 not recognised (user-reported)** – `ids.Rank` only defined up to `WindfuryWeaponRank4 = 16362` (level 60 Classic). The TBC rank (`WindfuryWeaponRank5 = 25505`) was missing entirely. `UpdateSpellID()` never checked for it, so `ids.Ability.WindfuryWeapon` always resolved to the Rank 4 spell ID. The imbue system then cast Rank 4, detected the Rank 4 enchant ID (1669) instead of the expected Rank 5 enchant ID (2636), and continuously prompted "Put Windfury Weapon on your mainhand weapon". Added the Rank 5 definition and prioritised it in the `IsSpellKnown` chain.
- **Shaman – Nearly all spells capped at Classic-era ranks (level 56-60)** – The entire `ids.Rank` table and `UpdateSpellID()` function only covered spell ranks trainable up to level 60. At level 70, the addon was suggesting Rank 10 Lightning Bolt instead of Rank 12, Rank 4 Chain Lightning instead of Rank 5, Rank 7 Earth Shock instead of Rank 8, etc. Added approximately 30 missing TBC-level ranks across all three trees: Chain Lightning R5, Earth Shock R8, Lightning Bolt R11-12, Flame Shock R7, Frost Shock R5, Fire Nova Totem R6-7, Stoneclaw Totem R7, Flametongue Weapon R7, Frostbrand Weapon R6, Lightning Shield R8-9, Searing Totem R7, Stoneskin Totem R7-8, Strength of Earth R6, Grace of Air R3, Windfury Totem R4, Chain Heal R4-5, Healing Wave R11-12, Lesser Healing Wave R7, Healing Stream Totem R6, Mana Spring Totem R5, Water Shield R2. All rank chains in `UpdateSpellID()` extended to TBC maximum.
- **Shaman – Maelstrom Weapon stacks never detected (SoD)** – `_MaelstromWeapon_COUNT` was read via `ConROC:TargetAura(Debuff.MaelstromWeapon)`, which checks the *target* for harmful auras. Maelstrom Weapon is a buff on the *player*. The function always returned 0 stacks, so every `>= 5` check silently failed and the SoD Enhancement rotation never suggested instant Lightning Bolt, Chain Lightning, or Lava Burst with Maelstrom Weapon procs — the core mechanic of the spec. Changed to `ConROC:Aura()` to check the player.
- **Shaman – All three talent trees used Classic Era indices** – `GetTalentInfo(tab, index)` reads different positions in TBC vs Classic Era. The Elemental tree had 15 entries (Classic layout) instead of 18 (TBC); Enhancement had 16 instead of 22; Restoration had 15 instead of 19. TBC 41-point talents (Totem of Wrath, Shamanistic Rage, Earth Shield) and mid-tree additions (Lightning Overload, Dual Wield, Unleashed Rage, etc.) were absent. All talent checks (ElementalFocus, ElementalDevastation used for Earth Shock R1 proc fishing) were silently reading the wrong talent. Rebuilt all three talent tables from scratch against the TBC talent tree layout.
- **Shaman – Debug print statements in dead code** – The unused `getEnchantmentID()` helper function contained four `print()` calls that would spam chat if ever invoked. Removed the entire dead function and its commented-out test block.
- **Shaman – Non-SoD defense rotation only suggested Lightning Shield** – Water Shield (trainable at level 62 in TBC) and Shamanistic Rage (Enhancement talent) were only available via `Runes.*` references in the SoD branch. The non-SoD (TBC) defense path had no shield choice and no rage recovery cooldown. Added Water Shield and Shamanistic Rage to the TBC defense rotation.

### Added

- **Shaman – TBC abilities: Bloodlust, Heroism, Water Shield, Earth Shield, Shamanistic Rage, Totem of Wrath** – Added spell IDs to `ids.Ability` for all core TBC-only abilities. Bloodlust (2825, Horde) and Heroism (32182, Alliance) are integrated into the non-SoD damage rotation as highest priority in-combat suggestion. Water Shield (24398) with Rank 2 (33736) and Shamanistic Rage (30823) added to the TBC defense rotation. Earth Shield (974) and Totem of Wrath (30706) added for future rotation use.

---

## [2.9.0] – Druid Module Overhaul

### Fixed

- **Druid – All three talent trees used Classic Era indices** – `GetTalentInfo(tab, index)` reads a completely different position in TBC Classic vs Classic Era. All three trees had wrong indices: Ferocity was at index 3 (Classic) instead of 1 (TBC); Moonkin Form was 16 instead of 17; NaturalShapeshifter and OmenofClarity were in Balance instead of Restoration; InsectSwarm was in Restoration instead of Balance. Every talent check (Ferocity cost reduction, Natural Shapeshifter cost calc, Moonglow, Dreamstate, etc.) was silently reading the wrong talent and returning incorrect ranks or `false`. Rebuilt all three talent tables from scratch against the TBC 21-talent tree layout.
- **Druid – `_BearForm` undefined in Defense() — Demoralizing Roar never fires** – `Defense()` referenced `ConROC:Form(_BearForm)` but `_BearForm` was only declared inside `Damage()`. The nil argument caused `Form()` to always return false, meaning Demoralizing Roar was never suggested in the defense rotation for any player. Added the missing `AbilityReady()` declaration for `_BearForm` at the top of `Defense()`.
- **Druid – Duplicate dead Rip check** – Two near-identical `_Rip_RDY` / 5-combo-point blocks appeared back to back. The second was unreachable because the first always broke the loop after setting `_Rip_DEBUFF = true`. Removed the dead duplicate.
- **Druid – Duplicate `ConROC:CheckBox(ConROC_SM_Debuff_FaerieFireFeral)` in conditions** – Two separate `if` conditions each contained the same checkbox call twice, resulting in the checkbox being evaluated twice but never causing a double-suggestion. Removed the redundant trailing duplicate from each condition.
- **Druid – FaerieFireFeral missing checkbox guard in non-SoD Cat rotation** – The SoD Cat rotation correctly gated Faerie Fire (Feral) behind `ConROC:CheckBox(ConROC_SM_Debuff_FaerieFireFeral)`. The non-SoD Cat path had no such guard and would always suggest FaerieFireFeral unconditionally. Added the matching checkbox guard.
- **Druid – Moonfire, FaerieFire, and InsectSwarm missing checkbox guards in non-SoD Moonkin rotation** – The SoD Moonkin path and the caster fallback both checked the relevant checkboxes before suggesting these spells. The non-SoD Moonkin block (`_MoonkinForm_FORM`) did not, so all three were suggested regardless of user preference. Added `ConROC:CheckBox()` guards matching the other paths.
- **Druid – Maul hardcoded rage cost** – Maul's rage threshold was `_Rage > 15` instead of `_Rage >= _Maul_COST`. With Ferocity, the actual cost is lower, meaning a Feral tank specced into Ferocity (reduces Maul cost by up to 5 rage) would have Maul suppressed unnecessarily when rage was between the reduced cost and 15. Fixed to use `_Maul_COST`, which already accounts for the talent reduction.
- **Druid – Shred permanently commented out in non-SoD Cat rotation** – Shred is the primary behind-target combo builder but the entire block was disabled. The rotation fell through to Claw for all combo generation regardless of positioning. Uncommented.
- **Druid – `_FuryofStormrage_BUFF` referenced in Defense()** – Fury of Stormrage is a Season of Discovery rune buff that does not exist in TBC. The reference always evaluated to nil and the condition was dead code. Removed.
- **Druid – NaturalShapeshifter shift cost reduction used Balance tree** – Form shift cost was reduced using `TalentChosen(Spec.Balance, Bal_Talent.NaturalShapeshifter)`. In TBC, NaturalShapeshifter moved from the Balance tree to the Restoration tree. Balance druids were getting the reduction applied even without the talent; Restoration druids were not. Fixed to `TalentChosen(Spec.Restoration, Resto_Talent.NaturalShapeshifter)`.
- **Druid – ShreddingAttacks (formerly ImprovedShred) cost reduction wrong** – The talent was referenced as `Feral_Talent.ImprovedShred` (Classic name, removed in TBC) and applied a flat energy reduction. In TBC the talent was renamed ShreddingAttacks and changed to a percentage reduction (18% per rank). Updated the key name and calculation.
- **Druid – Hurricane AoE check used melee range** – Hurricane is a 30-yard channel but its trigger condition checked `_enemies_in_melee >= 4`. Enemies engaged at melee would likely interrupt the channel immediately. Fixed to `_enemies_in_30yrds >= 4`.
- **Druid – Lacerate not gated by spellmenu checkbox** – The Lacerate suggestion in the Bear rotation had no `ConROC:CheckBox(ConROC_SM_DoT_Lacerate)` guard despite the checkbox existing in the spellmenu. Lacerate was always suggested regardless of user preference. Added the checkbox guard.

### Added

- **Druid – TBC abilities: Mangle (Cat), Mangle (Bear), Lacerate** – All three are core trained abilities in TBC. Added spell IDs, all TBC ranks (Mangle Bear R1–3: 33878/33986/33987, Mangle Cat R1–3: 33876/33982/33983, Lacerate R1: 33745), `UpdateSpellID()` rank chains, `AbilityReady()` declarations, and `TargetAura()` debuff tracking. Mangle is integrated as the primary combo builder (Cat) and highest-priority threat ability (Bear). Lacerate is added to the Bear rotation with stack tracking (build to 5, refresh before expiry).
- **Druid – TBC abilities: Lifebloom, Force of Nature, Maim, Cyclone, Tree of Life, Flight Form, Swift Flight Form** – Spell IDs and entries added for all TBC-only abilities (`ids.Ability`). Lifebloom gets a full three-rank chain in `UpdateSpellID()` (R1–3: 33763/33778/33779). Force of Nature is added to the Balance/Moonkin rotation as a checkbox-gated cooldown.
- **Druid – TBC spell ranks** – Added approximately 50 missing TBC-level ranks across all ability chains, including: Wrath R9–10, Starfire R8, Moonfire R11–12, Healing Touch R11–13, Rejuvenation R11–13, Regrowth R10, Shred R6–7, Rip R7, Maul R8, Swipe R6, Rake R5, Claw R6, Ferocious Bite R5–6, Demoralizing Roar R6, Faerie Fire R5, Faerie Fire Feral R5, Hurricane R4, Mark of the Wild R8, Gift of the Wild R3, Thorns R7, Tranquility R5, Rebirth R6, Entangling Roots R7, Frenzied Regeneration R4, Pounce R4. All rank chains in `UpdateSpellID()` extended to TBC maximum.
- **Druid – Cat Form rotation: Mangle priority and full TBC combo builder order** – Cat rotation now follows TBC priority: Faerie Fire Feral debuff → Tiger's Fury → Mangle Cat (maintain 60 s debuff) → Rip at 5 cp → Ferocious Bite at 5 cp → Rake (apply DoT) → Shred (behind target) → Mangle Cat (combo builder when Shred unavailable) → Claw (fallback when not behind target and Mangle not learned).
- **Druid – Bear Form rotation: Mangle, Lacerate, and Demoralizing Roar** – Bear rotation now follows TBC threat priority: Enrage (rage CD) → Faerie Fire Feral (debuff) → Mangle Bear (highest threat, maintain 60 s debuff) → Lacerate (stack to 5, refresh before expiry) → Swipe (AoE at 3+ enemies or rage ≥ 60) → Demoralizing Roar (mitigation debuff) → Maul (rage dump filler).
- **Druid – Balance/Moonkin rotation: Force of Nature and improved DoT handling** – Rotation now includes: Force of Nature cooldown (checkbox-gated) → Moonfire DoT maintenance (checkbox-gated, on any target not just AoE) → Insect Swarm DoT (checkbox-gated) → Faerie Fire debuff (checkbox-gated) → Starfire (primary filler) → Wrath (fallback).
- **Druid – Spellmenu: TBC entries replace SoD entries** – Removed Berserk (SoD rune), Starfall (SoD rune), and Sunfire (SoD rune) from checkboxes and defaults. Added Force of Nature (Cooldowns), Insect Swarm (DoTs), and Lacerate (DoTs). Defaults updated for all four roles: Insect Swarm on for Caster, Lacerate on for Tank, Force of Nature off by default.

### Removed

- **Druid – Season of Discovery rotation branch** – `ConROC.Seasons.IsSoD` is always `false` on the TBC client (`WOW_PROJECT_ID != WOW_PROJECT_CLASSIC`). The entire SoD rotation branch — Eclipse tracking, StarSurge, Starfall, Sunfire, Berserk, Savage Roar, and Skull Bash indicator — was dead code that never executed. Removed along with all SoD variable declarations, SoD cost adjustments, SoD buff IDs (`EclipseLunar`, `EclipseSolar`, `FuryofStormrage`), `ids.Runes`, and `ids.Engrave`.

---

## [2.8.1] – Blizzard Action Bar 8-10 Detection Fix

### Fixed

- **Spells on Blizzard action bars 8, 9, and 10 not detected** – `FetchBlizzard()` and `DefFetchBlizzard()` only scanned the first five standard bars (Action, MultiBarBottomLeft, MultiBarBottomRight, MultiBarRight, MultiBarLeft) plus Stance and PetAction. The three additional Blizzard multi-action bars (`MultiBar5`, `MultiBar6`, `MultiBar7`) were never scanned, causing a "Spell not found on action bars" error for any spell placed on bars 8–10. Added all three bars to both fetch functions. Affects all classes using the default Blizzard UI.

---

## [2.8.0] – Rogue Module Overhaul

### Fixed

- **Rogue – Combat rotation permanently stuck on "wait"** – All core abilities (Sinister Strike, Eviscerate, Backstab, Rupture, etc.) only had Classic-era rank IDs defined. In the TBC client, `AbilityReady()` fails for superseded rank IDs, causing every spell check to return false and the rotation to fall through to the wait indicator. Added TBC ranks for all core abilities (Sinister Strike R9/R10, Eviscerate R9/R10, Backstab R10, Rupture R7, Ambush R7, Garrote R7, Expose Armor R6, Hemorrhage R4, Kick R5, Gouge R6, Feint R5/R6) and updated `UpdateSpellID()` to detect and assign the highest known rank.
- **Rogue – Deadly Poison suggests Rank 4 instead of Rank 7** – The level-based poison selection in `UpdateSpellID()` capped at `_Player_Level >= 54` → Rank 4, leaving Rank 5 (which existed in the data but was never assigned) and TBC Ranks 6 and 7 completely unused. Extended the thresholds: Rank 5 at level 60, Rank 6 at level 62, Rank 7 at level 70.
- **Rogue – Instant Poison suggests Rank 6 instead of Rank 7** – Level threshold capped at level 60 → Rank 6. Added level 68 → Rank 7 (TBC).
- **Rogue – Wound Poison missing Rank 5** – Level threshold capped at level 56 → Rank 4. Added level 68 → Rank 5 (TBC).
- **Rogue – Applied TBC poisons not recognised (always prompts to re-apply)** – `ids.ActivePoison` only contained Classic enchant IDs. Weapon enchant IDs for Deadly Poison VI/VII, Instant Poison VII, Wound Poison V, and Anesthetic Poison were missing, so `GetWeaponEnchantInfo()` lookups returned nil and the addon treated every TBC poison as "not applied". Added all missing TBC enchant ID entries.
- **Rogue – Backstab uses wrong rank for levels below 60** – A copy-paste error in `UpdateSpellID()` caused every non-SoD rank branch for Backstab Ranks 2–8 to assign `BackstabRank9` (level 60) regardless of which rank actually matched. A level 10 rogue who only knew Rank 2 would have the addon attempt to use the Rank 9 spell ID. Each branch now assigns its own correct rank.
- **Rogue – Anesthetic Poison off-hand alpha indicator inverted** – The alpha dimming check on the off-hand Anesthetic Poison block used `~=` instead of `==`, so the icon was dimmed when the poison was *not* applied and bright when it *was* — the opposite of every other poison. Fixed to `==`.
- **Rogue – Anesthetic Poison missing from spell menu** – `rogue.lua` already checked `ConROC_SM_PoisonMH_Anesthetic` and `ConROC_SM_PoisonOH_Anesthetic`, but the spell menu UI never created these radio buttons, causing a nil reference. Added Anesthetic Poison (available at level 68) to both the Main Hand and Off Hand poison selection groups.

### Added

- **Rogue – Anesthetic Poison support** – Full support for the TBC poison: item ID, enchant ID, rank definition, level threshold (68), spell menu radio buttons for both weapon slots, and weapon enchant detection.

---

## [2.7.1] – Action Bar Spell Detection Fix

### Fixed

- **Spell detection broken on Blizzard default action bars** – `AddStandardButton()` used `C_Spell.GetSpellInfo()` to resolve spell IDs from action bar slots, which can return nil on TBC Anniversary. Rewrote the function to use the spell ID directly from `GetActionInfo()`, matching the reliable pattern already used by `DefAddStandardButton()`. This fixes the "Spell not found on action bars" error when using the default Blizzard UI.
- **Macro detection used wrong variable on Blizzard bars** – When a macro occupied a Blizzard action bar slot, `GetMacroSpell()` was called with the slot number instead of the macro index returned by `GetActionInfo()`. Fixed to use the correct macro index with a name-based fallback.
- **Missing action slot fallback** – Added a nil/zero guard with `ActionButton_CalculateAction` fallback for the main action bar slot lookup, matching `DefAddStandardButton()`. Improves reliability during stance and form page switches.
- **DefFetchDiabolic and DefFetchAzeriteUI called wrong registration function** – Both defensive fetch functions called `AddStandardButton()` instead of `DefAddStandardButton()`, writing spells to the offensive `Spells` table instead of the `DefSpells` table. Defense rotation suggestions now register correctly for DiabolicUI and AzeriteUI users.

---

## [2.7.0] – Shaman Module Review

### Fixed

- **Shaman – Totem checkbox ignored in SoD rotation** – Unchecking "Suggest totems in rotation" had no effect on the Season of Discovery rotation path. All four totem suggestions (Searing Totem, Strength of Earth Totem, Grace of Air Totem, Mana Spring Totem) in the SoD block were inserted into `SuggestedSpells` without any checkbox guard. Wrapped all four in `ConROC:CheckBox(ConROC_SM_Option_Totems)`, matching the existing guard already in the Pre-SoD Caster path. This was the user-reported bug.
- **Shaman – Totem checkbox ignored in Pre-SoD Melee rotation** – The same missing checkbox guard affected Searing Totem in the Pre-SoD Melee role path (line 483). Added `ConROC:CheckBox(ConROC_SM_Option_Totems)` inline with the condition.
- **Shaman – Fire Nova Totem duration tracking completely broken** – `ids.Totems` contained two entries matching `"Fire Nova Totem"`: the first mapped to `"fnovaTotemEXP"` and the second (the correct one) to `"fnTotemEXP"`. Because `PLAYER_TOTEM_UPDATE` breaks on the first match, `fnovaTotemEXP` (a key that doesn't exist in `ConROC.totemVariables`) was always updated while `fnTotemEXP` stayed at 0. The rotation reads `fnTotemEXP`, so Fire Nova Totem duration was always stale and the totem was suggested on every rotation tick regardless of whether one was active. Removed the duplicate entry.
- **Shaman – `_LightningShield` undeclared in `Damage()`** – The Rolling Thunder condition at line 395 reads `_LightningShield_CHARGE`, which is derived from `ConROC:Aura(_LightningShield, ...)`. However `_LightningShield` was only declared in `Defense()`, never in `Damage()`. The aura lookup silently received `nil`, making `_LightningShield_CHARGE` always `nil`/0 and the Rolling Thunder charge threshold check non-functional. Added `local _LightningShield, _ = ConROC:AbilityReady(Ability.LightningShield, timeShift)` in `Damage()`.
- **Shaman – Totem duration tracking halts when checkbox is unchecked** – `PLAYER_TOTEM_UPDATE` was gated by `ConROC:CheckBox(ConROC_SM_Option_Totems)`. If the option was unchecked while totems were active, the stored expiration times became stale. Re-enabling the checkbox would then cause incorrect duration reads (e.g. always suggesting totems because stored expiry appeared expired). Removed the checkbox gate from the event handler — durations are now always tracked regardless of the option, and the checkbox only gates whether totems appear in rotation suggestions.
- **Shaman – `_ohP` variable typo in imbue logic** – A nil-check fallback at line 281 assigned `_ohp = "none"` (lowercase `p`), leaving `_ohP` nil. The subsequent comparison `if _ohP ~= "none"` would always mismatch, causing the offhand "None" imbue path to malfunction. Fixed to `_ohP`.
- **Shaman – `_is__is_moving` double-prefix typo** – The module-level initialisation declared `local _is__is_moving = ConROC:PlayerSpeed()` (double `_is_` prefix), creating a dead local that was never read. The correct `_is_moving` used throughout the rotation is set in `Stats()`. Removed the dead declaration by correcting the name to `_is_moving`.

---

## [2.6.1] – Priest SWP Debuff Detection Fix

### Fixed

- **Priest – Shadow Word: Pain rotation stuck loop** – The rotation repeatedly recommended Shadow Word: Pain even when the debuff was already active on the target. The root cause was in the core `UnitAura()` debuff detection (helper.lua), which matched auras exclusively by spell ID. In TBC Classic, the debuff's `aura.spellId` can differ from the castable spell ID due to rank ID remapping, causing the check to return false even though the debuff was present by name. Added a name-based fallback: when no spell ID match is found but the spell name matches, the name-matched aura is used instead. This fix benefits all class modules, not just Priest.
- **Priest – Missing `lastSpellId` guard on instant-cast debuffs** – Added `ConROC.lastSpellId` checks to all instant-cast debuff conditions (Shadow Word: Pain, Devouring Plague, Hex of Weakness, Vampiric Embrace) in both Shadow and Holy/Disc rotations. This prevents re-recommending a debuff during the brief window between cast completion and aura detection, matching the pattern already used by the Hunter module for Serpent Sting.

---

## [2.6.0] – Priest Module Overhaul

### Fixed

- **Priest – Shadowform rotation fired without a hostile target** – The Shadowform damage rotation (debuffs, Mind Blast, Mind Flay, etc.) was suggested even with no hostile target selected. Added an `_is_Enemy` guard to the Shadowform rotation block, matching the non-Shadowform branch which already had this check. Shadowform entry itself remains ungated so you can enter Shadowform before pulling.
- **Priest – Shadowfiend never suggested in rotation** – Shadowfiend had a checkbox and burst indicator but was never actually inserted into `SuggestedSpells`. Added to both Shadowform and non-Shadowform rotation branches, triggering when mana drops below 70%.
- **Priest – Devouring Plague missing from non-Shadowform rotation** – Undead priests in Holy or Discipline specs could not get Devouring Plague suggestions. Added the same checkbox-gated logic used in the Shadowform branch.
- **Priest – Power Word: Shield suggested out of combat** – The defense module suggested PW:S unconditionally, including out of combat. Added an `_in_combat` guard so the shield is only suggested during combat.
- **Priest – Duplicate `CheckScrollbarVisibility` function** – A second `local function CheckScrollbarVisibility()` definition shadowed the correct first one (which included the open-button visibility check and frame width logic). Removed the duplicate.
- **Priest – `flashMessage()` recursive timer spam** – The wand warning timer looped indefinitely every 4 seconds even after unchecking "Use Wand" or switching roles. Added a `ConROC:CheckBox(ConROC_SM_Option_UseWand)` guard to the early-return check so the timer stops when the option is disabled.
- **Priest – Caster role defaulted to Smite filler** – The Caster (DPS) role defaulted to Smite as the filler spell. Changed to Mind Flay, which is the correct Shadow spec filler for the primary DPS use case.
- **Priest – Healer role had no default filler** – Both Smite and Mind Flay were disabled by default for the Healer role, leaving no filler suggestion. Smite is now enabled by default (benefits from Holy talents).

### Added

- **Priest – Silence interrupt indicator** – Silence was declared but never used. Added `AbilityInterrupt` indicator that lights up when the target is casting an interruptible spell, matching the pattern used by all other class modules with interrupts.
- **Priest – Berserking burst indicator** – The Troll racial Berserking was loaded but never referenced. Added a burst indicator that lights up during combat with a hostile target.
- **Priest – Fade in defense rotation** – Fade was declared but never suggested. Now appears in the defense rotation when in combat and in a party (threat reduction is meaningless solo).
- **Priest – Psychic Scream in defense rotation** – Emergency defensive suggestion when surrounded by melee enemies (1+) at low health (30% or below).

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
