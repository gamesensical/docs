---
summary: Persistent storage engine that lets you store values between reloads / reinjects
---

# database

### Functions:
#### database.read

`database.read(key_name: string)`: any

Argument | Type | Description
-------- | ---- | -----------
  **key_name** | string | String used as a name of the key. Make sure to write to the same key_name.

Gets a value from the database


#### database.write

`database.write(key_name: string, value: any)`

Argument | Type | Description
-------- | ---- | -----------
  **key_name** | string | String used as a name of the key.
  **value** | any | Value the key should be set to. This can be anything that can be sanitized (no functions, userdata)

Writes a value to the database. Avoid calling this often. For example, call read at script load, then call write during the 'shutdown' event


### Examples:

{% code-tabs %}
{% code-tabs-item title="database-1.lua" %}
```lua
local data = database.read("example-1") or {}
data.load_count = (data.load_count or 0) + 1

client.log("this is the ", data.load_count, ". time you've loaded this script!")

client.set_event_callback("player_death", function(e)
	if client.userid_to_entindex(e.attacker) == entity.get_local_player() then
		data.kill_count = (data.kill_count or 0) + 1
		client.log("this is your ", data.kill_count, ". kill!")
	end
end)

client.set_event_callback("shutdown", function()
	database.write("example-1", data)
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}