////////////////////////////////////////
// Triumph custom shuttle implemnetations
////////////////////////////////////////

/obj/machinery/computer/shuttle_control/inv_eltiran_dawn_backup
	name = "eltiran dawn backup shuttle control console"
	shuttle_tag = "Eltiran Dawn Backup"
	req_one_access = list(ACCESS_COMMAND_BRIDGE,ACCESS_GENERAL_PILOT)

/obj/machinery/computer/shuttle_control/multi/mercenary
	name = "vessel control console"
	shuttle_tag = "Mercenary"
	req_one_access = list(ACCESS_FACTION_SYNDICATE)

/obj/machinery/computer/shuttle_control/multi/ninja
	name = "vessel control console"
	shuttle_tag = "Ninja"
	//req_one_access = list()

/obj/machinery/computer/shuttle_control/multi/skipjack
	name = "vessel control console"
	shuttle_tag = "Skipjack"
	//req_one_access = list()

/obj/machinery/computer/shuttle_control/multi/specops
	name = "vessel control console"
	shuttle_tag = "NDV Phantom"
	req_one_access = list(ACCESS_CENTCOM_ERT)

/obj/machinery/computer/shuttle_control/multi/trade
	name = "vessel control console"
	shuttle_tag = "Trade"
	req_one_access = list(ACCESS_FACTION_TRADER)

// EXCURSION SHUTTLE DATA

/datum/shuttle/autodock/overmap/excursion/inv_eltiran_dawn
	name = "Marine Transport Shuttle"
	warmup_time = 0
	shuttle_area = list(/area/shuttle/excursion/inv_eltiran_dawn)
	shuttle_area = list(/area/shuttle/excursion/cockpit, /area/shuttle/excursion/general, /area/shuttle/excursion/cargo)
	current_location = "inv_eltiran_dawn_excursion_hangar"
	docking_controller_tag = "expshuttle_docker"
	landmark_transition = "nav_transit_exploration"
	move_time = 20

/area/shuttle/excursion/inv_eltiran_dawn
	name = "Marine Transport Shuttle"
	icon_state = "shuttle"

/obj/machinery/computer/shuttle_control/explore/excursion
	name = "short jump console"
	shuttle_tag = "Marine Transport Shuttle"
	req_one_access = list(ACCESS_GENERAL_PILOT)

// COURSER SHUTTLE DATA

/datum/shuttle/autodock/overmap/courser/inv_eltiran_dawn
	name = "Courser Scouting Vessel"
	warmup_time = 0
	shuttle_area = list(/area/shuttle/courser/cockpit, /area/shuttle/courser/general, /area/shuttle/courser/battery)
	//shuttle_area = list(/area/shuttle/excursion/cockpit, /area/shuttle/excursion/general, /area/shuttle/excursion/cargo)
	current_location = "inv_eltiran_dawn_courser_hangar"
	docking_controller_tag = "courser_docker"
	landmark_transition = "nav_transit_courser"
	move_time = 15

/area/shuttle/courser
	name = "Courser Scouting Vessel"
	icon_state = "shuttle"

/obj/machinery/computer/shuttle_control/explore/courser
	name = "short jump console"
	shuttle_tag = "Courser Scouting Vessel"
	req_one_access = list(ACCESS_GENERAL_PILOT)

// Public Civilian Shuttle

/datum/shuttle/autodock/overmap/civvie/inv_eltiran_dawn
	name = "Civilian Transport"
	warmup_time = 10
	shuttle_area = list(/area/shuttle/civvie/cockpit, /area/shuttle/civvie/general)
	current_location = "inv_eltiran_dawn_civvie_home"
	docking_controller_tag = "civvie_docker"
	landmark_transition = "nav_transit_civvie"
	fuel_consumption = 10
	move_time = 30

/area/shuttle/civvie
	name = "Civilian Transport"
	icon_state = "shuttle"

/obj/machinery/computer/shuttle_control/explore/civvie
	name = "civilian jump console"
	shuttle_tag = "Civilian Transport"


// Mining Shuttle

/datum/shuttle/autodock/overmap/mining/inv_eltiran_dawn
	name = "Mining Shuttle"
	warmup_time = 10
	shuttle_area = list(/area/shuttle/mining_ship/general)
	current_location = "inv_eltiran_dawn_mining_port"
	docking_controller_tag = "mining_docker"
	landmark_transition = "nav_transit_mining"
	move_time = 30

/area/shuttle/mining
	name = "Mining Shuttle"
	icon_state = "shuttle"

/obj/machinery/computer/shuttle_control/explore/mining
	name = "mining jump console"
	shuttle_tag = "Mining Shuttle"

//EMT Shuttle
/datum/shuttle/autodock/overmap/emt/inv_eltiran_dawn
	name = "Dart EMT Shuttle"
	warmup_time = 5
	shuttle_area = list(/area/shuttle/emt/general, /area/shuttle/emt/cockpit)
	current_location = "inv_eltiran_dawn_emt_dock"
	docking_controller_tag = "emt_shuttle_docker"
	landmark_transition = "nav_transit_emt"
	move_time = 20

/area/shuttle/emt
	name = "Dart EMT Shuttle"
	icon_state = "shuttle"

/obj/machinery/computer/shuttle_control/explore/emt
	name = "EMT jump console"
	shuttle_tag = "Dart EMT Shuttle"

//////////////////////////////////////////////////////////////
// Escape shuttle and pods
/datum/shuttle/autodock/ferry/emergency/escape/inv_eltiran_dawn
	name = "Escape"
	location = FERRY_LOCATION_OFFSITE
	shuttle_area = /area/shuttle/escape
	warmup_time = 10
	landmark_offsite = "escape_cc"
	landmark_station = "escape_inv_eltiran_dawn"
	landmark_transition = "escape_transit"
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN

// Supply shuttle
/datum/shuttle/autodock/ferry/supply/cargo/inv_eltiran_dawn
	name = "Supply"
	location = FERRY_LOCATION_OFFSITE
	shuttle_area = /area/shuttle/supply
	warmup_time = 10
	landmark_offsite = "supply_cc"
	landmark_station = "supply_dock"
	docking_controller_tag = "supply_shuttle"
	flags = SHUTTLE_FLAGS_PROCESS|SHUTTLE_FLAGS_SUPPLY