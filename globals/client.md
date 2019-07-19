# Client

**Functions:**

* `client.set_event_callback(event_name: string, callback: function)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**event_name** | Name of the event.
	**callback** | Lua function to call when this event occurs.
	
	Raises an error and prints a message in console upon failure.



* `client.log(msg: string, ...)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**msg** | The message
	**...** | comma-separated arguments to concatenate with msg.



* `client.color_log(r: number, g: number, b: number, msg: string, ...)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**r** | Red (0-255)
	**g** | Red (0-255)
	**b** | Red (0-255)
	**msg** | The message
	**...** | comma-separated arguments to concatenate with msg.



* `client.exec(cmd: string, ...)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**cmd** | The console command(s) to execute.
	**...** | comma-separated arguments to concatenate with cmd.



* `client.userid_to_entindex(userid: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**userid** | This is given by some game events.
	
	Returns the entity index, or 0 on failure.



* `client.draw_debug_text(x: number, y: number, z: number, line_offset: number, duration: number, r: number, g: number, b: number, a: number, ...)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**x** | Position in world space
	**y** | Position in world space
	**z** | Position in world space
	**line_offset** | Used for vertical alignment, use 0 for the first line.
	**duration** | Time in seconds that the text will remain on the screen.
	**r** | Red (1-255)
	**g** | Green (1-255)
	**b** | Blue (1-255)
	**a** | Alpha (1-255)
	**...** | The text that will be drawn
	
	Avoid calling this during the paint event.



* `client.draw_hitboxes(entindex: number, duration: number, hitboxes: number, r: number, g: number, b: number, a: number, tick: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**entindex** | Entity index
	**duration** | Time in seconds
	**hitboxes** | Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes
	**r** | Red (1-255)
	**g** | Green (1-255)
	**b** | Blue (1-255)
	**a** | Alpha (1-255)
	**tick** | integer
	
	Draws hitbox overlays. Avoid calling this during the paint event.



* `client.random_int(minimum: number, maximum: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**minimum** | Lowest possible result
	**maximum** | Highest possible result
	
	Returns a random integer between minimum and maximum.



* `client.random_float(minimum: number, maximum: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**minimum** | Lowest possible result
	**maximum** | Highest possible result
	
	Returns a random float between minimum and maximum.



* `client.screen_size()`
	
	Returns (width, height).



* `client.visible(x: number, y: number, z: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**x** | Position in world space
	**y** | Position in world space
	**z** | Position in world space
	
	Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.



* `client.trace_line(skip_entindex: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**skip_entindex** | Ignore this entity while tracing
	**from_x** | Position in world space
	**from_y** | Position in world space
	**from_z** | Position in world space
	**to_x** | Position in world space
	**to_y** | Position in world space
	**to_z** | Position in world space
	
	Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.



* `client.trace_bullet(from_player: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**from_player** | Entity index of the player whose weapon will be used for this trace
	**from_x** | Position in world space
	**from_y** | Position in world space
	**from_z** | Position in world space
	**to_x** | Position in world space
	**to_y** | Position in world space
	**to_z** | Position in world space
	
	Returns entindex, damage. Entindex is nil when no player is hit.



* `client.scale_damage(entindex: number, hitgroup: number, damage: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**entindex** | Player entity index
	**hitgroup** | Hit group index
	**damage** | Damage
	
	Returns adjusted damage for the specified hitgroup



* `client.delay_call(delay: number, callback: function, ...)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**delay** | Time in seconds to wait before calling callback.
	**callback** | The lua function that will be called after delay seconds.
	**...** | arguments that will be passed to the callback.



* `client.latency()`
	
	Returns your latency in seconds.



* `client.camera_angles(pitch: number, yaw: number)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**pitch** | Pitch
	**yaw** | Yaw
	
	Set camera angles



* `client.timestamp()`
	
	Returns high precision timestamp in milliseconds.



* `client.eye_position()`
	
	Returns x, y, z world coordinates of the local player's eye position, or nil on failure.



* `client.set_clan_tag(...)`
	
	**Arguments:**
	
	Name | Description
	---- | -----------
	**...** | The text that will be drawn
	
	The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.



* `client.system_time()`



* `client.reload_active_scripts()`
	
	Reloads all scripts the following frame.


