/datum/role/job/station/warden
	id = JOB_ID_WARDEN
	economy_payscale = ECONOMY_PAYSCALE_JOB_SENIOR
	title = "IMC-MP Deputy Commander"
	flag = WARDEN
	departments = list(DEPARTMENT_SECURITY)
	sorting_order = 1
	department_flag = ENGSEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the IMC-MP Commander, the Executive Officer and the Captain"
	selection_color = "#601C1C"
	idtype = /obj/item/card/id/security/warden
	pto_type = PTO_SECURITY
	additional_access = list(
		ACCESS_COMMAND_EVA,
		ACCESS_MEDICAL_MORGUE,
		ACCESS_ENGINEERING_AIRLOCK,
	)
	minimal_access = list(
		ACCESS_SECURITY_EQUIPMENT,
		ACCESS_SECURITY_MAIN,
		ACCESS_SECURITY_BRIG,
		ACCESS_SECURITY_ARMORY,
		ACCESS_ENGINEERING_MAINT,
		ACCESS_SECURITY_GENPOP_ENTER,
		ACCESS_SECURITY_GENPOP_EXIT,
	)
	minimal_player_age = 5

	outfit_type = /datum/outfit/job/station/warden
	desc = "The Deputy Commander watches over the physical Military Police Section, making sure the Brig and Armoury are secure and in order at all times. They oversee \
						prisoners that have been processed and brigged, and are responsible for their well being. The Deputy Commander is also in charge of distributing \
						Armoury gear in a crisis, and retrieving it when the crisis has passed. In an emergency, the Deputy Commander may be called upon to direct the \
						Military Police as a whole. \
						As a member of the Marine Military Police, they report directly to the MP Commander, Executive Officer and Captain. \
						They typically hold the rank of Lieutenant or Captain."

/datum/outfit/job/station/warden
	name = OUTFIT_JOB_NAME("IMC-MP Deputy Commander")
	uniform = /obj/item/clothing/under/rank/warden
	l_pocket = /obj/item/flash
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	l_ear = /obj/item/radio/headset/headset_sec
	gloves = /obj/item/clothing/gloves/black
	shoes = /obj/item/clothing/shoes/boots/jackboots

	id_type = /obj/item/card/id/security/warden
	pda_type = /obj/item/pda/warden

	backpack = /obj/item/storage/backpack/security
	backpack_contents = list(/obj/item/handcuffs = 1)
	satchel_one = /obj/item/storage/backpack/satchel/sec
	messenger_bag = /obj/item/storage/backpack/messenger/sec
	dufflebag = /obj/item/storage/backpack/dufflebag/sec
