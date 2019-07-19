# Entity

**Functions:**

* **entity.get_local_player**
	```lua
	entity.get_local_player()
	```
	
	Returns the entity index for the local player, or nil on failure.


* **entity.get_all**
	```lua
	entity.get_all(classname: string (entity classname))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**classname** | string that specifies the class name of entities that will be added to the list, for example "CCSPlayer".
	
	Returns an array of entity indices. Pass no arguments for all entities.


* **entity.get_players**
	```lua
	entity.get_players(enemies_only: boolean)
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**enemies_only** | Optional. If true then you and the players on your team will not be added to the list.
	
	Returns an array of player entity indices. Dormant and dead players will not be added to the list.


* **entity.get_game_rules**
	```lua
	entity.get_game_rules()
	```
	
	Returns entity index of CCSGameRulesProxy instance, or nil if none exists.


* **entity.get_player_resource**
	```lua
	entity.get_player_resource()
	```
	
	Returns entity index of CCSPlayerResource instance, or nil if none exists.


* **entity.get_classname**
	```lua
	entity.get_classname(ent: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Entity index.
	
	Returns the name of the entity's class, or nil on failure.


* **entity.set_prop**
	```lua
	entity.set_prop(ent: number (entindex), propname: string (netprop), value: any, array_index: number)
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Entity index.
	**propname** | Name of the networked property.
	**value** | The property will be set to this value. For vectors or angles, separate the components by commas.
	**array_index** | Optional. If propname is an array, the value at this array index will be set.


* **entity.get_prop**
	```lua
	entity.get_prop(ent: number (entindex), propname: string (netprop), array_index: number)
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Entity index.
	**propname** | Name of the networked property.
	**array_index** | Optional. If propname is an array, the value at this array index will be returned.
	
	Returns the value of the property, or nil on failure. For vectors or angles, this returns three values.


* **entity.is_enemy**
	```lua
	entity.is_enemy(ent: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Entity index.
	
	Returns true if the entity is on the other team.


* **entity.is_alive**
	```lua
	entity.is_alive(ent: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Entity index.
	
	Returns true if the player is not dead.


* **entity.is_dormant**
	```lua
	entity.is_dormant(ent: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Entity index.
	
	Returns true if the player is not dormant.


* **entity.get_player_name**
	```lua
	entity.get_player_name(ent: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Player entity index.
	
	Returns the player's name, or the string "unknown" on failure.


* **entity.get_player_weapon**
	```lua
	entity.get_player_weapon(ent: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**ent** | Player entity index.
	
	Returns the entity index of the player's active weapon, or nil if the player is not alive, dormant, etc.


* **entity.hitbox_position**
	```lua
	entity.hitbox_position(player: number (entindex), hitbox: number (hitbox id))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**player** | Entity index of the player.
	**hitbox** | Either a string of the hitbox name, or an integer index of the hitbox.
	
	Returns world coordinates x, y, z, or nil on failure.


* **entity.get_steam64**
	```lua
	entity.get_steam64(player: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**player** | Entity index of the player.
	
	Returns steamID3, or nil on failure.


* **entity.get_bounding_box**
	```lua
	entity.get_bounding_box(player: number (entindex))
	```
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**player** | Entity index of the player.
	
	Returns x1, y1, x2, y2, alpha_multiplier. The contents of x1, y1, x2, y2 must be ignored when alpha_multiplier is zero, which indicates that the bounding box is invalid and should not be drawn.

