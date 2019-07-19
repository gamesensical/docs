# Entity

Represented by `entity`.

* **`entity.get_local_player()`**
	
	Returns the entity index for the local player, or nil on failure.

* **`entity.get_all(${1:classname})`**
	
	Returns an array of entity indices. Pass no arguments for all entities.

* **`entity.get_players(${1:enemies_only})`**
	
	Returns an array of player entity indices. Dormant and dead players will not be added to the list.

* **`entity.get_game_rules()`**
	
	Returns entity index of CCSGameRulesProxy instance, or nil if none exists.

* **`entity.get_player_resource()`**
	
	Returns entity index of CCSPlayerResource instance, or nil if none exists.

* **`entity.get_classname(${1:ent})`**
	
	Returns the name of the entity's class, or nil on failure.

* **`entity.set_prop(${1:ent}, ${2:propname}, ${3:value}, ${4:array_index})`**

* **`entity.get_prop(${1:ent}, ${2:propname}, ${3:array_index})`**
	
	Returns the value of the property, or nil on failure. For vectors or angles, this returns three values.

* **`entity.is_enemy(${1:ent})`**
	
	Returns true if the entity is on the other team.

* **`entity.is_alive(${1:ent})`**
	
	Returns true if the player is not dead.

* **`entity.is_dormant(${1:ent})`**
	
	Returns true if the player is not dormant.

* **`entity.get_player_name(${1:ent})`**
	
	Returns the player's name, or the string "unknown" on failure.

* **`entity.get_player_weapon(${1:ent})`**
	
	Returns the entity index of the player's active weapon, or nil if the player is not alive, dormant, etc.

* **`entity.hitbox_position(${1:player}, ${2:hitbox})`**
	
	Returns world coordinates x, y, z, or nil on failure.

* **`entity.get_steam64(${1:player})`**
	
	Returns steamID3, or nil on failure.

* **`entity.get_bounding_box(${1:player})`**
	
	Returns x1, y1, x2, y2, alpha_multiplier. The contents of x1, y1, x2, y2 must be ignored when alpha_multiplier is zero, which indicates that the bounding box is invalid and should not be drawn.
