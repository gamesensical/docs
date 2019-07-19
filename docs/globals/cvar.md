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

---

#### :get_float

`cvar.get_float()`

Returns nil if called on a ConCommand.


#### :get_int

`cvar.get_int()`

Returns nil if called on a ConCommand.


#### :get_string

`cvar.get_string()`

Returns nil on failure.


#### :invoke_callback

`cvar.invoke_callback()`


#### :set_float

`cvar.set_float(value: number)`

Argument | Description
-------- | -----------
  **value** | Float value


#### :set_int

`cvar.set_int(value: number)`

Argument | Description
-------- | -----------
  **value** | Integer value


#### :set_raw_float

`cvar.set_raw_float(value: number)`

Argument | Description
-------- | -----------
  **value** | Float value

This sets the float value without changing the integer and string values.


#### :set_raw_int

`cvar.set_raw_int(value: number)`

Argument | Description
-------- | -----------
  **value** | Integer value

This sets the integer value without changing the float and string values.


#### :set_string

`cvar.set_string(value: string)`

Argument | Description
-------- | -----------
  **value** | String value

