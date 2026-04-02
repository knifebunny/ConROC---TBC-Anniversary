local ConROC_Warrior, ids = ...;

--General
ids.Racial = {
	Berserking = 20554,
	Perception = 20600,
	Shadowmeld = 20580,
}
ids.Spec = {
	Arms = 1,
	Fury = 2,
	Protection = 3,
}
ids.Stance = {
	Battle = 1,
	Defensive = 2,
	Berserker = 3,
}
ids.Ability = {
--Arms
	BattleStance = 2457,
	Charge = 100,
	Hamstring = 1715,
	HeroicStrike = 78,
	MockingBlow = 694,
	MortalStrike = 12294,
	Overpower = 7384,
	SweepingStrikes = 12292,
	Rend = 772,
	Retaliation = 20230,
	ThunderClap = 6343,
--Fury
	BattleShout = 6673,
	BerserkerRage = 18499,
	BerserkerStance = 2458,
	Bloodthirst = 23881,
	ChallengingShout = 1161,
	Cleave = 845,
	DeathWish = 12328,
	DemoralizingShout = 1160,
	Execute = 5308,
	Intercept = 20252,
	IntimidatingShout = 5246,
	PiercingHowl = 12323,
	Pummel = 6552,
	Recklessness = 1719,
	Slam = 1464,
	Whirlwind = 1680, --lvl 36
--Protection
	Bloodrage = 2687,
	ConcussionBlow = 12809,
	DefensiveStance = 71,
	Devastate = 20243,
	Disarm = 676,
	LastStand = 12975,
	Revenge = 6572,
	ShieldBash = 72,
	ShieldBlock = 2565,
	ShieldSlam = 23922,
	ShieldWall = 871,
	SpellReflection = 23920,
	SunderArmor = 7386,
	Taunt = 355,
--TBC
	CommandingShout = 469,
	Intervene = 3411,
	Rampage = 29801,
	VictoryRush = 34428,
}
ids.Rank = {
--Arms
	ChargeRank1 = 100,
	ChargeRank2 = 6178,
	ChargeRank3 = 11578,
	HamstringRank1 = 1715,
	HamstringRank2 = 7372,
	HamstringRank3 = 7373,
	HeroicStrikeRank1 = 78,
	HeroicStrikeRank2 = 284,
	HeroicStrikeRank3 = 285,
	HeroicStrikeRank4 = 1608,
	HeroicStrikeRank5 = 11564,
	HeroicStrikeRank6 = 11565,
	HeroicStrikeRank7 = 11566,
	HeroicStrikeRank8 = 11567,
	HeroicStrikeRank9 = 25286,
	HeroicStrikeRank10 = 29707,
	HeroicStrikeRank11 = 30324,
	MockingBlowRank1 = 694,
	MockingBlowRank2 = 7400,
	MockingBlowRank3 = 7402,
	MockingBlowRank4 = 20559,
	MockingBlowRank5 = 20560,
	MockingBlowRank6 = 25266,
	MortalStrikeRank1 = 12294,
	MortalStrikeRank2 = 21551,
	MortalStrikeRank3 = 21552,
	MortalStrikeRank4 = 21553,
	MortalStrikeRank5 = 25248,
	MortalStrikeRank6 = 30330,
	OverpowerRank1 = 7384,
	OverpowerRank2 = 7887,
	OverpowerRank3 = 11584,
	OverpowerRank4 = 11585,
	RendRank1 = 772,
	RendRank2 = 6546,
	RendRank3 = 6547,
	RendRank4 = 6548,
	RendRank5 = 11572,
	RendRank6 = 11573,
	RendRank7 = 11574,
	RendRank8 = 25208,
	ThunderClapRank1 = 6343,
	ThunderClapRank2 = 8198,
	ThunderClapRank3 = 8204,
	ThunderClapRank4 = 8205,
	ThunderClapRank5 = 11580,
	ThunderClapRank6 = 11581,
	ThunderClapRank7 = 25264,
--Fury
	BattleShoutRank1 = 6673,
	BattleShoutRank2 = 5242,
	BattleShoutRank3 = 6192,
	BattleShoutRank4 = 11549,
	BattleShoutRank5 = 11550,
	BattleShoutRank6 = 11551,
	BattleShoutRank7 = 25289,
	BattleShoutRank8 = 2048,
	BloodthirstRank1 = 23881,
	BloodthirstRank2 = 23892,
	BloodthirstRank3 = 23893,
	BloodthirstRank4 = 23894,
	BloodthirstRank5 = 30339,
	BloodthirstRank6 = 30335,
	CleaveRank1 = 845,
	CleaveRank2 = 7369,
	CleaveRank3 = 11608,
	CleaveRank4 = 11609,
	CleaveRank5 = 20569,
	CleaveRank6 = 25231,
	DemoralizingShoutRank1 = 1160,
	DemoralizingShoutRank2 = 6190,
	DemoralizingShoutRank3 = 11554,
	DemoralizingShoutRank4 = 11555,
	DemoralizingShoutRank5 = 11556,
	DemoralizingShoutRank6 = 25202,
	DemoralizingShoutRank7 = 25203,
	ExecuteRank1 = 5308,
	ExecuteRank2 = 20658,
	ExecuteRank3 = 20660,
	ExecuteRank4 = 20661,
	ExecuteRank5 = 20662,
	ExecuteRank6 = 25234,
	ExecuteRank7 = 25236,
	InterceptRank1 = 20252,
	InterceptRank2 = 20616,
	InterceptRank3 = 20617,
	InterceptRank4 = 25272,
	InterceptRank5 = 25275,
	PummelRank1 = 6552,
	PummelRank2 = 6554,
	SlamRank1 = 1464,
	SlamRank2 = 8820,
	SlamRank3 = 11604,
	SlamRank4 = 11605,
	SlamRank5 = 25241,
	SlamRank6 = 25242,
--Protection
	RevengeRank1 = 6572,
	RevengeRank2 = 6574,
	RevengeRank3 = 7379,
	RevengeRank4 = 11600,
	RevengeRank5 = 11601,
	RevengeRank6 = 25288,
	RevengeRank7 = 25269,
	RevengeRank8 = 30357,
	ShieldBashRank1 = 72,
	ShieldBashRank2 = 1671,
	ShieldBashRank3 = 1672,
	ShieldBashRank4 = 29704,
	ShieldSlamRank1 = 23922,
	ShieldSlamRank2 = 23923,
	ShieldSlamRank3 = 23924,
	ShieldSlamRank4 = 23925,
	ShieldSlamRank5 = 25258,
	ShieldSlamRank6 = 30356,
	SunderArmorRank1 = 7386,
	SunderArmorRank2 = 7405,
	SunderArmorRank3 = 8380,
	SunderArmorRank4 = 11596,
	SunderArmorRank5 = 11597,
	SunderArmorRank6 = 25225,
--TBC Talents
	DevastateRank1 = 20243,
	DevastateRank2 = 30016,
	DevastateRank3 = 30022,
	RampageRank1 = 29801,
	RampageRank2 = 30030,
	RampageRank3 = 30033,
}
-- NOTE: Talent indices must match GetTalentInfo(tab, index) positions for TBC.
-- Run /script ConROC:PopulateTalentIDs() in-game to verify these indices.
ids.Arms_Talent = {
	ImprovedHeroicStrike = 1,
	Deflection = 2,
	ImprovedRend = 3,
	ImprovedCharge = 4,
	IronWill = 5,
	ImprovedThunderClap = 6,
	ImprovedOverpower = 7,
	AngerManagement = 8,
	DeepWounds = 9,
	TwoHandedWeaponSpecialization = 10,
	Impale = 11,
	PoleaxeSpecialization = 12,
	DeathWish = 13,
	MaceSpecialization = 14,
	SwordSpecialization = 15,
	ImprovedIntercept = 16,
	ImprovedHamstring = 17,
	ImprovedDisciplines = 18,
	BloodFrenzy = 19,
	MortalStrike = 20,
	SecondWind = 21,
	ImprovedMortalStrike = 22,
	EndlessRage = 23,
}
ids.Fury_Talent = {
	BoomingVoice = 1,
	Cruelty = 2,
	ImprovedDemoralizingShout = 3,
	UnbridledWrath = 4,
	ImprovedCleave = 5,
	PiercingHowl = 6,
	BloodCraze = 7,
	CommandingPresence = 8,
	DualWieldSpecialization = 9,
	ImprovedExecute = 10,
	Enrage = 11,
	ImprovedSlam = 12,
	SweepingStrikes = 13,
	WeaponMastery = 14,
	ImprovedBerserkerRage = 15,
	Flurry = 16,
	Precision = 17,
	Bloodthirst = 18,
	ImprovedWhirlwind = 19,
	ImprovedBerserkerStance = 20,
	Rampage = 21,
}
ids.Protection_Talent = {
	ImprovedBloodrage = 1,
	TacticalMastery = 2,
	Anticipation = 3,
	ShieldSpecialization = 4,
	Toughness = 5,
	LastStand = 6,
	ImprovedShieldBlock = 7,
	ImprovedRevenge = 8,
	Defiance = 9,
	ImprovedSunderArmor = 10,
	ImprovedDisarm = 11,
	ImprovedTaunt = 12,
	ImprovedShieldWall = 13,
	ConcussionBlow = 14,
	ImprovedShieldBash = 15,
	ShieldMastery = 16,
	OneHandedWeaponSpecialization = 17,
	ImprovedDefensiveStance = 18,
	ShieldSlam = 19,
	FocusedRage = 20,
	Vitality = 21,
	Devastate = 22,
}
-- Auras
ids.Buff = {
	Bloodrage = 29131,
	Bloodthirst = 23885,
	DeathWish = 12328,
	Enrage = 12880,
	Flurry = 12966,
	Rampage = 29801,
	ShieldBlock = 2565,
	Slam = 46916,
	OverPower = 68051,
}
ids.Debuff = {
	ExposeArmor = 8647,
	DemoralizingRoar = 99,
	ThunderClap = 6343,
}

function ConROC:UpdateSpellID()
--Ranks
	--Arms
	if IsSpellKnown(ids.Rank.ChargeRank3) then ids.Ability.Charge = ids.Rank.ChargeRank3;
	elseif IsSpellKnown(ids.Rank.ChargeRank2) then ids.Ability.Charge = ids.Rank.ChargeRank2; end

	if IsSpellKnown(ids.Rank.HamstringRank3) then ids.Ability.Hamstring = ids.Rank.HamstringRank3;
	elseif IsSpellKnown(ids.Rank.HamstringRank2) then ids.Ability.Hamstring = ids.Rank.HamstringRank2; end

	if IsSpellKnown(ids.Rank.HeroicStrikeRank11) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank11;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank10) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank10;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank9) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank9;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank8) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank8;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank7) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank7;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank6) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank6;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank5) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank5;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank4) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank4;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank3) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank3;
	elseif IsSpellKnown(ids.Rank.HeroicStrikeRank2) then ids.Ability.HeroicStrike = ids.Rank.HeroicStrikeRank2; end

	if IsSpellKnown(ids.Rank.MockingBlowRank6) then ids.Ability.MockingBlow = ids.Rank.MockingBlowRank6;
	elseif IsSpellKnown(ids.Rank.MockingBlowRank5) then ids.Ability.MockingBlow = ids.Rank.MockingBlowRank5;
	elseif IsSpellKnown(ids.Rank.MockingBlowRank4) then ids.Ability.MockingBlow = ids.Rank.MockingBlowRank4;
	elseif IsSpellKnown(ids.Rank.MockingBlowRank3) then ids.Ability.MockingBlow = ids.Rank.MockingBlowRank3;
	elseif IsSpellKnown(ids.Rank.MockingBlowRank2) then ids.Ability.MockingBlow = ids.Rank.MockingBlowRank2; end

	if IsSpellKnown(ids.Rank.MortalStrikeRank6) then ids.Ability.MortalStrike = ids.Rank.MortalStrikeRank6;
	elseif IsSpellKnown(ids.Rank.MortalStrikeRank5) then ids.Ability.MortalStrike = ids.Rank.MortalStrikeRank5;
	elseif IsSpellKnown(ids.Rank.MortalStrikeRank4) then ids.Ability.MortalStrike = ids.Rank.MortalStrikeRank4;
	elseif IsSpellKnown(ids.Rank.MortalStrikeRank3) then ids.Ability.MortalStrike = ids.Rank.MortalStrikeRank3;
	elseif IsSpellKnown(ids.Rank.MortalStrikeRank2) then ids.Ability.MortalStrike = ids.Rank.MortalStrikeRank2; end

	if IsSpellKnown(ids.Rank.OverpowerRank4) then ids.Ability.Overpower = ids.Rank.OverpowerRank4;
	elseif IsSpellKnown(ids.Rank.OverpowerRank3) then ids.Ability.Overpower = ids.Rank.OverpowerRank3;
	elseif IsSpellKnown(ids.Rank.OverpowerRank2) then ids.Ability.Overpower = ids.Rank.OverpowerRank2; end

	if IsSpellKnown(ids.Rank.RendRank8) then ids.Ability.Rend = ids.Rank.RendRank8;
	elseif IsSpellKnown(ids.Rank.RendRank7) then ids.Ability.Rend = ids.Rank.RendRank7;
	elseif IsSpellKnown(ids.Rank.RendRank6) then ids.Ability.Rend = ids.Rank.RendRank6;
	elseif IsSpellKnown(ids.Rank.RendRank5) then ids.Ability.Rend = ids.Rank.RendRank5;
	elseif IsSpellKnown(ids.Rank.RendRank4) then ids.Ability.Rend = ids.Rank.RendRank4;
	elseif IsSpellKnown(ids.Rank.RendRank3) then ids.Ability.Rend = ids.Rank.RendRank3;
	elseif IsSpellKnown(ids.Rank.RendRank2) then ids.Ability.Rend = ids.Rank.RendRank2; end

	if IsSpellKnown(ids.Rank.ThunderClapRank7) then ids.Ability.ThunderClap = ids.Rank.ThunderClapRank7;
	elseif IsSpellKnown(ids.Rank.ThunderClapRank6) then ids.Ability.ThunderClap = ids.Rank.ThunderClapRank6;
	elseif IsSpellKnown(ids.Rank.ThunderClapRank5) then ids.Ability.ThunderClap = ids.Rank.ThunderClapRank5;
	elseif IsSpellKnown(ids.Rank.ThunderClapRank4) then ids.Ability.ThunderClap = ids.Rank.ThunderClapRank4;
	elseif IsSpellKnown(ids.Rank.ThunderClapRank3) then ids.Ability.ThunderClap = ids.Rank.ThunderClapRank3;
	elseif IsSpellKnown(ids.Rank.ThunderClapRank2) then ids.Ability.ThunderClap = ids.Rank.ThunderClapRank2; end

	--Fury
	if IsSpellKnown(ids.Rank.BattleShoutRank8) then ids.Ability.BattleShout = ids.Rank.BattleShoutRank8;
	elseif IsSpellKnown(ids.Rank.BattleShoutRank7) then ids.Ability.BattleShout = ids.Rank.BattleShoutRank7;
	elseif IsSpellKnown(ids.Rank.BattleShoutRank6) then ids.Ability.BattleShout = ids.Rank.BattleShoutRank6;
	elseif IsSpellKnown(ids.Rank.BattleShoutRank5) then ids.Ability.BattleShout = ids.Rank.BattleShoutRank5;
	elseif IsSpellKnown(ids.Rank.BattleShoutRank4) then ids.Ability.BattleShout = ids.Rank.BattleShoutRank4;
	elseif IsSpellKnown(ids.Rank.BattleShoutRank3) then ids.Ability.BattleShout = ids.Rank.BattleShoutRank3;
	elseif IsSpellKnown(ids.Rank.BattleShoutRank2) then ids.Ability.BattleShout = ids.Rank.BattleShoutRank2; end

	if IsSpellKnown(ids.Rank.BloodthirstRank6) then ids.Ability.Bloodthirst = ids.Rank.BloodthirstRank6;
	elseif IsSpellKnown(ids.Rank.BloodthirstRank5) then ids.Ability.Bloodthirst = ids.Rank.BloodthirstRank5;
	elseif IsSpellKnown(ids.Rank.BloodthirstRank4) then ids.Ability.Bloodthirst = ids.Rank.BloodthirstRank4;
	elseif IsSpellKnown(ids.Rank.BloodthirstRank3) then ids.Ability.Bloodthirst = ids.Rank.BloodthirstRank3;
	elseif IsSpellKnown(ids.Rank.BloodthirstRank2) then ids.Ability.Bloodthirst = ids.Rank.BloodthirstRank2; end

	if IsSpellKnown(ids.Rank.CleaveRank6) then ids.Ability.Cleave = ids.Rank.CleaveRank6;
	elseif IsSpellKnown(ids.Rank.CleaveRank5) then ids.Ability.Cleave = ids.Rank.CleaveRank5;
	elseif IsSpellKnown(ids.Rank.CleaveRank4) then ids.Ability.Cleave = ids.Rank.CleaveRank4;
	elseif IsSpellKnown(ids.Rank.CleaveRank3) then ids.Ability.Cleave = ids.Rank.CleaveRank3;
	elseif IsSpellKnown(ids.Rank.CleaveRank2) then ids.Ability.Cleave = ids.Rank.CleaveRank2; end

	if IsSpellKnown(ids.Rank.ExecuteRank7) then ids.Ability.Execute = ids.Rank.ExecuteRank7;
	elseif IsSpellKnown(ids.Rank.ExecuteRank6) then ids.Ability.Execute = ids.Rank.ExecuteRank6;
	elseif IsSpellKnown(ids.Rank.ExecuteRank5) then ids.Ability.Execute = ids.Rank.ExecuteRank5;
	elseif IsSpellKnown(ids.Rank.ExecuteRank4) then ids.Ability.Execute = ids.Rank.ExecuteRank4;
	elseif IsSpellKnown(ids.Rank.ExecuteRank3) then ids.Ability.Execute = ids.Rank.ExecuteRank3;
	elseif IsSpellKnown(ids.Rank.ExecuteRank2) then ids.Ability.Execute = ids.Rank.ExecuteRank2; end

	if IsSpellKnown(ids.Rank.InterceptRank5) then ids.Ability.Intercept = ids.Rank.InterceptRank5;
	elseif IsSpellKnown(ids.Rank.InterceptRank4) then ids.Ability.Intercept = ids.Rank.InterceptRank4;
	elseif IsSpellKnown(ids.Rank.InterceptRank3) then ids.Ability.Intercept = ids.Rank.InterceptRank3;
	elseif IsSpellKnown(ids.Rank.InterceptRank2) then ids.Ability.Intercept = ids.Rank.InterceptRank2; end

	if IsSpellKnown(ids.Rank.PummelRank2) then ids.Ability.Pummel = ids.Rank.PummelRank2; end

	if IsSpellKnown(ids.Rank.SlamRank6) then ids.Ability.Slam = ids.Rank.SlamRank6;
	elseif IsSpellKnown(ids.Rank.SlamRank5) then ids.Ability.Slam = ids.Rank.SlamRank5;
	elseif IsSpellKnown(ids.Rank.SlamRank4) then ids.Ability.Slam = ids.Rank.SlamRank4;
	elseif IsSpellKnown(ids.Rank.SlamRank3) then ids.Ability.Slam = ids.Rank.SlamRank3;
	elseif IsSpellKnown(ids.Rank.SlamRank2) then ids.Ability.Slam = ids.Rank.SlamRank2; end

	--Protection
	if IsSpellKnown(ids.Rank.RevengeRank8) then ids.Ability.Revenge = ids.Rank.RevengeRank8;
	elseif IsSpellKnown(ids.Rank.RevengeRank7) then ids.Ability.Revenge = ids.Rank.RevengeRank7;
	elseif IsSpellKnown(ids.Rank.RevengeRank6) then ids.Ability.Revenge = ids.Rank.RevengeRank6;
	elseif IsSpellKnown(ids.Rank.RevengeRank5) then ids.Ability.Revenge = ids.Rank.RevengeRank5;
	elseif IsSpellKnown(ids.Rank.RevengeRank4) then ids.Ability.Revenge = ids.Rank.RevengeRank4;
	elseif IsSpellKnown(ids.Rank.RevengeRank3) then ids.Ability.Revenge = ids.Rank.RevengeRank3;
	elseif IsSpellKnown(ids.Rank.RevengeRank2) then ids.Ability.Revenge = ids.Rank.RevengeRank2; end

	if IsSpellKnown(ids.Rank.ShieldBashRank4) then ids.Ability.ShieldBash = ids.Rank.ShieldBashRank4;
	elseif IsSpellKnown(ids.Rank.ShieldBashRank3) then ids.Ability.ShieldBash = ids.Rank.ShieldBashRank3;
	elseif IsSpellKnown(ids.Rank.ShieldBashRank2) then ids.Ability.ShieldBash = ids.Rank.ShieldBashRank2; end

	if IsSpellKnown(ids.Rank.ShieldSlamRank6) then ids.Ability.ShieldSlam = ids.Rank.ShieldSlamRank6;
	elseif IsSpellKnown(ids.Rank.ShieldSlamRank5) then ids.Ability.ShieldSlam = ids.Rank.ShieldSlamRank5;
	elseif IsSpellKnown(ids.Rank.ShieldSlamRank4) then ids.Ability.ShieldSlam = ids.Rank.ShieldSlamRank4;
	elseif IsSpellKnown(ids.Rank.ShieldSlamRank3) then ids.Ability.ShieldSlam = ids.Rank.ShieldSlamRank3;
	elseif IsSpellKnown(ids.Rank.ShieldSlamRank2) then ids.Ability.ShieldSlam = ids.Rank.ShieldSlamRank2; end

	if IsSpellKnown(ids.Rank.SunderArmorRank6) then ids.Ability.SunderArmor = ids.Rank.SunderArmorRank6;
	elseif IsSpellKnown(ids.Rank.SunderArmorRank5) then ids.Ability.SunderArmor = ids.Rank.SunderArmorRank5;
	elseif IsSpellKnown(ids.Rank.SunderArmorRank4) then ids.Ability.SunderArmor = ids.Rank.SunderArmorRank4;
	elseif IsSpellKnown(ids.Rank.SunderArmorRank3) then ids.Ability.SunderArmor = ids.Rank.SunderArmorRank3;
	elseif IsSpellKnown(ids.Rank.SunderArmorRank2) then ids.Ability.SunderArmor = ids.Rank.SunderArmorRank2; end

	if IsSpellKnown(ids.Rank.DemoralizingShoutRank7) then ids.Ability.DemoralizingShout = ids.Rank.DemoralizingShoutRank7;
	elseif IsSpellKnown(ids.Rank.DemoralizingShoutRank6) then ids.Ability.DemoralizingShout = ids.Rank.DemoralizingShoutRank6;
	elseif IsSpellKnown(ids.Rank.DemoralizingShoutRank5) then ids.Ability.DemoralizingShout = ids.Rank.DemoralizingShoutRank5;
	elseif IsSpellKnown(ids.Rank.DemoralizingShoutRank4) then ids.Ability.DemoralizingShout = ids.Rank.DemoralizingShoutRank4;
	elseif IsSpellKnown(ids.Rank.DemoralizingShoutRank3) then ids.Ability.DemoralizingShout = ids.Rank.DemoralizingShoutRank3;
	elseif IsSpellKnown(ids.Rank.DemoralizingShoutRank2) then ids.Ability.DemoralizingShout = ids.Rank.DemoralizingShoutRank2; end

	--TBC Talents
	if IsSpellKnown(ids.Rank.DevastateRank3) then ids.Ability.Devastate = ids.Rank.DevastateRank3;
	elseif IsSpellKnown(ids.Rank.DevastateRank2) then ids.Ability.Devastate = ids.Rank.DevastateRank2; end

	if IsSpellKnown(ids.Rank.RampageRank3) then ids.Ability.Rampage = ids.Rank.RampageRank3;
	elseif IsSpellKnown(ids.Rank.RampageRank2) then ids.Ability.Rampage = ids.Rank.RampageRank2; end
end
