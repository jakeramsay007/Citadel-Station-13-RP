/datum/map/sector/cyran_140
	id = "cyran_140"
	name = "Sector - Cyran"
	width = 140
	height = 140
	levels = list(
		/datum/map_level/sector/cyran_140/main,
		/datum/map_level/sector/cyran_140/upper
	)

/datum/map_level/sector/cyran_140
	base_turf = /turf/simulated/floor/outdoors/snow/classp
	traits = list(
		ZTRAIT_GRAVITY,
	)
	planet_path = /datum/planet/classm
	air_outdoors = /datum/atmosphere/planet/classm

/datum/map_level/sector/cyran_140/main
	id = "CyranMain140"
	name = "Sector - Cyran: Surface"
	display_name = "Cyran - Surface"
	absolute_path = "maps/sectors/cyran_140/levels/cyran1.dmm"
	link_above = /datum/map_level/sector/cyran_140/upper
	base_turf = /turf/simulated/floor/outdoors/snow/classp

/datum/map_level/sector/cyran_140/upper
	id = "CyranUpper140"
	name = "Sector - Cyran: Upper"
	display_name = "Cyran - Upper"
	absolute_path = "maps/sectors/cyran_140/levels/cyran2.dmm"
	link_below = /datum/map_level/sector/cyran_140/main
	base_turf = /turf/simulated/open