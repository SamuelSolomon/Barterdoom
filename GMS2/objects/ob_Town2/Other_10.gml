if sc_re_getResourceQuantity(resource.actions) < 35 {
	isComplete = true
	isHappy = -1
	sc_vi_initTextbox(failedDialogue)
	instance_destroy(ob_VillageView)
} else {
	sc_re_addToResourceValue(resource.boat, 1)
	isComplete = true
	event_inherited();
}




