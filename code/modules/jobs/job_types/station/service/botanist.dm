/datum/role/job/station/hydro
	id = JOB_ID_BOTANIST
	title = "INSS Botanist"
	flag = BOTANIST
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer and all superior officers."
	selection_color = "#515151"
	pto_type = PTO_CIVILIAN
	pto_type = PTO_CIVILIAN
	idtype = /obj/item/card/id/civilian/botanist
	additional_access = list(
		ACCESS_GENERAL_BAR,
		ACCESS_GENERAL_KITCHEN,
	)
	minimal_access = list(
		ACCESS_GENERAL_BOTANY,
	)

	outfit_type = /datum/outfit/job/station/botanist/gardener
	desc = "A Botanist grows plants for the Chef and Bartender. \
			They typically hold the rank of Able Rate."
	alt_titles = list("INSS Gardener" = /datum/prototype/struct/alt_title/gardener)

/datum/prototype/struct/alt_title/gardener
	title = "INSS Gardener"
	title_blurb = "A Gardener may be less professional than their counterparts, and are more likely to tend to the public gardens if they aren't needed elsewhere. \
					They typically hold the rank of Able Rate."

/datum/outfit/job/station/botanist
	name = OUTFIT_JOB_NAME("INSS Botanist")
	pda_type = /obj/item/pda/botanist
	id_type = /obj/item/card/id/civilian/botanist
	l_ear = /obj/item/radio/headset/headset_service

	uniform = /obj/item/clothing/under/rank/hydroponics
	suit = /obj/item/clothing/suit/storage/apron
	suit_store = /obj/item/plant_analyzer
	gloves = /obj/item/clothing/gloves/botanic_leather

	backpack = /obj/item/storage/backpack/hydroponics
	satchel_one = /obj/item/storage/backpack/satchel/hyd
	messenger_bag = /obj/item/storage/backpack/messenger/hyd
	dufflebag = /obj/item/storage/backpack/dufflebag/hydroponics

/datum/outfit/job/station/botanist/gardener
	name = OUTFIT_JOB_NAME("INSS Gardener")
	id_pda_assignment = "INSS Gardener"
