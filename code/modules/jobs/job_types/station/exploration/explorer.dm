/datum/role/job/station/explorer
	id = JOB_ID_EXPLORER
	title = "IMC Marine"
	economy_payscale = ECONOMY_PAYSCALE_JOB_DANGER
	flag = EXPLORER
	departments = list(DEPARTMENT_PLANET)
	department_flag = MEDSCI
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Marine Commander, the Research Director and all superior officers."
	selection_color = "#999440"
	pto_type = PTO_EXPLORATION
	idtype = /obj/item/card/id/explorer/explorer
	minimal_access = list(
		ACCESS_GENERAL_EXPLORER,
		ACCESS_ENGINEERING_AIRLOCK,
		ACCESS_SCIENCE_MAIN,
		ACCESS_GENERAL_PILOT,
		ACCESS_GENERAL_GATEWAY,
	)
	outfit_type = /datum/outfit/job/station/explorer
	desc = "An Imperial Marine acts as the primary away team for the Ship on boarding operations and ground excursions. \
			Their rank is dependant on their experience, but typically starts at Marine up to Sergeant."
	alt_titles = list(
		"IMC Surveyor" = /datum/prototype/struct/alt_title/surveyor,
		"IMC Field Scout" = /datum/prototype/struct/alt_title/explorer/field_scout,
		)

/datum/prototype/struct/alt_title/surveyor
	title = "IMC Surveyor"
	title_blurb = "A Surveyor is a Marine who specializes in measuring and mapping previously unknown areas. \
					They are typically a Corporal or above due to experience."

/datum/prototype/struct/alt_title/explorer/field_scout
	title = "IMC Field Scout"
	title_blurb = "A Field Scout is a Marine who specializes in navigating unknown environment and locating points of interest to the team. \
					As a reconnaisance specialist, they typically hold the rank of Lance Corporal or above."

/datum/outfit/job/station/explorer
	name = OUTFIT_JOB_NAME("IMC Marine")
	id_pda_assignment = "IMC Marine"
	shoes = /obj/item/clothing/shoes/boots/winter/explorer
	uniform = /obj/item/clothing/under/explorer
	l_ear = /obj/item/radio/headset/explorer

	id_slot = SLOT_ID_WORN_ID
	pda_slot = SLOT_ID_LEFT_POCKET

	pda_type = /obj/item/pda/explorer
	id_type = /obj/item/card/id/explorer/explorer

	backpack = /obj/item/storage/backpack/voyager
	backpack_contents = list(/obj/item/clothing/accessory/permit/gun/planetside = 1)
	satchel_one = /obj/item/storage/backpack/satchel/voyager
	dufflebag = /obj/item/storage/backpack/dufflebag/voyager

	flags = OUTFIT_HAS_BACKPACK|OUTFIT_COMPREHENSIVE_SURVIVAL

/datum/outfit/job/station/explorer2/post_equip(mob/living/carbon/human/H)
	..()
	for(var/obj/item/clothing/accessory/permit/gun/planetside/permit in H.back.contents)
		permit.set_name(H.real_name)

/datum/outfit/job/station/explorer/technician
	name = OUTFIT_JOB_NAME("IMC Technician")
	belt = /obj/item/storage/belt/utility/full
	pda_slot = SLOT_ID_LEFT_POCKET
	id_pda_assignment = "IMC Technician"

/datum/outfit/job/station/explorer/medic
	name = OUTFIT_JOB_NAME("IMC Combat Medic")
	l_hand = /obj/item/storage/firstaid/regular
	pda_slot = SLOT_ID_LEFT_POCKET
	id_pda_assignment = "IMC Combat Medic"
