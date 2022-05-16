---
description: >-
  A table letting you get and set the value of cvars and invoke their callbacks.
  Uses Object-oriented format
---

# cvar

## Functions:

### :get\_float

`cvar_object:get_float()`: number

Returns nil if called on a ConCommand.

### :get\_int

`cvar_object:get_int()`: number

Returns nil if called on a ConCommand.

### :get\_string

`cvar_object:get_string()`: string

Returns nil on failure.

### :invoke\_callback

`cvar_object:invoke_callback(...)`

| Argument | Type | Description                      |
| -------- | ---- | -------------------------------- |
| **...**  |      | Arguments passed to the callback |

Executes a ConCommand or cvar callback, passing its arguments to it

### :set\_float

`cvar_object:set_float(value: number)`

| Argument  | Type           | Description |
| --------- | -------------- | ----------- |
| **value** | number (float) | Float value |

Sets the int, float and string value to the passed float. Invokes the change callback

### :set\_int

`cvar_object:set_int(value: number)`

| Argument  | Type             | Description   |
| --------- | ---------------- | ------------- |
| **value** | number (integer) | Integer value |

Sets the int, float and string value to the passed float. Invokes the change callback

### :set\_raw\_float

`cvar_object:set_raw_float(value: number)`

| Argument  | Type           | Description |
| --------- | -------------- | ----------- |
| **value** | number (float) | Float value |

This sets the float value without changing the integer and string values.

### :set\_raw\_int

`cvar_object:set_raw_int(value: number)`

| Argument  | Type             | Description   |
| --------- | ---------------- | ------------- |
| **value** | number (integer) | Integer value |

This sets the integer value without changing the float and string values.

### :set\_string

`cvar_object:set_string(value: string)`

| Argument  | Type   | Description  |
| --------- | ------ | ------------ |
| **value** | string | String value |

Sets the int, float and string value to the passed float. Invokes the change callback

### Examples:

```lua
local bxor = bit.bxor
local cl_fullupdate = cvar.cl_fullupdate
local developer = cvar.developer

-- invoking callback of ConCommand
cl_fullupdate:invoke_callback()

-- toggle ConVar
local oldval = developer.get_int()
developer:set_raw_int(bxor(oldval, 1))
```

```lua
local snd_setmixer = cvar.snd_setmixer

-- Mutes ambient volume by setting the mixer "vol" option to 0
snd_setmixer:invoke_callback("Ambient", "vol", "0")
```
