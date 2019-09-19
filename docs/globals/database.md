---
description: Persistent storage engine that lets you store tables between reloads / reinjects
---

# Database

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

