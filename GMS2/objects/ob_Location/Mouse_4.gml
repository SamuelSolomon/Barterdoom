if global.gameManager.currentState = gameState.mapMenu {
	
	if sc_ma_isConnectedtoCurrentVillage(id) {
		//var tempActions = ds_map_find_value(global.resources,resource.actions)
		//ds_map_set(global.resources,resource.actions, tempActions - ds_map_find_value(global.gameManager.currentVillage.ConnectedLocations, id))
		sc_re_addToResourceValue(resource.actions, -ds_map_find_value(global.gameManager.currentVillage.ConnectedLocations, id))
		
		if ds_map_find_value(global.resources,resource.actions) < 0 {
			//End Game	
		}
		
		global.gameManager.currentVillage = id
		global.gameManager.playerAvatar.x = x
		global.gameManager.playerAvatar.y = y
	}
	
	else if global.gameManager.currentVillage == id {
		if !isComplete { 
			image_yscale /= enlargeFactor
			image_xscale /= enlargeFactor
			displayName = false
			
			if ReputationNeeded <= sc_re_getResourceQuantity(resource.reputation){
				
				instance_create_layer(0,0,"VillageView",ob_VillageView)
				global.gameManager.currentState = gameState.villageMenu
				with ob_VillageView {
					location = other.id
					CloseButton.view = id
					CompleteButton.view = id
				}
				
				switch isHappy {
					case 0:
						if isVisited {
							sc_vi_initTextbox(repeatDialogue)
						} else {
							sc_vi_initTextbox(initialDialogue)
							isVisited = true
						}
					break
							
					case -1:
						sc_vi_initTextbox(failedDialogue)
						isComplete = true
						instance_destroy(ob_VillageView)
					break
						
					case 1:
						event_user(0)
					break
				}
					
			} else {
				sc_vi_initTextbox(refuseDialogue)
			}
		}
	}
	
}