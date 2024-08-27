/datum/role/job/station/janitor
	id = JOB_ID_JANITOR
	title = "INSS Janitor"
	flag = JANITOR
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	total_positions = 2
	spawn_positions = 2
	pto_type = PTO_CIVILIAN
	supervisors = "the Executive Officer and all superior officers."
	selection_color = "#515151"
	idtype = /obj/item/card/id/civilian/janitor
	additional_access = list(
		ACCESS_ENGINEERING_MAINT,
	)
	minimal_access = list(
		ACCESS_GENERAL_JANITOR,
	)

	outfit_type = /datum/outfit/job/station/janitor
	desc = "A Janitor keeps the ship clean, as long as it doesn't interfere with active crime scenes. \
			They typically hold the rank of Able Rate."

	alt_titles = list(
		"INSS Custodian" = /datum/prototype/struct/alt_title/janitor/custodian,
		"INSS Sanitation Technician" = /datum/prototype/struct/alt_title/janitor/tech
		)

/datum/prototype/struct/alt_title/janitor/custodian
	title = "INSS Custodian"

/datum/prototype/struct/alt_title/janitor/tech
	title = "INSS Sanitation Technician"

/datum/outfit/job/station/janitor
	name = OUTFIT_JOB_NAME("INSS Janitor")
	uniform = /obj/item/clothing/under/rank/janitor
	id_type = /obj/item/card/id/civilian/janitor
	pda_type = /obj/item/pda/janitor
	l_ear = /obj/item/radio/headset/headset_service