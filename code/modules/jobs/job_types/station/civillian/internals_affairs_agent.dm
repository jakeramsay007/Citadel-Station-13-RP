/datum/role/job/station/lawyer
	id = JOB_ID_LAWYER
	title = "Imperial Internal Security Agent"
	flag = LAWYER
	departments = list(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	total_positions = 2
	spawn_positions = 2
	supervisors = "imperial officials and Imperial Law"
	selection_color = "#515151"
	idtype = /obj/item/card/id/civilian/internal_affairs_agent
	minimal_access = list(
		ACCESS_COMMAND_IAA,
		ACCESS_SECURITY_MAIN,
		ACCESS_COMMAND_BRIDGE,
	)
	minimal_player_age = 7

	outfit_type = /datum/outfit/job/station/internal_affairs_agent
	desc = "An Imperial Internal Affairs Agent makes sure that the crew is following Standard Operating Procedure. They also \
						handle complaints against crew members, and can have issues brought to the attention of IMPCOMM, \
						assuming their paperwork is in order. \
						As a member of the Imperial Security Service, they are outside of the regular rank structure."

/*
/datum/role/job/station/lawyer/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)
*/

/datum/outfit/job/station/internal_affairs_agent
	name = OUTFIT_JOB_NAME("Imperial Internal Security agent")
	l_ear = /obj/item/radio/headset/ia
	uniform = /obj/item/clothing/under/rank/internalaffairs
	suit = /obj/item/clothing/suit/storage/toggle/internalaffairs
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses/big
	l_hand = /obj/item/clipboard
	id_type = /obj/item/card/id/civilian/internal_affairs_agent
	pda_type = /obj/item/pda/lawyer
