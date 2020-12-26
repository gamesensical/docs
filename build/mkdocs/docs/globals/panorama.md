---
summary: Acess to CS:GO buil-in javascript Panorama gui
---

# panorama

### Functions:
#### panorama.loadstring

`panorama.loadstring(js_code: string[, root_panel: string])`: table

Argument | Type | Description
-------- | ---- | -----------
  **js_code** | string | JSON encoded UTF-8 string.
  **root_panel** | string | The root panel is an optional argument and controls in which panel context the code is executed. Some APIs, for example UIToolkitAPI, require a valid root panel context. Valid root panels (highlighted = you'll probably want to use one of these): CSGOJsRegistration, CSGOTripleMonitorBackground, CSGOHud, LightSelectionEnumDropDownMenuBg, LightSelectionEnumDropDownMenuBg, LightSelectionEnumDropDownMenuBg, LightSelectionEnumDropDownMenuBg, ChatTextEntryBoxIMEControls, CSGOMainMenu, ChatInputIMEControls, CSGOLoadingScreen, CSGOIntroMovie, CSGOPopups.

This function behaves similar to lua's loadstring but executes JS code instead. It compiles the given chunk string of JS and returns a function to call it. Avoid generating JS code on-the-fly, instead return a table of functions, which you can then call in Lua. Arguments can be passed from Lua to JS functions.


#### panorama.open

`panorama.open([root_panel: string])`: table

Argument | Type | Description
-------- | ---- | -----------
  **root_panel** | string | The root panel is an optional argument and controls in which panel context the code is executed. Some APIs, for example UIToolkitAPI, require a valid root panel context. Valid root panels (highlighted = you'll probably want to use one of these): CSGOJsRegistration, CSGOTripleMonitorBackground, CSGOHud, LightSelectionEnumDropDownMenuBg, LightSelectionEnumDropDownMenuBg, LightSelectionEnumDropDownMenuBg, LightSelectionEnumDropDownMenuBg, ChatTextEntryBoxIMEControls, CSGOMainMenu, ChatInputIMEControls, CSGOLoadingScreen, CSGOIntroMovie, CSGOPopups.

Returns a JS context table that lets you call vanilla JS and panorama functions. Avoid calling this in event callbacks, instead, call it once and store its return value in a function.

