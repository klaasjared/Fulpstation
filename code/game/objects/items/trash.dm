//Added by Jack Rost
/obj/item/trash
	icon = 'icons/obj/janitor.dmi'
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	desc = "This is rubbish."
	w_class = WEIGHT_CLASS_TINY
	resistance_flags = FLAMMABLE

/obj/item/trash/Initialize(mapload)
	var/turf/T = get_turf(src)
	if(T && is_station_level(T.z))
		SSblackbox.record_feedback("tally", "station_mess_created", 1, name)
	return ..()

/obj/item/trash/Destroy()
	var/turf/T = get_turf(src)
	if(T && is_station_level(T.z))
		SSblackbox.record_feedback("tally", "station_mess_destroyed", 1, name)
	return ..()

/obj/item/trash/raisins
	name = "\improper 4no raisins"
	icon_state= "4no_raisins"

/obj/item/trash/candy
	name = "candy"
	icon_state= "candy"

/obj/item/trash/cheesie
	name = "cheesie honkers"
	icon_state = "cheesie_honkers"

/obj/item/trash/chips
	name = "chips"
	icon_state = "chips"

/obj/item/trash/boritos
	name = "boritos bag"
	icon_state = "boritos"
	grind_results = list(/datum/reagent/aluminium = 1) //from the mylar bag

/obj/item/trash/popcorn
	name = "popcorn"
	icon_state = "popcorn"

/obj/item/trash/sosjerky
	name = "\improper Scaredy's Private Reserve Beef Jerky"
	icon_state = "sosjerky"

/obj/item/trash/syndi_cakes
	name = "syndi-cakes"
	icon_state = "syndi_cakes"

/obj/item/trash/energybar
	name = "energybar wrapper"
	icon_state = "energybar"

/obj/item/trash/waffles
	name = "waffles tray"
	icon_state = "waffles"

/obj/item/trash/plate
	name = "plate"
	icon_state = "plate"
	resistance_flags = NONE

/obj/item/trash/pistachios
	name = "pistachios pack"
	icon_state = "pistachios_pack"

/obj/item/trash/semki
	name = "semki pack"
	icon_state = "semki_pack"

/obj/item/trash/tray
	name = "tray"
	icon_state = "tray"
	resistance_flags = NONE

/obj/item/trash/candle
	name = "candle"
	icon = 'icons/obj/candle.dmi'
	icon_state = "candle4"

/obj/item/trash/can
	name = "crushed can"
	icon_state = "cola"
	resistance_flags = NONE
	grind_results = list(/datum/reagent/aluminium = 10)

/obj/item/trash/can/food/peaches
	name = "canned peaches"
	icon = 'icons/obj/food/food.dmi'
	icon_state = "peachcan_empty"

/obj/item/trash/can/food/peaches/maint
	name = "Maintenance Peaches"
	icon_state = "peachcanmaint_empty"

/obj/item/trash/can/food/beans
	name = "tin of beans"
	icon = 'icons/obj/food/food.dmi'
	icon_state = "beans_empty"


//-------------------------------------------------FALLOUT-BASED FOOD ITEMS ARE BELOW THIS LINE-------------------------------------------------


/obj/item/trash/rad_gumdrops //ADDITION 04/15/2020
	name = "radiation gumdrops"
	icon_state = "rad_gumdrops"

/obj/item/trash/potato_crisps //ADDITION 04/15/2020
	name = "potato crisps"
	icon_state = "potato_crisps"
	grind_results = list(/datum/reagent/aluminium = 5) //chips are in a metal can

/obj/item/trash/cheezy_poofs //ADDITION 04/15/2020
	name = "cheezy poofs"
	icon_state = "cheezy_poofs"

/obj/item/trash/dried_mutfruit //ADDITION 04/15/2020
	name = "dried mutfruit"
	icon_state = "dried_mutfruit"

/obj/item/trash/cram //ADDITION 04/15/2020
	name = "cram"
	icon_state = "cram"
	grind_results = list(/datum/reagent/aluminium = 5) //packaged in a metal tin

/obj/item/trash/dandy_apples //ADDITION 04/15/2020
	name = "dandy boy apples"
	icon_state = "dandy_apples"

/obj/item/trash/yum_yum_eggs //ADDITION 04/15/2020
	name = "yum yum deviled eggs"
	icon_state = "yum_yum_eggs"

/obj/item/trash/lad_cakes //ADDITION 04/15/2020
	name = "fancy lad cakes"
	icon_state = "lad_cakes"

/obj/item/trash/sals_steak //ADDITION 04/15/2020
	name = "salisbury steak"
	icon_state = "sals_steak"

/obj/item/trash/blamco_mac //ADDITION 04/15/2020
	name = "blamco mac'n'cheese"
	icon_state = "blamco_mac"

/obj/item/trash/sugar_bombs //ADDITION 04/15/2020
	name = "sugar bombs"
	icon_state = "sugar_bombs"

/obj/item/trash/can/Initialize()
	. = ..()
	pixel_x = rand(-4,4)
	pixel_y = rand(-4,4)

/obj/item/trash/attack(mob/M, mob/living/user)
	return
