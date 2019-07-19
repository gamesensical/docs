# Cvar

Represented by `cvar`.

* **`cvar.set_string(${1:value})`**

* **`cvar.get_string()`**
	
	Returns nil on failure.

* **`cvar.set_float(${1:value})`**

* **`cvar.set_raw_float(${1:value})`**
	
	This sets the float value without changing the integer and string values.

* **`cvar.get_float()`**
	
	Returns nil if called on a ConCommand.

* **`cvar.set_int(${1:value})`**

* **`cvar.set_raw_int(${1:value})`**
	
	This sets the integer value without changing the float and string values.

* **`cvar.get_int()`**
	
	Returns nil if called on a ConCommand.

* **`cvar.invoke_callback()`**
