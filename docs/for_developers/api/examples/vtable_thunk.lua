local ffi = require("ffi")

local pEngineClient = client.create_interface("engine.dll", "VEngineClient014") or error("invalid interface", 2)

local fnGetConsoleVisible = vtable_thunk(11, "bool(__thiscall*)(void*)")

client.set_event_callback("paint_ui", function()
  print(tostring(fnGetConsoleVisible(pEngineClient)))
end)