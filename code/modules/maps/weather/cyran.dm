/datum/atmosphere/planet/cyran
	base = list(
		/datum/gas/oxygen = 0.22,
		/datum/gas/nitrogen = 0.78,
	)
	pressure_low = 110.1
	pressure_high = 110.1
	temperature_low = 263.15
	temperature_high = 283.15

/datum/time/cyran
	seconds_in_day = 10 HOURS

/datum/planet/cyran
	name = "Cyran"
	desc = "A gaia world with 75% water coverage of the surface."
	current_time = new /datum/time/cyran()
	weather_holder = /datum/weather_holder/cyran

/datum/planet/cyran/update_sun()
	..()
	var/datum/time/time = current_time
	var/length_of_day = time.seconds_in_day / 10 / 60 / 60
	var/noon = length_of_day / 2
	var/distance_from_noon = abs(text2num(time.show_time("hh")) - noon)
	sun_position = distance_from_noon / noon
	sun_position = abs(sun_position - 1)

	var/low_brightness = 0.9
	var/high_brightness = 1.0

	var/low_color = "#DDDDDD"
	var/high_color = "#FFFFFF"
	var/min = 0.70

/*	switch(sun_position)
		if(0 to 0.40) // Night
			low_brightness = 0.35
			low_color = "#110077"

			high_brightness = 0.5
			high_color = "#66004D"
			min = 0

		if(0.40 to 0.50) // Twilight
			low_brightness = 0.6
			low_color = "#66004D"

			high_brightness = 0.8
			high_color = "#CC3300"
			min = 0.40

		if(0.50 to 0.70) // Sunrise/set
			low_brightness = 0.8
			low_color = "#CC3300"

			high_brightness = 0.9
			high_color = "#FF9933"
			min = 0.50

		if(0.70 to 1.00) // Noon
			low_brightness = 0.9
			low_color = "#DDDDDD"

			high_brightness = 1.0
			high_color = "#FFFFFF"
			min = 0.70 */

	var/interpolate_weight = (abs(min - sun_position)) * 4
	var/weather_light_modifier = 1
	if(weather_holder && weather_holder.current_weather)
		weather_light_modifier = weather_holder.current_weather.light_modifier

	var/new_brightness = (LERP(low_brightness, high_brightness, interpolate_weight) ) * weather_light_modifier

	var/new_color = null
	if(weather_holder && weather_holder.current_weather && weather_holder.current_weather.light_color)
		new_color = weather_holder.current_weather.light_color
	else
		var/list/low_color_list = hex2rgb(low_color)
		var/low_r = low_color_list[1]
		var/low_g = low_color_list[2]
		var/low_b = low_color_list[3]

		var/list/high_color_list = hex2rgb(high_color)
		var/high_r = high_color_list[1]
		var/high_g = high_color_list[2]
		var/high_b = high_color_list[3]

		var/new_r = LERP(low_r, high_r, interpolate_weight)
		var/new_g = LERP(low_g, high_g, interpolate_weight)
		var/new_b = LERP(low_b, high_b, interpolate_weight)

		new_color = rgb(new_r, new_g, new_b)

	update_sun_deferred(new_brightness, new_color)


/datum/weather_holder/cyran
	temperature = T0C
	allowed_weather_types = list(
		WEATHER_CLEAR		= new /datum/weather/cyran/clear(),
		WEATHER_OVERCAST	= new /datum/weather/cyran/overcast(),
		WEATHER_RAIN		= new /datum/weather/cyran/rain(),
		WEATHER_STORM		= new /datum/weather/cyran/storm(),
		WEATHER_LIGHTSNOW	= new /datum/weather/cyran/light_snow(),
		WEATHER_SNOW		= new /datum/weather/cyran/snow(),
		WEATHER_BLIZZARD	= new /datum/weather/cyran/blizzard(),
		WEATHER_BLOOD_MOON	= new /datum/weather/cyran/blood_moon(),
		)
	roundstart_weather_chances = list(
		WEATHER_CLEAR		= 100
		)

/datum/weather/cyran
	name = "cyran base"
	temp_high = 263.15
	temp_low = 283.15

/datum/weather/cyran/clear
	name = "clear"
	transition_chances = list(
		WEATHER_CLEAR = 100
		)
	transition_messages = list(
		"The sky clears up.",
		"The sky becomes visible.",
		"The weather grows calm."
		)
	sky_visible = TRUE
	observed_message = "The sky is clear."

/datum/weather/cyran/overcast
	name = "overcast"
	light_modifier = 0.8
	transition_chances = list(
		WEATHER_OVERCAST = 100
		)
	observed_message = "It is overcast, all you can see are clouds."
	transition_messages = list(
		"All you can see above are clouds.",
		"Clouds cut off your view of the sky.",
		"It becomes very cloudy."
		)


/datum/weather/cyran/rain
	name = "rain"
	icon_state = "rain"
	wind_high = 2
	wind_low = 1
	light_modifier = 0.5
	effect_message = "<span class='warning'>Rain falls on you.</span>"
	outdoor_sounds_type = /datum/looping_sound/weather/wind
	indoor_sounds_type = /datum/looping_sound/weather/wind/indoors

	transition_chances = list(
		WEATHER_RAIN = 100
		)
	observed_message = "The sky is dark, and rain falls down upon you."
	transition_messages = list(
		"The sky grows dark, and rain falls down upon you."
	)

/datum/weather/cyran/rain/process_effects()
	..()
	for(var/mob/living/L in living_mob_list)
		if(L.z in holder.our_planet.expected_z_levels)
			var/turf/T = get_turf(L)
			if(!T.outdoors)
				continue // They're indoors, so no need to rain on them.

			// If they have an open umbrella, it'll guard from rain
			if(istype(L.get_active_held_item(), /obj/item/melee/umbrella))
				var/obj/item/melee/umbrella/U = L.get_active_held_item()
				if(U.open)
					if(show_message)
						to_chat(L, "<span class='notice'>Rain patters softly onto your umbrella.</span>")
					continue
			else if(istype(L.get_inactive_held_item(), /obj/item/melee/umbrella))
				var/obj/item/melee/umbrella/U = L.get_inactive_held_item()
				if(U.open)
					if(show_message)
						to_chat(L, "<span class='notice'>Rain patters softly onto your umbrella.</span>")
					continue

			L.water_act(1)
			if(show_message)
				to_chat(L, effect_message)

/datum/weather/cyran/storm
	name = "storm"
	icon_state = "storm"
	wind_high = 4
	wind_low = 2
	light_modifier = 0.3
	flight_failure_modifier = 10
	effect_message = "<span class='warning'>Rain falls on you, drenching you in water.</span>"
	outdoor_sounds_type = /datum/looping_sound/weather/outside_snow
	indoor_sounds_type = /datum/looping_sound/weather/inside_snow

	var/next_lightning_strike = 0 // world.time when lightning will strike.
	var/min_lightning_cooldown = 5 SECONDS
	var/max_lightning_cooldown = 1 MINUTE
	observed_message = "An intense storm pours down over the region."
	transition_messages = list(
		"You feel intense winds hit you as the weather takes a turn for the worse.",
		"Loud thunder is heard in the distance.",
		"A bright flash heralds the approach of a storm."
	)



	transition_chances = list(
		WEATHER_STORM = 100
		)

/datum/weather/cyran/storm/process_effects()
	..()
	for(var/mob/living/L in living_mob_list)
		if(L.z in holder.our_planet.expected_z_levels)
			var/turf/T = get_turf(L)
			if(!T.outdoors)
				continue // They're indoors, so no need to rain on them.

			// If they have an open umbrella, it'll guard from rain
			if(istype(L.get_active_held_item(), /obj/item/melee/umbrella))
				var/obj/item/melee/umbrella/U = L.get_active_held_item()
				if(U.open)
					if(show_message)
						to_chat(L, "<span class='notice'>Rain showers loudly onto your umbrella!</span>")
					continue
			else if(istype(L.get_inactive_held_item(), /obj/item/melee/umbrella))
				var/obj/item/melee/umbrella/U = L.get_inactive_held_item()
				if(U.open)
					if(show_message)
						to_chat(L, "<span class='notice'>Rain showers loudly onto your umbrella!</span>")
					continue


			L.water_act(2)
			if(show_message)
				to_chat(L, effect_message)

	handle_lightning()

/datum/weather/cyran/light_snow
	name = "light snow"
	icon_state = "snowfall_light"
	temp_high = 263.15
	temp_low = 	258.15
	light_modifier = 0.7
	transition_chances = list(
		WEATHER_OVERCAST = 25,
		WEATHER_LIGHT_SNOW = 50,
		WEATHER_SNOW = 25,
		)
	observed_message = "It is snowing lightly."
	transition_messages = list(
		"Small snowflakes begin to fall from above.",
		"It begins to snow lightly.",
		)

/datum/weather/cyran/snow
	name = "moderate snow"
	icon_state = "snowfall_med"
	temp_high = 263.15
	temp_low = 243.15
	wind_high = 2
	wind_low = 0
	light_modifier = 0.5
	flight_failure_modifier = 5
	transition_chances = list(
		WEATHER_LIGHT_SNOW = 20,
		WEATHER_SNOW = 50,
		WEATHER_BLIZZARD = 20,
		WEATHER_HAIL = 5,
		WEATHER_OVERCAST = 5
		)
	observed_message = "It is snowing."
	transition_messages = list(
		"It's starting to snow.",
		"The air feels much colder as snowflakes fall from above."
	)
	outdoor_sounds_type = /datum/looping_sound/weather/outside_snow
	indoor_sounds_type = /datum/looping_sound/weather/inside_snow

/datum/weather/cyran/snow/process_effects()
	..()
	for(var/turf/simulated/floor/outdoors/snow/S in SSplanets.new_outdoor_turfs) //This didn't make any sense before SSplanets, either
		if(S.z in holder.our_planet.expected_z_levels)
			for(var/dir_checked in GLOB.cardinal)
				var/turf/simulated/floor/T = get_step(S, dir_checked)
				if(istype(T))
					if(istype(T, /turf/simulated/floor/outdoors) && prob(33))
						T.chill()

datum/weather/cyran/blizzard
	name = "blizzard"
	icon_state = "snowfall_heavy"
	temp_high = 263.15
	temp_low = 223.15
	wind_high = 4
	wind_low = 2
	light_modifier = 0.3
	flight_failure_modifier = 10
	transition_chances = list(
		WEATHER_SNOW = 45,
		WEATHER_BLIZZARD = 50,
		WEATHER_OVERCAST = 5
		)
	observed_message = "A blizzard blows snow everywhere."
	transition_messages = list(
		"Strong winds howl around you as a blizzard appears.",
		"It starts snowing heavily, and it feels extremly cold now."
	)
	outdoor_sounds_type = /datum/looping_sound/weather/outside_blizzard
	indoor_sounds_type = /datum/looping_sound/weather/inside_blizzard

/datum/weather/cyran/blizzard/process_effects()
	..()
	for(var/turf/simulated/floor/outdoors/snow/S in SSplanets.new_outdoor_turfs) //This didn't make any sense before SSplanets, either
		if(S.z in holder.our_planet.expected_z_levels)
			for(var/dir_checked in GLOB.cardinal)
				var/turf/simulated/floor/T = get_step(S, dir_checked)
				if(istype(T))
					if(istype(T, /turf/simulated/floor/outdoors) && prob(50))
						T.chill()

// This gets called to do lightning periodically.
// There is a seperate function to do the actual lightning strike, so that badmins can play with it.
/datum/weather/cyran/storm/proc/handle_lightning()
	if(world.time < next_lightning_strike)
		return // It's too soon to strike again.
	next_lightning_strike = world.time + rand(min_lightning_cooldown, max_lightning_cooldown)
	var/turf/T = pick(holder.our_planet.planet_floors) // This has the chance to 'strike' the sky, but that might be a good thing, to scare reckless pilots.
	lightning_strike(T)


/datum/weather/cyran/blood_moon
	name = "blood moon"
	light_modifier = 0.5
	light_color = "#FF0000"
	flight_failure_modifier = 25
	transition_chances = list(
		WEATHER_BLOODMOON = 100
		)
	observed_message = "Everything is red. Something really ominous is going on."
	transition_messages = list(
		"The sky turns blood red!"
	)
	outdoor_sounds_type = /datum/looping_sound/weather/wind
	indoor_sounds_type = /datum/looping_sound/weather/wind/indoors