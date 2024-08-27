/obj/overmap/entity/visitable/ship/inv_eltiran_dawn
	name = "INV Eltiran Dawn"	// Name of the location on the overmap.
	desc = "The Eltiran Dawn is one of the many ships that form the Imperial Navy 43rd Expeditionary Fleet"

	scanner_desc = @{"[i]Registration[/i]: INV Eltiran Dawn
[i]Class[/i]: Imperial Cutter
[i]Transponder[/i]: Transmitting (CIV), Imperial Navy IFF
[b]Notice[/b]: Imperial Navy Vessel, authorized personnel only"}

	icon_state = "ship"
	vessel_mass = 12500 // temporarily buffed by 2x due to vorestation fucking up large gas thruster code
	burn_delay = 2 SECONDS
	fore_dir = EAST	// Which direction the ship/z-level is facing.  It will move dust particles from that direction when moving.
	base = TRUE		// Honestly unsure what this does but it seems the main sector or "Map" we're at has this so here it stays
	// The waypoints that are avaliable once you are at this Navpoint
	initial_generic_waypoints = list("nav_capitalship_docking2", "inv_eltiran_dawn_excursion_hangar", "inv_eltiran_dawn_space_SW", "inv_eltiran_dawn_mining_port")

	initial_restricted_waypoints = list(
		"Marine Transport Shuttle" = list("inv_eltiran_dawn_excursion_hangar"),
		"Courser Scouting Vessel" = list("inv_eltiran_dawn_courser_hangar"),
		"Hammerhead Patrol Barge" = list("inv_eltiran_dawn_hammerhead_hangar"),
		"Civilian Transport" = list("inv_eltiran_dawn_civvie_home"),
		"Dart EMT Shuttle" = list("inv_eltiran_dawn_emt_dock"),
		"Beruang Trade Ship" = list("inv_eltiran_dawn_annex_dock"),
		"Mining Shuttle" = list("inv_eltiran_dawn_mining_port"),
		"NDV Quicksilver" = list("inv_eltiran_dawn_specops_dock")
		)
