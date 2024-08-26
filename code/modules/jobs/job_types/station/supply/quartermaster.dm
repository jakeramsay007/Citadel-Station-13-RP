/datum/role/job/station/quartermaster
	id = JOB_ID_QUARTERMASTER
	title = "IMC-QMD Technical Quartermaster Sergeant"
	economy_payscale = ECONOMY_PAYSCALE_JOB_SENIOR
	flag = QUARTERMASTER
	departments = list(
		DEPARTMENT_CARGO,
	)
	sorting_order = 1 // QM is above the cargo techs, but below the HoP.
	departments_managed = list(
		DEPARTMENT_CARGO,
	)
	department_flag = CIVILIAN
	pto_type = PTO_CARGO
	total_positions = 1
	spawn_positions = 1
	idtype = /obj/item/card/id/cargo/head
	supervisors = "the Executive Officer and the Captain."
	selection_color = "#9b633e"
	minimal_access = list(
		ACCESS_ENGINEERING_MAINT,
		ACCESS_SUPPLY_BAY,
		ACCESS_SUPPLY_EDIT,
		ACCESS_SUPPLY_MAIN,
		ACCESS_SUPPLY_MINE,
		ACCESS_SUPPLY_MINE_OUTPOST,
		ACCESS_SUPPLY_MULEBOT,
		ACCESS_SUPPLY_QM,
	)

	ideal_character_age = 40

	outfit_type = /datum/outfit/job/station/quartermaster
	desc = "The Technical Quartermaster Sergeant manages the Supply department under the Head of Personnel, checking cargo orders and ensuring supplies get to where they are needed. \
			As they are expected to ensure equipment and supplies only go to those who need them, they report only to the TQMS, XO and Captain. \
			They typically hold the rank of Staff Sergeant or Warrant Officer 2."

/datum/outfit/job/station/quartermaster
	name = OUTFIT_JOB_NAME("IMC-QMD Quartermaster")
	uniform = /obj/item/clothing/under/rank/cargo
	l_ear = /obj/item/radio/headset/headset_mine
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/clipboard
	id_type = /obj/item/card/id/cargo/head
	pda_type = /obj/item/pda/quartermaster
