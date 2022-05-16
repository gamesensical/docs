---
description: General game- and cheat-related functions
---

# client

## Functions:

### client.camera\_angles

`client.camera_angles([pitch: number, yaw: number])`

| Argument  | Type                | Description |
| --------- | ------------------- | ----------- |
| **pitch** | number (-90 - 90)   | Pitch       |
| **yaw**   | number (-180 - 180) | Yaw         |

Get or set camera angles

### client.camera\_position

`client.camera_position()`: number, number, number

Returns x, y, z world coordinates of the game's camera position, or nil on failure.

### client.color\_log

`client.color_log(r: number, g: number, b: number, msg: string[, ...])`

| Argument | Type   | Description                                        |
| -------- | ------ | -------------------------------------------------- |
| **r**    | number | Red (0-255)                                        |
| **g**    | number | Green (0-255)                                      |
| **b**    | number | Blue (0-255)                                       |
| **msg**  | string | The message                                        |
| **...**  |        | Comma-separated arguments to concatenate with msg. |

Logs a colored message to console. End the string with \0 to prevent it from adding a newline.

### client.create\_interface

`client.create_interface(module_name: string, interface_name: string)`: userdata (ffi pointer)

| Argument            | Type   | Description                                        |
| ------------------- | ------ | -------------------------------------------------- |
| **module\_name**    | string | Filename of the module that contains the interface |
| **interface\_name** | string | Name of the interface                              |

Returns a pointer to the interface, or nil on failure.

### client.current\_threat

`client.current_threat()`

Returns the entity index of the player being used for 'At targets' anti-aim.

### client.delay\_call

`client.delay_call(delay: number, callback: function[, ...])`

| Argument     | Type     | Description                                               |
| ------------ | -------- | --------------------------------------------------------- |
| **delay**    | number   | Time in seconds to wait before calling callback.          |
| **callback** | function | The lua function that will be called after delay seconds. |
| **...**      |          | Arguments that will be passed to the callback.            |

Executes the callback after delay seconds, passing the arguments to it.

### client.draw\_debug\_text

`client.draw_debug_text(x: number, y: number, z: number, line_offset: number, duration: number, r: number, g: number, b: number, a: number, ...)`

| Argument         | Type                      | Description                                              |
| ---------------- | ------------------------- | -------------------------------------------------------- |
| **x**            | number (world coordinate) | Position in world space                                  |
| **y**            | number (world coordinate) | Position in world space                                  |
| **z**            | number (world coordinate) | Position in world space                                  |
| **line\_offset** | number                    | Used for vertical alignment, use 0 for the first line.   |
| **duration**     | number                    | Time in seconds that the text will remain on the screen. |
| **r**            | number                    | Red (1-255)                                              |
| **g**            | number                    | Green (1-255)                                            |
| **b**            | number                    | Blue (1-255)                                             |
| **a**            | number                    | Alpha (1-255)                                            |
| **...**          |                           | The text that will be drawn                              |

Avoid calling this during the paint event.

### client.draw\_hitboxes

`client.draw_hitboxes(entindex: number, duration: number, hitboxes: number, r: number, g: number, b: number, a: number[, tick: number])`

| Argument     | Type               | Description                                                                 |
| ------------ | ------------------ | --------------------------------------------------------------------------- |
| **entindex** | number (entindex)  | Entity index                                                                |
| **duration** | number             | Time in seconds                                                             |
| **hitboxes** | number (hitbox id) | Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes |
| **r**        | number             | Red (1-255)                                                                 |
| **g**        | number             | Green (1-255)                                                               |
| **b**        | number             | Blue (1-255)                                                                |
| **a**        | number             | Alpha (1-255)                                                               |
| **tick**     | number             | Integer                                                                     |

Draws hitbox overlays. Avoid calling this during the paint event.

### client.error\_log

`client.error_log(msg: string[, ...])`

| Argument | Type   | Description                                        |
| -------- | ------ | -------------------------------------------------- |
| **msg**  | string | The error message                                  |
| **...**  |        | Comma-separated arguments to concatenate with msg. |

Logs a message to console in the error format and plays the sound (If Hide from OBS is disabled)

### client.exec

`client.exec(cmd: string[, ...])`

| Argument | Type   | Description                                        |
| -------- | ------ | -------------------------------------------------- |
| **cmd**  | string | The console command(s) to execute.                 |
| **...**  |        | Comma-separated arguments to concatenate with cmd. |

Executes a console command. Multiple commands can be combined with ';'. Be careful when passing user input (including usernames) to it.

### client.eye\_position

`client.eye_position()`: number, number, number

Returns x, y, z world coordinates of the local player's eye position, or nil on failure.

### client.find\_signature

`client.find_signature(module_name: string, pattern: string)`: userdata (ffi pointer)

| Argument         | Type   | Description                                                          |
| ---------------- | ------ | -------------------------------------------------------------------- |
| **module\_name** | string | Filename of the module that contains the interface                   |
| **pattern**      | string | String of the signature. Escape with \x, replace wildcards with \xCC |

Finds the specified pattern and returns a pointer to it, or nil if not found.

### client.get\_model\_name

`client.get_model_name(model_index: number)`: string

| Argument         | Type   | Description |
| ---------------- | ------ | ----------- |
| **model\_index** | number | Model index |

Returns model name, or nil on failure.

### client.key\_state

`client.key_state(key: number)`: boolean

| Argument | Type   | Description                                                                                                                                      |
| -------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| **key**  | number | Virtual key code of the key as integer. [List of virtual key codes](https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes) |

Returns true if the key is pressed, or nil on failure

### client.latency

`client.latency()`: number

Returns your latency in seconds.

#### client.log

`client.log(msg: string[, ...])`

| Argument | Type   | Description                                        |
| -------- | ------ | -------------------------------------------------- |
| **msg**  | string | The message                                        |
| **...**  |        | Comma-separated arguments to concatenate with msg. |

Logs a message to console in the \[gamesense] format.

### client.random\_float

`client.random_float(minimum: number, maximum: number)`: number

| Argument    | Type   | Description             |
| ----------- | ------ | ----------------------- |
| **minimum** | number | Lowest possible result  |
| **maximum** | number | Highest possible result |

Returns a random float between minimum and maximum.

### client.random\_int

`client.random_int(minimum: number, maximum: number)`: number

| Argument    | Type   | Description             |
| ----------- | ------ | ----------------------- |
| **minimum** | number | Lowest possible result  |
| **maximum** | number | Highest possible result |

Returns a random integer between minimum and maximum.

### client.real\_latency

`client.real_latency()`

Returns your current real latency, regardless of ping spike.

### client.register\_esp\_flag

`client.register_esp_flag(flagname, r: number, g: number, b: number, callback_function)`: number, number, number

| Argument               | Type   | Description                                                                                                                            |
| ---------------------- | ------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| **flagname**           |        | Flag what be displayed                                                                                                                 |
| **r**                  | number | New red value of the material (0-255)                                                                                                  |
| **g**                  | number | New green value of the material (0-255)                                                                                                |
| **b**                  | number | New blue value of the material (0-255)                                                                                                 |
| **callback\_function** |        | The given function will be called for every player when the ESP being drawn. Callbacks can return strings, e.g. return true, "DUCKING" |

Returns the x, y, z coordinates of the entity. Only works for non-dormant entities, except for players, where it will return the dormant esp origin

### client.reload\_active\_scripts

`client.reload_active_scripts()`

Reloads all scripts the following frame.

### client.request\_full\_update

`client.request_full_update()`

Request cl\_fullupdate and update all networked stuff.

### client.scale\_damage

`client.scale_damage(entindex: number, hitgroup: number, damage: number)`: number

| Argument     | Type                 | Description         |
| ------------ | -------------------- | ------------------- |
| **entindex** | number (entindex)    | Player entity index |
| **hitgroup** | number (hitgroup id) | Hit group index     |
| **damage**   | number               | Damage              |

Returns adjusted damage for the specified hitgroup

### client.screen\_size

`client.screen_size()`: number, number

Returns (width, height).

### client.set\_clan\_tag

`client.set_clan_tag(...)`

| Argument | Type | Description                 |
| -------- | ---- | --------------------------- |
| **...**  |      | The text that will be drawn |

The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.

### client.set\_event\_callback

`client.set_event_callback(event_name: string, callback: function)`

| Argument        | Type     | Description                                  |
| --------------- | -------- | -------------------------------------------- |
| **event\_name** | string   | Name of the event.                           |
| **callback**    | function | Lua function to call when this event occurs. |

Raises an error and prints a message in console upon failure.

### client.system\_time

`client.system_time()`: number, number, number, number

Returns windows time as (hours, minutes, seconds, milliseconds)

### client.timestamp

`client.timestamp()`: number

Returns high precision timestamp in milliseconds.

### client.trace\_bullet

`client.trace_bullet(from_player: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number[, skip_players: boolean])`: number, number

| Argument          | Type                      | Description                                                               |
| ----------------- | ------------------------- | ------------------------------------------------------------------------- |
| **from\_player**  | number (entindex)         | Entity index of the player whose weapon will be used for this trace       |
| **from\_x**       | number (world coordinate) | Position in world space                                                   |
| **from\_y**       | number (world coordinate) | Position in world space                                                   |
| **from\_z**       | number (world coordinate) | Position in world space                                                   |
| **to\_x**         | number (world coordinate) | Position in world space                                                   |
| **to\_y**         | number (world coordinate) | Position in world space                                                   |
| **to\_z**         | number (world coordinate) | Position in world space                                                   |
| **skip\_players** | boolean                   | Pass true to skip expensive player hitbox checks when they're not needed. |

Returns entindex, damage. Entindex is nil when no player is hit.

### client.trace\_line

`client.trace_line(skip_entindex: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`: number, number

| Argument           | Type                      | Description                      |
| ------------------ | ------------------------- | -------------------------------- |
| **skip\_entindex** | number (entindex)         | Ignore this entity while tracing |
| **from\_x**        | number (world coordinate) | Position in world space          |
| **from\_y**        | number (world coordinate) | Position in world space          |
| **from\_z**        | number (world coordinate) | Position in world space          |
| **to\_x**          | number (world coordinate) | Position in world space          |
| **to\_y**          | number (world coordinate) | Position in world space          |
| **to\_z**          | number (world coordinate) | Position in world space          |

Returns fraction, entindex. fraction is a percentage in the range \[0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.

### client.unix\_time

`client.unix_time()`: number

Returns current windows time as [unix time / epoch time](https://en.wikipedia.org/wiki/Unix\_time) (seconds since 1 January 1970 00:00:00)

### client.unset\_event\_callback

`client.unset_event_callback(event_name: string, callback: function)`

| Argument        | Type     | Description                        |
| --------------- | -------- | ---------------------------------- |
| **event\_name** | string   | Name of the event.                 |
| **callback**    | function | Registered lua callback to remove. |

Removes the event callback for the passed event name and function. Raises an error and prints a message in console upon failure.

### client.update\_player\_list

`client.update_player_list()`

Updates the player list tab without having to open it.

### client.userid\_to\_entindex

`client.userid_to_entindex(userid: number)`: number

| Argument   | Type             | Description                        |
| ---------- | ---------------- | ---------------------------------- |
| **userid** | number (user id) | This is given by some game events. |

Returns the entity index, or 0 on failure.

### client.visible

`client.visible(x: number, y: number, z: number)`: boolean

| Argument | Type                      | Description             |
| -------- | ------------------------- | ----------------------- |
| **x**    | number (world coordinate) | Position in world space |
| **y**    | number (world coordinate) | Position in world space |
| **z**    | number (world coordinate) | Position in world space |

Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.
