# Head Dot ESP

This script, if enabled, draws small dots on the heads of enemies. The dots are white if the head is invisible and red if visible

![](https://i.imgur.com/agQcdXA.png)

{% code-tabs %}
{% code-tabs-item title="head_dot.lua" %}
```lua
-- localize often used API variables to improve performance. It's usually fine to not do this, but lua then has to look them up as globals every time.
local client_eye_position, client_trace_line, entity_get_local_player, entity_get_players, entity_hitbox_position, renderer_circle, renderer_world_to_screen = client.eye_position, client.trace_line, entity.get_local_player, entity.get_players, entity.hitbox_position, renderer.circle, renderer.world_to_screen

local function on_paint()
	local local_player = entity_get_local_player()
	local eye_x, eye_y, eye_z = client_eye_position()

	-- get all alive, non-dormant enemy players
	local enemies = entity_get_players(true)

	for i=1, #enemies do
		local entindex = enemies[i]

		-- get the world coordinates of the head hitbox of the enemy
		local head_x, head_y, head_z = entity_hitbox_position(entindex, 0)

		-- transform world coordinates to screen coordinates
		local wx, wy = renderer_world_to_screen(head_x, head_y, head_z)

		-- make sure to always check if the screen coordinates are valid. it's enough to only check wx
		if wx ~= nil then
			local r, g, b, a = 255, 255, 255, 100

			-- ray trace from your eye position to the enemy head, ignoring our local player, to determine if it's visible
			local fraction, entindex_hit = client_trace_line(local_player, eye_x, eye_y, eye_z, head_x, head_y, head_z)

			if entindex_hit == entindex or fraction == 1 then
				-- the trace either hit the enemy or hit nothing, meaning the head is visible, so we change the color
				r, g, b, a = 255, 16, 16, 255
			end

			-- draw circle with radius 4, so we offset the x and y by -2
			renderer_circle(wx-2, wy-2, r, g, b, a, 4, 0, 1)
		end
	end
end
client.set_event_callback("paint", on_paint)
```
{% endcode-tabs-item %}
{% endcode-tabs %}
