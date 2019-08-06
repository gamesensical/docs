---
description: General game- and cheat-related functions
---

# Client

### Functions:
#### client.camera_angles

`client.camera_angles(pitch: number, yaw: number)`

Argument | Description | Type
-------- | ----------- | ----
  **pitch** | Pitch | number (-90 - 90)
  **yaw** | Yaw | number (-180 - 180)

Get or set camera angles


#### client.color_log

`client.color_log(r: number, g: number, b: number, msg: string, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **r** | Red (0-255) | number
  **g** | Red (0-255) | number
  **b** | Red (0-255) | number
  **msg** | The message | string
  **...** | Comma-separated arguments to concatenate with msg. | 

Logs a colored message to console. End the string with \0 to prevent it from adding a newline.


#### client.delay_call

`client.delay_call(delay: number, callback: function, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **delay** | Time in seconds to wait before calling callback. | number
  **callback** | The lua function that will be called after delay seconds. | function
  **...** | Arguments that will be passed to the callback. | 

Executes the callback after delay seconds, passing the arguments to it.


#### client.draw_debug_text

`client.draw_debug_text(x: number, y: number, z: number, line_offset: number, duration: number, r: number, g: number, b: number, a: number, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **x** | Position in world space | number (world coordinate)
  **y** | Position in world space | number (world coordinate)
  **z** | Position in world space | number (world coordinate)
  **line_offset** | Used for vertical alignment, use 0 for the first line. | number
  **duration** | Time in seconds that the text will remain on the screen. | number
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number
  **...** | The text that will be drawn | 

Avoid calling this during the paint event.


#### client.draw_hitboxes

`client.draw_hitboxes(entindex: number, duration: number, hitboxes: number, r: number, g: number, b: number, a: number, tick: number)`

Argument | Description | Type
-------- | ----------- | ----
  **entindex** | Entity index | number (entindex)
  **duration** | Time in seconds | number
  **hitboxes** | Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes | number (hitbox id)
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number
  **tick** | Integer | number

Draws hitbox overlays. Avoid calling this during the paint event.


#### client.error_log

`client.error_log(msg: string, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **msg** | The error message | string
  **...** | Comma-separated arguments to concatenate with msg. | 

Logs a message to console in the error format and plays the sound (If Hide from OBS is disabled)


#### client.exec

`client.exec(cmd: string, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **cmd** | The console command(s) to execute. | string
  **...** | Comma-separated arguments to concatenate with cmd. | 

Executes a console command. Multiple commands can be combined with ';'. Be careful when passing user input (including usernames) to it.


#### client.eye_position

`client.eye_position()`: number, number, number

Returns x, y, z world coordinates of the local player's eye position, or nil on failure.


#### client.key_state

`client.key_state(key: number)`: boolean

Argument | Description | Type
-------- | ----------- | ----
  **key** | Virtual key code of the key as integer. [List of virtual key codes](https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes) | number

Returns true if the key is pressed, or nil on failure


#### client.latency

`client.latency()`: number

Returns your latency in seconds.


#### client.log

`client.log(msg: string, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **msg** | The message | string
  **...** | Comma-separated arguments to concatenate with msg. | 

Logs a message to console in the [gamesense] format.


#### client.random_float

`client.random_float(minimum: number, maximum: number)`: number

Argument | Description | Type
-------- | ----------- | ----
  **minimum** | Lowest possible result | number
  **maximum** | Highest possible result | number

Returns a random float between minimum and maximum.


#### client.random_int

`client.random_int(minimum: number, maximum: number)`: number

Argument | Description | Type
-------- | ----------- | ----
  **minimum** | Lowest possible result | number
  **maximum** | Highest possible result | number

Returns a random integer between minimum and maximum.


#### client.reload_active_scripts

`client.reload_active_scripts()`

Reloads all scripts the following frame.


#### client.scale_damage

`client.scale_damage(entindex: number, hitgroup: number, damage: number)`: number

Argument | Description | Type
-------- | ----------- | ----
  **entindex** | Player entity index | number (entindex)
  **hitgroup** | Hit group index | number (hitgroup id)
  **damage** | Damage | number

Returns adjusted damage for the specified hitgroup


#### client.screen_size

`client.screen_size()`: number, number

Returns (width, height).


#### client.set_clan_tag

`client.set_clan_tag(...)`

Argument | Description | Type
-------- | ----------- | ----
  **...** | The text that will be drawn | 

The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.


#### client.set_event_callback

`client.set_event_callback(event_name: string, callback: function)`

Argument | Description | Type
-------- | ----------- | ----
  **event_name** | Name of the event. | string
  **callback** | Lua function to call when this event occurs. | function

Raises an error and prints a message in console upon failure.


#### client.system_time

`client.system_time()`: number, number, number, number

Returns windows time as (hours, minutes, seconds, milliseconds)


#### client.timestamp

`client.timestamp()`: number

Returns high precision timestamp in milliseconds.


#### client.trace_bullet

`client.trace_bullet(from_player: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`: number

Argument | Description | Type
-------- | ----------- | ----
  **from_player** | Entity index of the player whose weapon will be used for this trace | number (entindex)
  **from_x** | Position in world space | number (world coordinate)
  **from_y** | Position in world space | number (world coordinate)
  **from_z** | Position in world space | number (world coordinate)
  **to_x** | Position in world space | number (world coordinate)
  **to_y** | Position in world space | number (world coordinate)
  **to_z** | Position in world space | number (world coordinate)

Returns entindex, damage. Entindex is nil when no player is hit.


#### client.trace_line

`client.trace_line(skip_entindex: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`

Argument | Description | Type
-------- | ----------- | ----
  **skip_entindex** | Ignore this entity while tracing | number (entindex)
  **from_x** | Position in world space | number (world coordinate)
  **from_y** | Position in world space | number (world coordinate)
  **from_z** | Position in world space | number (world coordinate)
  **to_x** | Position in world space | number (world coordinate)
  **to_y** | Position in world space | number (world coordinate)
  **to_z** | Position in world space | number (world coordinate)

Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.


#### client.unset_event_callback

`client.unset_event_callback(event_name: string, callback: function)`

Argument | Description | Type
-------- | ----------- | ----
  **event_name** | Name of the event. | string
  **callback** | Registered lua callback to remove. | function

Removes the event callback for the passed event name and function. Raises an error and prints a message in console upon failure.


#### client.update_player_list

`client.update_player_list()`

Updates the player list tab without having to open it.


#### client.userid_to_entindex

`client.userid_to_entindex(userid: number)`

Argument | Description | Type
-------- | ----------- | ----
  **userid** | This is given by some game events. | number (user id)

Returns the entity index, or 0 on failure.


#### client.visible

`client.visible(x: number, y: number, z: number)`: boolean

Argument | Description | Type
-------- | ----------- | ----
  **x** | Position in world space | number (world coordinate)
  **y** | Position in world space | number (world coordinate)
  **z** | Position in world space | number (world coordinate)

Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.

