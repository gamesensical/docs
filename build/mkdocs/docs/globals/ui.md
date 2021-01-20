---
summary: Functions for interfacing with the gamesense menu
---

# ui

### Functions:
#### ui.get

`ui.get(item: number)`: any

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.

For a checkbox, returns true or false. For a slider, returns an integer. For a combobox, returns a string. For a multiselect combobox, returns an array of strings. For a hotkey, returns true if the hotkey is active. For a color picker, returns r, g, b, a. Throws an error on failure.


#### ui.is_menu_open

`ui.is_menu_open()`: boolean

Returns true if the menu is currently open.


#### ui.menu_position

`ui.menu_position()`: number, number

Returns the x, y of the menu, even when closed.


#### ui.menu_size

`ui.menu_size()`: number, number

Returns the width, height of the menu, even when closed.


#### ui.mouse_position

`ui.mouse_position()`: number, number

Returns current mouse coordinates x, y


#### ui.name

`ui.name(item: number)`: string

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.

Returns the display name


#### ui.new_button

`ui.new_button(tab: string, container: string, name: string, callback: function)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this checkbox will be added.
  **name** | string (menu item) | The name of the button.
  **callback** | function | The lua function that will be called when the button is pressed.

Throws an error on failure. The return value should not be used with ui.set or ui.get.


#### ui.new_checkbox

`ui.new_checkbox(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the checkbox.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_color_picker

`ui.new_color_picker(tab: string, container: string, name: string[, r: number] [, g: number] [, b: number] [, a: number])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this checkbox will be added.
  **name** | string (menu item) | The name of the color picker. This will not be shown, it is only used to identify this item in saved configs.
  **r** | number | Initial red value (0-255)
  **g** | number | Initial green value (0-255)
  **b** | number | Initial blue value (0-255)
  **a** | number | Initial alpha value (0-255)

Throws an error on failure. The color picker is placed to the right of the previous menu item.


#### ui.new_combobox

`ui.new_combobox(tab: string, container: string, name: string, ...)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the combobox.
  **...** |  | One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_hotkey

`ui.new_hotkey(tab: string, container: string, name: string[, inline: boolean] [, default_hotkey: number])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the hotkey.
  **inline** | boolean | Boolean. If set to true, the hotkey will be placed to the right of the preceding menu item.
  **default_hotkey** | number (virtual key code) | Virtual key

Returns a special value that can be passed to ui.get to see if the hotkey is pressed, or throws an error on failure.


#### ui.new_label

`ui.new_label(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, CONFIG or LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the label. This can later be changed using ui.set.

Creates a new label, this can be used to make otherwise attached menu items standalone or have interactive menus. Returns a special value that can be passed to ui.set, or throws an error on failure.


#### ui.new_listbox

`ui.new_listbox(tab: string, container: string, name: string[, items: table])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA
  **container** | string (menu container) | The name of the existing container to which this listbox will be added
  **name** | string (menu item) | Name
  **items** | table | Table of items (strings)

Throws an error on failure. Returns a special value that can be used with ui.get. Calling ui.get on a listbox will return the zero-based index of the currently selected string.


#### ui.new_multiselect

`ui.new_multiselect(tab: string, container: string, name: string, ...)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the multiselect.
  **...** |  | One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_slider

`ui.new_slider(tab: string, container: string, name: string, min: number, max: number[, init_value: number] [, show_tooltip: boolean] [, unit: string] [, scale: number] [, tooltips: table])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the slider.
  **min** | number | The minimum value that can be set using the slider.
  **max** | number | The maximum value that can be set using the slider.
  **init_value** | number | Integer. The initial value. If not provided, the initial value will be min.
  **show_tooltip** | boolean | Boolean. true if the slider should display its current value.
  **unit** | string | String that is two characters or less. This will be appended to the display value. For example, "px" for pixels or "%" for a percentage.
  **scale** | number | The display value will be multiplied by this scale. For example, 0.1 will make a slider with the range [0-1800] show as 0.0-180.0 with one decimal place.
  **tooltips** | table | Table used to override the tooltip for the specified values. The key must be within min-max. The value is a string that will be shown instead of the numeric value whenever that value is selected.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_string

`ui.new_string(name: string[, default_value: string])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **name** | string (menu item) | The name of the string element, make sure this is unique.
  **default_value** | string | String that specifies the default value.

Creates a string UI element, can be used to store arbitrary strings in configs. No menu item is created but it has the same semantics as other ui.new_* functions. Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_textbox

`ui.new_textbox(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this textbox will be added.
  **name** | string (menu item) | The name of the textbox

Throws an error on failure. Returns a special value that can be used with ui.get


#### ui.reference

`ui.reference(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this checkbox will be added.
  **name** | string (menu item) | The name of the menu item.

Avoid calling this from inside a function. Returns a reference that can be passed to ui.get and ui.set, or throws an error on failure. This allows you to access a built-in pre-existing menu items. This function returns multiple values when the specified menu item is followed by unnamed menu items, for example a color picker or a hotkey.


#### ui.set

`ui.set(item: number, value: any[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The result of either ui.new_* or ui.reference
  **value** | any | The value to which the menu item will be set
  **...** |  | For multiselect comboboxes, you may want to set more than one option.

For checkboxes, pass true or false. For a slider, pass a number that is within the slider's minimum/maximum values. For a combobox, pass a string value. For a multiselect combobox, pass zero or more strings. For referenced buttons, value is ignored and the button's callback is invoked. For color pickers, pass the arguments r, g, b, a.


#### ui.set_callback

`ui.set_callback(item: number, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (custom menu reference) | The special value returned by ui.new_*. Do not try passing a reference to an existing menu item.
  **callback** | function | Lua function that will be called when the menu item changes values. For example, this will be called when the user checks or unchecks a checkbox.

Sets the change callback of a custom menu item. It will be executed on change and passed the reference


#### ui.set_visible

`ui.set_visible(item: number, visible: boolean)`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | A menu item reference.
  **visible** | boolean | Boolean. Pass false to hide the control from the menu.

Sets the visibility of the menu item


#### ui.update

`ui.update(item: number, value: any, ...)`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.
  **value** | any | The value to which the menu item will be set
  **...** |  | For multiselect comboboxes, you may want to set more than one option.

Creates a string UI element, can be used to store arbitrary strings in configs. No menu item is created but it has the same semantics as other ui.new_* functions. Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

