# Client

### set_event_callback

`client.set_event_callback(event_name: string, callback: function)`

Argument | Description
-------- | -----------
  **event_name** | Name of the event.
  **callback** | Lua function to call when this event occurs.

Raises an error and prints a message in console upon failure.


### log

`client.log(msg: string, ...)`

Argument | Description
-------- | -----------
  **msg** | The message
  **...** | comma-separated arguments to concatenate with msg.


### color_log

`client.color_log(r: number, g: number, b: number, msg: string, ...)`

Argument | Description
-------- | -----------
  **r** | Red (0-255)
  **g** | Red (0-255)
  **b** | Red (0-255)
  **msg** | The message
  **...** | comma-separated arguments to concatenate with msg.


### exec

`client.exec(cmd: string, ...)`

Argument | Description
-------- | -----------
  **cmd** | The console command(s) to execute.
  **...** | comma-separated arguments to concatenate with cmd.


### userid_to_entindex

`client.userid_to_entindex(userid: number)`

Argument | Description
-------- | -----------
  **userid** | This is given by some game events.

Returns the entity index, or 0 on failure.


### draw_debug_text

`client.draw_debug_text(x: number, y: number, z: number, line_offset: number, duration: number, r: number, g: number, b: number, a: number, ...)`

Argument | Description
-------- | -----------
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


### draw_hitboxes

`client.draw_hitboxes(entindex: number, duration: number, hitboxes: number, r: number, g: number, b: number, a: number, tick: number)`

Argument | Description
-------- | -----------
  **entindex** | Entity index
  **duration** | Time in seconds
  **hitboxes** | Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)
  **tick** | integer

Draws hitbox overlays. Avoid calling this during the paint event.


### random_int

`client.random_int(minimum: number, maximum: number)`

Argument | Description
-------- | -----------
  **minimum** | Lowest possible result
  **maximum** | Highest possible result

Returns a random integer between minimum and maximum.


### random_float

`client.random_float(minimum: number, maximum: number)`

Argument | Description
-------- | -----------
  **minimum** | Lowest possible result
  **maximum** | Highest possible result

Returns a random float between minimum and maximum.


### screen_size

`client.screen_size()`

Returns (width, height).


### visible

{% hint style='danger' %}
Deprecated.
{% endhint %}

`client.visible(x: number, y: number, z: number)`

Argument | Description
-------- | -----------
  **x** | Position in world space
  **y** | Position in world space
  **z** | Position in world space

Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.


### trace_line

`client.trace_line(skip_entindex: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`

Argument | Description
-------- | -----------
  **skip_entindex** | Ignore this entity while tracing
  **from_x** | Position in world space
  **from_y** | Position in world space
  **from_z** | Position in world space
  **to_x** | Position in world space
  **to_y** | Position in world space
  **to_z** | Position in world space

Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.


### trace_bullet

`client.trace_bullet(from_player: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`

Argument | Description
-------- | -----------
  **from_player** | Entity index of the player whose weapon will be used for this trace
  **from_x** | Position in world space
  **from_y** | Position in world space
  **from_z** | Position in world space
  **to_x** | Position in world space
  **to_y** | Position in world space
  **to_z** | Position in world space

Returns entindex, damage. Entindex is nil when no player is hit.


### scale_damage

`client.scale_damage(entindex: number, hitgroup: number, damage: number)`

Argument | Description
-------- | -----------
  **entindex** | Player entity index
  **hitgroup** | Hit group index
  **damage** | Damage

Returns adjusted damage for the specified hitgroup


### delay_call

`client.delay_call(delay: number, callback: function, ...)`

Argument | Description
-------- | -----------
  **delay** | Time in seconds to wait before calling callback.
  **callback** | The lua function that will be called after delay seconds.
  **...** | arguments that will be passed to the callback.


### latency

`client.latency()`

Returns your latency in seconds.


### camera_angles

`client.camera_angles(pitch: number, yaw: number)`

Argument | Description
-------- | -----------
  **pitch** | Pitch
  **yaw** | Yaw

Set camera angles


### timestamp

`client.timestamp()`

Returns high precision timestamp in milliseconds.


### eye_position

`client.eye_position()`

Returns x, y, z world coordinates of the local player's eye position, or nil on failure.


### set_clan_tag

`client.set_clan_tag(...)`

Argument | Description
-------- | -----------
  **...** | The text that will be drawn

The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.


### system_time

`client.system_time()`


### reload_active_scripts

`client.reload_active_scripts()`

Reloads all scripts the following frame.

