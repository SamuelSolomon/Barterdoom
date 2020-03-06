if sc_fl_getFlagValue(flag.Town6WantsToTrade) {
	sc_re_addToResourceValue(resource.medicine, 1)
	isComplete = true
	event_inherited();
} else {
	sc_vi_initTextbox(cantCompleteDialogue)
}


