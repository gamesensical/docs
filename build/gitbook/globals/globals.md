---
description: Functions for getting game globals such as the server time and map name.
---

# globals

### Functions:
#### globals.absoluteframetime

`globals.absoluteframetime()`: number

Returns the number of seconds elapsed during the last game frame.


#### globals.chokedcommands

`globals.chokedcommands()`: number

Returns the number of choked commands, i.e. the number of commands that haven't yet been sent to the server.


#### globals.commandack

`globals.commandack()`: number

Returns the command number of the most recent server-acknowledged command.


#### globals.curtime

`globals.curtime()`: number

Returns the game time in seconds. This number is synchronized with the server.


#### globals.framecount

`globals.framecount()`: number

Returns the number of frames since the game started


#### globals.frametime

`globals.frametime()`: number

Returns the number of seconds elapsed during the last game frame.


#### globals.lastoutgoingcommand

`globals.lastoutgoingcommand()`: number

Returns the command number of the last outgoing command.


#### globals.mapname

`globals.mapname()`: string

Returns the name of the loaded map, or nil if you are not in game.


#### globals.maxplayers

`globals.maxplayers()`: number

Returns the maximum number of players in the server.


#### globals.oldcommandack

`globals.oldcommandack()`: number

Returns the command number of the previous server-acknowledged command.


#### globals.realtime

`globals.realtime()`: number

Returns the local time in seconds.


#### globals.tickcount

`globals.tickcount()`: number

Returns the number of ticks elapsed in the server.


#### globals.tickinterval

`globals.tickinterval()`: number

Returns the time elapsed in one game tick in seconds.

