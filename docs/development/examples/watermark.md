# Simple Watermark

This is a simple text watermark showing the ping, tickrate and windows time. Ingame it looks like this:

![](https://i.imgur.com/73FUdvm.png)

Modify the `flags`, `margin` and `padding` variables to change the appearance. Colors are hardcoded in the 2 drawing function calls, but can be easily modified too.

{% code-tabs %}
{% code-tabs-item title="watermark.lua" %}
```lua
-- localize often used API variables to improve performance. It's usually fine to not do this, but lua then has to look them up as globals every time.
local client_latency, client_screen_size, client_system_time, globals_tickinterval, math_floor, renderer_measure_text, renderer_rectangle, renderer_text, string_format = client.latency, client.screen_size, client.system_time, globals.tickinterval, math.floor, renderer.measure_text, renderer.rectangle, renderer.text, string.format

-- this function will be executed every time CS:GO renders a frame and lets you draw on top of the game scene.
local function on_paint()
	-- fetch dynamic info. latency is in seconds so we convert it to ms and round it. tickrate is calculated with 1 / tickinterval
	local screen_width, screen_height = client_screen_size()
	local latency = math_floor(client_latency()*1000+0.5)
	local tickrate = 1/globals_tickinterval()
	local hours, minutes, seconds = client_system_time()

	-- create text
	local text = string_format("%dms", latency) .. " | " .. string_format("%dtick", tickrate) .. " | " .. string_format("%02d:%02d:%02d", hours, minutes, seconds)

	-- modify these to change how the text appears. margin is the distance from the top right corner, padding is the size the background rectangle is larger than the text
	local margin, padding, flags = 18, 4, nil

	-- uncomment this for a "small and capital" style
	-- flags, text = "-", (text:upper():gsub(" ", "   "))

	-- measure text size to properly offset the text from the top right corner
	local text_width, text_height = renderer_measure_text(flags, text)

	-- draw background and text
	renderer_rectangle(screen_width-text_width-margin-padding, margin-padding, text_width+padding*2, text_height+padding*2, 32, 32, 32, 200)
	renderer_text(screen_width-text_width-margin, margin, 235, 235, 235, 255, flags, 0, text)
end
client.set_event_callback("paint", on_paint)
```
{% endcode-tabs-item %}
{% endcode-tabs %}
