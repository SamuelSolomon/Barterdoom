ds_map_add(Capital.ConnectedLocations, Town1.id, 1)
ds_map_add(Capital.ConnectedLocations, Town4.id, 3)
ds_map_add(Capital.ConnectedLocations, Town6.id, 2)

ds_map_add(Town1.ConnectedLocations, Capital.id, 1)
ds_map_add(Town1.ConnectedLocations, Town2.id, 1)
ds_map_add(Town1.ConnectedLocations, Town3.id, 1)
ds_map_add(Town1.ConnectedLocations, MineFood.id, 1)

ds_map_add(Town2.ConnectedLocations, Town1.id, 1)
ds_map_add(Town2.ConnectedLocations, Town3.id, 1)

ds_map_add(Town3.ConnectedLocations, Town1.id, 1)
ds_map_add(Town3.ConnectedLocations, Town2.id, 1)
ds_map_add(Town3.ConnectedLocations, Town4.id, 2)

ds_map_add(Town4.ConnectedLocations, Capital.id, 3)
ds_map_add(Town4.ConnectedLocations, Town3.id, 2)
ds_map_add(Town4.ConnectedLocations, Town5.id, 1)
ds_map_add(Town4.ConnectedLocations, Town6.id, 3)
ds_map_add(Town4.ConnectedLocations, MineGold.id, 1)

ds_map_add(Town5.ConnectedLocations, Town7.id, 2)
ds_map_add(Town5.ConnectedLocations, Town4.id, 1)

ds_map_add(Town6.ConnectedLocations, Capital.id, 2)
ds_map_add(Town6.ConnectedLocations, Town4.id, 3)
ds_map_add(Town6.ConnectedLocations, Town8.id, 1)
ds_map_add(Town6.ConnectedLocations, MineLumber.id, 1)

ds_map_add(Town7.ConnectedLocations, Town5.id, 2)

ds_map_add(Town8.ConnectedLocations, Town6.id, 1)

ds_map_add(MineFood.ConnectedLocations, Town1.id, 1)

ds_map_add(MineGold.ConnectedLocations, Town4.id, 1)

ds_map_add(MineLumber.ConnectedLocations, Town6.id, 1)