/datum/role/job/station/engineer
	id = JOB_ID_STATION_ENGINEER
	title = "IEC Station Engineer"
	flag = ENGINEER
	departments = list(DEPARTMENT_ENGINEERING)
	department_flag = ENGSEC
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Chief Engineer and all superior officers."
	selection_color = "#5B4D20"
	idtype = /obj/item/card/id/engineering/engineer
	pto_type = PTO_ENGINEERING

	additional_access = list(
		ACCESS_ENGINEERING_ATMOS,
	)
	minimal_access = list(
		ACCESS_COMMAND_EVA,
		ACCESS_ENGINEERING_MAIN,
		ACCESS_ENGINEERING_ENGINE,
		ACCESS_ENGINEERING_TECHSTORAGE,
		ACCESS_ENGINEERING_MAINT,
		ACCESS_ENGINEERING_AIRLOCK,
		ACCESS_ENGINEERING_CONSTRUCTION,
	)

	alt_titles = list(
		"IEC Maintenance Technician" = /datum/prototype/struct/alt_title/maint_tech,
		"IEC Engine Technician" = /datum/prototype/struct/alt_title/engine_tech,
		"IEC Electrician" = /datum/prototype/struct/alt_title/electrician,
		"IEC Apprentice Engineer" = /datum/prototype/struct/alt_title/apprentice_engineer,
		"IEC Construction Engineer" = /datum/prototype/struct/alt_title/construction_engi,
		"IEC Damage Control Technician" = /datum/prototype/struct/alt_title/damage_tech,
		)

	minimal_player_age = 3

	outfit_type = /datum/outfit/job/station/station_engineer
	desc = "A Station Engineer keeps the facility running. They repair damages, keep the atmosphere stable, and ensure that power is being \
						generated and distributed. On quiet shifts, they may be called upon to make cosmetic alterations to the ship. \
						They are typically of the rank of Lance Corporal, or Corporal."

/datum/prototype/struct/alt_title/maint_tech
	title = "IEC Maintenance Technician"
	title_blurb = "A Maintenance Technician is generally a junior Engineer, and can be expected to run the mildly unpleasant or boring tasks that other \
					Engineers don't care to do. They are typically of the rank of Able Rate."

/datum/prototype/struct/alt_title/engine_tech
	title = "IEC Engine Technician"
	title_blurb = "An Engine Technician tends to the primary engine, whatever form it takes. They are expected to be able to keep it stable, and \
					possibly even run it beyond normal tolerances. They are typically of the rank of Corporal."

/datum/prototype/struct/alt_title/electrician
	title = "IEC Electrician"
	title_blurb = "An Electrician's primary duty is making sure power is properly distributed throughout the facility, utilizing solars, substations, and other \
					methods to ensure every department has power in an emergency. They are typically of the rank of Lance Corporal."

/datum/prototype/struct/alt_title/apprentice_engineer
	title = "IEC Apprentice Engineer"
	title_blurb = "An Apprentice Engineer is still learning the art of engineering, and should listen to other engineers for direction.\
					They are typically of the rank of Recruit, or Able Rate."

/datum/prototype/struct/alt_title/construction_engi
	title = "IEC Construction Engineer"
	title_blurb = "A Construction Engineer fulfills similar duties to other engineers, but usually occupies spare time with construction of extra facilities in dedicated areas or \
					as additions to facility layout. They are typically of the rank of Lance Corporal or Corporal."

/datum/prototype/struct/alt_title/damage_tech
	title = "IEC Damage Control Technician"
	title_blurb = "A Damage Control Technician specializes in repairing a damaged facility as quickly as possible, usually possessing good skills with both atmospherics and quick repair work. \
					They are typically of the rank of Corporal."


/datum/outfit/job/station/station_engineer
	name = OUTFIT_JOB_NAME("IEC Engineer")
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/under/rank/engineer
	id_type = /obj/item/card/id/engineering/engineer
	pda_type = /obj/item/pda/engineering
	l_ear = /obj/item/radio/headset/headset_eng
	belt = /obj/item/storage/belt/utility/atmostech
	belt = /obj/item/storage/belt/utility/full
	shoes = /obj/item/clothing/shoes/boots/workboots
	r_pocket = /obj/item/t_scanner

	id_type = /obj/item/card/id/engineering/atmos
	pda_type = /obj/item/pda/atmos

	backpack = /obj/item/storage/backpack/industrial
	satchel_one = /obj/item/storage/backpack/satchel/eng
	messenger_bag = /obj/item/storage/backpack/messenger/engi
	pda_slot = SLOT_ID_LEFT_POCKET
	dufflebag = /obj/item/storage/backpack/dufflebag/eng

	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
