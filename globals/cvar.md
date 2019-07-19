# Cvar

#### cvar.set_string

`cvar.set_string(value: string)`

Argument | Description
-------- | -----------
  **value** | String value


#### cvar.get_string

`cvar.get_string()`

Returns nil on failure.


#### cvar.set_float

`cvar.set_float(value: number)`

Argument | Description
-------- | -----------
  **value** | Float value


#### cvar.set_raw_float

`cvar.set_raw_float(value: number)`

Argument | Description
-------- | -----------
  **value** | Float value

This sets the float value without changing the integer and string values.


#### cvar.get_float

`cvar.get_float()`

Returns nil if called on a ConCommand.


#### cvar.set_int

`cvar.set_int(value: number)`

Argument | Description
-------- | -----------
  **value** | Integer value


#### cvar.set_raw_int

`cvar.set_raw_int(value: number)`

Argument | Description
-------- | -----------
  **value** | Integer value

This sets the integer value without changing the float and string values.


#### cvar.get_int

`cvar.get_int()`

Returns nil if called on a ConCommand.


#### cvar.invoke_callback

`cvar.invoke_callback()`

