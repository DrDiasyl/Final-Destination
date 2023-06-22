/*
 * Torch Service
 */
/decl/closet_appearance/secure_closet/torch/hydroponics
	extra_decals = list(
		"stripe_vertical_right_partial" = COLOR_GREEN_GRAY,
		"stripe_vertical_mid_partial" =   COLOR_GREEN_GRAY,
		"hydro" = COLOR_GREEN_GRAY
	)

/decl/closet_appearance/secure_closet/torch/chief_steward
	extra_decals = list(
		"stripe_vertical_right_full" = COLOR_GREEN_GRAY,
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/chefcloset_torch
	name = "chef's closet"
	desc = "It's a storage unit for foodservice equipment."
	closet_appearance = /decl/closet_appearance/wardrobe/black

/obj/structure/closet/chefcloset_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/mime,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/storage/box/mousetraps,
		/obj/item/clothing/under/rank/chef,
		/obj/item/clothing/head/chefhat,
		/obj/item/clothing/suit/chef/classic,
		/obj/item/storage/box/silverware,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/gloves/latex
	)

/obj/structure/closet/secure_closet/hydroponics_torch //done so that it has no access reqs
	name = "hydroponics locker"
	req_access = list()
	closet_appearance = /decl/closet_appearance/secure_closet/torch/hydroponics

/obj/structure/closet/secure_closet/hydroponics_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/green,
		/obj/item/storage/plants,
		/obj/item/device/scanner/plant,
		/obj/item/material/minihoe,
		/obj/item/material/hatchet,
		/obj/item/wirecutters/clippers,
		/obj/item/reagent_containers/spray/plantbgone,
		new /datum/atom_creator/weighted(list(/obj/item/clothing/suit/apron, /obj/item/clothing/suit/apron/overalls)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/hydroponics, /obj/item/storage/backpack/satchel/hyd)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger/hyd, 50)
	)

/obj/structure/closet/jcloset_torch
	name = "custodial closet"
	desc = "It's a storage unit for janitorial equipment."
	closet_appearance = /decl/closet_appearance/wardrobe/mixed

/obj/structure/closet/jcloset_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/purple,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/flashlight,
		/obj/item/caution = 4,
		/obj/item/device/lightreplacer,
		/obj/item/storage/bag/trash,
		/obj/item/clothing/shoes/galoshes,
		/obj/item/storage/box/detergent,
		/obj/item/soap,
		/obj/item/storage/belt/janitor,
		/obj/item/clothing/glasses/hud/janitor
	)

/obj/structure/closet/secure_closet/bar_torch
	name = "bar locker"
	desc = "It's a storage unit for bar equipment."
	req_access = list(access_kitchen)

/obj/structure/closet/secure_closet/bar_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/black,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/reagent_containers/food/drinks/shaker,
		/obj/item/glass_jar,
		/obj/item/book/manual/barman_recipes,
		/obj/item/clothing/under/rank/bartender,
		/obj/item/clothing/shoes/laceup
	)

/obj/structure/closet/secure_closet/cs_torch
	name = "chief steward's locker"
	req_access = list()
	closet_appearance = /decl/closet_appearance/secure_closet/torch/chief_steward

/obj/structure/closet/secure_closet/cs_torch/WillContain()
	return list(
		/obj/item/storage/belt/general,
		/obj/item/clothing/head/chefhat,
		/obj/item/clothing/suit/chef/classic,
		/obj/item/clothing/suit/chef,
		/obj/item/clothing/gloves/latex,
		/obj/item/reagent_containers/glass/rag,
		/obj/item/clothing/glasses/science,
		/obj/item/storage/box/glasses,
		/obj/item/storage/plants,
		/obj/item/device/scanner/plant,
		/obj/item/storage/slide_projector,
		/obj/item/clothing/accessory/armband/hydro,
		/obj/item/reagent_containers/spray/cleaner,
		/obj/item/device/megaphone,
		/obj/item/device/flashlight/upgraded,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera/tvcamera,
		/obj/item/device/camera_film = 2,
		/obj/item/device/radio/headset/headset_chief_steward,
		/obj/item/device/radio/headset/headset_chief_steward/alt,
	)
