/datum/role/job/station/cargo_tech
	id = JOB_ID_CARGO_TECHNICIAN
	title = "IMC-QMD Quartermaster"
	flag = CARGOTECH
	departments = list(DEPARTMENT_CARGO)
	department_flag = CIVILIAN
	pto_type = PTO_CARGO
	total_positions = 2
	spawn_positions = 2
	supervisors = "the TQMS, the Executive Officer, and the Captain."
	selection_color = "#7a4f33"
	additional_access = list(
		ACCESS_SUPPLY_MINE,
		ACCESS_SUPPLY_MINE_OUTPOST,
	)
	minimal_access = list(
		ACCESS_ENGINEERING_MAINT,
		ACCESS_SUPPLY_BAY,
		ACCESS_SUPPLY_MULEBOT,
		ACCESS_SUPPLY_MAIN,
	)

	outfit_type = /datum/outfit/job/station/cargo_technician
	desc = "A Quartermaster fills and delivers cargo orders. They are encouraged to return delivered crates to the Cargo Shuttle, \
						because IMPCOMM gives a partial refund. \
						As they are expected to ensure equipment and supplies only go to those who need them, they report only to the TQMS, XO and Captain. \
						They typically hold the rank of Corporal or Sergeant."
	alt_titles = list(
		"IMC-QMD Logistics Specialist" = /datum/prototype/struct/alt_title/logi_spec,
		)


/datum/prototype/struct/alt_title/logi_spec
	title = "IMC-QMD Logistics Specialist"

/datum/outfit/job/station/cargo_technician
	name = OUTFIT_JOB_NAME("IMC-QMD Quartermaster")
	uniform = /obj/item/clothing/under/rank/cargotech
	l_ear = /obj/item/radio/headset/headset_cargo
	id_type = /obj/item/card/id/cargo/cargo_tech
	pda_type = /obj/item/pda/cargo
