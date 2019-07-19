# Client

Represented by `client`.

* **`client.set_event_callback(event_name, callback)`**
	
	**Arguments:**
	
		- event_name: Name of the event.
		- callback: Lua function to call when this event occurs.
	
	Raises an error and prints a message in console upon failure.
	

* **`client.log(msg, ...)`**
	
	**Arguments:**
	
		- msg: The message
		- ...: Optional comma-separated arguments to concatenate with msg.
	

* **`client.color_log(r, g, b, msg, ...)`**
	
	**Arguments:**
	
		- r: Red (0-255)
		- g: Red (0-255)
		- b: Red (0-255)
		- msg: The message
		- ...: Optional comma-separated arguments to concatenate with msg.
	

* **`client.exec(cmd, ...)`**
	
	**Arguments:**
	
		- cmd: The console command(s) to execute.
		- ...: Optional comma-separated arguments to concatenate with cmd.
	

* **`client.userid_to_entindex(userid)`**
	
	**Arguments:**
	
		- userid: This is given by some game events.
	
	Returns the entity index, or 0 on failure.
	

* **`client.draw_debug_text(x, y, z, line_offset, duration, r, g, b, a, ...)`**
	
	**Arguments:**
	
		- x: Position in world space
		- y: Position in world space
		- z: Position in world space
		- line_offset: Used for vertical alignment, use 0 for the first line.
		- duration: Time in seconds that the text will remain on the screen.
		- r: Red (1-255)
		- g: Green (1-255)
		- b: Blue (1-255)
		- a: Alpha (1-255)
		- ...: The text that will be drawn
	
	Avoid calling this during the paint event.
	

* **`client.draw_hitboxes(entindex, duration, hitboxes, r, g, b, a, tick)`**
	
	**Arguments:**
	
		- entindex: Entity index
		- duration: Time in seconds
		- hitboxes: Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes
		- r: Red (1-255)
		- g: Green (1-255)
		- b: Blue (1-255)
		- a: Alpha (1-255)
		- tick: Optional integer
	
	Draws hitbox overlays. Avoid calling this during the paint event.
	

* **`client.random_int(minimum, maximum)`**
	
	**Arguments:**
	
		- minimum: Lowest possible result
		- maximum: Highest possible result
	
	Returns a random integer between minimum and maximum.
	

* **`client.random_float(minimum, maximum)`**
	
	**Arguments:**
	
		- minimum: Lowest possible result
		- maximum: Highest possible result
	
	Returns a random float between minimum and maximum.
	

* **`client.screen_size()`**
	
	**Arguments:**
	
	
	Returns (width, height).
	

* **`client.visible(x, y, z)`**
	
	**Arguments:**
	
		- x: Position in world space
		- y: Position in world space
		- z: Position in world space
	
	Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.
	

* **`client.trace_line(skip_entindex, from_x, from_y, from_z, to_x, to_y, to_z)`**
	
	**Arguments:**
	
		- skip_entindex: Ignore this entity while tracing
		- from_x: Position in world space
		- from_y: Position in world space
		- from_z: Position in world space
		- to_x: Position in world space
		- to_y: Position in world space
		- to_z: Position in world space
	
	Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.
	

* **`client.trace_bullet(from_player, from_x, from_y, from_z, to_x, to_y, to_z)`**
	
	**Arguments:**
	
		- from_player: Entity index of the player whose weapon will be used for this trace
		- from_x: Position in world space
		- from_y: Position in world space
		- from_z: Position in world space
		- to_x: Position in world space
		- to_y: Position in world space
		- to_z: Position in world space
	
	Returns entindex, damage. Entindex is nil when no player is hit.
	

* **`client.scale_damage(entindex, hitgroup, damage)`**
	
	**Arguments:**
	
		- entindex: Player entity index
		- hitgroup: Hit group index
		- damage: Damage
	
	Returns adjusted damage for the specified hitgroup
	

* **`client.delay_call(delay, callback, ...)`**
	
	**Arguments:**
	
		- delay: Time in seconds to wait before calling callback.
		- callback: The lua function that will be called after delay seconds.
		- ...: Optional arguments that will be passed to the callback.
	

* **`client.latency()`**
	
	**Arguments:**
	
	
	Returns your latency in seconds.
	

* **`client.camera_angles(pitch, yaw)`**
	
	**Arguments:**
	
		- pitch: Pitch
		- yaw: Yaw
	
	Set camera angles
	

* **`client.timestamp()`**
	
	**Arguments:**
	
	
	Returns high precision timestamp in milliseconds.
	

* **`client.eye_position()`**
	
	**Arguments:**
	
	
	Returns x, y, z world coordinates of the local player's eye position, or nil on failure.
	

* **`client.set_clan_tag(...)`**
	
	**Arguments:**
	
		- ...: The text that will be drawn
	
	The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.
	

* **`client.system_time()`**
	
	**Arguments:**
	
	

* **`client.reload_active_scripts()`**
	
	**Arguments:**
	
	
	Reloads all scripts the following frame.
	
