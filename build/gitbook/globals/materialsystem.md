---
description: Functions controlling the CS:GO Material System, letting you modulate, swap, remove materials and set their shader params / material vars
---

# materialsystem

### Functions:
#### materialsystem.arms_material

`materialsystem.arms_material()`: table (material object)

Returns a reference to the arms material when 'Viewmodel arms' is enabled


#### materialsystem.chams_material

`materialsystem.chams_material()`: table (material object)

Returns a reference to the player chams material


#### materialsystem.find_material

`materialsystem.find_material(path: string[, force_load: boolean])`: table (material object)

Argument | Type | Description
-------- | ---- | -----------
  **path** | string | Path to material including filename
  **force_load** | boolean | Boolean. Load the material if it isn't loaded

Returns a reference to the material


#### materialsystem.find_materials

`materialsystem.find_materials(partial_path: string[, force_load: boolean])`: table (material objects)

Argument | Type | Description
-------- | ---- | -----------
  **partial_path** | string | Partial path to material
  **force_load** | boolean | Boolean. Load each material if it isn't loaded

Returns a table of references to materials that have partial_path in their name


#### materialsystem.find_texture

`materialsystem.find_texture(path: string)`

Argument | Type | Description
-------- | ---- | -----------
  **path** | string | Path to texture including filename

Returns a reference to the texture that can be used with set_shader_param


#### materialsystem.get_model_materials

`materialsystem.get_model_materials(entindex: number)`: table (material objects)

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Entity index

Returns a table of references to materials used by the entity


#### materialsystem.override_material

`materialsystem.override_material(material: table, material_new: table)`

Argument | Type | Description
-------- | ---- | -----------
  **material** | table (material object) | The material to override
  **material_new** | table (material object) | The material to override it with

Overrides all of a material properties with another material.


#### :alpha_modulate

`material_object:alpha_modulate(a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **a** | number | New alpha value of the material (0-255)

Overrides the alpha of the material object it's called on. Doesn't work with some materials


#### :color_modulate

`material_object:color_modulate(r: number, g: number, b: number)`

Argument | Type | Description
-------- | ---- | -----------
  **r** | number | New red value of the material (0-255)
  **g** | number | New green value of the material (0-255)
  **b** | number | New blue value of the material (0-255)

Overrides the color of the material object it's called on. Doesn't work with some materials


#### :get_material_var_flag

`material_object:get_material_var_flag(material_var_flag: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **material_var_flag** | number (material var flag) | Material var flag as number

Returns the boolean value of the material var flag


#### :get_name

`material_object:get_name()`: string

Returns name of the material


#### :get_shader_param

`material_object:get_shader_param(shader_param: string)`: any

Argument | Type | Description
-------- | ---- | -----------
  **shader_param** | string (shader param) | Shader param name

Returns the value of the shader param or nil


#### :reload

`material_object:reload()`

Restores the original material properties of the material it's called on.


#### :set_material_var_flag

`material_object:set_material_var_flag(material_var_flag: number, value: any)`

Argument | Type | Description
-------- | ---- | -----------
  **material_var_flag** | number (material var flag) | Material var flag as number
  **value** | any | New boolean value of the material var flag

Sets the value of the material var flag of the material


#### :set_shader_param

`material_object:set_shader_param(shader_param: string, value: any)`

Argument | Type | Description
-------- | ---- | -----------
  **shader_param** | string (shader param) | Shader param name
  **value** | any | New value of the shader param

Sets the value of the shader param of the material


### Examples:

{% code-tabs %}
{% code-tabs-item title="materialsystem-1.lua" %}
```lua
-- materialsystem example here
```
{% endcode-tabs-item %}
{% endcode-tabs %}