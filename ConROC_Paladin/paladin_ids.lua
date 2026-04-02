local ConROC_Paladin, ids = ...;

--General
ids.Racial = {
	Perception = 20600,
}
ids.Spec = {
	Holy = 1,
	Protection = 2,
	Retribution = 3,
}
ids.Ability = {
--Holy
	BlessingofLight = 19979, -- Rank 3 (max rank, IsSpellKnown doesn't work reliably)
	BlessingofWisdom = 25290, -- Rank 6 (max rank, IsSpellKnown doesn't work reliably)
	Cleanse = 4987,
	Consecration = 26573,
	Exorcism = 879,
	FlashofLight = 19750,
	GreaterBlessingofLight = 25890,
	GreaterBlessingofWisdom = 25918, -- Rank 2 (max rank, IsSpellKnown doesn't work for greater blessings)
	HammerofWrath = 24275,
	HolyLight = 635,
	HolyShock = 20473,
	HolyWrath = 2812,
	LayonHands = 633,
	Purify = 1152,
	Redemption = 7328,
	SealofLight = 20165,
	SealofRighteousness = 20154,
	SealofWisdom = 20166,
	SenseUndead = 5502,
	TurnUndead = 2878,
--Protection
	BlessingofFreedom = 1044,
	BlessingofKings = 25898, -- Rank 2 (max rank, IsSpellKnown doesn't work reliably)
	BlessingofProtection = 1022,
	BlessingofSacrifice = 6940,
	BlessingofSalvation = 1038,
	BlessingofSanctuary = 20914, -- Rank 4 (max rank, IsSpellKnown doesn't work reliably)
	ConcentrationAura = 19746,
	DivineIntervention = 19752,
	DivineProtection = 498,
	DivineShield = 642,
	GreaterBlessingofKings = 25898,
	GreaterBlessingofSalvation = 25895,
	GreaterBlessingofSanctuary = 25899,
	HammerofJustice = 853,
	HolyShield = 20925,
	RighteousFury = 25780,
	SealofJustice = 20164,
--Retribution
	BlessingofMight = 25291, -- Rank 7 (TBC Anniversary max rank)
	GreaterBlessingofMight = 25916, -- Rank 2 (max rank)
	Judgement = 20271,
	Repentance = 20066,
	SealofCommand = 20375,
	SealoftheCrusader = 21082,
	SealofBlood = 31892, -- TBC - Horde
	SealofVengeance = 31801, -- TBC - Alliance
	HammerofWrath = 24275,
--TBC
	AvengersShield = 31935,
	CrusaderStrike = 35395,
	RighteousDefense = 31789,
--Auras
	DevotionAura = 465,
	FireResistanceAura = 19891,
	FrostResistanceAura = 19888,
	RetributionAura = 7294,
	SanctityAura = 20218,
	ShadowResistanceAura = 19876,
}
ids.Rank = {
--Holy
	BlessingofLightRank1 = 19977,
	BlessingofLightRank2 = 19978,
	BlessingofLightRank3 = 19979,
	BlessingofLightRank4 = 27144,
	BlessingofWisdomRank1 = 19742,
	BlessingofWisdomRank2 = 19850,
	BlessingofWisdomRank3 = 19852,
	BlessingofWisdomRank4 = 19853,
	BlessingofWisdomRank5 = 19854,
	BlessingofWisdomRank6 = 25290,
	BlessingofWisdomRank7 = 27142,
	ConsecrationRank1 = 26573,
	ConsecrationRank2 = 20116,
	ConsecrationRank3 = 20922,
	ConsecrationRank4 = 20923,
	ConsecrationRank5 = 20924,
	ConsecrationRank6 = 27173,
	ExorcismRank1 = 879,
	ExorcismRank2 = 5614,
	ExorcismRank3 = 5615,
	ExorcismRank4 = 10312,
	ExorcismRank5 = 10313,
	ExorcismRank6 = 10314,
	ExorcismRank7 = 27138,
	FlashofLightRank1 = 19750,
	FlashofLightRank2 = 19939,
	FlashofLightRank3 = 19940,
	FlashofLightRank4 = 19941,
	FlashofLightRank5 = 19942,
	FlashofLightRank6 = 19943,
	FlashofLightRank7 = 27137,
	GreaterBlessingofWisdomRank1 = 25894,
	GreaterBlessingofWisdomRank2 = 25918,
	GreaterBlessingofWisdomRank3 = 27143,
	HammerofWrathRank1 = 24275,
	HammerofWrathRank2 = 24274,
	HammerofWrathRank3 = 24239,
	HolyLightRank1 = 635,
	HolyLightRank2 = 639,
	HolyLightRank3 = 647,
	HolyLightRank4 = 1026,
	HolyLightRank5 = 1042,
	HolyLightRank6 = 3472,
	HolyLightRank7 = 10328,
	HolyLightRank8 = 10329,
	HolyLightRank9 = 25292,
	HolyLightRank10 = 27135,
	HolyLightRank11 = 27136,
	HolyShockRank1 = 20473,
	HolyShockRank2 = 20929,
	HolyShockRank3 = 20930,
	HolyShockRank4 = 27174,
	HolyShockRank5 = 33072,
	HolyWrathRank1 = 2812,
	HolyWrathRank2 = 10318,
	HolyWrathRank3 = 27139,
	LayonHandsRank1 = 633,
	LayonHandsRank2 = 2800,
	LayonHandsRank3 = 10310,
	LayonHandsRank4 = 27154,
	RedemptionRank1 = 7328,
	RedemptionRank2 = 10322,
	RedemptionRank3 = 10324,
	RedemptionRank4 = 20772,
	RedemptionRank5 = 20773,
	SealofLightRank1 = 20165,
	SealofLightRank2 = 20347,
	SealofLightRank3 = 20348,
	SealofLightRank4 = 20349,
	SealofLightRank5 = 27160,
	SealofRighteousnessRank0 = 20154,
	SealofRighteousnessRank1 = 21084,
	SealofRighteousnessRank2 = 20287,
	SealofRighteousnessRank3 = 20288,
	SealofRighteousnessRank4 = 20289,
	SealofRighteousnessRank5 = 20290,
	SealofRighteousnessRank6 = 20291,
	SealofRighteousnessRank7 = 20292,
	SealofRighteousnessRank8 = 20293,
	SealofRighteousnessRank9 = 27155,
	SealofWisdomRank1 = 20166,
	SealofWisdomRank2 = 20356,
	SealofWisdomRank3 = 20357,
	SealofWisdomRank4 = 27166,
	TurnUndeadRank1 = 2878,
	TurnUndeadRank2 = 5627,
	TurnUndeadRank3 = 10326,
--Protection
	BlessingofProtectionRank1 = 1022,
	BlessingofProtectionRank2 = 5599,
	BlessingofProtectionRank3 = 10278,
	BlessingofSacrificeRank1 = 6940,
	BlessingofSacrificeRank2 = 20729,
	BlessingofSanctuaryRank1 = 20911,
	BlessingofSanctuaryRank2 = 20912,
	BlessingofSanctuaryRank3 = 20913,
	BlessingofSanctuaryRank4 = 20914,
	DivineProtectionRank1 = 498,
	DivineProtectionRank2 = 5573,
	DivineShieldRank1 = 642,
	DivineShieldRank2 = 1020,
	HammerofJusticeRank1 = 853,
	HammerofJusticeRank2 = 5588,
	HammerofJusticeRank3 = 5589,
	HammerofJusticeRank4 = 10308,
	HolyShieldRank1 = 20925,
	HolyShieldRank2 = 20927,
	HolyShieldRank3 = 20928,
	HolyShieldRank4 = 27179,
--Retribution
	BlessingofMightRank1 = 19740,
	BlessingofMightRank2 = 19834,
	BlessingofMightRank3 = 19835,
	BlessingofMightRank4 = 19836,
	BlessingofMightRank5 = 19837,
	BlessingofMightRank6 = 19838,
	BlessingofMightRank7 = 25291,
	BlessingofMightRank8 = 27140,
	GreaterBlessingofMightRank1 = 25782,
	GreaterBlessingofMightRank2 = 25916,
	GreaterBlessingofMightRank3 = 27141,
	SealofCommandRank1 = 20375,
	SealofCommandRank2 = 20915,
	SealofCommandRank3 = 20918,
	SealofCommandRank4 = 20919,
	SealofCommandRank5 = 20920,
	SealofCommandRank6 = 27170,
	SealoftheCrusaderRank1 = 21082,
	SealoftheCrusaderRank2 = 20162,
	SealoftheCrusaderRank3 = 20305,
	SealoftheCrusaderRank4 = 20306,
	SealoftheCrusaderRank5 = 20307,
	SealoftheCrusaderRank6 = 20308,
	SealoftheCrusaderRank7 = 27158,
	SealofBloodRank1 = 31892, -- TBC Horde
	SealofVengeanceRank1 = 31801, -- TBC Alliance
	HammerofWrathRank1 = 24275, -- TBC
	HammerofWrathRank2 = 24274,
	HammerofWrathRank3 = 24239,
	HammerofWrathRank4 = 27180,
--TBC Talents
	AvengersShieldRank1 = 31935,
	AvengersShieldRank2 = 32699,
	AvengersShieldRank3 = 32700,
--Auras
	DevotionAuraRank1 = 465,
	DevotionAuraRank2 = 10290,
	DevotionAuraRank3 = 643,
	DevotionAuraRank4 = 10291,
	DevotionAuraRank5 = 1032,
	DevotionAuraRank6 = 10292,
	DevotionAuraRank7 = 10293,
	DevotionAuraRank8 = 27149,
	FireResistanceAuraRank1 = 19891,
	FireResistanceAuraRank2 = 19899,
	FireResistanceAuraRank3 = 19900,
	FireResistanceAuraRank4 = 27153,
	FrostResistanceAuraRank1 = 19888,
	FrostResistanceAuraRank2 = 19897,
	FrostResistanceAuraRank3 = 19898,
	FrostResistanceAuraRank4 = 27152,
	RetributionAuraRank1 = 7294,
	RetributionAuraRank2 = 10298,
	RetributionAuraRank3 = 10299,
	RetributionAuraRank4 = 10300,
	RetributionAuraRank5 = 10301,
	RetributionAuraRank6 = 27150,
	ShadowResistanceAuraRank1 = 19876,
	ShadowResistanceAuraRank2 = 19875,
	ShadowResistanceAuraRank3 = 19896,
	ShadowResistanceAuraRank4 = 27151,
	JudgementoftheCrusaderRank1 = 21183,
	JudgementoftheCrusaderRank2 = 20188,
	JudgementoftheCrusaderRank3 = 20300,
	JudgementoftheCrusaderRank4 = 20301,
	JudgementoftheCrusaderRank5 = 20302,
	JudgementoftheCrusaderRank6 = 20303,
	JudgementofLightRank1 = 20185,
	JudgementofLightRank2 = 20344,
	JudgementofLightRank3 = 20345,
	JudgementofLightRank4 = 20346,
	JudgementofWisdomRank1 = 20186,
	JudgementofWisdomRank2 = 20354,
	JudgementofWisdomRank3 = 20355,
}
-- NOTE: Talent indices must match GetTalentInfo(tab, index) positions for TBC.
-- Run /script ConROC:PopulateTalentIDs() in-game to verify these indices.
ids.Holy_Talent = {
	DivineStrength = 1,
	DivineIntellect = 2,
	SpiritualFocus = 3,
	ImprovedSealofRighteousness = 4,
	HealingLight = 5,
	AuraMastery = 6,
	ImprovedLayonHands = 7,
	UnyieldingFaith = 8,
	Illumination = 9,
	ImprovedBlessingofWisdom = 10,
	PureofHeart = 11,
	DivineFavor = 12,
	SanctifiedLight = 13,
	PurifyingPower = 14,
	HolyPower = 15,
	LightsGrace = 16,
	HolyShock = 17,
	BlessedLife = 18,
	HolyGuidance = 19,
	DivineIllumination = 20,
}
ids.Protection_Talent = {
	ImprovedDevotionAura = 1,
	Redoubt = 2,
	Precision = 3,
	GuardiansFavor = 4,
	Toughness = 5,
	BlessingofKings = 6,
	ImprovedRighteousFury = 7,
	ShieldSpecialization = 8,
	Anticipation = 9,
	Stoicism = 10,
	ImprovedHammerofJustice = 11,
	ImprovedConcentrationAura = 12,
	SpellWarding = 13,
	BlessingofSanctuary = 14,
	Reckoning = 15,
	SacredDuty = 16,
	OneHandedWeaponSpecialization = 17,
	HolyShield = 18,
	ArdentDefender = 19,
	CombatExpertise = 20,
	AvengersShield = 21,
}
ids.Retribution_Talent = {
	ImprovedBlessingofMight = 1,
	Benediction = 2,
	ImprovedJudgement = 3,
	ImprovedSealoftheCrusader = 4,
	Deflection = 5,
	Vindication = 6,
	Conviction = 7,
	SealofCommand = 8,
	PursuitofJustice = 9,
	EyeforanEye = 10,
	ImprovedRetributionAura = 11,
	Crusade = 12,
	TwoHandedWeaponSpecialization = 13,
	SanctityAura = 14,
	ImprovedSanctityAura = 15,
	Vengeance = 16,
	SanctifiedJudgement = 17,
	SanctifiedSeals = 18,
	Repentance = 19,
	DivinePurpose = 20,
	Fanaticism = 21,
	CrusaderStrike = 22,
}
-- Auras
ids.Buff = {

}
ids.Debuff = {
	Forbearance = 25771,
	JudgementoftheCrusader = 21183,
	JudgementofJustice = 20184,
	JudgementofLight = 20185,
	JudgementofWisdom = 20186,
	JudgementofCommand = 20467, -- Judgement of Command debuff
	JudgementofBlood = 31893, -- TBC Horde
	JudgementofVengeance = 31803, -- TBC Alliance
}

function ConROC:UpdateSpellID()
	--Holy
	if IsSpellKnown(ids.Rank.BlessingofLightRank4) then ids.Ability.BlessingofLight = ids.Rank.BlessingofLightRank4;
	elseif IsSpellKnown(ids.Rank.BlessingofLightRank3) then ids.Ability.BlessingofLight = ids.Rank.BlessingofLightRank3;
	elseif IsSpellKnown(ids.Rank.BlessingofLightRank2) then ids.Ability.BlessingofLight = ids.Rank.BlessingofLightRank2; end

	if IsSpellKnown(ids.Rank.BlessingofWisdomRank7) then ids.Ability.BlessingofWisdom = ids.Rank.BlessingofWisdomRank7;
	elseif IsSpellKnown(ids.Rank.BlessingofWisdomRank6) then ids.Ability.BlessingofWisdom = ids.Rank.BlessingofWisdomRank6;
	elseif IsSpellKnown(ids.Rank.BlessingofWisdomRank5) then ids.Ability.BlessingofWisdom = ids.Rank.BlessingofWisdomRank5;
	elseif IsSpellKnown(ids.Rank.BlessingofWisdomRank4) then ids.Ability.BlessingofWisdom = ids.Rank.BlessingofWisdomRank4;
	elseif IsSpellKnown(ids.Rank.BlessingofWisdomRank3) then ids.Ability.BlessingofWisdom = ids.Rank.BlessingofWisdomRank3;
	elseif IsSpellKnown(ids.Rank.BlessingofWisdomRank2) then ids.Ability.BlessingofWisdom = ids.Rank.BlessingofWisdomRank2; end

	if IsSpellKnown(ids.Rank.ConsecrationRank6) then ids.Ability.Consecration = ids.Rank.ConsecrationRank6;
	elseif IsSpellKnown(ids.Rank.ConsecrationRank5) then ids.Ability.Consecration = ids.Rank.ConsecrationRank5;
	elseif IsSpellKnown(ids.Rank.ConsecrationRank4) then ids.Ability.Consecration = ids.Rank.ConsecrationRank4;
	elseif IsSpellKnown(ids.Rank.ConsecrationRank3) then ids.Ability.Consecration = ids.Rank.ConsecrationRank3;
	elseif IsSpellKnown(ids.Rank.ConsecrationRank2) then ids.Ability.Consecration = ids.Rank.ConsecrationRank2; end

	if IsSpellKnown(ids.Rank.ExorcismRank7) then ids.Ability.Exorcism = ids.Rank.ExorcismRank7;
	elseif IsSpellKnown(ids.Rank.ExorcismRank6) then ids.Ability.Exorcism = ids.Rank.ExorcismRank6;
	elseif IsSpellKnown(ids.Rank.ExorcismRank5) then ids.Ability.Exorcism = ids.Rank.ExorcismRank5;
	elseif IsSpellKnown(ids.Rank.ExorcismRank4) then ids.Ability.Exorcism = ids.Rank.ExorcismRank4;
	elseif IsSpellKnown(ids.Rank.ExorcismRank3) then ids.Ability.Exorcism = ids.Rank.ExorcismRank3;
	elseif IsSpellKnown(ids.Rank.ExorcismRank2) then ids.Ability.Exorcism = ids.Rank.ExorcismRank2; end

	if IsSpellKnown(ids.Rank.FlashofLightRank7) then ids.Ability.FlashofLight = ids.Rank.FlashofLightRank7;
	elseif IsSpellKnown(ids.Rank.FlashofLightRank6) then ids.Ability.FlashofLight = ids.Rank.FlashofLightRank6;
	elseif IsSpellKnown(ids.Rank.FlashofLightRank5) then ids.Ability.FlashofLight = ids.Rank.FlashofLightRank5;
	elseif IsSpellKnown(ids.Rank.FlashofLightRank4) then ids.Ability.FlashofLight = ids.Rank.FlashofLightRank4;
	elseif IsSpellKnown(ids.Rank.FlashofLightRank3) then ids.Ability.FlashofLight = ids.Rank.FlashofLightRank3;
	elseif IsSpellKnown(ids.Rank.FlashofLightRank2) then ids.Ability.FlashofLight = ids.Rank.FlashofLightRank2; end

	if IsSpellKnown(ids.Rank.GreaterBlessingofWisdomRank3) then ids.Ability.GreaterBlessingofWisdom = ids.Rank.GreaterBlessingofWisdomRank3;
	elseif IsSpellKnown(ids.Rank.GreaterBlessingofWisdomRank2) then ids.Ability.GreaterBlessingofWisdom = ids.Rank.GreaterBlessingofWisdomRank2; end

	if IsSpellKnown(ids.Rank.HammerofWrathRank4) then ids.Ability.HammerofWrath = ids.Rank.HammerofWrathRank4;
	elseif IsSpellKnown(ids.Rank.HammerofWrathRank3) then ids.Ability.HammerofWrath = ids.Rank.HammerofWrathRank3;
	elseif IsSpellKnown(ids.Rank.HammerofWrathRank2) then ids.Ability.HammerofWrath = ids.Rank.HammerofWrathRank2;
	elseif IsSpellKnown(ids.Rank.HammerofWrathRank1) then ids.Ability.HammerofWrath = ids.Rank.HammerofWrathRank1; end

	if IsSpellKnown(ids.Rank.HolyLightRank11) then ids.Ability.HolyLight = ids.Rank.HolyLightRank11;
	elseif IsSpellKnown(ids.Rank.HolyLightRank10) then ids.Ability.HolyLight = ids.Rank.HolyLightRank10;
	elseif IsSpellKnown(ids.Rank.HolyLightRank9) then ids.Ability.HolyLight = ids.Rank.HolyLightRank9;
	elseif IsSpellKnown(ids.Rank.HolyLightRank8) then ids.Ability.HolyLight = ids.Rank.HolyLightRank8;
	elseif IsSpellKnown(ids.Rank.HolyLightRank7) then ids.Ability.HolyLight = ids.Rank.HolyLightRank7;
	elseif IsSpellKnown(ids.Rank.HolyLightRank6) then ids.Ability.HolyLight = ids.Rank.HolyLightRank6;
	elseif IsSpellKnown(ids.Rank.HolyLightRank5) then ids.Ability.HolyLight = ids.Rank.HolyLightRank5;
	elseif IsSpellKnown(ids.Rank.HolyLightRank4) then ids.Ability.HolyLight = ids.Rank.HolyLightRank4;
	elseif IsSpellKnown(ids.Rank.HolyLightRank3) then ids.Ability.HolyLight = ids.Rank.HolyLightRank3;
	elseif IsSpellKnown(ids.Rank.HolyLightRank2) then ids.Ability.HolyLight = ids.Rank.HolyLightRank2; end

	if IsSpellKnown(ids.Rank.HolyShockRank5) then ids.Ability.HolyShock = ids.Rank.HolyShockRank5;
	elseif IsSpellKnown(ids.Rank.HolyShockRank4) then ids.Ability.HolyShock = ids.Rank.HolyShockRank4;
	elseif IsSpellKnown(ids.Rank.HolyShockRank3) then ids.Ability.HolyShock = ids.Rank.HolyShockRank3;
	elseif IsSpellKnown(ids.Rank.HolyShockRank2) then ids.Ability.HolyShock = ids.Rank.HolyShockRank2; end

	if IsSpellKnown(ids.Rank.HolyWrathRank3) then ids.Ability.HolyWrath = ids.Rank.HolyWrathRank3;
	elseif IsSpellKnown(ids.Rank.HolyWrathRank2) then ids.Ability.HolyWrath = ids.Rank.HolyWrathRank2; end

	if IsSpellKnown(ids.Rank.SealofLightRank5) then ids.Ability.SealofLight = ids.Rank.SealofLightRank5;
	elseif IsSpellKnown(ids.Rank.SealofLightRank4) then ids.Ability.SealofLight = ids.Rank.SealofLightRank4; ids.Debuff.JudgementofLight = ids.Rank.JudgementofLightRank4;
	elseif IsSpellKnown(ids.Rank.SealofLightRank3) then ids.Ability.SealofLight = ids.Rank.SealofLightRank3; ids.Debuff.JudgementofLight = ids.Rank.JudgementofLightRank3;
	elseif IsSpellKnown(ids.Rank.SealofLightRank2) then ids.Ability.SealofLight = ids.Rank.SealofLightRank2; ids.Debuff.JudgementofLight = ids.Rank.JudgementofLightRank2; end

	if IsSpellKnown(ids.Rank.SealofRighteousnessRank9) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank9;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank8) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank8;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank7) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank7;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank6) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank6;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank5) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank5;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank4) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank4;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank3) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank3;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank2) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank2;
	elseif IsSpellKnown(ids.Rank.SealofRighteousnessRank1) then ids.Ability.SealofRighteousness = ids.Rank.SealofRighteousnessRank1; end

	if IsSpellKnown(ids.Rank.SealofWisdomRank4) then ids.Ability.SealofWisdom = ids.Rank.SealofWisdomRank4;
	elseif IsSpellKnown(ids.Rank.SealofWisdomRank3) then ids.Ability.SealofWisdom = ids.Rank.SealofWisdomRank3; ids.Debuff.JudgementofWisdom = ids.Rank.JudgementofWisdomRank3;
	elseif IsSpellKnown(ids.Rank.SealofWisdomRank2) then ids.Ability.SealofWisdom = ids.Rank.SealofWisdomRank2; ids.Debuff.JudgementofWisdom = ids.Rank.JudgementofWisdomRank2; end

	if IsSpellKnown(ids.Rank.TurnUndeadRank3) then ids.Ability.TurnUndead = ids.Rank.TurnUndeadRank3;
	elseif IsSpellKnown(ids.Rank.TurnUndeadRank2) then ids.Ability.TurnUndead = ids.Rank.TurnUndeadRank2;end

	--Protection
	if IsSpellKnown(ids.Rank.BlessingofProtectionRank3) then ids.Ability.BlessingofProtection = ids.Rank.BlessingofProtectionRank3;
	elseif IsSpellKnown(ids.Rank.BlessingofProtectionRank2) then ids.Ability.BlessingofProtection = ids.Rank.BlessingofProtectionRank2; end

	if IsSpellKnown(ids.Rank.BlessingofSacrificeRank2) then ids.Ability.BlessingofSacrifice = ids.Rank.BlessingofSacrificeRank2; end

	if IsSpellKnown(ids.Rank.BlessingofSanctuaryRank4) then ids.Ability.BlessingofSanctuary = ids.Rank.BlessingofSanctuaryRank4;
	elseif IsSpellKnown(ids.Rank.BlessingofSanctuaryRank3) then ids.Ability.BlessingofSanctuary = ids.Rank.BlessingofSanctuaryRank3;
	elseif IsSpellKnown(ids.Rank.BlessingofSanctuaryRank2) then ids.Ability.BlessingofSanctuary = ids.Rank.BlessingofSanctuaryRank2; end

	if IsSpellKnown(ids.Rank.DivineProtectionRank2) then ids.Ability.DivineProtection = ids.Rank.DivineProtectionRank2; end

	if IsSpellKnown(ids.Rank.DivineShieldRank2) then ids.Ability.DivineShield = ids.Rank.DivineShieldRank2; end

	if IsSpellKnown(ids.Rank.HammerofJusticeRank4) then ids.Ability.HammerofJustice = ids.Rank.HammerofJusticeRank4;
	elseif IsSpellKnown(ids.Rank.HammerofJusticeRank3) then ids.Ability.HammerofJustice = ids.Rank.HammerofJusticeRank3;
	elseif IsSpellKnown(ids.Rank.HammerofJusticeRank2) then ids.Ability.HammerofJustice = ids.Rank.HammerofJusticeRank2; end

	if IsSpellKnown(ids.Rank.HolyShieldRank4) then ids.Ability.HolyShield = ids.Rank.HolyShieldRank4;
	elseif IsSpellKnown(ids.Rank.HolyShieldRank3) then ids.Ability.HolyShield = ids.Rank.HolyShieldRank3;
	elseif IsSpellKnown(ids.Rank.HolyShieldRank2) then ids.Ability.HolyShield = ids.Rank.HolyShieldRank2; end

	--Retribution
	if IsSpellKnown(ids.Rank.BlessingofMightRank8) then ids.Ability.BlessingofMight = ids.Rank.BlessingofMightRank8;
	elseif IsSpellKnown(ids.Rank.BlessingofMightRank7) then ids.Ability.BlessingofMight = ids.Rank.BlessingofMightRank7;
	elseif IsSpellKnown(ids.Rank.BlessingofMightRank6) then ids.Ability.BlessingofMight = ids.Rank.BlessingofMightRank6;
	elseif IsSpellKnown(ids.Rank.BlessingofMightRank5) then ids.Ability.BlessingofMight = ids.Rank.BlessingofMightRank5;
	elseif IsSpellKnown(ids.Rank.BlessingofMightRank4) then ids.Ability.BlessingofMight = ids.Rank.BlessingofMightRank4;
	elseif IsSpellKnown(ids.Rank.BlessingofMightRank3) then ids.Ability.BlessingofMight = ids.Rank.BlessingofMightRank3;
	elseif IsSpellKnown(ids.Rank.BlessingofMightRank2) then ids.Ability.BlessingofMight = ids.Rank.BlessingofMightRank2; end

	if IsSpellKnown(ids.Rank.GreaterBlessingofMightRank3) then ids.Ability.GreaterBlessingofMight = ids.Rank.GreaterBlessingofMightRank3;
	elseif IsSpellKnown(ids.Rank.GreaterBlessingofMightRank2) then ids.Ability.GreaterBlessingofMight = ids.Rank.GreaterBlessingofMightRank2; end

	if IsSpellKnown(ids.Rank.SealofCommandRank6) then ids.Ability.SealofCommand = ids.Rank.SealofCommandRank6;
	elseif IsSpellKnown(ids.Rank.SealofCommandRank5) then ids.Ability.SealofCommand = ids.Rank.SealofCommandRank5;
	elseif IsSpellKnown(ids.Rank.SealofCommandRank4) then ids.Ability.SealofCommand = ids.Rank.SealofCommandRank4;
	elseif IsSpellKnown(ids.Rank.SealofCommandRank3) then ids.Ability.SealofCommand = ids.Rank.SealofCommandRank3;
	elseif IsSpellKnown(ids.Rank.SealofCommandRank2) then ids.Ability.SealofCommand = ids.Rank.SealofCommandRank2; end

	if IsSpellKnown(ids.Rank.SealoftheCrusaderRank7) then ids.Ability.SealoftheCrusader = ids.Rank.SealoftheCrusaderRank7;
	elseif IsSpellKnown(ids.Rank.SealoftheCrusaderRank6) then ids.Ability.SealoftheCrusader = ids.Rank.SealoftheCrusaderRank6; ids.Debuff.JudgementoftheCrusader = ids.Rank.JudgementoftheCrusaderRank6;
	elseif IsSpellKnown(ids.Rank.SealoftheCrusaderRank5) then ids.Ability.SealoftheCrusader = ids.Rank.SealoftheCrusaderRank5; ids.Debuff.JudgementoftheCrusader = ids.Rank.JudgementoftheCrusaderRank5;
	elseif IsSpellKnown(ids.Rank.SealoftheCrusaderRank4) then ids.Ability.SealoftheCrusader = ids.Rank.SealoftheCrusaderRank4; ids.Debuff.JudgementoftheCrusader = ids.Rank.JudgementoftheCrusaderRank4;
	elseif IsSpellKnown(ids.Rank.SealoftheCrusaderRank3) then ids.Ability.SealoftheCrusader = ids.Rank.SealoftheCrusaderRank3; ids.Debuff.JudgementoftheCrusader = ids.Rank.JudgementoftheCrusaderRank3;
	elseif IsSpellKnown(ids.Rank.SealoftheCrusaderRank2) then ids.Ability.SealoftheCrusader = ids.Rank.SealoftheCrusaderRank2; ids.Debuff.JudgementoftheCrusader = ids.Rank.JudgementoftheCrusaderRank2; end

	-- TBC Seals
	if IsSpellKnown(ids.Rank.SealofBloodRank1) then ids.Ability.SealofBlood = ids.Rank.SealofBloodRank1; ids.Debuff.JudgementofBlood = 31893; end
	if IsSpellKnown(ids.Rank.SealofVengeanceRank1) then ids.Ability.SealofVengeance = ids.Rank.SealofVengeanceRank1; ids.Debuff.JudgementofVengeance = 31803; end

	--Auras
	if IsSpellKnown(ids.Rank.DevotionAuraRank8) then ids.Ability.DevotionAura = ids.Rank.DevotionAuraRank8;
	elseif IsSpellKnown(ids.Rank.DevotionAuraRank7) then ids.Ability.DevotionAura = ids.Rank.DevotionAuraRank7;
	elseif IsSpellKnown(ids.Rank.DevotionAuraRank6) then ids.Ability.DevotionAura = ids.Rank.DevotionAuraRank6;
	elseif IsSpellKnown(ids.Rank.DevotionAuraRank5) then ids.Ability.DevotionAura = ids.Rank.DevotionAuraRank5;
	elseif IsSpellKnown(ids.Rank.DevotionAuraRank4) then ids.Ability.DevotionAura = ids.Rank.DevotionAuraRank4;
	elseif IsSpellKnown(ids.Rank.DevotionAuraRank3) then ids.Ability.DevotionAura = ids.Rank.DevotionAuraRank3;
	elseif IsSpellKnown(ids.Rank.DevotionAuraRank2) then ids.Ability.DevotionAura = ids.Rank.DevotionAuraRank2; end

	if IsSpellKnown(ids.Rank.FireResistanceAuraRank4) then ids.Ability.FireResistanceAura = ids.Rank.FireResistanceAuraRank4;
	elseif IsSpellKnown(ids.Rank.FireResistanceAuraRank3) then ids.Ability.FireResistanceAura = ids.Rank.FireResistanceAuraRank3;
	elseif IsSpellKnown(ids.Rank.FireResistanceAuraRank2) then ids.Ability.FireResistanceAura = ids.Rank.FireResistanceAuraRank2; end

	if IsSpellKnown(ids.Rank.FrostResistanceAuraRank4) then ids.Ability.FrostResistanceAura = ids.Rank.FrostResistanceAuraRank4;
	elseif IsSpellKnown(ids.Rank.FrostResistanceAuraRank3) then ids.Ability.FrostResistanceAura = ids.Rank.FrostResistanceAuraRank3;
	elseif IsSpellKnown(ids.Rank.FrostResistanceAuraRank2) then ids.Ability.FrostResistanceAura = ids.Rank.FrostResistanceAuraRank2; end

	if IsSpellKnown(ids.Rank.ShadowResistanceAuraRank4) then ids.Ability.ShadowResistanceAura = ids.Rank.ShadowResistanceAuraRank4;
	elseif IsSpellKnown(ids.Rank.ShadowResistanceAuraRank3) then ids.Ability.ShadowResistanceAura = ids.Rank.ShadowResistanceAuraRank3;
	elseif IsSpellKnown(ids.Rank.ShadowResistanceAuraRank2) then ids.Ability.ShadowResistanceAura = ids.Rank.ShadowResistanceAuraRank2; end

	if IsSpellKnown(ids.Rank.RetributionAuraRank6) then ids.Ability.RetributionAura = ids.Rank.RetributionAuraRank6;
	elseif IsSpellKnown(ids.Rank.RetributionAuraRank5) then ids.Ability.RetributionAura = ids.Rank.RetributionAuraRank5;
	elseif IsSpellKnown(ids.Rank.RetributionAuraRank4) then ids.Ability.RetributionAura = ids.Rank.RetributionAuraRank4;
	elseif IsSpellKnown(ids.Rank.RetributionAuraRank3) then ids.Ability.RetributionAura = ids.Rank.RetributionAuraRank3;
	elseif IsSpellKnown(ids.Rank.RetributionAuraRank2) then ids.Ability.RetributionAura = ids.Rank.RetributionAuraRank2; end

	if IsSpellKnown(ids.Rank.AvengersShieldRank3) then ids.Ability.AvengersShield = ids.Rank.AvengersShieldRank3;
	elseif IsSpellKnown(ids.Rank.AvengersShieldRank2) then ids.Ability.AvengersShield = ids.Rank.AvengersShieldRank2; end
end
