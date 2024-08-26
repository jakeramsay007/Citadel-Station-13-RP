/datum/role/job/station/bartender
	id = JOB_ID_BARTENDER
	title = "INSS Bartender"
	flag = BARTENDER
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer and all superior officers."
	selection_color = "#515151"
	idtype = /obj/item/card/id/civilian/bartender
	pto_type = PTO_CIVILIAN
	additional_access = list(
		ACCESS_GENERAL_BOTANY,
		ACCESS_GENERAL_KITCHEN,
	)
	minimal_access = list(
		ACCESS_GENERAL_BAR,
	)

	outfit_type = /datum/outfit/job/station/bartender
	desc = "A Bartender mixes drinks for the crew. They generally have permission to charge for drinks or deny service to unruly patrons. \
			They typically hold the rank of Able Rate."

/datum/outfit/job/station/bartender
	name = OUTFIT_JOB_NAME("INSS Bartender")
	uniform = /obj/item/clothing/under/rank/bartender
	id_type = /obj/item/card/id/civilian/bartender
	pda_type = /obj/item/pda/bar
	l_ear = /obj/item/radio/headset/headset_service
	backpack_contents = list(/obj/item/clothing/accessory/permit/gun/bar = 1)

/datum/outfit/job/station/bartender/post_equip(mob/living/carbon/human/H)
	..()
	for(var/obj/item/clothing/accessory/permit/gun/bar/permit in H.back.contents)
		permit.set_name(H.real_name)

