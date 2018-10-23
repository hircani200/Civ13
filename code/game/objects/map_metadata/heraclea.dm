#define NO_WINNER "The fighting is still going on."
/obj/map_metadata/heraclea
	ID = MAP_HERACLEA
	title = "Heraclea (150x75x1)"
	lobby_icon_state = "ancient"
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 300
	squad_spawn_locations = FALSE
//	min_autobalance_players = 90
	faction_organization = list(
		ROMAN,
		GREEK)
	available_subfactions = list(
		)
	roundend_condition_sides = list(
		list(ROMAN) = /area/caribbean/roman,
		list(GREEK) = /area/caribbean/greek
		)
	front = "Pacific"
	faction_distribution_coeffs = list(ROMAN = 0.5, GREEK = 0.5)
//	songs = list(
//		"He's a Pirate:1" = 'sound/music/hes_a_pirate.ogg')
//	meme = TRUE
	battle_name = "Heraclea"
	mission_start_message = "<font size=4>The <b>Greek</b> and <b>Roman</b> armies are facing each other in southern Italy! Get ready for the line battle! It will start in <b>5 minutes</b></font>"
	faction1 = ROMAN
	faction2 = GREEK
	ambience = list('sound/ambience/jungle1.ogg')
	songs = list(
		"Divinitus:1" = 'sound/music/divinitus.ogg',)

/obj/map_metadata/heraclea/faction2_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 3000 || admin_ended_all_grace_periods)

/obj/map_metadata/heraclea/faction1_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 3000 || admin_ended_all_grace_periods)


	#undef NO_WINNER