/datum/role/job/station/officer
	id = JOB_ID_SECURITY_OFFICER
	title = "IMC-MP Officer"
	flag = OFFICER
	departments = list(DEPARTMENT_SECURITY)
	department_flag = ENGSEC
	total_positions = 4
	spawn_positions = 4
	pto_type = PTO_SECURITY
	supervisors = "the Head of Security"
	idtype = /obj/item/card/id/security/officer
	selection_color = "#601C1C"
	additional_access = list(
		ACCESS_MEDICAL_MORGUE,
	)
	minimal_access = list(
		ACCESS_SECURITY_EQUIPMENT,
		ACCESS_COMMAND_EVA,
		ACCESS_SECURITY_MAIN,
		ACCESS_SECURITY_BRIG,
		ACCESS_ENGINEERING_MAINT,
		ACCESS_ENGINEERING_AIRLOCK,
		ACCESS_SECURITY_GENPOP_ENTER,
		ACCESS_SECURITY_GENPOP_EXIT,
	)
	minimal_player_age = 3

	outfit_type = /datum/outfit/job/station/security_officer
	desc = "A Military Police Officer is concerned with maintaining the safety and security of the station as a whole, dealing with external threats and \
						apprehending criminals. A Military Police Officer is responsible for the health, safety, and processing of any prisoner they arrest. \
						No one is above the Law, not the Military Police or Command. \
						As a member of the Marine Military Police, they report directly to the MP Commander, Executive Officer and Captain. \
						They typically hold the rank of Corporal or Sergeant."
	alt_titles = list(
		"IMC-MP Junior Officer" = /datum/prototype/struct/alt_title/security_officer/junior,
		"IMC-MP Cadet" = /datum/prototype/struct/alt_title/security_officer/cadet,
		)

/datum/prototype/struct/alt_title/security_officer/junior
	title = "IMC-MP Junior Officer"
	title_blurb = "A Junior Officer is an inexperienced Security Officer. They likely have training, but not experience, and are frequently \
					paired off with a more senior co-worker. Junior Officers may also be expected to take over the boring duties of other Officers \
					including patrolling the station or maintaining specific posts. \
					As a member of the Marine Military Police, they report directly to the MP Commander, Executive Officer and Captain. \
					They typically hold the rank of Lance Corporal."

/datum/prototype/struct/alt_title/security_officer/cadet
	title = "IMC-MP Cadet"
	title_blurb = "A Security Cadet is in training to become an Officer. They have very little understanding of standard operations and procedure and \
					should most often be partnered with an Officer to complete their training. Should the need arise a Cadet is treated in all respects \
					as an Officer, such as if they need to make an arrest or handle a station threat. When functioning as part of a larger team, Cadets are \
					often meant to observe and assist rather than take initiative. \
					As a member of the Marine Military Police, they report directly to the MP Commander, Executive Officer and Captain. \
					They typically hold the rank of Marine, or Acting Lance Corporal."


/datum/outfit/job/station/security_officer
	name = OUTFIT_JOB_NAME("IMC-MP Officer")
	uniform = /obj/item/clothing/under/rank/security
	l_pocket = /obj/item/flash
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	l_ear = /obj/item/radio/headset/headset_sec
	gloves = /obj/item/clothing/gloves/black
	shoes = /obj/item/clothing/shoes/boots/jackboots

	id_type = /obj/item/card/id/security/officer
	pda_type = /obj/item/pda/security

	backpack = /obj/item/storage/backpack/security
	backpack_contents = list(/obj/item/handcuffs = 1)
	satchel_one = /obj/item/storage/backpack/satchel/sec
	messenger_bag = /obj/item/storage/backpack/messenger/sec
	dufflebag = /obj/item/storage/backpack/dufflebag/sec
