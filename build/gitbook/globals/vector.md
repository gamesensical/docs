---
description: Built-in vector library, loaded by requiring vector
---

# vector

### Functions:
#### vector

`vector(x: number, y: number, z: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | X coordinate of 3D position
  **y** | number | Y coordinate of 3D position
  **z** | number | Z coordinate of 3D position

Creates a new vector object. Please note that you need to load the built-in vector library with require "vector"


#### :angles

`vector_object:angles()`: number, number, number

Converts the vector to an angle and returns the pitch, yaw and roll


#### :dist2d

`vector_object:dist2d(other: vector)`: number

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Other vector

Returns the cross product / vector product of itself and another vector


#### :dist

`vector_object:dist(other: vector)`: number

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Vector to calculate the distance to

Returns the 3d distance to another vector


#### :dist

`vector_object:dist(other: vector)`: number

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Vector to calculate the distance to

Returns the 2d distance to another vector


#### :dot

`vector_object:dot()`: number

Returns the dot product of the vector


#### :init

`vector_object:init(x: number, y: number, z: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | X coordinate of 3D position
  **y** | number | Y coordinate of 3D position
  **z** | number | Z coordinate of 3D position

Overwrites the X, Y and Z coordinates of the vector object, returning itself


#### :init_from_angles

`vector_object:init_from_angles(pitch: number, yaw: number[, roll: number])`: vector

Argument | Type | Description
-------- | ---- | -----------
  **pitch** | number | Pitch component of angle
  **yaw** | number | Yaw component of angle
  **roll** | number | Roll component of angle

Converts the pitch, yaw and roll passed to a forward vector and overwrites the X, Y and Z coordinates with that. Returns itself


#### :length

`vector_object:length()`: number

Returns the length (magnitude)


#### :length2d

`vector_object:length2d()`: number

Returns the 2d length (X and Y components)


#### :length2dsqr

`vector_object:length2dsqr()`: number

Returns the squared 2d length (X and Y components, faster than :length2d)


#### :lengthsqr

`vector_object:lengthsqr()`: number

Returns the squared length (faster than :length)


#### :lerp

`vector_object:lerp(to: vector, percentage: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **to** | vector | Vector to lerp to
  **percentage** | number | Interpolation percentage (0-1)

Interpolates by the specified percentage between the 2 vectors.


#### :normalize

`vector_object:normalize()`

Normalizes the vector, dividing it by it's own length (resulting in a unit vector with length = 1)


#### :normalized

`vector_object:normalized()`: vector

Returns a new unit vector, divided it by it's own length


#### :scale

`vector_object:scale(scalar: number)`

Argument | Type | Description
-------- | ---- | -----------
  **scalar** | number | Scalar value

Scales the vector by the specified value.


#### :scaled

`vector_object:scaled(scalar: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **scalar** | number | Scalar value

Returns a new vector, scaled by the specified value.


#### :to

`vector_object:to(other: vector)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Other vector

Returns the forward vector from itself to another vector


#### :unpack

`vector_object:unpack()`: number, number, number

Returns the X, Y and Z coordinate of the vector object. They can also be accessed by vec.x, vec.y, etc


#### :vectors

`vector_object:vectors()`: vector, vector

Returns the right and up vector of a forward vector

