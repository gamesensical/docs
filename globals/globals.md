# Globals

**Functions:**

* **globals.realtime**
	```lua
	globals.realtime()
	```
	
	Returns the local time in seconds.


* **globals.curtime**
	```lua
	globals.curtime()
	```
	
	Returns the game time in seconds. This number is synchronized with the server.


* **globals.frametime**
	```lua
	globals.frametime()
	```
	
	Returns the number of seconds elapsed during the last game frame.


* **globals.absoluteframetime**
	```lua
	globals.absoluteframetime()
	```
	
	Returns the number of seconds elapsed during the last game frame.


* **globals.maxplayers**
	```lua
	globals.maxplayers()
	```
	
	Returns the maximum number of players in the server.


* **globals.tickcount**
	```lua
	globals.tickcount()
	```
	
	Returns the number of ticks elapsed in the server.


* **globals.tickinterval**
	```lua
	globals.tickinterval()
	```
	
	Returns the time elapsed in one game tick in seconds.


* **globals.framecount**
	```lua
	globals.framecount()
	```
	
	Returns the number of frames since the game started


* **globals.mapname**
	```lua
	globals.mapname()
	```
	
	Returns the name of the loaded map, or nil if you are not in game.


* **globals.lastoutgoingcommand**
	```lua
	globals.lastoutgoingcommand()
	```
	
	Returns the command number of the last outgoing command.

