enum flag {
	Town6WantsToTrade,
	Town4HasGoodRelationship,
	Town2IsDestroyed
}

global.flags = ds_map_create()
sc_fl_addFlag(flag.Town6WantsToTrade, false)
sc_fl_addFlag(flag.Town4HasGoodRelationship, false)
sc_fl_addFlag(flag.Town2IsDestroyed, false)