---
description: List of events that you can listen to using client.set_event_callback
---
# Events

### List of events:
#### paint

Fired every time the game renders a frame while being connected to a server. Can be used to draw to the screen using the renderer.* functions.

#### run_command

Fired every time the game runs a command (usually 64 times a second, equal to tickrate) while you're alive. This is the best event for processing data that only changes when the game receives an update from the server, like information about other players.

#### setup_command

Fired every time the game prepares a move command that's sent to the server. This is ran before cheat features and can be used to modify user input (view angles, pressed keys, movement) how it's seen by the cheat. For example, setting `in_use = 1` will disable antiaim the same way pressing use key ingame does. This is the preferred method of setting user input and should be used instead of `client.exec` whenever possible.

#### console_input

Fired every time the user types something in the game console and presses enter. Return false from the event handler to make the game not process the input

#### net_update_start

Fired before the game processes entity updates from the server. (`FrameStageNotify FRAME_NET_UPDATE_START`) Be careful when using this event to modify entity data, some things have to be restored manually as not even a full update will update them.

#### net_update_end

Fired after an entity update packet is received from the server. (`FrameStageNotify FRAME_NET_UPDATE_END`)

#### aim_fire

Fired when the rage aimbot shoots at a player

