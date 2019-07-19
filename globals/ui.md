# Ui

Represented by `ui`.

* **`ui.new_checkbox(${1:tab}, ${2:container}, ${3:name})`**
	
	Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

* **`ui.new_slider(${1:tab}, ${2:container}, ${3:name}, ${4:min}, ${5:max}, ${6:init_value}, ${7:show_tooltip}, ${8:unit}, ${9:scale}, ${10:tooltips})`**
	
	Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

* **`ui.new_combobox(${1:tab}, ${2:container}, ${3:name}, ${4:...})`**
	
	Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

* **`ui.new_multiselect(${1:tab}, ${2:container}, ${3:name}, ${4:...})`**
	
	Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.

* **`ui.new_hotkey(${1:tab}, ${2:container}, ${3:name}, ${4:inline})`**
	
	Returns a special value that can be passed to ui.get to see if the hotkey is pressed, or throws an error on failure.

* **`ui.new_button(${1:tab}, ${2:container}, ${3:name}, ${4:callback})`**
	
	Throws an error on failure. The return value should not be used with ui.set or ui.get.

* **`ui.new_color_picker(${1:tab}, ${2:container}, ${3:name}, ${4:r}, ${5:g}, ${6:b}, ${7:a})`**
	
	Throws an error on failure. The color picker is placed to the right of the previous menu item.

* **`ui.new_textbox(${1:tab}, ${2:container})`**
	
	Throws an error on failure. Returns a special value that can be used with ui.get

* **`ui.reference(${1:tab}, ${2:container}, ${3:name})`**
	
	Avoid calling this from inside a function. Returns a reference that can be passed to ui.get and ui.set, or throws an error on failure. This allows you to access a built-in pre-existing menu items. This function returns multiple values when the specified menu item is followed by unnamed menu items, for example a color picker or a hotkey.

* **`ui.set(${1:item}, ${2:value}, ${3:...})`**
	
	For checkboxes, pass true or false. For a slider, pass a number that is within the slider's minimum/maximum values. For a combobox, pass a string value. For a multiselect combobox, pass zero or more strings. For referenced buttons, param is ignored and the button's callback is invoked. For color pickers, pass the arguments r, g, b, a.

* **`ui.get(${1:item})`**
	
	For a checkbox, returns true or false. For a slider, returns an integer. For a combobox, returns a string. For a multiselect combobox, returns an array of strings. For a hotkey, returns true if the hotkey is active. For a color picker, returns r, g, b, a. Throws an error on failure.

* **`ui.set_callback(${1:item}, ${2:callback})`**

* **`ui.set_visible(${1:item}, ${2:visible})`**

* **`ui.is_menu_open()`**
	
	Returns true if the menu is currently open.

* **`ui.mouse_position()`**
	
	Returns current mouse coordinates x, y
