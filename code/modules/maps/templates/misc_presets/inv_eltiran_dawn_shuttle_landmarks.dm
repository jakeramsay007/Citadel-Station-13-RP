/*
Preset landmarks from Triumph. Still in use for a few maps. At some point need to remap these but
right now its not a big priority - Bloop 2022

 */

// Shared landmark for docking at the station

/obj/effect/shuttle_landmark/automatic/station_dockpoint1
	name = "Station Docking Point 1"
	landmark_tag = "nav_station_docking1"
	docking_controller = "deck4_dockarm1"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/automatic/station_dockpoint2
	name = "INV Eltiran Dawn - Docking Arm 2"
	landmark_tag = "nav_capitalship_docking2"
	docking_controller = "deck4_dockarm2"
	base_turf = /turf/space
	base_area = /area/space


// Exclusive landmark for docking at the station

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck4/civvie
	name = "INV Eltiran Dawn - Civilian Transport Dock"
	landmark_tag = "inv_eltiran_dawn_civvie_home"
	docking_controller = "civvie_dock"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck4/specops
	name = "INV Eltiran Dawn - Special Operations Dock"
	landmark_tag = "inv_eltiran_dawn_specops_dock"
	docking_controller = "inv_eltiran_dawn_specops_dock"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck3/emt
	name = "INV Eltiran Dawn - EMT Shuttle Dock"
	landmark_tag = "inv_eltiran_dawn_emt_dock"
	docking_controller = "emt_shuttle_dock"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck2/mining
	name = "INV Eltiran Dawn Mining Dock"
	landmark_tag = "inv_eltiran_dawn_mining_port"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck2/trade
	name = "INV Eltiran Dawn Annex Dock"
	landmark_tag = "inv_eltiran_dawn_annex_dock"
	docking_controller = "inv_eltiran_dawn_annex_dock"
	base_turf = /turf/space
	base_area = /area/space

// Shared landmark for docking *inside* the station


// Exclusive landmark for docking *inside* the station

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck4/excursion
	name = "INV Eltiran Dawn - Excursion Hangar"
	landmark_tag = "inv_eltiran_dawn_excursion_hangar"
	docking_controller = "expshuttle_dock"
	base_turf = /turf/simulated/floor/tiled/techfloor/grid
	base_area = /area/exploration/excursion_dock

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck4/courser
	name = "INV Eltiran Dawn - Courser Hangar"
	landmark_tag = "inv_eltiran_dawn_courser_hangar"
	docking_controller = "courser_dock"
	base_turf = /turf/simulated/floor/tiled/techfloor/grid
	base_area = /area/exploration/courser_dock

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck4/hammerhead
	name = "INV Eltiran Dawn - Hammerhead Hangar"
	landmark_tag = "rift_hammerhead_hangar"
	docking_controller = "hammerhead_docker"
	base_turf = /turf/simulated/floor/tiled/techfloor/grid
	base_area = /area/security/hammerhead_bay

// ON STATION NAV POINTS

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck4/excursion_space
	name = "Near INV Eltiran Dawn (SW)"
	landmark_tag = "inv_eltiran_dawn_space_SW"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck3/port
	name = "Near INV Eltiran Dawn (Port Deck 3)"
	landmark_tag = "inv_eltiran_dawn_space_port_3"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck3/starboard
	name = "Near INV Eltiran Dawn (Starboard Deck 3)"
	landmark_tag = "inv_eltiran_dawn_space_starboard_3"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck2/port
	name = "Near INV Eltiran Dawn (Port Deck 2)"
	landmark_tag = "inv_eltiran_dawn_space_port_2"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck2/starboard
	name = "Near INV Eltiran Dawn (Starboard Deck 2)"
	landmark_tag = "inv_eltiran_dawn_space_starboard_2"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck1/port
	name = "Near INV Eltiran Dawn (Port Deck 1)"
	landmark_tag = "inv_eltiran_dawn_space_port_1"
	base_turf = /turf/space
	base_area = /area/space

/obj/effect/shuttle_landmark/inv_eltiran_dawn/deck1/starboard
	name = "Near INV Eltiran Dawn (Starboard Deck 1)"
	landmark_tag = "inv_eltiran_dawn_space_starboard_1"
	base_turf = /turf/space
	base_area = /area/space

// OFF-STATION NAV POINTS


// TRANSIT NAV POINTS

/obj/effect/shuttle_landmark/transit/inv_eltiran_dawn/excursion
	name = "In transit"
	landmark_tag = "nav_transit_exploration"

/obj/effect/shuttle_landmark/transit/inv_eltiran_dawn/courser
	name = "In transit"
	landmark_tag = "nav_transit_courser"

/obj/effect/shuttle_landmark/transit/inv_eltiran_dawn/pirate
	name = "In transit"
	landmark_tag = "nav_transit_pirate"

/obj/effect/shuttle_landmark/transit/inv_eltiran_dawn/civvie
	name = "In transit"
	landmark_tag = "nav_transit_civvie"

/obj/effect/shuttle_landmark/transit/inv_eltiran_dawn/mining
	name = "In transit"
	landmark_tag = "nav_transit_mining"

/obj/effect/shuttle_landmark/transit/inv_eltiran_dawn/trade
	name = "In transit"
	landmark_tag = "nav_transit_trade"

/obj/effect/shuttle_landmark/transit/inv_eltiran_dawn/emt
	name = "In transit"
	landmark_tag = "nav_transit_emt"
