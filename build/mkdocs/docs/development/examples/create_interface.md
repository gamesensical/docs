# Create interface

This script is an example for "client.create_interface".
With this function you can access classes or functions provided by the game itself.

{% code-tabs %}
{% code-tabs-item title="create_interface.lua" %}
```lua
local ffi = require 'ffi'

ffi.cdef[[
    typedef unsigned char wchar_t;

    typedef bool (__thiscall *IsButtonDown_t)(void*, int);
]]
local interface_ptr = ffi.typeof('void***')

local raw_inputsystem = client.create_interface('inputsystem.dll', 'InputSystemVersion001')

-- cast the lightuserdata to a type that we can dereference
local inputsystem = ffi.cast(interface_ptr, raw_inputsystem) -- void***

-- dereference the interface pointer to get its vtable
local inputsystem_vtbl = inputsystem[0] -- void**

-- vtable is an array of functions, the 15th is IsButtonDown
local raw_IsButtonDown = inputsystem_vtbl[15] -- void*

-- cast the function pointer to a callable type
local is_button_pressed = ffi.cast('IsButtonDown_t', raw_IsButtonDown)

local function run_command(cmd)
    if is_button_pressed(inputsystem, 36) then -- ButtonCode_t for Z
        print('Z is pressed')
    end
    return false
end

client.set_event_callback('run_command', run_command)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

Originally written by admin
