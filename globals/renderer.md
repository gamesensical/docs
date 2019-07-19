# Renderer

Represented by `renderer`.

* **`renderer.text(${1:x}, ${2:y}, ${3:r}, ${4:g}, ${5:b}, ${6:a}, ${7:flags}, ${8:max_width}, ${9:...})`**
	
	This can only be called from the paint callback.

* **`renderer.measure_text(${1:flags}, ${2:...})`**
	
	Returns width, height. This can only be called from the paint callback.

* **`renderer.rectangle(${1:x}, ${2:y}, ${3:w}, ${4:h}, ${5:r}, ${6:g}, ${7:b}, ${8:a})`**
	
	This can only be called from the paint callback.

* **`renderer.line(${1:xa}, ${2:ya}, ${3:xb}, ${4:yb}, ${5:r}, ${6:g}, ${7:b}, ${8:a})`**
	
	This can only be called from the paint callback.

* **`renderer.gradient(${1:x}, ${2:y}, ${3:w}, ${4:h}, ${5:r1}, ${6:g1}, ${7:b1}, ${8:a1}, ${9:r2}, ${10:g2}, ${11:b2}, ${12:a2}, ${13:ltr})`**
	
	This can only be called from the paint callback.

* **`renderer.circle(${1:x}, ${2:y}, ${3:r}, ${4:g}, ${5:b}, ${6:a}, ${7:radius}, ${8:start_degrees}, ${9:percentage})`**
	
	This can only be called from the paint callback.

* **`renderer.circle_outline(${1:x}, ${2:y}, ${3:r}, ${4:g}, ${5:b}, ${6:a}, ${7:radius}, ${8:start_degrees}, ${9:percentage}, ${10:thickness})`**
	
	This can only be called from the paint callback.

* **`renderer.triangle(${1:x0}, ${2:y0}, ${3:x1}, ${4:y1}, ${5:x2}, ${6:y2}, ${7:r}, ${8:g}, ${9:b}, ${10:a})`**
	
	This can only be called from the paint callback.

* **`renderer.world_to_screen(${1:x}, ${2:y}, ${3:z})`**
	
	Returns two screen coordinates (x, y), or nil if the world position is not visible on your screen. This can only be called from the paint callback.

* **`renderer.indicator(${1:r}, ${2:g}, ${3:b}, ${4:a}, ${5:...})`**
	
	Returns the Y screen coordinate (vertical offset) of the drawn text, or nil on failure. This can only be called from the paint callback.

* **`renderer.texture(${1:id}, ${2:x}, ${3:y}, ${4:w}, ${5:h}, ${6:r}, ${7:g}, ${8:b}, ${9:a})`**

* **`renderer.load_svg(${1:contents}, ${2:width}, ${3:height})`**
	
	Returns a texture ID that can be used with renderer.texture, or nil on failure
