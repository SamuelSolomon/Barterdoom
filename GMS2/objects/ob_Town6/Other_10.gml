if sc_fl_getFlagValue(flag.Town4HasGoodRelationship) {
	sc_re_addToResourceValue(resource.gold, 10)
	isComplete = true
	event_inherited();
} else {
	sc_vi_initTextbox(cantCompleteDialogue)
}

