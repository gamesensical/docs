# Auto buy

This script adds an "Auto buy AWP" checkbox to the misc tab, useful for spread HvH when AWP purchases are limited.

{% code-tabs %}
{% code-tabs-item title="auto_buy.lua" %}
```lua
local ui_get, console_cmd = ui.get, client.exec

local auto_buy_awp = ui.new_checkbox("MISC", "Miscellaneous", "Auto buy AWP")

local function on_round_prestart(e)
	if ui_get(auto_buy_awp) then
		console_cmd("buy awp;")
	end
end
client.set_event_callback("round_prestart", on_round_prestart)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

Originally written by admin
