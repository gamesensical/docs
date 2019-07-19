# Cvar

Represented by `cvar`.

* **`cvar.set_string(value)`**
	
	**Arguments:**
	
		- value: String value
	

* **`cvar.get_string()`**
	
	**Arguments:**
	
	
	Returns nil on failure.
	

* **`cvar.set_float(value)`**
	
	**Arguments:**
	
		- value: Float value
	

* **`cvar.set_raw_float(value)`**
	
	**Arguments:**
	
		- value: Float value
	
	This sets the float value without changing the integer and string values.
	

* **`cvar.get_float()`**
	
	**Arguments:**
	
	
	Returns nil if called on a ConCommand.
	

* **`cvar.set_int(value)`**
	
	**Arguments:**
	
		- value: Integer value
	

* **`cvar.set_raw_int(value)`**
	
	**Arguments:**
	
		- value: Integer value
	
	This sets the integer value without changing the float and string values.
	

* **`cvar.get_int()`**
	
	**Arguments:**
	
	
	Returns nil if called on a ConCommand.
	

* **`cvar.invoke_callback()`**
	
	**Arguments:**
	
	
