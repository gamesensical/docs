# Simple Watermark

This is a simple text watermark showing the cheat name, ping and windows time

{% code-tabs %}
{% code-tabs-item title="watermark.lua" %}
```lua
-- localize often used API variables to improve performance
local renderer_text = renderer.text

-- this function will be executed every time CS:GO renders a frame and lets you draw on top of the game scene.
local function on_paint()
	renderer_text()
end

client.set_event_callback("paint", on_paint)
```
{% endcode-tabs-item %}
{% endcode-tabs %}
