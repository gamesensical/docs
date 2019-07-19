# Cvar

**Functions:**

* `cvar.set_string(value: string)`
  
  Argument | Description
  -------- | -----------
  **value** | String value
  

&nbsp;
&nbsp;

* `cvar.get_string()`
  
  Returns nil on failure.
  

&nbsp;
&nbsp;

* `cvar.set_float(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Float value
  

&nbsp;
&nbsp;

* `cvar.set_raw_float(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Float value
  
  This sets the float value without changing the integer and string values.
  

&nbsp;
&nbsp;

* `cvar.get_float()`
  
  Returns nil if called on a ConCommand.
  

&nbsp;
&nbsp;

* `cvar.set_int(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Integer value
  

&nbsp;
&nbsp;

* `cvar.set_raw_int(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Integer value
  
  This sets the integer value without changing the float and string values.
  

&nbsp;
&nbsp;

* `cvar.get_int()`
  
  Returns nil if called on a ConCommand.
  

&nbsp;
&nbsp;

* `cvar.invoke_callback()`
  

&nbsp;
&nbsp;
