local ffi = require("ffi")

local fnGetConsoleVisible = vtable_bind("engine.dll", "VEngineClient014", 11, "bool(__thiscall*)(void*)")

client.set_event_callback("paint_ui", function()
  print(tostring(fnGetConsoleVisible()))
end)