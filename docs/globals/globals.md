---
description: Functions for getting game globals such as the server time and map name.
---

# Globals

### Functions:
#### globals.absoluteframetime

`globals.absoluteframetime()`

Returns the number of seconds elapsed during the last game frame.


#### globals.chokedcommands

`globals.chokedcommands()`

Returns the current number of commands that are being held back.


#### globals.commandack

`globals.commandack()`

Returns the number of the command the server last acknowledged.


#### globals.curtime

`globals.curtime()`

Returns the game time in seconds. This number is synchronized with the server.


#### globals.framecount

`globals.framecount()`

Returns the number of frames since the game started


#### globals.frametime

`globals.frametime()`

Returns the number of seconds elapsed during the last game frame.


#### globals.lastoutgoingcommand

`globals.lastoutgoingcommand()`

Returns the command number of the last outgoing command.


#### globals.mapname

`globals.mapname()`

Returns the name of the loaded map, or nil if you are not in game.


#### globals.maxplayers

`globals.maxplayers()`

Returns the maximum number of players in the server.


#### globals.oldcommandack

`globals.oldcommandack()`

Returns the previous server acknowledged command number.


#### globals.realtime

`globals.realtime()`

Returns the local time in seconds.


#### globals.tickcount

`globals.tickcount()`

Returns the number of ticks elapsed in the server.


#### globals.tickinterval

`globals.tickinterval()`

Returns the time elapsed in one game tick in seconds.

