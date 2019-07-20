---
description: Functions controlling the CS:GO Material System, letting you modulate, swap, remove materials and set their shader params / material vars
---

# Materialsystem

### Example:

{% code-tabs %}
{% code-tabs-item  title="materialsystem-1.lua"%}
```lua
-- materialsystem example here
```

{% endcode-tabs-item %}
{% endcode-tabs %}

### Functions:
#### materialsystem.arms_material

`materialsystem.arms_material()`

Returns the players hand cham material as an object.


#### materialsystem.chams_material

`materialsystem.chams_material()`

Returns the players cham material as an object.


#### materialsystem.find_material

`materialsystem.find_material(material: string)`

Argument | Description
-------- | -----------
  **material** | The name of the material.

Returns a material object for the specified material.


#### materialsystem.find_materials

`materialsystem.find_materials(materials: string)`

Argument | Description
-------- | -----------
  **materials** | The substring that the material name must contain.

Returns all material objects that contain the specified material.


#### materialsystem.find_texture

`materialsystem.find_texture(material: string)`

Argument | Description
-------- | -----------
  **material** | The name of the material.

Returns a texture object for the specified material.


#### materialsystem.get_model_materials

`materialsystem.get_model_materials(entindex: number)`

Argument | Description
-------- | -----------
  **entindex** | The entity whos materials will be returned.

Returns all material objects for a specified entity.


#### materialsystem.override_material

`materialsystem.override_material(entindex: number)`

Argument | Description
-------- | -----------
  **entindex** | The entity whos materials will be returned.

Overrides all of a material properties with another material.

