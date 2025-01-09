/datum/map/sector/cyran_192
	id = "cyran_192"
	name = "Sector - Cyran"
	width = 192
	height = 192
	levels = list(
		/datum/map_level/sector/cyran_192/main,
		/datum/map_level/sector/cyran_192/upper
	)


/datum/map_level/sector/cyran_192
	base_turf = /turf/simulated/floor/outdoors/snow/classp
	traits = list(
		ZTRAIT_GRAVITY,
	)
	planet_path = /datum/planet/cyran
	air_outdoors = /datum/atmosphere/planet/cyran

/datum/map_level/sector/cyran_192/main
	id = "CyranMain192"
	name = "Sector - Cyran: Surface"
	display_name = "Cyran - Surface"
	absolute_path = "maps/sectors/cyran_192/levels/cyran1.dmm"
	link_above = /datum/map_level/sector/cyran_192/upper
	base_turf = /turf/simulated/floor/outdoors/snow/classp

/datum/map_level/sector/cyran_192/upper
	id = "CyranUpper192"
	name = "Sector - Cyran: Upper"
	display_name = "Cyran - Upper"
	absolute_path = "maps/sectors/cyran_192/levels/cyran2.dmm"
	link_below = /datum/map_level/sector/cyran_192/main
	base_turf = /turf/simulated/open