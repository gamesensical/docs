---
summary: General game- and cheat-related functions
---

# client

### Functions:
#### client.camera_angles

`client.camera_angles([pitch: number, yaw: number])`

Argument | Type | Description
-------- | ---- | -----------
  **pitch** | number (-90 - 90) | Pitch
  **yaw** | number (-180 - 180) | Yaw

Get or set camera angles


#### client.camera_position

`client.camera_position()`: number, number, number

Returns x, y, z world coordinates of the game's camera position, or nil on failure.


#### client.color_log

`client.color_log(r: number, g: number, b: number, msg: string[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **msg** | string | The message
  **...** |  | Comma-separated arguments to concatenate with msg.

Logs a colored message to console. End the string with \0 to prevent it from adding a newline.


#### client.create_interface

`client.create_interface(module_name: string, interface_name: string)`: userdata (ffi pointer)

Argument | Type | Description
-------- | ---- | -----------
  **module_name** | string | Filename of the module that contains the interface
  **interface_name** | string | Name of the interface

Returns a pointer to the interface, or nil on failure.


#### client.delay_call

`client.delay_call(delay: number, callback: function[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **delay** | number | Time in seconds to wait before calling callback.
  **callback** | function | The lua function that will be called after delay seconds.
  **...** |  | Arguments that will be passed to the callback.

Executes the callback after delay seconds, passing the arguments to it.


#### client.draw_debug_text

`client.draw_debug_text(x: number, y: number, z: number, line_offset: number, duration: number, r: number, g: number, b: number, a: number, ...)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (world coordinate) | Position in world space
  **y** | number (world coordinate) | Position in world space
  **z** | number (world coordinate) | Position in world space
  **line_offset** | number | Used for vertical alignment, use 0 for the first line.
  **duration** | number | Time in seconds that the text will remain on the screen.
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **...** |  | The text that will be drawn

Avoid calling this during the paint event.


#### client.draw_hitboxes

`client.draw_hitboxes(entindex: number, duration: number, hitboxes: number, r: number, g: number, b: number, a: number[, tick: number])`

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Entity index
  **duration** | number | Time in seconds
  **hitboxes** | number (hitbox id) | Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **tick** | number | Integer

Draws hitbox overlays. Avoid calling this during the paint event.


#### client.error_log

`client.error_log(msg: string)`

Argument | Type | Description
-------- | ---- | -----------
  **msg** | string | The error message

General game- and cheat-related functions


#### client.exec

`client.exec(cmd: string[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **cmd** | string | The console command(s) to execute.
  **...** |  | Comma-separated arguments to concatenate with cmd.

Executes a console command. Multiple commands can be combined with ';'. Be careful when passing user input (including usernames) to it.


#### client.eye_position

`client.eye_position()`: number, number, number

Returns x, y, z world coordinates of the local player's eye position, or nil on failure.


#### client.find_signature

`client.find_signature(module_name: string, pattern: string)`: userdata (ffi pointer)

Argument | Type | Description
-------- | ---- | -----------
  **module_name** | string | Filename of the module that contains the interface
  **pattern** | string | String of the signature. Escape with \x, replace wildcards with \xCC

Finds the specified pattern and returns a pointer to it, or nil if not found.


#### client.get_model_name

`client.get_model_name(model_index: number)`: string

Argument | Type | Description
-------- | ---- | -----------
  **model_index** | number (model index) | Model index

Returns model name, or nil on failure.


#### client.key_state

`client.key_state(key: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **key** | number | Virtual key code of the key as integer. [List of virtual key codes](https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes)

Returns true if the key is pressed, or nil on failure


#### client.latency

`client.latency()`: number

Returns your latency in seconds.


#### client.log

`client.log(msg: string[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **msg** | string | The message
  **...** |  | Comma-separated arguments to concatenate with msg.

Logs a message to console in the [gamesense] format.


#### client.random_float

`client.random_float(minimum: number, maximum: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **minimum** | number | Lowest possible result
  **maximum** | number | Highest possible result

Returns a random float between minimum and maximum.


#### client.random_int

`client.random_int(minimum: number, maximum: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **minimum** | number | Lowest possible result
  **maximum** | number | Highest possible result

Returns a random integer between minimum and maximum.


#### client.register_esp_flag

`client.register_esp_flag(flag: string, r: number, g: number, b: number, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **flag** | string | String of text that will be shown when callback returns true
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **callback** | function | Function that will be called for each entity while drawing the ESP

Requires "Flags" is enabled in Player ESP


#### client.reload_active_scripts

`client.reload_active_scripts()`

Reloads all scripts the following frame.


#### client.scale_damage

`client.scale_damage(entindex: number, hitgroup: number, damage: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Player entity index
  **hitgroup** | number (hitgroup id) | Hit group index
  **damage** | number | Damage

Returns adjusted damage for the specified hitgroup


#### client.screen_size

`client.screen_size()`: number, number

Returns (width, height).


#### client.set_clan_tag

`client.set_clan_tag(...)`

Argument | Type | Description
-------- | ---- | -----------
  **...** |  | The text that will be drawn

The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.


#### client.set_event_callback

`client.set_event_callback(event_name: string, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **event_name** | string | Name of the event.
  **callback** | function | Lua function to call when this event occurs.

Raises an error and prints a message in console upon failure.


#### client.system_time

`client.system_time()`: number, number, number, number

Returns windows time as (hours, minutes, seconds, milliseconds)


#### client.timestamp

`client.timestamp()`: number

Returns high precision timestamp in milliseconds.


#### client.trace_bullet

`client.trace_bullet(from_player: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number, skip_players: boolean)`: number, number

Argument | Type | Description
-------- | ---- | -----------
  **from_player** | number (entindex) | Entity index of the player whose weapon will be used for this trace
  **from_x** | number (world coordinate) | Position in world space
  **from_y** | number (world coordinate) | Position in world space
  **from_z** | number (world coordinate) | Position in world space
  **to_x** | number (world coordinate) | Position in world space
  **to_y** | number (world coordinate) | Position in world space
  **to_z** | number (world coordinate) | Position in world space
  **skip_players** | boolean | Optional, pass true to skip expensive hitbox checks.

Returns entindex, damage. Entindex is nil when no player is hit or if players are skipped.


#### client.trace_line

`client.trace_line(skip_entindex: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`: number, number

Argument | Type | Description
-------- | ---- | -----------
  **skip_entindex** | number (entindex) | Ignore this entity while tracing
  **from_x** | number (world coordinate) | Position in world space
  **from_y** | number (world coordinate) | Position in world space
  **from_z** | number (world coordinate) | Position in world space
  **to_x** | number (world coordinate) | Position in world space
  **to_y** | number (world coordinate) | Position in world space
  **to_z** | number (world coordinate) | Position in world space

Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.


#### client.unix_time

`client.unix_time()`: number

Returns current windows time as [unix time / epoch time](https://en.wikipedia.org/wiki/Unix_time) (seconds since 1 January 1970 00:00:00)


#### client.unset_event_callback

`client.unset_event_callback(event_name: string, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **event_name** | string | Name of the event
  **callback** | function | Lua function that was passed to set_event_callback

Removes a callback that was previously set using set_event_callback


#### client.update_player_list

`client.update_player_list()`

Updates the player list tab without having to open it.


#### client.userid_to_entindex

`client.userid_to_entindex(userid: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **userid** | number (user id) | This is given by some game events.

Returns the entity index, or 0 on failure.


#### client.visible

`client.visible(x: number, y: number, z: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (world coordinate) | Position in world space
  **y** | number (world coordinate) | Position in world space
  **z** | number (world coordinate) | Position in world space

Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.

