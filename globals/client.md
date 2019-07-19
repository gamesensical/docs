# Client

Represented by `client`.

* **`client.set_event_callback(${1:event_name}, ${2:callback})`**
	
	Raises an error and prints a message in console upon failure.

* **`client.log(${1:msg}, ${2:...})`**

* **`client.color_log(${1:r}, ${2:g}, ${3:b}, ${4:msg}, ${5:...})`**

* **`client.exec(${1:cmd}, ${2:...})`**

* **`client.userid_to_entindex(${1:userid})`**
	
	Returns the entity index, or 0 on failure.

* **`client.draw_debug_text(${1:x}, ${2:y}, ${3:z}, ${4:line_offset}, ${5:duration}, ${6:r}, ${7:g}, ${8:b}, ${9:a}, ${10:...})`**
	
	Avoid calling this during the paint event.

* **`client.draw_hitboxes(${1:entindex}, ${2:duration}, ${3:hitboxes}, ${4:r}, ${5:g}, ${6:b}, ${7:a}, ${8:tick})`**
	
	Draws hitbox overlays. Avoid calling this during the paint event.

* **`client.random_int(${1:minimum}, ${2:maximum})`**
	
	Returns a random integer between minimum and maximum.

* **`client.random_float(${1:minimum}, ${2:maximum})`**
	
	Returns a random float between minimum and maximum.

* **`client.screen_size()`**
	
	Returns (width, height).

* **`client.visible(${1:x}, ${2:y}, ${3:z})`**
	
	Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.

* **`client.trace_line(${1:skip_entindex}, ${2:from_x}, ${3:from_y}, ${4:from_z}, ${5:to_x}, ${6:to_y}, ${7:to_z})`**
	
	Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.

* **`client.trace_bullet(${1:from_player}, ${2:from_x}, ${3:from_y}, ${4:from_z}, ${5:to_x}, ${6:to_y}, ${7:to_z})`**
	
	Returns entindex, damage. Entindex is nil when no player is hit.

* **`client.scale_damage(${1:entindex}, ${2:hitgroup}, ${3:damage})`**
	
	Returns adjusted damage for the specified hitgroup

* **`client.delay_call(${1:delay}, ${2:callback}, ${3:...})`**

* **`client.latency()`**
	
	Returns your latency in seconds.

* **`client.camera_angles(${1:pitch}, ${2:yaw})`**
	
	Set camera angles

* **`client.timestamp()`**
	
	Returns high precision timestamp in milliseconds.

* **`client.eye_position()`**
	
	Returns x, y, z world coordinates of the local player's eye position, or nil on failure.

* **`client.set_clan_tag(${1:...})`**
	
	The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.

* **`client.system_time()`**

* **`client.reload_active_scripts()`**
	
	Reloads all scripts the following frame.
