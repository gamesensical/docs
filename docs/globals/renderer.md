---
description: Functions for drawing visuals. Usually won't work outside the `paint` event.
---

# Renderer

### Functions:
#### renderer.circle

`renderer.circle(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number)`

Argument | Description
-------- | -----------
  **x** | Screen coordinate
  **y** | Screen coordinate
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)
  **radius** | Radius of the circle in pixels.
  **start_degrees** | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
  **percentage** | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.

This can only be called from the paint callback.


#### renderer.circle_outline

`renderer.circle_outline(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number, thickness: number)`

Argument | Description
-------- | -----------
  **x** | Screen coordinate
  **y** | Screen coordinate
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)
  **radius** | Radius of the circle in pixels.
  **start_degrees** | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
  **percentage** | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.
  **thickness** | Thickness of the outline in pixels.

This can only be called from the paint callback.


#### renderer.gradient

`renderer.gradient(x: number, y: number, w: number, h: number, r1: number, g1: number, b1: number, a1: number, r2: number, g2: number, b2: number, a2: number, ltr: boolean)`

Argument | Description
-------- | -----------
  **x** | Screen coordinate
  **y** | Screen coordinate
  **w** | Width in pixels
  **h** | Height in pixels
  **r1** | Red (1-255)
  **g1** | Green (1-255)
  **b1** | Blue (1-255)
  **a1** | Alpha (1-255)
  **r2** | Red (1-255)
  **g2** | Green (1-255)
  **b2** | Blue (1-255)
  **a2** | Alpha (1-255)
  **ltr** | Left to right. Pass true for horizontal gradient, or false for vertical.

This can only be called from the paint callback.


#### renderer.indicator

`renderer.indicator(r: number, g: number, b: number, a: number, ...)`

Argument | Description
-------- | -----------
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)
  **...** | The text that will be drawn

Returns the Y screen coordinate (vertical offset) of the drawn text, or nil on failure. This can only be called from the paint callback.


#### renderer.line

`renderer.line(xa: number, ya: number, xb: number, yb: number, r: number, g: number, b: number, a: number)`

Argument | Description
-------- | -----------
  **xa** | Screen coordinate of point A
  **ya** | Screen coordinate of point A
  **xb** | Screen coordinate of point B
  **yb** | Screen coordinate of point B
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)

This can only be called from the paint callback.


#### renderer.load_jpg

`renderer.load_jpg(contents: string)`

Argument | Description
-------- | -----------
  **contents** | Raw JPG file contents

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_png

`renderer.load_png(contents: string)`

Argument | Description
-------- | -----------
  **contents** | Raw PNG file contents

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_svg

`renderer.load_svg(contents: string, width: number, height: number)`

Argument | Description
-------- | -----------
  **contents** | SVG file contents
  **width** | Width
  **height** | Height

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.measure_text

`renderer.measure_text(flags: string, ...)`: number, number

Argument | Description
-------- | -----------
  **flags** | "+" for large text, "-" for small text, or nil for normal sized text.
  **...** | Text that will be measured

Returns width, height. This can only be called from the paint callback.


#### renderer.rectangle

`renderer.rectangle(x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number)`

Argument | Description
-------- | -----------
  **x** | Screen coordinate
  **y** | Screen coordinate
  **w** | Width in pixels
  **h** | Height in pixels
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)

This can only be called from the paint callback.


#### renderer.text

`renderer.text(x: number, y: number, r: number, g: number, b: number, a: number, flags: string, max_width: number, ...)`

Argument | Description
-------- | -----------
  **x** | Screen coordinate
  **y** | Screen coordinate
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)
  **flags** | "+" for large text, "-" for small text, "c" for centered text, "r" for right-aligned text, "b" for bold text. "c" can be combined with other flags. nil can be specified for normal sized uncentered text.
  **max_width** | Text will be clipped if it exceeds this width in pixels. Use 0 for no limit.
  **...** | Text that will be drawn

This can only be called from the paint callback.


#### renderer.texture

`renderer.texture(id: number, x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number)`

Argument | Description
-------- | -----------
  **id** | Texture ID
  **x** | X screen coordinate
  **y** | Y screen coordinate
  **w** | Width
  **h** | Height
  **r** | Red (0-255)
  **g** | Green (0-255)
  **b** | Blue (0-255)
  **a** | Alpha (0-255)


#### renderer.triangle

`renderer.triangle(x0: number, y0: number, x1: number, y1: number, x2: number, y2: number, r: number, g: number, b: number, a: number)`

Argument | Description
-------- | -----------
  **x0** | Screen coordinate X for point A
  **y0** | Screen coordinate Y for point A
  **x1** | Screen coordinate X for point B
  **y1** | Screen coordinate Y for point B
  **x2** | Screen coordinate X for point C
  **y2** | Screen coordinate Y for point C
  **r** | Red (1-255)
  **g** | Green (1-255)
  **b** | Blue (1-255)
  **a** | Alpha (1-255)

This can only be called from the paint callback.


#### renderer.world_to_screen

`renderer.world_to_screen(x: number, y: number, z: number)`

Argument | Description
-------- | -----------
  **x** | Position in world space
  **y** | Position in world space
  **z** | Position in world space

Returns two screen coordinates (x, y), or nil if the world position is not visible on your screen. This can only be called from the paint callback.

