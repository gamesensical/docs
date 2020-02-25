--[[EmmyLua]]

-- bit:

bit = {}

---
--- Returns the bitwise arithmetic right-shift of its first argument by the number of bits given by the second argument.
--- Arithmetic right-shift treats the most-significant bit as a sign bit and replicates it.
--- Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).
---
--- `x`: number
--- `n`: number of bits
---@param x number
---@param n number
---@return number
function bit.arshift(x, n) end

---
--- Returns the bitwise and of all of its arguments. Note that more than two arguments are allowed.
---
--- `x1`: number
--- `[x2...]`: number(s)
---@param x1 number
---@param [x2...] number
---@return number
function bit.band(x1, [x2...]) end

---
--- Returns the bitwise not of its argument.
---
--- `x`: number
---@param x number
---@return number
function bit.bnot(x) end

---
--- Returns the bitwise or of all of its arguments. Note that more than two arguments are allowed.
---
--- `x1`: number
--- `[x2...]`: number(s)
---@param x1 number
---@param [x2...] number
---@return number
function bit.bor(x1, [x2...]) end

---
--- Swaps the bytes of its argument and returns it. This can be used to convert little-endian 32 bit numbers to big-endian 32 bit numbers or vice versa.
---
--- `x`: number
---@param x number
---@return number
function bit.bswap(x) end

---
--- Returns the bitwise xor of all of its arguments. Note that more than two arguments are allowed.
---
--- `x1`: number
--- `[x2...]`: number(s)
---@param x1 number
---@param [x2...] number
---@return number
function bit.bxor(x1, [x2...]) end

---
--- Returns the bitwise logical left-shift of its first argument by the number of bits given by the second argument.
--- Logical shifts treat the first argument as an unsigned number and shift in 0-bits.
--- Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).
---
--- `x`: number
--- `n`: number of bits
---@param x number
---@param n number
---@return number
function bit.lshift(x, n) end

---
--- Returns the bitwise left rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.
--- Only the lower 5 bits of the rotate count are used (reduces to the range [0..31]).
---
--- `x`: number
--- `n`: number of bits
---@param x number
---@param n number
---@return number
function bit.rol(x, n) end

---
--- Returns the bitwise right rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.
--- Only the lower 5 bits of the rotate count are used (reduces to the range [0..31]).
---
--- `x`: number
--- `n`: number of bits
---@param x number
---@param n number
---@return number
function bit.ror(x, n) end

---
--- Returns the bitwise logical right-shift of its first argument by the number of bits given by the second argument.
--- Logical shifts treat the first argument as an unsigned number and shift in 0-bits.
--- Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).
---
--- `x`: number
--- `n`: number of bits
---@param x number
---@param n number
---@return number
function bit.rshift(x, n) end

---
--- Normalizes a number to the numeric range for bit operations and returns it. This function is usually not needed since all bit operations already normalize all of their input arguments.
---
--- `x`: number to normalize
---@param x number
---@return number
function bit.tobit(x) end

---
--- Converts its first argument to a hex string. The number of hex digits is given by the absolute value of the optional second argument. Positive numbers between 1 and 8 generate lowercase hex digits. Negative numbers generate uppercase hex digits. Only the least-significant 4*|n| bits are used. The default is to generate 8 lowercase hex digits.
---
--- `x`: number to convert
--- `n`: number of hex digits to return
---@param x number
---@param n number
---@return number
function bit.tohex(x, n) end


-- client:

client = {}

---
--- Get or set camera angles
---
--- `pitch`: Pitch
--- `yaw`: Yaw
---@param pitch number
---@param yaw number
function client.camera_angles(pitch, yaw) end

---
--- Returns x, y, z world coordinates of the game's camera position, or nil on failure.
---
---@return number, number, number
function client.camera_position() end

---
--- Logs a colored message to console. End the string with \0 to prevent it from adding a newline.
---
--- `r`: Red (0-255)
--- `g`: Green (0-255)
--- `b`: Blue (0-255)
--- `msg`: The message
--- `...`: Comma-separated arguments to concatenate with msg.
---@param r number
---@param g number
---@param b number
---@param msg string
---@param ...
function client.color_log(r, g, b, msg, ...) end

---
--- Returns a pointer to the interface, or nil on failure.
---
--- `module_name`: Filename of the module that contains the interface
--- `interface_name`: Name of the interface
---@param module_name string
---@param interface_name string
---@return userdata ffi pointer
function client.create_interface(module_name, interface_name) end

---
--- Executes the callback after delay seconds, passing the arguments to it.
---
--- `delay`: Time in seconds to wait before calling callback.
--- `callback`: The lua function that will be called after delay seconds.
--- `...`: Arguments that will be passed to the callback.
---@param delay number
---@param callback function
---@param ...
function client.delay_call(delay, callback, ...) end

---
--- Avoid calling this during the paint event.
---
--- `x`: Position in world space
--- `y`: Position in world space
--- `z`: Position in world space
--- `line_offset`: Used for vertical alignment, use 0 for the first line.
--- `duration`: Time in seconds that the text will remain on the screen.
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
--- `...`: The text that will be drawn
---@param x number
---@param y number
---@param z number
---@param line_offset number
---@param duration number
---@param r number
---@param g number
---@param b number
---@param a number
---@param ...
function client.draw_debug_text(x, y, z, line_offset, duration, r, g, b, a, ...) end

---
--- Draws hitbox overlays. Avoid calling this during the paint event.
---
--- `entindex`: Entity index
--- `duration`: Time in seconds
--- `hitboxes`: Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
--- `tick`: Integer
---@param entindex number
---@param duration number
---@param hitboxes number
---@param r number
---@param g number
---@param b number
---@param a number
---@param tick number
function client.draw_hitboxes(entindex, duration, hitboxes, r, g, b, a, tick) end

---
--- Logs a message to console in the error format and plays the sound (If Hide from OBS is disabled)
---
--- `msg`: The error message
--- `...`: Comma-separated arguments to concatenate with msg.
---@param msg string
---@param ...
function client.error_log(msg, ...) end

---
--- Executes a console command. Multiple commands can be combined with ';'. Be careful when passing user input (including usernames) to it.
---
--- `cmd`: The console command(s) to execute.
--- `...`: Comma-separated arguments to concatenate with cmd.
---@param cmd string
---@param ...
function client.exec(cmd, ...) end

---
--- Returns x, y, z world coordinates of the local player's eye position, or nil on failure.
---
---@return number, number, number
function client.eye_position() end

---
--- Finds the specified pattern and returns a pointer to it, or nil if not found.
---
--- `module_name`: Filename of the module that contains the interface
--- `pattern`: String of the signature. Escape with \x, replace wildcards with \xCC
---@param module_name string
---@param pattern string
---@return userdata ffi pointer
function client.find_signature(module_name, pattern) end

---
--- Returns true if the key is pressed, or nil on failure
---
--- `key`: Virtual key code of the key as integer. [List of virtual key codes](https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes)
---@param key number
---@return boolean
function client.key_state(key) end

---
--- Returns your latency in seconds.
---
---@return number
function client.latency() end

---
--- Logs a message to console in the [gamesense] format.
---
--- `msg`: The message
--- `...`: Comma-separated arguments to concatenate with msg.
---@param msg string
---@param ...
function client.log(msg, ...) end

---
--- Returns a random float between minimum and maximum.
---
--- `minimum`: Lowest possible result
--- `maximum`: Highest possible result
---@param minimum number
---@param maximum number
---@return number
function client.random_float(minimum, maximum) end

---
--- Returns a random integer between minimum and maximum.
---
--- `minimum`: Lowest possible result
--- `maximum`: Highest possible result
---@param minimum number
---@param maximum number
---@return number
function client.random_int(minimum, maximum) end

---
--- Reloads all scripts the following frame.
---
function client.reload_active_scripts() end

---
--- Returns adjusted damage for the specified hitgroup
---
--- `entindex`: Player entity index
--- `hitgroup`: Hit group index
--- `damage`: Damage
---@param entindex number
---@param hitgroup number
---@param damage number
---@return number
function client.scale_damage(entindex, hitgroup, damage) end

---
--- Returns (width, height).
---
---@return number, number
function client.screen_size() end

---
--- The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.
---
--- `...`: The text that will be drawn
---@param ...
function client.set_clan_tag(...) end

---
--- Raises an error and prints a message in console upon failure.
---
--- `event_name`: Name of the event.
--- `callback`: Lua function to call when this event occurs.
---@param event_name string
---@param callback function
function client.set_event_callback(event_name, callback) end

---
--- Returns windows time as (hours, minutes, seconds, milliseconds)
---
---@return number, number, number, number
function client.system_time() end

---
--- Returns high precision timestamp in milliseconds.
---
---@return number
function client.timestamp() end

---
--- Returns entindex, damage. Entindex is nil when no player is hit.
---
--- `from_player`: Entity index of the player whose weapon will be used for this trace
--- `from_x`: Position in world space
--- `from_y`: Position in world space
--- `from_z`: Position in world space
--- `to_x`: Position in world space
--- `to_y`: Position in world space
--- `to_z`: Position in world space
--- `skip_players`: Pass true to skip expensive player hitbox checks when they're not needed.
---@param from_player number
---@param from_x number
---@param from_y number
---@param from_z number
---@param to_x number
---@param to_y number
---@param to_z number
---@param skip_players boolean
---@return number, number
function client.trace_bullet(from_player, from_x, from_y, from_z, to_x, to_y, to_z, skip_players) end

---
--- Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.
---
--- `skip_entindex`: Ignore this entity while tracing
--- `from_x`: Position in world space
--- `from_y`: Position in world space
--- `from_z`: Position in world space
--- `to_x`: Position in world space
--- `to_y`: Position in world space
--- `to_z`: Position in world space
---@param skip_entindex number
---@param from_x number
---@param from_y number
---@param from_z number
---@param to_x number
---@param to_y number
---@param to_z number
---@return number, number
function client.trace_line(skip_entindex, from_x, from_y, from_z, to_x, to_y, to_z) end

---
--- Returns current windows time as [unix time / epoch time](https://en.wikipedia.org/wiki/Unix_time) (seconds since 1 January 1970 00:00:00)
---
---@return number
function client.unix_time() end

---
--- Removes the event callback for the passed event name and function. Raises an error and prints a message in console upon failure.
---
--- `event_name`: Name of the event.
--- `callback`: Registered lua callback to remove.
---@param event_name string
---@param callback function
function client.unset_event_callback(event_name, callback) end

---
--- Updates the player list tab without having to open it.
---
function client.update_player_list() end

---
--- Returns the entity index, or 0 on failure.
---
--- `userid`: This is given by some game events.
---@param userid number
---@return number
function client.userid_to_entindex(userid) end

---
--- Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.
---
--- `x`: Position in world space
--- `y`: Position in world space
--- `z`: Position in world space
---@param x number
---@param y number
---@param z number
---@return boolean
function client.visible(x, y, z) end


-- config:

config = {}

---
--- Loads a configuration preset.
---
--- `name`: Name of the configuration preset
---@param name string
function config.load(name) end


-- cvar:

cvar = {}

---
--- Returns nil if called on a ConCommand.
---
---@return number
function cvar.get_float() end

---
--- Returns nil if called on a ConCommand.
---
---@return number
function cvar.get_int() end

---
--- Returns nil on failure.
---
---@return string
function cvar.get_string() end

---
--- Executes a ConCommand or cvar callback, passing its arguments to it
---
--- `...`: Arguments passed to the callback
---@param ...
function cvar.invoke_callback(...) end

---
--- Sets the int, float and string value to the passed float. Invokes the change callback
---
--- `value`: Float value
---@param value number
function cvar.set_float(value) end

---
--- Sets the int, float and string value to the passed float. Invokes the change callback
---
--- `value`: Integer value
---@param value number
function cvar.set_int(value) end

---
--- This sets the float value without changing the integer and string values.
---
--- `value`: Float value
---@param value number
function cvar.set_raw_float(value) end

---
--- This sets the integer value without changing the float and string values.
---
--- `value`: Integer value
---@param value number
function cvar.set_raw_int(value) end

---
--- Sets the int, float and string value to the passed float. Invokes the change callback
---
--- `value`: String value
---@param value string
function cvar.set_string(value) end


-- database:

database = {}

---
--- Gets a value from the database
---
--- `key_name`: String used as a name of the key. Make sure to write to the same key_name.
---@param key_name string
---@return any
function database.read(key_name) end

---
--- Writes a value to the database. Avoid calling this often. For example, call read at script load, then call write during the 'shutdown' event
---
--- `key_name`: String used as a name of the key.
--- `value`: Value the key should be set to. This can be anything that can be sanitized (no functions, userdata)
---@param key_name string
---@param value any
function database.write(key_name, value) end


-- entity:

entity = {}

---
--- Returns an array of entity indices. Pass no arguments for all entities.
---
--- `classname`: String that specifies the class name of entities that will be added to the list, for example "CCSPlayer".
---@param classname string
---@return table entindex
function entity.get_all(classname) end

---
--- Returns x1, y1, x2, y2, alpha_multiplier. The contents of x1, y1, x2, y2 must be ignored when alpha_multiplier is zero, which indicates that the bounding box is invalid and should not be drawn.
---
--- `player`: Entity index of the player.
---@param player number
---@return number, number, number, number, number
function entity.get_bounding_box(player) end

---
--- Returns the name of the entity's class, or nil on failure.
---
--- `ent`: Entity index.
---@param ent number
---@return string
function entity.get_classname(ent) end

---
--- Returns entity index of CCSGameRulesProxy instance, or nil if none exists.
---
---@return number entindex
function entity.get_game_rules() end

---
--- Returns the entity index for the local player, or nil on failure.
---
---@return number entindex
function entity.get_local_player() end

---
--- Returns the player's name, or the string "unknown" on failure.
---
--- `ent`: Player entity index.
---@param ent number
---@return string
function entity.get_player_name(ent) end

---
--- Returns entity index of CCSPlayerResource instance, or nil if none exists.
---
---@return number entindex
function entity.get_player_resource() end

---
--- Returns the entity index of the player's active weapon, or nil if the player is not alive, dormant, etc.
---
--- `ent`: Player entity index.
---@param ent number
---@return number entindex
function entity.get_player_weapon(ent) end

---
--- Returns an array of player entity indices. Dormant and dead players will not be added to the list.
---
--- `enemies_only`: If true then you and the players on your team will not be added to the list.
---@param enemies_only boolean
---@return table entindex
function entity.get_players(enemies_only) end

---
--- Returns the value of the property, or nil on failure. For vectors or angles, this returns three values.
---
--- `ent`: Entity index.
--- `propname`: Name of the networked property.
--- `array_index`: If propname is an array, the value at this array index will be returned.
---@param ent number
---@param propname string
---@param array_index number
---@return any
function entity.get_prop(ent, propname, array_index) end

---
--- Returns steamID3, or nil on failure.
---
--- `player`: Entity index of the player.
---@param player number
---@return string
function entity.get_steam64(player) end

---
--- Returns world coordinates x, y, z, or nil on failure.
---
--- `player`: Entity index of the player.
--- `hitbox`: Either a string of the hitbox name, or an integer index of the hitbox.
---@param player number
---@param hitbox number
---@return number, number, number
function entity.hitbox_position(player, hitbox) end

---
--- Returns true if the player is not dead.
---
--- `ent`: Entity index.
---@param ent number
---@return boolean
function entity.is_alive(ent) end

---
--- Returns true if the player is dormant.
---
--- `ent`: Entity index.
---@param ent number
---@return boolean
function entity.is_dormant(ent) end

---
--- Returns true if the entity is on the other team.
---
--- `ent`: Entity index.
---@param ent number
---@return boolean
function entity.is_enemy(ent) end

---
--- Sets the value of the property. For vectors or angles, pass three values.
---
--- `ent`: Entity index.
--- `propname`: Name of the networked property.
--- `value`: The property will be set to this value. For vectors or angles, separate the components by commas.
--- `array_index`: If propname is an array, the value at this array index will be set.
---@param ent number
---@param propname string
---@param value any
---@param array_index number
function entity.set_prop(ent, propname, value, array_index) end


-- globals:

globals = {}

---
--- Returns the number of seconds elapsed during the last game frame.
---
---@return number
function globals.absoluteframetime() end

---
--- Returns the current number of commands that are being held back.
---
---@return number
function globals.chokedcommands() end

---
--- Returns the number of the command the server last acknowledged.
---
---@return number
function globals.commandack() end

---
--- Returns the game time in seconds. This number is synchronized with the server.
---
---@return number
function globals.curtime() end

---
--- Returns the number of frames since the game started
---
---@return number
function globals.framecount() end

---
--- Returns the number of seconds elapsed during the last game frame.
---
---@return number
function globals.frametime() end

---
--- Returns the command number of the last outgoing command.
---
---@return number
function globals.lastoutgoingcommand() end

---
--- Returns the name of the loaded map, or nil if you are not in game.
---
---@return string
function globals.mapname() end

---
--- Returns the maximum number of players in the server.
---
---@return number
function globals.maxplayers() end

---
--- Returns the previous server acknowledged command number.
---
---@return number
function globals.oldcommandack() end

---
--- Returns the local time in seconds.
---
---@return number
function globals.realtime() end

---
--- Returns the number of ticks elapsed in the server.
---
---@return number
function globals.tickcount() end

---
--- Returns the time elapsed in one game tick in seconds.
---
---@return number
function globals.tickinterval() end


-- materialsystem:

materialsystem = {}

---
--- Overrides the alpha of the material object it's called on. Doesn't work with some materials
---
--- `a`: New alpha value of the material (0-255)
---@param a number
function materialsystem.alpha_modulate(a) end

---
--- Returns the players hand cham material as an object.
---
---@return table material object
function materialsystem.arms_material() end

---
--- Returns the players cham material as an object.
---
---@return table material object
function materialsystem.chams_material() end

---
--- Overrides the color of the material object it's called on. Doesn't work with some materials
---
--- `r`: New red value of the material (0-255)
--- `g`: New green value of the material (0-255)
--- `b`: New blue value of the material (0-255)
---@param r number
---@param g number
---@param b number
function materialsystem.color_modulate(r, g, b) end

---
--- Returns a material object for the specified material.
---
--- `material`: The name of the material.
---@param material string
---@return table material object
function materialsystem.find_material(material) end

---
--- Returns all material objects that contain the specified material.
---
--- `materials`: The substring that the material name must contain.
---@param materials string
---@return table material objects
function materialsystem.find_materials(materials) end

---
--- Returns a texture object for the specified material.
---
--- `material`: The name of the material.
---@param material string
function materialsystem.find_texture(material) end

---
--- Returns the boolean value of the material var flag
---
--- `material_var_flag`: Material var flag as number
---@param material_var_flag number
---@return boolean
function materialsystem.get_material_var_flag(material_var_flag) end

---
--- Returns all material objects for a specified entity.
---
--- `entindex`: The entity whos materials will be returned.
---@param entindex number
---@return table material objects
function materialsystem.get_model_materials(entindex) end

---
--- Returns the value of the shader param or nil
---
--- `shader_param`: Shader param name
---@param shader_param string
---@return any
function materialsystem.get_shader_param(shader_param) end

---
--- Overrides all of a material properties with another material.
---
--- `entindex`: The entity whos materials will be returned.
---@param entindex number
function materialsystem.override_material(entindex) end

---
--- Restores the original material properties of the material it's called on.
---
function materialsystem.reload() end

---
--- Sets the value of the material var flag of the material
---
--- `material_var_flag`: Material var flag as number
--- `value`: New boolean value of the material var flag
---@param material_var_flag number
---@param value any
function materialsystem.set_material_var_flag(material_var_flag, value) end

---
--- Sets the value of the shader param of the material
---
--- `shader_param`: Shader param name
--- `value`: New value of the shader param
---@param shader_param string
---@param value any
function materialsystem.set_shader_param(shader_param, value) end


-- renderer:

renderer = {}

---
--- This can only be called from the paint callback.
---
--- `x`: Screen coordinate
--- `y`: Screen coordinate
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
--- `radius`: Radius of the circle in pixels.
--- `start_degrees`: 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
--- `percentage`: Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.
---@param x number
---@param y number
---@param r number
---@param g number
---@param b number
---@param a number
---@param radius number
---@param start_degrees number
---@param percentage number
function renderer.circle(x, y, r, g, b, a, radius, start_degrees, percentage) end

---
--- This can only be called from the paint callback.
---
--- `x`: Screen coordinate
--- `y`: Screen coordinate
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
--- `radius`: Radius of the circle in pixels.
--- `start_degrees`: 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
--- `percentage`: Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.
--- `thickness`: Thickness of the outline in pixels.
---@param x number
---@param y number
---@param r number
---@param g number
---@param b number
---@param a number
---@param radius number
---@param start_degrees number
---@param percentage number
---@param thickness number
function renderer.circle_outline(x, y, r, g, b, a, radius, start_degrees, percentage, thickness) end

---
--- This can only be called from the paint callback.
---
--- `x`: Screen coordinate
--- `y`: Screen coordinate
--- `w`: Width in pixels
--- `h`: Height in pixels
--- `r1`: Red (1-255)
--- `g1`: Green (1-255)
--- `b1`: Blue (1-255)
--- `a1`: Alpha (1-255)
--- `r2`: Red (1-255)
--- `g2`: Green (1-255)
--- `b2`: Blue (1-255)
--- `a2`: Alpha (1-255)
--- `ltr`: Left to right. Pass true for horizontal gradient, or false for vertical.
---@param x number
---@param y number
---@param w number
---@param h number
---@param r1 number
---@param g1 number
---@param b1 number
---@param a1 number
---@param r2 number
---@param g2 number
---@param b2 number
---@param a2 number
---@param ltr boolean
function renderer.gradient(x, y, w, h, r1, g1, b1, a1, r2, g2, b2, a2, ltr) end

---
--- Returns the Y screen coordinate (vertical offset) of the drawn text, or nil on failure. This can only be called from the paint callback.
---
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
--- `...`: The text that will be drawn
---@param r number
---@param g number
---@param b number
---@param a number
---@param ...
---@return number
function renderer.indicator(r, g, b, a, ...) end

---
--- This can only be called from the paint callback.
---
--- `xa`: Screen coordinate of point A
--- `ya`: Screen coordinate of point A
--- `xb`: Screen coordinate of point B
--- `yb`: Screen coordinate of point B
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
---@param xa number
---@param ya number
---@param xb number
---@param yb number
---@param r number
---@param g number
---@param b number
---@param a number
function renderer.line(xa, ya, xb, yb, r, g, b, a) end

---
--- Loads a texture from raw JPG contents (with file header). Returns a texture ID that can be used with renderer.texture, or nil on failure
---
--- `contents`: Raw JPG file contents
--- `width`: Image width
--- `height`: Image height
---@param contents string
---@param width number
---@param height number
---@return number texture id
function renderer.load_jpg(contents, width, height) end

---
--- Loads a texture from raw png contents (with file header). Returns a texture ID that can be used with renderer.texture, or nil on failure
---
--- `contents`: Raw PNG file contents
--- `width`: Image width
--- `height`: Image height
---@param contents string
---@param width number
---@param height number
---@return number texture id
function renderer.load_png(contents, width, height) end

---
--- Loads a texture from a RGBA buffer. Returns a texture ID that can be used with renderer.texture, or nil on failure
---
--- `contents`: RGBA buffer (hex encoded - red = "\xFF\x00\x00\xFF")
--- `width`: Width
--- `height`: Height
---@param contents string
---@param width number
---@param height number
---@return number texture id
function renderer.load_rgba(contents, width, height) end

---
--- Returns a texture ID that can be used with renderer.texture, or nil on failure
---
--- `contents`: SVG file contents
--- `width`: Width
--- `height`: Height
---@param contents string
---@param width number
---@param height number
---@return number texture id
function renderer.load_svg(contents, width, height) end

---
--- Returns width, height. This can only be called from the paint callback.
---
--- `flags`: "+" for large text, "-" for small text, or nil for normal sized text.
--- `...`: Text that will be measured
---@param flags string
---@param ...
---@return number, number
function renderer.measure_text(flags, ...) end

---
--- This can only be called from the paint callback.
---
--- `x`: Screen coordinate
--- `y`: Screen coordinate
--- `w`: Width in pixels
--- `h`: Height in pixels
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
---@param x number
---@param y number
---@param w number
---@param h number
---@param r number
---@param g number
---@param b number
---@param a number
function renderer.rectangle(x, y, w, h, r, g, b, a) end

---
--- This can only be called from the paint callback.
---
--- `x`: Screen coordinate
--- `y`: Screen coordinate
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
--- `flags`: "+" for large text, "-" for small text, "c" for centered text, "r" for right-aligned text, "b" for bold text, "d" for text that scales with DPI. "c" and "d" can be combined with other flags. nil can be specified for normal sized uncentered text.
--- `max_width`: Text will be clipped if it exceeds this width in pixels. Use 0 for no limit.
--- `...`: Text that will be drawn
---@param x number
---@param y number
---@param r number
---@param g number
---@param b number
---@param a number
---@param flags string
---@param max_width number
---@param ...
function renderer.text(x, y, r, g, b, a, flags, max_width, ...) end

---
--- Draws a texture from the texture id created from load_rgba, load_png, load_jpg or load_svg
---
--- `id`: Texture ID
--- `x`: X screen coordinate
--- `y`: Y screen coordinate
--- `w`: Width
--- `h`: Height
--- `r`: Red (0-255)
--- `g`: Green (0-255)
--- `b`: Blue (0-255)
--- `a`: Alpha (0-255)
--- `flags`: "r" for repeated/tiled textures, "f" to fill/stretch
---@param id number
---@param x number
---@param y number
---@param w number
---@param h number
---@param r number
---@param g number
---@param b number
---@param a number
---@param flags string
function renderer.texture(id, x, y, w, h, r, g, b, a, flags) end

---
--- This can only be called from the paint callback.
---
--- `x0`: Screen coordinate X for point A
--- `y0`: Screen coordinate Y for point A
--- `x1`: Screen coordinate X for point B
--- `y1`: Screen coordinate Y for point B
--- `x2`: Screen coordinate X for point C
--- `y2`: Screen coordinate Y for point C
--- `r`: Red (1-255)
--- `g`: Green (1-255)
--- `b`: Blue (1-255)
--- `a`: Alpha (1-255)
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param r number
---@param g number
---@param b number
---@param a number
function renderer.triangle(x0, y0, x1, y1, x2, y2, r, g, b, a) end

---
--- Returns two screen coordinates (x, y), or nil if the world position is not visible on your screen. This can only be called from the paint callback.
---
--- `x`: Position in world space
--- `y`: Position in world space
--- `z`: Position in world space
---@param x number
---@param y number
---@param z number
---@return number, number, number
function renderer.world_to_screen(x, y, z) end


-- ui:

ui = {}

---
--- For a checkbox, returns true or false. For a slider, returns an integer. For a combobox, returns a string. For a multiselect combobox, returns an array of strings. For a hotkey, returns true if the hotkey is active. For a color picker, returns r, g, b, a. Throws an error on failure.
---
--- `item`: The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.
---@param item number
---@return any
function ui.get(item) end

---
--- Returns true if the menu is currently open.
---
---@return boolean
function ui.is_menu_open() end

---
--- Returns the x, y of the menu, even when closed.
---
---@return number, number
function ui.menu_position() end

---
--- Returns the width, height of the menu, even when closed.
---
---@return number, number
function ui.menu_size() end

---
--- Returns current mouse coordinates x, y
---
---@return number, number
function ui.mouse_position() end

---
--- Returns the name of the menu item reference passed to it. Throws an error on failure.
---
--- `item`: The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.
---@param item number
---@return string
function ui.name(item) end

---
--- Throws an error on failure. The return value should not be used with ui.set or ui.get.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this checkbox will be added.
--- `name`: The name of the button.
--- `callback`: The lua function that will be called when the button is pressed.
---@param tab string
---@param container string
---@param name string
---@param callback function
---@return number menu item
function ui.new_button(tab, container, name, callback) end

---
--- Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this control will be added.
--- `name`: The name of the checkbox.
---@param tab string
---@param container string
---@param name string
---@return number menu item
function ui.new_checkbox(tab, container, name) end

---
--- Throws an error on failure. The color picker is placed to the right of the previous menu item.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this checkbox will be added.
--- `name`: The name of the color picker. This will not be shown, it is only used to identify this item in saved configs.
--- `r`: Initial red value (0-255)
--- `g`: Initial green value (0-255)
--- `b`: Initial blue value (0-255)
--- `a`: Initial alpha value (0-255)
---@param tab string
---@param container string
---@param name string
---@param r number
---@param g number
---@param b number
---@param a number
---@return number menu item
function ui.new_color_picker(tab, container, name, r, g, b, a) end

---
--- Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this control will be added.
--- `name`: The name of the combobox.
--- `...`: One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.
---@param tab string
---@param container string
---@param name string
---@param ...
---@return number menu item
function ui.new_combobox(tab, container, name, ...) end

---
--- Returns a special value that can be passed to ui.get to see if the hotkey is pressed, or throws an error on failure.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this control will be added.
--- `name`: The name of the hotkey.
--- `inline`: Boolean. If set to true, the hotkey will be placed to the right of the preceding menu item.
---@param tab string
---@param container string
---@param name string
---@param inline boolean
---@return number menu item
function ui.new_hotkey(tab, container, name, inline) end

---
--- Creates a new label, this can be used to make otherwise attached menu items standalone or have interactive menus. Returns a special value that can be passed to ui.set, or throws an error on failure.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this control will be added.
--- `name`: The name of the label. This can later be changed using ui.set.
---@param tab string
---@param container string
---@param name string
---@return number menu item
function ui.new_label(tab, container, name) end

---
--- Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this control will be added.
--- `name`: The name of the listbox.
--- `...`: One or more comma separated string values that will be added to the listbox. Alternatively, a table of strings that will be added.
---@param tab string
---@param container string
---@param name string
---@param ...
---@return number menu item
function ui.new_listbox(tab, container, name, ...) end

---
--- Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this control will be added.
--- `name`: The name of the multiselect.
--- `...`: One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.
---@param tab string
---@param container string
---@param name string
---@param ...
---@return number menu item
function ui.new_multiselect(tab, container, name, ...) end

---
--- Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this control will be added.
--- `name`: The name of the slider.
--- `min`: The minimum value that can be set using the slider.
--- `max`: The maximum value that can be set using the slider.
--- `init_value`: Integer. The initial value. If not provided, the initial value will be min.
--- `show_tooltip`: Boolean. true if the slider should display its current value.
--- `unit`: String that is two characters or less. This will be appended to the display value. For example, "px" for pixels or "%" for a percentage.
--- `scale`: The display value will be multiplied by this scale. For example, 0.1 will make a slider with the range [0-1800] show as 0.0-180.0 with one decimal place.
--- `tooltips`: Table used to override the tooltip for the specified values. The key must be within min-max. The value is a string that will be shown instead of the numeric value whenever that value is selected.
---@param tab string
---@param container string
---@param name string
---@param min number
---@param max number
---@param init_value number
---@param show_tooltip boolean
---@param unit string
---@param scale number
---@param tooltips table
---@return number menu item
function ui.new_slider(tab, container, name, min, max, init_value, show_tooltip, unit, scale, tooltips) end

---
--- Creates a string UI element, can be used to store arbitrary strings in configs. No menu item is created but it has the same semantics as other ui.new_* functions. Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.
---
--- `name`: The name of the string element, make sure this is unique.
--- `default_value`: Default value of the element.
---@param name string
---@param default_value string
---@return number menu item
function ui.new_string(name, default_value) end

---
--- Throws an error on failure. Returns a special value that can be used with ui.get
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this textbox will be added.
---@param tab string
---@param container string
---@return number menu item
function ui.new_textbox(tab, container) end

---
--- Avoid calling this from inside a function. Returns a reference that can be passed to ui.get and ui.set, or throws an error on failure. This allows you to access a built-in pre-existing menu items. This function returns multiple values when the specified menu item is followed by unnamed menu items, for example a color picker or a hotkey.
---
--- `tab`: The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, VISUALS or LUA.
--- `container`: The name of the existing container to which this checkbox will be added.
--- `name`: The name of the menu item.
---@param tab string
---@param container string
---@param name string
---@return number menu item
function ui.reference(tab, container, name) end

---
--- For checkboxes, pass true or false. For a slider, pass a number that is within the slider's minimum/maximum values. For a combobox, pass a string value. For a multiselect combobox, pass zero or more strings. For referenced buttons, param is ignored and the button's callback is invoked. For color pickers, pass the arguments r, g, b, a.
---
--- `item`: The result of either ui.new_checkbox, ui.new_slider, or ui.reference.
--- `value`: The value to which the menu item will be set.
--- `...`: For multiselect comboboxes, you may want to set more than one option.
---@param item number
---@param value any
---@param ...
function ui.set(item, value, ...) end

---
--- Sets the change callback of a custom menu item. It will be executed on change and passed the reference
---
--- `item`: The special value returned by ui.new_*. Do not try passing a reference to an existing menu item.
--- `callback`: Lua function that will be called when the menu item changes values. For example, this will be called when the user checks or unchecks a checkbox.
---@param item number
---@param callback function
function ui.set_callback(item, callback) end

---
--- Sets the visibility of the menu item
---
--- `item`: A menu item reference.
--- `visible`: Boolean. Pass false to hide the control from the menu.
---@param item number
---@param visible boolean
function ui.set_visible(item, visible) end
