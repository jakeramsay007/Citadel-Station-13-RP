GLOBAL_LIST_INIT(secure_weapons, list())

/obj/item/gun
	var/list/authorized_modes = list(ALWAYS_AUTHORIZED) // index of this list should line up with firemodes, unincluded firemodes at the end will use default
	var/default_mode_authorization = UNAUTHORIZED
	var/registered_owner

/obj/item/gun/Initialize()
	if(is_secure_gun())
		GLOB.secure_weapons |= src
		if(!authorized_modes)
			authorized_modes = list()

		for(var/i = authorized_modes.len + 1 to firemodes.len)
			authorized_modes.Add(default_mode_authorization)

	. = ..()

/obj/item/gun/Destroy()
	GLOB.secure_weapons -= src
	. = ..()

/obj/item/gun/examine(mob/user, distance)
	. = ..()
	if(distance <= 0 && is_secure_gun())
		to_chat(user, "The registration screen shows, \"" + (registered_owner ? "[registered_owner]" : "unregistered") + "\"")

/obj/item/gun/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/card/id) && is_secure_gun())
		user.visible_message("[user] swipes an ID through \the [src].", range = 3)
		if(!registered_owner)
			var/obj/item/card/id/id = W
			verbs += /obj/item/gun/proc/reset_registration
			registered_owner = id.registered_name
			to_chat(user, "<span class='info'>\The [src] chimes quietly as it registers to \"[registered_owner]\".</span>")
		else
			to_chat(user, "<span class='info'>\The [src] buzzes quietly, refusing to register without first being reset.</span>")
	else
		..()

/obj/item/gun/emag_act(var/mob/user)
	if(is_secure_gun())
		registered_owner = null
		verbs -= /obj/item/gun/proc/reset_registration
		req_access.Cut()
		GLOB.secure_weapons -= src
		to_chat(user, "<span class='info'>\The [src]'s authorization chip fries, giving you full access.")
		return 1

	return ..()


/obj/item/gun/proc/reset_registration()
	set name = "Reset Registration"
	set category = "Object"
	set src in usr

	if(issilicon(usr))
		to_chat(usr, "<span class='warning'>You are not permitted to modify weapon registrations.</span>")
		return

	usr.visible_message("[usr] presses the reset button on \the [src].", range = 3)
	if(!allowed(usr))
		to_chat(usr, "<span class='warning'>\The [src] buzzes quietly, refusing your access.</span>")
		return

	to_chat(usr, "<span class='info'>\The [src] chimes quietly as its registration resets.</span>")
	registered_owner = null
	verbs -= /obj/item/gun/proc/reset_registration


/obj/item/gun/proc/authorize(var/mode, var/authorized, var/by)
	if(mode < 1 || mode > authorized_modes.len || authorized_modes[mode] == authorized)
		return FALSE

	authorized_modes[mode] = authorized

	if(mode == sel_mode && !authorized)
		switch_firemodes()

	var/mob/user = get_holder_of_type(src, /mob)
	if(user)
		to_chat(user, "<span class='info'>Your [src.name] has been [authorized ? "granted" : "denied"] [firemodes[mode]] fire authorization by [by].</span>")

	return TRUE

/obj/item/gun/proc/is_secure_gun()
	return length(req_access)

/obj/item/gun/proc/free_fire()
	if(security_level >= SEC_LEVEL_BLUE)
		return TRUE

/obj/item/gun/special_check()
	if(is_secure_gun() && !free_fire() && (!authorized_modes[sel_mode] || !registered_owner))
		audible_message("<span class='warning'>\The [src] buzzes, refusing to fire.</span>", hearing_distance = 3)
		playsound(loc, 'sound/machines/buzz-sigh.ogg', 10, 0)
		return FALSE

	. = ..()

/obj/item/gun/get_next_firemode()
	if(!is_secure_gun())
		return ..()
	. = sel_mode
	do
		.++
		if(. > authorized_modes.len)
			. = 1
		if(. == sel_mode) // just in case all modes are unauthorized
			return null
	while (!authorized_modes[.] && !free_fire())