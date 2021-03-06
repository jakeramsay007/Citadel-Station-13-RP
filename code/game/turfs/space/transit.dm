/turf/space/transit
	keep_sprite = TRUE
	can_build_into_floor = FALSE
	var/pushdirection	// Push things that get caught in the transit tile this direction

// Overwrite because we dont want people building rods in space.
/turf/space/transit/attackby(obj/O as obj, mob/user as mob)
	return

//------------------------

/turf/space/transit/north	// Moving to the north
	icon_state = "arrow-north"
	pushdirection = SOUTH	// South because the space tile is scrolling south

/turf/space/transit/north/Initialize()
	. = ..()

	var/x_shift = SSskybox.phase_shift_by_x[src.x % (SSskybox.phase_shift_by_x.len - 1) + 1]
	var/transit_state = (world.maxy - src.y + x_shift)%15 + 1

	icon_state = "speedspace_ns_[transit_state]"
//------------------------

/turf/space/transit/south	// Moving to the south
	icon_state = "arrow-south"
	pushdirection = SOUTH	// South because the space tile is scrolling south

/turf/space/transit/south/Initialize()
	. = ..()

	var/x_shift = SSskybox.phase_shift_by_x[src.x % (SSskybox.phase_shift_by_x.len - 1) + 1]
	var/transit_state = (world.maxy - src.y + x_shift)%15 + 1

	var/icon/I = new(icon, "speedspace_ns_[transit_state]")
	I.Flip(SOUTH)
	icon = I
//------------------------

/turf/space/transit/east	// Moving to the east
	icon_state = "arrow-east"
	pushdirection = WEST
/turf/space/transit/east/Initialize()
	. = ..()

	var/y_shift = SSskybox.phase_shift_by_y[src.y % (SSskybox.phase_shift_by_y.len - 1) + 1]
	var/transit_state = (world.maxx - src.x + y_shift)%15 + 1

	icon_state = "speedspace_ew_[transit_state]"
//------------------------

/turf/space/transit/west	// Moving to the west
	icon_state = "arrow-west"
	pushdirection = WEST

/turf/space/transit/west/Initialize()
	. = ..()

	var/y_shift = SSskybox.phase_shift_by_y[src.y % (SSskybox.phase_shift_by_y.len - 1) + 1]
	var/transit_state = (world.maxx - src.x + y_shift)%15 + 1

	var/icon/I = new(icon, "speedspace_ew_[transit_state]")
	I.Flip(WEST)
	icon = I

//------------------------
