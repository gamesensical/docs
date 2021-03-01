---
description: List of events that you can listen to using client.set_event_callback
---
# Events

### List of events:

#### paint

Fired every time the game renders a frame while being connected to a server. Can be used to draw to the screen using the [renderer.*](/docs/developers/globals/renderer) functions


{% page-ref page="/developers/globals/renderer" %}

**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
client.set_event_callback("paint", function()
	renderer.text(15, 15, 255, 255, 255, 255, nil, 0, "hello world")
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### paint_ui

Fired every time the game renders a frame, even if you're in the menu. Can be used to draw to the screen using the [renderer.*](/docs/developers/globals/renderer) functions


{% page-ref page="/developers/globals/renderer" %}


#### run_command

Fired every time the game runs a command (usually 64 times a second, equal to tickrate) while you're alive. This is the best event for processing data that only changes when the game receives an update from the server, like information about other players.

Key | Description
--- | -----------
 **chokedcommands** | Amount of commands that the client has choked
 **command_number** | Current command number



#### setup_command

Fired every time the game prepares a move command that's sent to the server. This is ran before cheat features like antiaim and can be used to modify user input (view angles, pressed keys, movement) how it's seen by the cheat. For example, setting `in_use = 1` will disable antiaim the same way pressing use key ingame does. This is the preferred method of setting user input and should be used instead of `client.exec` whenever possible

Key | Description
--- | -----------
 **chokedcommands** | Amount of commands that the client has choked
 **command_number** | Current command number
 **pitch** | Pitch view angle
 **yaw** | Yaw view angle
 **forwardmove** | Forward / backward speed (-450 to 450)
 **sidemove** | Left / right speed (-450 to 450)
 **move_yaw** | Yaw angle that's used for movement. If not set, view yaw is used
 **allow_send_packet** | Set to false to make the cheat choke the current command (when possible)
 **in_attack** | IN_ATTACK Button
 **in_jump** | IN_JUMP Button
 **in_duck** | IN_DUCK Button
 **in_forward** | IN_FORWARD Button
 **in_back** | IN_BACK Button
 **in_use** | IN_USE Button
 **in_cancel** | IN_CANCEL Button
 **in_left** | IN_LEFT Button
 **in_right** | IN_RIGHT Button
 **in_moveleft** | IN_MOVELEFT Button
 **in_moveright** | IN_MOVERIGHT Button
 **in_attack2** | IN_ATTACK2 Button
 **in_run** | IN_RUN Button
 **in_reload** | IN_RELOAD Button
 **in_alt1** | IN_ALT1 Button
 **in_alt2** | IN_ALT2 Button
 **in_score** | IN_SCORE Button
 **in_speed** | IN_SPEED Button
 **in_walk** | IN_WALK Button
 **in_zoom** | IN_ZOOM Button
 **in_weapon1** | IN_WEAPON1 Button
 **in_weapon2** | IN_WEAPON2 Button
 **in_bullrush** | IN_BULLRUSH Button
 **in_grenade1** | IN_GRENADE1 Button
 **in_grenade2** | IN_GRENADE2 Button
 **in_attack3** | IN_ATTACK3 Button
 **weaponselect** | 
 **weaponsubtype** | 



#### override_view

Lets you override the camera position and angles

Key | Description
--- | -----------
 **x** | Camera X position
 **y** | Camera Y position
 **z** | Camera Z position
 **pitch** | Pitch view angle
 **yaw** | Yaw view angle
 **fov** | Field of view



#### console_input

Fired every time the user types something in the game console and presses enter. Return true from the event handler to make the game not process the input

|| Property
------ | --------
 1 | console input text


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
client.set_event_callback("console_input", function(text)
	client.log("entered: '", text, "'")
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### output

This event lets you override the text drawn in the top left. There can only be one callback for this event. This event callback is invoked from print, client.log, client.color_log, "Missed due to spread" message, etc.

{% hint style="warning" %}
Make sure to unset your callback when you don't need it. Otherwise you will break the built-in output and other scripts using this event.
{% endhint %}

Key | Description
--- | -----------
 **text** | Drawn text
 **r** | Drawn color: Red 0-255
 **g** | Drawn color: Green 0-255
 **b** | Drawn color: Blue 0-255
 **a** | Alpha 0-255



#### indicator

This event lets you lets you override how indicators are drawn. There can only be one callback for this event. This event callback is invoked from renderer.indicator and indicators like "DT".

{% hint style="warning" %}
Make sure to unset your callback when you don't need it. Otherwise you will break the built-in indicators and other scripts using this event.
{% endhint %}

Key | Description
--- | -----------
 **text** | Drawn text
 **r** | Drawn color: Red 0-255
 **g** | Drawn color: Green 0-255
 **b** | Drawn color: Blue 0-255
 **a** | Alpha 0-255



#### player_chat

Fired when a player sends a message to chat

Key | Description
--- | -----------
 **teamonly** | true if the message was sent to team chat
 **entity** | Entity index of the player sending the message
 **name** | Name of the player sending the message
 **text** | Chat message text



#### string_cmd

Fired before a string command (chat messages, weapon inspecting, buy commands) is sent to the server.

|| Property
------ | --------
 1 | string command



#### net_update_start

Fired before the game processes entity updates from the server. (`FrameStageNotify FRAME_NET_UPDATE_START`) Be careful when using this event to modify entity data, some things have to be restored manually as not even a full update will update them



#### net_update_end

Fired after an entity update packet is received from the server. (`FrameStageNotify FRAME_NET_UPDATE_END`)



#### predict_command

Fired when the game prediction is ran

{% hint style="info" %}
This event is called a lot of times per second, avoid doing any heavy processing in it.
{% endhint %}

Key | Description
--- | -----------
 **command_number** | Command number of the predicted command



#### pre_render

Fired before a frame is rendered



#### post_render

Fired after a frame is rendered



#### aim_fire

Fired when the rage aimbot shoots at a player

Key | Description
--- | -----------
 **id** | Shot ID, this can be used to find the corresponding aim_hit / aim_miss event
 **target** | Target player entindex
 **hit_chance** | Chance the shot will hit, depends on spread
 **hitgroup** | Targeted hit group, this is not the same thing as a hitbox
 **damage** | Predicted damage the shot will do
 **backtrack** | Amount of ticks the player was backtracked
 **boosted** | True if accuracy boost was used to increase the accuracy of the shot
 **high_priority** | True if the shot was at a high priority record, like on shot backtrack
 **interpolated** | Player was interpolated
 **extrapolated** | Player was extrapolated
 **teleported** | Target player was teleporting (breaking lag compensation)
 **tick** | Tick the shot was fired at. This can be used to draw the hitboxes using client.draw_hitboxes
 **x** | X world coordinate of the aim point
 **y** | X world coordinate of the aim point
 **z** | Z world coordinate of the aim point


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local function time_to_ticks(t)
	return floor(0.5 + (t / globals.tickinterval()))
end

local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_fire(e)
	local flags = {
		e.teleported and 'T' or '',
		e.interpolated and 'I' or '',
		e.extrapolated and 'E' or '',
		e.boosted and 'B' or '',
		e.high_priority and 'H' or ''
	}
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Fired at %s (%s) for %d dmg (chance=%d%%, bt=%2d, flags=%s)', entity.get_player_name(e.target), group, e.damage, math.floor(e.hit_chance + 0.5), time_to_ticks(e.backtrack), table.concat(flags)))
end
client.set_event_callback('aim_fire', aim_fire)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### aim_hit

Fired when the rage aimbot hit a shot at a player

Key | Description
--- | -----------
 **id** | Shot ID, the corresponding aim_fire event has the same ID
 **target** | Target player entindex
 **hit_chance** | Actual hit chance the shot had
 **hitgroup** | Hit group that was hit. This is not the same thing as a hitbox
 **damage** | Actual damage the shot did


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_hit(e)
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Hit %s in the %s for %d damage (%d health remaining)', entity.get_player_name(e.target), group, e.damage, entity.get_prop(e.target, 'm_iHealth')))
end
client.set_event_callback('aim_hit', aim_hit)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### aim_miss

Fired when the rage aimbot missed a shot at a player

Key | Description
--- | -----------
 **id** | Shot ID, the corresponding aim_fire event has the same ID
 **target** | Target player entindex
 **hit_chance** | Actual hit chance the shot had
 **hitgroup** | Hit group that was missed. This is not the same thing as a hitbox
 **reason** | Reason the shot was missed. This can be 'spread', 'prediction error', 'death' or '?' (unknown / resolver)


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_miss(e)
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Missed %s (%s) due to %s', entity.get_player_name(e.target), group, e.reason))
end
client.set_event_callback('aim_miss', aim_miss)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### pre_config_load

Fired before a config will be loaded



#### post_config_load

Fired after a config has been loaded



#### pre_config_save

Fired before a config will be saved



#### post_config_save

Fired after a config has been saved



