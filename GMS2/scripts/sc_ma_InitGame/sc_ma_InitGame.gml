
enum resource {
	army,
	gold,
	reputation,
	food,
	boat,
	labor,
	medicine,
	lumber,
	actions
}

sc_fl_InitFlags()

currentVillage = Capital.id
playerAvatar = instance_create_layer(Capital.x,Capital.y,"Player",ob_pl_Player)
sc_vi_InitLocationConnections()

global.resources = ds_map_create()
sc_re_addResource(resource.army,0)
sc_re_addResource(resource.gold,0)
sc_re_addResource(resource.reputation,0)
sc_re_addResource(resource.food,0)
sc_re_addResource(resource.boat,0)
sc_re_addResource(resource.labor,0)
sc_re_addResource(resource.medicine,0)
sc_re_addResource(resource.lumber,0)
sc_re_addResource(resource.actions,50)

