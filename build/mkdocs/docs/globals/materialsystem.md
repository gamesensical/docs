---
summary: Functions controlling the CS:GO Material System, letting you modulate, swap, remove materials and set their shader params / material vars
---

# materialsystem

### Functions:
#### materialsystem.arms_material

`materialsystem.arms_material()`: table (material object)

Returns the players hand cham material as an object.


#### materialsystem.chams_material

`materialsystem.chams_material()`: table (material object)

Returns the players cham material as an object.


#### materialsystem.find_material

`materialsystem.find_material(material: string)`: table (material object)

Argument | Type | Description
-------- | ---- | -----------
  **material** | string | The name of the material.

Returns a material object for the specified material.


#### materialsystem.find_materials

`materialsystem.find_materials(materials: string)`: table (material objects)

Argument | Type | Description
-------- | ---- | -----------
  **materials** | string | The substring that the material name must contain.

Returns all material objects that contain the specified material.


#### materialsystem.find_texture

`materialsystem.find_texture(material: string)`

Argument | Type | Description
-------- | ---- | -----------
  **material** | string | The name of the material.

Returns a texture object for the specified material.


#### materialsystem.get_model_materials

`materialsystem.get_model_materials(ent: number)`: table (material objects)

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | The entity whos materials will be returned.

Returns all material objects for a specified entity.


#### materialsystem.override_material

`materialsystem.override_material(ent: number)`

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | The entity whos materials will be returned.

Overrides all of a material properties with another material.


#### materialsystem.viewmodel_material

`materialsystem.viewmodel_material()`: table (material object)

Returns a texture object for the viewmodel material.


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

`material_object:set_shader_param(shader_param: string, value: any, scale: number, x_offset, y_offset)`

Argument | Type | Description
-------- | ---- | -----------
  **shader_param** | string (shader param) | Shader param name
  **value** | any | New value of the shader param
  **scale** | number | New value of the scale param [0-1]
  **x_offset** |  | New value of the x offset [0-1]
  **y_offset** |  | New value of the y offset [0-1]

Sets the value of the shader param of the material


### Examples:

{% code-tabs %}
{% code-tabs-item title="materialsystem-1.lua" %}
```lua
-- materialsystem example here
```
{% endcode-tabs-item %}
{% endcode-tabs %}