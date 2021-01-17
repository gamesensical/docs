---
summary: Functions for drawing visuals. Usually won't work outside the `paint` event.
---

# renderer

### Functions:
#### renderer.circle

`renderer.circle(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **radius** | number | Radius of the circle in pixels.
  **start_degrees** | number (0 - 360) | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
  **percentage** | number (0 - 1) | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.

This can only be called from the paint callback.


#### renderer.circle_outline

`renderer.circle_outline(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number, thickness: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **radius** | number | Radius of the circle in pixels.
  **start_degrees** | number (0 - 360) | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
  **percentage** | number (0 - 1) | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.
  **thickness** | number (px) | Thickness of the outline in pixels.

This can only be called from the paint callback.


#### renderer.gradient

`renderer.gradient(x: number, y: number, w: number, h: number, r1: number, g1: number, b1: number, a1: number, r2: number, g2: number, b2: number, a2: number, ltr: boolean)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **w** | number (px) | Width in pixels
  **h** | number (px) | Height in pixels
  **r1** | number | Red (0-255)
  **g1** | number | Green (0-255)
  **b1** | number | Blue (0-255)
  **a1** | number | Alpha (0-255)
  **r2** | number | Red (0-255)
  **g2** | number | Green (0-255)
  **b2** | number | Blue (0-255)
  **a2** | number | Alpha (0-255)
  **ltr** | boolean | Left to right. Pass true for horizontal gradient, or false for vertical.

This can only be called from the paint callback.


#### renderer.indicator

`renderer.indicator(r: number, g: number, b: number, a: number, ...)`: number

Argument | Type | Description
-------- | ---- | -----------
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **...** |  | The text that will be drawn

Returns the Y screen coordinate (vertical offset) of the drawn text, or nil on failure. This can only be called from the paint callback.


#### renderer.line

`renderer.line(xa: number, ya: number, xb: number, yb: number, r: number, g: number, b: number, a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **xa** | number (screen coordinate) | Screen coordinate of point A
  **ya** | number (screen coordinate) | Screen coordinate of point A
  **xb** | number (screen coordinate) | Screen coordinate of point B
  **yb** | number (screen coordinate) | Screen coordinate of point B
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)

This can only be called from the paint callback.


#### renderer.load_jpg

`renderer.load_jpg(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | Raw JPG file contents
  **width** | number (px) | Image width
  **height** | number (px) | Image height

Loads a texture from raw JPG contents (with file header). Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_png

`renderer.load_png(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | Raw PNG file contents
  **width** | number (px) | Image width
  **height** | number (px) | Image height

Loads a texture from raw png contents (with file header). Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_rgba

`renderer.load_rgba(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | RGBA buffer (hex encoded - red = "\xFF\x00\x00\xFF")
  **width** | number (px) | Width
  **height** | number (px) | Height

Loads a texture from a RGBA buffer. Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_svg

`renderer.load_svg(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | SVG file contents
  **width** | number (px) | Width
  **height** | number (px) | Height

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.measure_text

`renderer.measure_text(flags: string, ...)`: number, number

Argument | Type | Description
-------- | ---- | -----------
  **flags** | string (text flags) | "+" for large text, "-" for small text, or nil for normal sized text.
  **...** |  | Text that will be measured

Returns width, height. This can only be called from the paint callback.


#### renderer.rectangle

`renderer.rectangle(x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **w** | number (px) | Width in pixels
  **h** | number (px) | Height in pixels
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)

This can only be called from the paint callback.


#### renderer.text

`renderer.text(x: number, y: number, r: number, g: number, b: number, a: number, flags: string, max_width: number, ...)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **flags** | string (text flags) | "+" for large text, "-" for small text, "c" for centered text, "r" for right-aligned text, "b" for bold text, "d" for high DPI support. "c" can be combined with other flags. nil can be specified for normal sized uncentered text.
  **max_width** | number | Text will be clipped if it exceeds this width in pixels. Use 0 for no limit.
  **...** |  | Text that will be drawn

This can only be called from the paint callback.


#### renderer.texture

`renderer.texture(id: number, x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number[, mode: string])`

Argument | Type | Description
-------- | ---- | -----------
  **id** | number (texture id) | Texture ID
  **x** | number (screen coordinate) | X screen coordinate
  **y** | number (screen coordinate) | Y screen coordinate
  **w** | number (px) | Width
  **h** | number (px) | Height
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **mode** | string | String: "f" for fill, "r" for repeat, otherwise automatic

Draws a texture from the texture id created from load_rgba, load_png, load_jpg or load_svg


#### renderer.triangle

`renderer.triangle(x0: number, y0: number, x1: number, y1: number, x2: number, y2: number, r: number, g: number, b: number, a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x0** | number (screen coordinate) | Screen coordinate X for point A
  **y0** | number (screen coordinate) | Screen coordinate Y for point A
  **x1** | number (screen coordinate) | Screen coordinate X for point B
  **y1** | number (screen coordinate) | Screen coordinate Y for point B
  **x2** | number (screen coordinate) | Screen coordinate X for point C
  **y2** | number (screen coordinate) | Screen coordinate Y for point C
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)

This can only be called from the paint callback.


#### renderer.world_to_screen

`renderer.world_to_screen(x: number, y: number, z: number)`: number, number, number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (world coordinate) | Position in world space
  **y** | number (world coordinate) | Position in world space
  **z** | number (world coordinate) | Position in world space

Returns two screen coordinates (x, y), or nil if the world position is not visible on your screen. This can only be called from the paint callback.

