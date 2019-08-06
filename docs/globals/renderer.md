---
description: Functions for drawing visuals. Usually won't work outside the `paint` event.
---

# Renderer

### Functions:
#### renderer.circle

`renderer.circle(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number)`

Argument | Description | Type
-------- | ----------- | ----
  **x** | Screen coordinate | number (screen coordinate)
  **y** | Screen coordinate | number (screen coordinate)
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number
  **radius** | Radius of the circle in pixels. | number
  **start_degrees** | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top. | number (0 - 360)
  **percentage** | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc. | number (0 - 1)

This can only be called from the paint callback.


#### renderer.circle_outline

`renderer.circle_outline(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number, thickness: number)`

Argument | Description | Type
-------- | ----------- | ----
  **x** | Screen coordinate | number (screen coordinate)
  **y** | Screen coordinate | number (screen coordinate)
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number
  **radius** | Radius of the circle in pixels. | number
  **start_degrees** | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top. | number (0 - 360)
  **percentage** | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc. | number (0 - 1)
  **thickness** | Thickness of the outline in pixels. | number (px)

This can only be called from the paint callback.


#### renderer.gradient

`renderer.gradient(x: number, y: number, w: number, h: number, r1: number, g1: number, b1: number, a1: number, r2: number, g2: number, b2: number, a2: number, ltr: boolean)`

Argument | Description | Type
-------- | ----------- | ----
  **x** | Screen coordinate | number (screen coordinate)
  **y** | Screen coordinate | number (screen coordinate)
  **w** | Width in pixels | number (px)
  **h** | Height in pixels | number (px)
  **r1** | Red (1-255) | number
  **g1** | Green (1-255) | number
  **b1** | Blue (1-255) | number
  **a1** | Alpha (1-255) | number
  **r2** | Red (1-255) | number
  **g2** | Green (1-255) | number
  **b2** | Blue (1-255) | number
  **a2** | Alpha (1-255) | number
  **ltr** | Left to right. Pass true for horizontal gradient, or false for vertical. | boolean

This can only be called from the paint callback.


#### renderer.indicator

`renderer.indicator(r: number, g: number, b: number, a: number, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number
  **...** | The text that will be drawn | 

Returns the Y screen coordinate (vertical offset) of the drawn text, or nil on failure. This can only be called from the paint callback.


#### renderer.line

`renderer.line(xa: number, ya: number, xb: number, yb: number, r: number, g: number, b: number, a: number)`

Argument | Description | Type
-------- | ----------- | ----
  **xa** | Screen coordinate of point A | number (screen coordinate)
  **ya** | Screen coordinate of point A | number (screen coordinate)
  **xb** | Screen coordinate of point B | number (screen coordinate)
  **yb** | Screen coordinate of point B | number (screen coordinate)
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number

This can only be called from the paint callback.


#### renderer.load_jpg

`renderer.load_jpg(contents: string)`: number (texture id)

Argument | Description | Type
-------- | ----------- | ----
  **contents** | Raw JPG file contents | string

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_png

`renderer.load_png(contents: string)`: number (texture id)

Argument | Description | Type
-------- | ----------- | ----
  **contents** | Raw PNG file contents | string

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_svg

`renderer.load_svg(contents: string, width: number, height: number)`: number (texture id)

Argument | Description | Type
-------- | ----------- | ----
  **contents** | SVG file contents | string
  **width** | Width | number (px)
  **height** | Height | number (px)

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.measure_text

`renderer.measure_text(flags: string, ...)`: number, number

Argument | Description | Type
-------- | ----------- | ----
  **flags** | "+" for large text, "-" for small text, or nil for normal sized text. | string (text flags)
  **...** | Text that will be measured | 

Returns width, height. This can only be called from the paint callback.


#### renderer.rectangle

`renderer.rectangle(x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number)`

Argument | Description | Type
-------- | ----------- | ----
  **x** | Screen coordinate | number (screen coordinate)
  **y** | Screen coordinate | number (screen coordinate)
  **w** | Width in pixels | number (px)
  **h** | Height in pixels | number (px)
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number

This can only be called from the paint callback.


#### renderer.text

`renderer.text(x: number, y: number, r: number, g: number, b: number, a: number, flags: string, max_width: number, ...)`

Argument | Description | Type
-------- | ----------- | ----
  **x** | Screen coordinate | number (screen coordinate)
  **y** | Screen coordinate | number (screen coordinate)
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number
  **flags** | "+" for large text, "-" for small text, "c" for centered text, "r" for right-aligned text, "b" for bold text. "c" can be combined with other flags. nil can be specified for normal sized uncentered text. | string (text flags)
  **max_width** | Text will be clipped if it exceeds this width in pixels. Use 0 for no limit. | number
  **...** | Text that will be drawn | 

This can only be called from the paint callback.


#### renderer.texture

`renderer.texture(id: number, x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number)`

Argument | Description | Type
-------- | ----------- | ----
  **id** | Texture ID | number (texture id)
  **x** | X screen coordinate | number (screen coordinate)
  **y** | Y screen coordinate | number (screen coordinate)
  **w** | Width | number (px)
  **h** | Height | number (px)
  **r** | Red (0-255) | number
  **g** | Green (0-255) | number
  **b** | Blue (0-255) | number
  **a** | Alpha (0-255) | number

Draws a texture from the texture id created from load_png, load_jpg or load_svg


#### renderer.triangle

`renderer.triangle(x0: number, y0: number, x1: number, y1: number, x2: number, y2: number, r: number, g: number, b: number, a: number)`

Argument | Description | Type
-------- | ----------- | ----
  **x0** | Screen coordinate X for point A | number (screen coordinate)
  **y0** | Screen coordinate Y for point A | number (screen coordinate)
  **x1** | Screen coordinate X for point B | number (screen coordinate)
  **y1** | Screen coordinate Y for point B | number (screen coordinate)
  **x2** | Screen coordinate X for point C | number (screen coordinate)
  **y2** | Screen coordinate Y for point C | number (screen coordinate)
  **r** | Red (1-255) | number
  **g** | Green (1-255) | number
  **b** | Blue (1-255) | number
  **a** | Alpha (1-255) | number

This can only be called from the paint callback.


#### renderer.world_to_screen

`renderer.world_to_screen(x: number, y: number, z: number)`

Argument | Description | Type
-------- | ----------- | ----
  **x** | Position in world space | number (world coordinate)
  **y** | Position in world space | number (world coordinate)
  **z** | Position in world space | number (world coordinate)

Returns two screen coordinates (x, y), or nil if the world position is not visible on your screen. This can only be called from the paint callback.

