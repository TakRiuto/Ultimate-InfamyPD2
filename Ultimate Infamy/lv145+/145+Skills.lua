---"hook_id": "lib/tweak_data/skilltreetweakdata", "script_path": "lv145+/145+Skills.lua"---

--local player_level = managers.experience:current_level()
--if player_level >= 145 then--

	local old_init = SkillTreeTweakData.init

	function SkillTreeTweakData:init()
		old_init(self)
		
		self.default_upgrades = {
		-- DEFAULT SKILLS --
			"player_fall_damage_multiplier",
			"player_fall_health_damage_multiplier",
			"player_silent_kill",
			"player_primary_weapon_when_downed",
			"player_intimidate_enemies",
			"player_special_enemy_highlight",
			"player_hostage_trade",
			"player_sec_camera_highlight",
			"player_corpse_dispose",
			"player_corpse_dispose_amount_1",
			"player_civ_harmless_melee",
			"player_walk_speed_multiplier",
			"player_steelsight_when_downed",
			"player_crouch_speed_multiplier",
			"carry_interact_speed_multiplier_1",
			"carry_interact_speed_multiplier_2",
			"carry_movement_speed_multiplier",
			"trip_mine_sensor_toggle",
			"trip_mine_sensor_highlight",
			"trip_mine_can_switch_on_off",
			"ecm_jammer_can_activate_feedback",
			"ecm_jammer_interaction_speed_multiplier",
			"ecm_jammer_can_retrigger",
			"ecm_jammer_affects_cameras",
			"striker_reload_speed_default",
			"temporary_first_aid_damage_reduction",
			"temporary_passive_revive_damage_reduction_2",
			"akimbo_recoil_index_addend_1",
			"doctor_bag",
			"ammo_bag",
			"trip_mine",
			"ecm_jammer",
			"first_aid_kit",
			"sentry_gun",
			"bodybags_bag",
			"saw",
			"cable_tie",
			"jowi",
			"x_1911",
			"x_b92fs",
			"x_deagle",
			"x_g22c",
			"x_g17",
			"x_usp",
			"x_sr2",
			"x_mp5",
			"x_akmsu",
			"x_packrat",

		--145+ SKILLS--

			--COMBAT MEDIC--
			"temporary_revive_damage_reduction_1",
			"player_revive_damage_reduction_1",
			"player_revive_health_boost",

			--MARTIALS ARTS--
			"player_melee_damage_dampener",
			"player_melee_knockdown_mul",

			--NINE LIVES--
			"player_bleed_out_health_multiplier",
			"player_additional_lives_1",

			--EQUILIBRIUM--
			"pistol_swap_speed_multiplier",

			--SECOND WIND--
			"temporary_damage_speed_multiplier",

			--DUCK AND COVER--
			"player_stamina_regen_timer_multiplier",
			"player_stamina_regen_multiplier",
			"player_run_speed_multiplier",

			--CHAMELEON--
			"player_suspicion_bonus",
			"player_sec_camera_highlight_mask_off",
			"player_special_enemy_highlight_mask_off",
			"player_mask_off_pickup",
			"player_small_loot_multiplier_1",

			--THIRD LAW--
			"sentry_gun_cost_reduction_1",
			"sentry_gun_shield",

			--HARDWARE EXPERT--
			"player_drill_fix_interaction_speed_multiplier",
			"player_trip_mine_deploy_time_multiplier_2",
			"player_drill_alert",
			"player_silent_drill",
			"player_drill_autorepair_1",

			--STEADY GRIP--
			"player_weapon_accuracy_increase_1",

			--SCAVENGING--
			"player_increased_pickup_area_1",

			--UNDERDOG--
			"player_damage_multiplier_outnumbered",
			"player_damage_dampener_outnumbered",

			--STABLE SHOT--
			"player_stability_increase_bonus_1",

			--FORCED FRIENDSHIP--
			"cable_tie_quantity",
			"cable_tie_interact_speed_multiplier"
		}
	end
--end--
