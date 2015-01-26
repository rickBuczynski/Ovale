local OVALE, Ovale = ...
local OvaleScripts = Ovale.OvaleScripts

do
	local name = "ovale_shaman_spells"
	local desc = "[6.0.2] Ovale: Shaman spells"
	local code = [[
# Shaman spells and functions.

# Learned spells.
Define(fulmination 88766)
	SpellInfo(fulmination learn=1 level=20 specialization=elemental)
Define(shamanism 62099)
	SpellInfo(shamanism learn=1 level=10 specialization=elemental)
Define(spiritual_insight 123099)
	SpellInfo(spiritual_insight learn=1 level=10 specialization=elemental)

Define(ancestral_guidance 108281)
	SpellInfo(ancestral_guidance cd=120 gcd=0)
	SpellAddBuff(ancestral_guidance ancestral_guidance_buff=1)
Define(ancestral_guidance_buff 108281)
	SpellInfo(ancestral_guidance_buff duration=10)
Define(ancestral_swiftness 16188)
	SpellInfo(ancestral_swiftness cd=90 gcd=0)
	SpellAddBuff(ancestral_swiftness ancestral_swiftness_buff=1)
Define(ancestral_swiftness_buff 16188)
Define(ascendance_caster 165339)
	SpellInfo(ascendance_caster cd=180 gcd=0)
	SpellAddBuff(ascendance_caster ascendance_caster_buff=1)
Define(ascendance_caster_buff 114050)
	SpellInfo(ascendance_caster_buff duration=15)
Define(ascendance_heal 165344)
	SpellInfo(ascendance_heal cd=180 gcd=0)
	SpellAddBuff(ascendance_heal ascendance_heal_buff=1)
Define(ascendance_heal_buff 114052)
	SpellInfo(ascendance_heal_buff duration=15)
Define(ascendance_melee 165341)
	SpellInfo(ascendance_melee cd=180 gcd=0)
	SpellInfo(ascendance_melee buff_cdr=cooldown_reduction_agility_buff)
	SpellAddBuff(ascendance_melee ascendance_melee_buff=1)
Define(ascendance_melee_buff 114051)
	SpellInfo(ascendance_melee_buff duration=15)
Define(bloodlust 2825)
	SpellInfo(bloodlust cd=300 gcd=0)
	SpellAddBuff(bloodlust bloodlust_buff=1)
Define(bloodlust_buff 2825)
	SpellInfo(bloodlust_buff duration=40)
Define(chain_heal 1064)
	SpellInfo(chain_heal cd=3 glyph=glyph_of_chaining)
	SpellAddBuff(chain_heal ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(chain_heal harmony_of_the_elements_buff=0 itemset=T17 itemcount=4)
	SpellAddBuff(chain_heal maelstrom_weapon_buff=0 if_spell=maelstrom_weapon)
	SpellAddBuff(chain_heal tidal_waves_buff=2 if_spell=tidal_waves)
	SpellAddBuff(chain_heal unleash_life_buff=0 if_spell=unleash_life)
Define(chain_lightning 421)
	SpellInfo(chain_lightning cd=3)
	SpellInfo(chain_lightning cd=0 if_spell=shamanism)
	SpellAddBuff(chain_lightning ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(chain_lightning lightning_shield_buff=1,buff,lightning_shield_buff if_spell=fulmination)
	SpellAddBuff(chain_lightning maelstrom_weapon_buff=0 if_spell=maelstrom_weapon)
	SpellAddBuff(chain_lightning enhanced_chain_lightning_buff=1 if_spell=enhanced_chain_lightning)
Define(cloudburst_totem 157153)
	SpellInfo(cloudburst_totem cd=30 duration=15 totem=water)
Define(cloudburst_totem_talent 19)
Define(earth_elemental_totem 2062)
	SpellInfo(earth_elemental_totem cd=300 duration=60 totem=earth)
	SpellInfo(earth_elemental_totem buff_cdr=cooldown_reduction_agility_buff specialization=enhancement)
Define(earth_elemental_totem_reinforce 118347)
	SpellInfo(earth_elemental_totem_reinforce gcd=0 offgcd=1)
	SpellAddBuff(earth_elemental_totem_reinforce earth_elemental_totem_reinforce_buff=1)
Define(earth_elemental_totem_reinforce_buff 118347)
	SpellInfo(earth_elemental_totem_reinforce_buff duration=60)
Define(earth_shield 974)
	SpellAddTargetBuff(earth_shield earth_shield_buff=1)
Define(earth_shield_buff 974)
	SpellInfo(earth_shield_buff duration=600 max_stacks=9)
Define(earth_shock 8042)
	SpellInfo(earth_shock cd=6 sharedcd=shock)
	SpellInfo(earth_shock addcd=-1 if_spell=spiritual_insight)
	SpellInfo(earth_shock cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellAddBuff(earth_shock elemental_fusion_buff=0 if_spell=elemental_fusion)
	SpellAddBuff(earth_shock lava_surge_buff=1,buff,lightning_shield_buff,15 if_spell=fulmination itemset=T17 itemcount=4)
	SpellAddBuff(earth_shock lightning_shield_buff=count,1,buff,lightning_shield_buff if_spell=fulmination)
Define(earthquake 61882)
	SpellInfo(earthquake cd=10)
	SpellRequire(earthquake cd 0=buff,echo_of_the_elements_buff if_spell=echo_of_the_elements)
	SpellAddBuff(earthquake ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(earthquake echo_of_the_elements_buff=0 if_spell=echo_of_the_elements)
	SpellAddTargetDebuff(earthquake earthquake_debuff=1)
Define(earthquake_debuff 61882)
	SpellInfo(earthquake_debuff duration=10 haste=spell tick=1)
Define(echo_of_the_elements 108283)
Define(echo_of_the_elements_buff 159101)
	SpellInfo(echo_of_the_elements_buff duration=15)
Define(echo_of_the_elements_talent 12)
Define(elemental_blast 117014)
	SpellInfo(elemental_blast cd=12 travel_time=1)
	SpellAddBuff(elemental_blast ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(elemental_blast elemental_blast_spirit_buff=1 specialization=restoration)
	SpellAddBuff(elemental_blast maelstrom_weapon_buff=0 if_spell=maelstrom_weapon)
	SpellAddBuff(elemental_blast unleash_flame_buff=0 if_spell=unleash_flame)
Define(elemental_blast_spirit_buff 173187)
	SpellInfo(elemental_blast_spirit_buff duration=8)
Define(elemental_blast_talent 18)
Define(elemental_fusion 152257)
Define(elemental_fusion_buff 157174)
	SpellInfo(elemental_fusion_buff duration=15 max_stacks=2)
Define(elemental_fusion_talent 19)
Define(elemental_mastery 16166)
	SpellInfo(elemental_mastery cd=120 gcd=0)
	SpellAddBuff(elemental_mastery elemental_mastery_buff=1)
Define(elemental_mastery_buff 16166)
	SpellInfo(elemental_mastery_buff duration=20)
Define(enhanced_chain_lightning 157765)
Define(enhanced_chain_lightning_buff 157766)
	SpellInfo(enhanced_chain_lightning_buff duration=15) # max_stacks=?
Define(feral_spirit 51533)
	SpellInfo(feral_spirit cd=120)
	SpellInfo(feral_spirit addcd=60 glyph=glyph_of_ephemeral_spirits)
	SpellInfo(feral_spirit buff_cdr=cooldown_reduction_agility_buff)
Define(fire_elemental_totem 2894)
	SpellInfo(fire_elemental_totem cd=300 duration=60 totem=fire)
	SpellInfo(fire_elemental_totem cd=150 glyph=glyph_of_fire_elemental_totem)
	SpellInfo(fire_elemental_totem buff_cdr=cooldown_reduction_agility_buff specialization=enhancement)
Define(fire_elemental_totem_empower 118350)
	SpellInfo(fire_elemental_totem_empower gcd=0 offgcd=1)
	SpellAddBuff(fire_elemental_totem_empower fire_elemental_totem_empower_buff=1)
Define(fire_elemental_totem_empower_buff 118350)
	SpellInfo(fire_elemental_totem_empower_buff duration=60)
Define(fire_nova 1535)
	SpellInfo(fire_nova cd=4)
	SpellInfo(fire_nova cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellRequire(fire_nova cd 0=buff,echo_of_the_elements_buff if_spell=echo_of_the_elements)
	SpellAddBuff(fire_nova echo_of_the_elements_buff=0 if_spell=echo_of_the_elements)
Define(flame_shock 8050)
	SpellInfo(flame_shock cd=6 sharedcd=shock)
	SpellInfo(flame_shock addcd=-1 if_spell=spiritual_insight)
	SpellInfo(flame_shock cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellAddBuff(flame_shock elemental_fusion_buff=0 if_spell=elemental_fusion)
	SpellAddBuff(flame_shock unleash_flame_buff=0 if_spell=unleash_flame)
	SpellAddTargetDebuff(flame_shock flame_shock_debuff=1)
Define(flame_shock_debuff 8050)
	SpellInfo(flame_shock_debuff duration=30 haste=spell tick=3)
Define(flurry 16282)
Define(frost_shock 8056)
	SpellInfo(frost_shock cd=6 sharedcd=shock)
	SpellInfo(frost_shock addcd=-2 glyph=glyph_of_frost_shock)
	SpellInfo(frost_shock cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellRequire(frost_shock cd 0=buff,echo_of_the_elements_buff if_spell=echo_of_the_elements)
	SpellAddBuff(frost_shock echo_of_the_elements_buff=0 if_spell=echo_of_the_elements)
	SpellAddBuff(frost_shock elemental_fusion_buff=0 if_spell=elemental_fusion)
Define(glyph_of_chain_lightning 55449)
Define(glyph_of_chaining 55452)
Define(glyph_of_ephemeral_spirits 159640)
Define(glyph_of_fire_elemental_totem 55455)
Define(glyph_of_frost_shock 55443)
Define(glyph_of_riptide 63273)
Define(glyph_of_spirit_walk 55454)
Define(glyph_of_spiritual_focus 159650)
Define(glyph_of_thunder 63270)
Define(glyph_of_totemic_recall 55438)
Define(glyph_of_wind_shear 55451)
Define(harmony_of_the_elements_buff 167703)
	SpellInfo(harmony_of_the_elements_buff duration=10)
Define(healing_rain 73920)
	SpellInfo(healing_rain cd=10)
	SpellAddBuff(healing_rain ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(healing_rain maelstrom_weapon_buff=0 if_spell=maelstrom_weapon)
Define(healing_stream_totem 5394)
	SpellInfo(healing_stream_totem cd=30 duration=15 totem=water)
Define(healing_surge 8004)
	SpellAddBuff(healing_surge ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(healing_surge tidal_waves_buff=-1 if_spell=tidal_waves)
	SpellAddBuff(healing_surge unleash_life_buff=0 if_spell=unleash_life)
Define(healing_tide_totem 108280)
	SpellInfo(healing_tide_totem cd=180 duration=10 totem=water)
Define(healing_wave 77472)
	SpellAddBuff(healing_wave ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(healing_wave tidal_waves_buff=-1 if_spell=tidal_waves)
	SpellAddBuff(healing_wave unleash_life_buff=0 if_spell=unleash_life)
Define(heroism 32182)
	SpellInfo(heroism cd=300 gcd=0)
	SpellAddBuff(heroism heroism_buff=1)
Define(heroism_buff 32182)
	SpellInfo(heroism_buff duration=40)
Define(improved_flame_shock 157804)
Define(improved_lightning_shield 157774)
Define(improved_riptide 157812)
Define(lava_beam 114074)
	SpellRequire(lava_beam unusable 1=buff,!ascendance_caster_buff if_spell=ascendance_caster)
	SpellAddBuff(lava_beam unleash_flame_buff=0 if_spell=unleash_flame)
Define(lava_burst 51505)
	SpellInfo(lava_burst cd=8 travel_time=1)
	SpellRequire(lava_burst cd 0=buff,lava_burst_no_cooldown_buff specialization=elemental)
	SpellAddBuff(lava_burst lava_surge_buff=0)
	SpellAddBuff(lava_burst echo_of_the_elements_buff=0 if_spell=echo_of_the_elements)
	SpellAddBuff(lava_burst lightning_shield_buff=1,buff,lightning_shield_buff if_spell=improved_lightning_shield)
	SpellAddBuff(lava_burst unleash_flame_buff=0 if_spell=unleash_flame)
SpellList(lava_burst_no_cooldown_buff ascendance_caster_buff echo_of_the_elements_buff)
Define(lava_lash 60103)
	SpellInfo(lava_lash cd=10.5)
	SpellInfo(lava_lash cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellRequire(lava_lash cd 0=buff,echo_of_the_elements_buff if_spell=echo_of_the_elements)
	SpellAddBuff(lava_lash echo_of_the_elements_buff=0 if_spell=echo_of_the_elements)
Define(lava_surge_buff 77762)
	SpellInfo(lava_surge_buff duration=6)
Define(lightning_bolt 403)
	SpellInfo(lightning_bolt travel_time=1)
	SpellAddBuff(lightning_bolt ancestral_swiftness_buff=0 if_spell=ancestral_swiftness)
	SpellAddBuff(lightning_bolt lightning_shield_buff=1,buff,lightning_shield_buff if_spell=fulmination)
	SpellAddBuff(lightning_bolt maelstrom_weapon_buff=0 if_spell=maelstrom_weapon)
Define(lightning_shield 324)
	SpellAddBuff(lightning_shield lightning_shield_buff=1)
Define(lightning_shield_buff 324)
	SpellInfo(lightning_shield_buff duration=3600 max_stacks=15)
	SpellInfo(lightning_shield_buff max_stacks=20 if_spell=improved_lightning_shield)
Define(liquid_magma 152255)
	SpellInfo(liquid_magma cd=45)
	SpellAddBuff(liquid_magma liquid_magma_buff=1)
Define(liquid_magma_buff 152255)
Define(liquid_magma_talent 21)
Define(maelstrom_weapon_buff 53817)
	SpellInfo(maelstrom_weapon_buff duration=30 max_stacks=5)
Define(magma_totem 8190)
	SpellInfo(magma_totem duration=60 totem=fire)
Define(pet_empower 118350)
Define(pet_empower_buff 118350)
Define(pet_reinforce 118347)
Define(pet_reinforce_buff 118347)
Define(primal_elementalist_talent 17)
Define(primal_strike 73899)
	SpellInfo(primal_strike cd=8)
Define(riptide 61295)
	SpellInfo(riptide cd=6)
	SpellInfo(riptide cd=0 glyph=glyph_of_riptide)
	SpellInfo(riptide addcd=-1 if_spell=improved_riptide glyph=!glyph_of_riptide)
	SpellAddBuff(riptide tidal_waves_buff=2 if_spell=tidal_waves)
	SpellAddTargetBuff(riptide riptide_buff=1)
Define(riptide_buff 61295)
	SpellInfo(riptide_buff duration=18 haste=spell tick=3)
Define(searing_totem 3599)
	SpellInfo(searing_totem duration=60 totem=fire)
Define(spirit_link_totem 98008)
	SpellInfo(spirit_link_totem cd=180 duration=6 totem=air)
Define(spirit_walk 58875)
	SpellInfo(spirit_walk cd=60)
	SpellInfo(spirit_walk addcd=-15 glyph=glyph_of_spirit_walk)
Define(spiritwalkers_grace 79206)
	SpellInfo(spiritwalkers_grace cd=120 gcd=0)
	SpellInfo(spiritwalkers_grace addcd=-60 glyph=glyph_of_spiritual_focus)
	SpellInfo(spiritwalkers_grace buff_cdr=cooldown_reduction_agility_buff specialization=enhancement)
Define(storm_elemental_totem 152256)
	SpellInfo(storm_elemental_totem cd=300 duration=60 totem=air)
Define(storm_elemental_totem_talent 20)
Define(stormstrike 17364)
	SpellInfo(stormstrike cd=7.5)
	SpellInfo(stormstrike cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellRequire(stormstrike cd 0=buff,echo_of_the_elements_buff if_spell=echo_of_the_elements)
	SpellAddBuff(stormstrike echo_of_the_elements_buff=0 if_spell=echo_of_the_elements)
Define(thunderstorm 51490)
	SpellInfo(thunderstorm cd=45)
	SpellInfo(thunderstorm addcd=-10 glyph=glyph_of_thunder)
Define(tidal_waves_buff 53390)
	SpellInfo(tidal_waves_buff duration=15 max_stacks=2)
Define(totemic_persistence_talent 8)
Define(totemic_recall 36936)
Define(tremor_totem 8143)
	SpellInfo(tremor_totem cd=60 duration=10 totem=earth)
Define(unleash_elements 73680)
	SpellInfo(unleash_elements cd=15)
	SpellInfo(unleash_elements cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellAddBuff(unleash_elements unleash_flame_buff=1)
Define(unleash_flame 165462)
	SpellInfo(unleash_flame cd=15)
	SpellAddBuff(unleash_flame unleash_flame_buff=1)
Define(unleash_flame_buff 165462)
	SpellInfo(unleash_flame_buff duration=20)
Define(unleash_life 73685)
	SpellInfo(unleash_life cd=15)
	SpellAddBuff(unleash_life unleash_life_buff=1)
Define(unleash_life_buff 73685)
	SpellInfo(unleash_life_buff duration=10)
Define(unleashed_fury_talent 16)
Define(water_shield 52127)
	SpellAddBuff(water_shield water_shield_buff=1)
Define(water_shield_buff 52127)
	SpellInfo(water_shield duration=3600)
Define(wind_shear 57994)
	SpellInfo(wind_shear cd=12 gcd=0 interrupt=1)
	SpellInfo(wind_shear addcd=3 glyph=glyph_of_wind_shear)
Define(windstrike 115356)
	SpellInfo(windstrike cd=7.5)
	SpellInfo(windstrike cd_haste=melee gcd_haste=melee if_spell=flurry)
	SpellRequire(windstrike cd 0=buff,echo_of_the_elements_buff if_spell=echo_of_the_elements)
	SpellRequire(windstrike unusable 1=buff,!ascendance_melee_buff if_spell=ascendance_melee)
	SpellAddBuff(windstrike echo_of_the_elements_buff=0 if_spell=echo_of_the_elements)
Define(windwalk_totem 108273)
	SpellInfo(windwalk_totem cd=60 duration=6 totem=air)

# Non-default tags for OvaleSimulationCraft.
	SpellInfo(earthquake tag=shortcd)
	SpellInfo(elemental_mastery tag=shortcd)
]]

	OvaleScripts:RegisterScript("SHAMAN", name, desc, code, "include")
end
