---
description: A table letting you get and set the value of cvars and invoke their callbacks. Uses Object-oriented format
---

# Cvar

### Examples:

{% code-tabs %}
{% code-tabs-item  title="cvar-1.lua"%}
```lua
local bxor = bit.bxor
local cl_fullupdate = cvar.cl_fullupdate
local developer = cvar.developer

-- invoking callback of ConCommand
cl_fullupdate.invoke_callback()
-- toggle ConVar
local oldval = developer.get_int()
developer.set_raw_int(bxor(oldval, 1))
```

{% endcode-tabs-item %}
{% code-tabs-item  title="cvar-2.lua"%}
```lua
local snd_setmixer = cvar.snd_setmixer

-- Mutes ambient volume by setting the mixer "vol" option to 0
snd_setmixer:invoke_callback("Ambient", "vol", "0")
```

{% endcode-tabs-item %}
{% endcode-tabs %}

### Functions:
#### :get_float

`cvar_object:get_float()`: number

Returns nil if called on a ConCommand.


#### :get_int

`cvar_object:get_int()`: number

Returns nil if called on a ConCommand.


#### :get_string

`cvar_object:get_string()`: string

Returns nil on failure.


#### :invoke_callback

`cvar_object:invoke_callback(...)`

Argument | Description | Type
-------- | ----------- | ----
  **...** | Arguments passed to the callback | 

Executes a ConCommand or cvar callback, passing its arguments to it


#### :set_float

`cvar_object:set_float(value: number)`

Argument | Description | Type
-------- | ----------- | ----
  **value** | Float value | number (float)

Sets the int, float and string value to the passed float. Invokes the change callback


#### :set_int

`cvar_object:set_int(value: number)`

Argument | Description | Type
-------- | ----------- | ----
  **value** | Integer value | number (integer)

Sets the int, float and string value to the passed float. Invokes the change callback


#### :set_raw_float

`cvar_object:set_raw_float(value: number)`

Argument | Description | Type
-------- | ----------- | ----
  **value** | Float value | number (float)

This sets the float value without changing the integer and string values.


#### :set_raw_int

`cvar_object:set_raw_int(value: number)`

Argument | Description | Type
-------- | ----------- | ----
  **value** | Integer value | number (integer)

This sets the integer value without changing the float and string values.


#### :set_string

`cvar_object:set_string(value: string)`

Argument | Description | Type
-------- | ----------- | ----
  **value** | String value | string

Sets the int, float and string value to the passed float. Invokes the change callback

