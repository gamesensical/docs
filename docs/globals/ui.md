---
description: Functions for interfacing with the gamesense menu
---

# Ui

### Functions:
#### ui.get

`ui.get(item: number)`: any

Argument | Description | Type
-------- | ----------- | ----
  **item** | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference. | number (menu reference)

For a checkbox, returns true or false. For a slider, returns an integer. For a combobox, returns a string. For a multiselect combobox, returns an array of strings. For a hotkey, returns true if the hotkey is active. For a color picker, returns r, g, b, a. Throws an error on failure.


#### ui.is_menu_open

`ui.is_menu_open()`: boolean

Returns true if the menu is currently open.


#### ui.mouse_position

`ui.mouse_position()`: number, number

Returns current mouse coordinates x, y


#### ui.name

`ui.name(item: number)`: string

Argument | Description | Type
-------- | ----------- | ----
  **item** | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference. | number (menu reference)

Returns the name of the menu item reference passed to it. Throws an error on failure.


#### ui.new_button

`ui.new_button(tab: string, container: string, name: string, callback: function)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this checkbox will be added. | string (menu container)
  **name** | The name of the button. | string (menu item)
  **callback** | The lua function that will be called when the button is pressed. | function

Throws an error on failure. The return value should not be used with ui.set or ui.get.


#### ui.new_checkbox

`ui.new_checkbox(tab: string, container: string, name: string)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this control will be added. | string (menu container)
  **name** | The name of the checkbox. | string (menu item)

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_color_picker

`ui.new_color_picker(tab: string, container: string, name: string, r: number, g: number, b: number, a: number)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this checkbox will be added. | string (menu container)
  **name** | The name of the color picker. This will not be shown, it is only used to identify this item in saved configs. | string (menu item)
  **r** | Initial red value (0-255) | number
  **g** | Initial green value (0-255) | number
  **b** | Initial blue value (0-255) | number
  **a** | Initial alpha value (0-255) | number

Throws an error on failure. The color picker is placed to the right of the previous menu item.


#### ui.new_combobox

`ui.new_combobox(tab: string, container: string, name: string, ...)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this control will be added. | string (menu container)
  **name** | The name of the combobox. | string (menu item)
  **...** | One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added. | 

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_hotkey

`ui.new_hotkey(tab: string, container: string, name: string, inline: boolean)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this control will be added. | string (menu container)
  **name** | The name of the hotkey. | string (menu item)
  **inline** | Boolean. If set to true, the hotkey will be placed to the right of the preceding menu item. | boolean

Returns a special value that can be passed to ui.get to see if the hotkey is pressed, or throws an error on failure.


#### ui.new_listbox

`ui.new_listbox(tab: string, container: string, name: string, ...)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this control will be added. | string (menu container)
  **name** | The name of the listbox. | string (menu item)
  **...** | One or more comma separated string values that will be added to the listbox. Alternatively, a table of strings that will be added. | 

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_multiselect

`ui.new_multiselect(tab: string, container: string, name: string, ...)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this control will be added. | string (menu container)
  **name** | The name of the multiselect. | string (menu item)
  **...** | One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added. | 

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_slider

`ui.new_slider(tab: string, container: string, name: string, min: number, max: number, init_value: number, show_tooltip: boolean, unit: string, scale: number, tooltips: table)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this control will be added. | string (menu container)
  **name** | The name of the slider. | string (menu item)
  **min** | The minimum value that can be set using the slider. | number
  **max** | The maximum value that can be set using the slider. | number
  **init_value** | Integer. The initial value. If not provided, the initial value will be min. | number
  **show_tooltip** | Boolean. true if the slider should display its current value. | boolean
  **unit** | String that is two characters or less. This will be appended to the display value. For example, "px" for pixels or "%" for a percentage. | string
  **scale** | The display value will be multiplied by this scale. For example, 0.1 will make a slider with the range [0-1800] show as 0.0-180.0 with one decimal place. | number
  **tooltips** | Table used to override the tooltip for the specified values. The key must be within min-max. The value is a string that will be shown instead of the numeric value whenever that value is selected. | table

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_textbox

`ui.new_textbox(tab: string, container: string)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this textbox will be added. | string (menu container)

Throws an error on failure. Returns a special value that can be used with ui.get


#### ui.reference

`ui.reference(tab: string, container: string, name: string)`: number (menu item)

Argument | Description | Type
-------- | ----------- | ----
  **tab** | The name of the tab: AA, RAGE, LEGIT, MISC, PLAYERS, SKINS, or VISUALS. | string (menu tab)
  **container** | The name of the existing container to which this checkbox will be added. | string (menu container)
  **name** | The name of the menu item. | string (menu item)

Avoid calling this from inside a function. Returns a reference that can be passed to ui.get and ui.set, or throws an error on failure. This allows you to access a built-in pre-existing menu items. This function returns multiple values when the specified menu item is followed by unnamed menu items, for example a color picker or a hotkey.


#### ui.set

`ui.set(item: number, value: any, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **item** | The result of either ui.new_checkbox, ui.new_slider, or ui.reference. | number (menu reference)
  **value** | The value to which the menu item will be set. | any
  **...** | Optional. For multiselect comboboxes, you may want to set more than one option. | 

For checkboxes, pass true or false. For a slider, pass a number that is within the slider's minimum/maximum values. For a combobox, pass a string value. For a multiselect combobox, pass zero or more strings. For referenced buttons, param is ignored and the button's callback is invoked. For color pickers, pass the arguments r, g, b, a.


#### ui.set_callback

`ui.set_callback(item: number, callback: function)`

Argument | Description | Type
-------- | ----------- | ----
  **item** | The special value returned by ui.new_*. Do not try passing a reference to an existing menu item. | number (custom menu reference)
  **callback** | Lua function that will be called when the menu item changes values. For example, this will be called when the user checks or unchecks a checkbox. | function

Sets the change callback of a custom menu item. It will be executed on change and passed the reference


#### ui.set_visible

`ui.set_visible(item: number, visible: boolean)`

Argument | Description | Type
-------- | ----------- | ----
  **item** | A menu item reference. | number (menu reference)
  **visible** | Boolean. Pass false to hide the control from the menu. | boolean

Sets the visibility of the menu item

