# Cvar

**Functions:**

* `cvar.set_string(value: string)`
  
  Argument | Description
  -------- | -----------
  **value** | String value
  

<br/>
<br/>

* `cvar.get_string()`
  
  Returns nil on failure.
  

<br/>
<br/>

* `cvar.set_float(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Float value
  

<br/>
<br/>

* `cvar.set_raw_float(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Float value
  
  This sets the float value without changing the integer and string values.
  

<br/>
<br/>

* `cvar.get_float()`
  
  Returns nil if called on a ConCommand.
  

<br/>
<br/>

* `cvar.set_int(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Integer value
  

<br/>
<br/>

* `cvar.set_raw_int(value: number)`
  
  Argument | Description
  -------- | -----------
  **value** | Integer value
  
  This sets the integer value without changing the float and string values.
  

<br/>
<br/>

* `cvar.get_int()`
  
  Returns nil if called on a ConCommand.
  

<br/>
<br/>

* `cvar.invoke_callback()`
  

<br/>
<br/>
