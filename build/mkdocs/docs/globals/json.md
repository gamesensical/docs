---
summary: JSON encoding / parsing functions, based on lua-cjson
---

# json

### Functions:
#### json.decode_invalid_numbers

`json.decode_invalid_numbers([setting: boolean])`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **setting** | boolean | Pass true to accept and decode invalid numbers or false to throw an error

Lua CJSON may generate an error when trying to decode numbers not supported by the JSON specification. Invalid numbers are defined as: infinity, not-a-number (NaN) or hexadecimal. The current value wil always be returned.


#### json.decode_max_depth

`json.decode_max_depth([setting: number])`: number

Argument | Type | Description
-------- | ---- | -----------
  **setting** | number | Depth must be a positive integer. Default: 1000.

Lua CJSON will generate an error when parsing deeply nested JSON once the maximum array/object depth has been exceeded. This check prevents unnecessarily complicated JSON from slowing down the application, or crashing the application due to lack of process stack space.


#### json.encode_invalid_numbers

`json.encode_invalid_numbers([setting: boolean])`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **setting** | boolean | Pass true to allow invalid numbers to be encoded. This will generate non-standard JSON, but this output is supported by some libraries.

Lua CJSON may generate an error when encoding floating point numbers not supported by the JSON specification (invalid numbers): infinity, not-a-number (NaN)


#### json.encode_keep_buffer

`json.encode_keep_buffer([setting: boolean])`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **setting** | boolean | The buffer will grow to the largest size required and is not freed until the Lua CJSON module is garbage collected when true is passed.

Lua CJSON can reuse the JSON encoding buffer to improve performance.


#### json.encode_max_depth

`json.encode_max_depth([depth: number])`: number

Argument | Type | Description
-------- | ---- | -----------
  **depth** | number | Depth must be a positive integer. Default: 1000.

Once the maximum table depth has been exceeded Lua CJSON will generate an error. This prevents a deeply nested or recursive data structure from crashing the application.


#### json.encode_number_precision

`json.encode_number_precision([precision: number])`: number

Argument | Type | Description
-------- | ---- | -----------
  **precision** | number | Precision must be an integer between 1 and 14. Default: 14.

The amount of significant digits returned by Lua CJSON when encoding numbers can be changed to balance accuracy versus performance. For data structures containing many numbers, setting cjson.encode_number_precision to a smaller integer, for example 3, can improve encoding performance by up to 50%.


#### json.encode_sparse_array

`json.encode_sparse_array([convert: boolean] [, ratio: number] [, safe: number])`: boolean, number, number

Argument | Type | Description
-------- | ---- | -----------
  **convert** | boolean | Convert must be a boolean. Default: false
  **ratio** | number | Ratio must be a positive integer. Default: 2.
  **safe** | number | Safe must be a positive integer. Default: 10.

Lua CJSON classifies a Lua table into one of three kinds when encoding a JSON array. This is determined by the number of values missing from the Lua array as follows:


#### json.parse

`json.parse(json_text: string)`: any

Argument | Type | Description
-------- | ---- | -----------
  **json_text** | string | UTF-8 JSON text

json.parse will deserialise any UTF-8 JSON string into a Lua value or table. null will be converted to a NULL lightuserdata value. This can be compared with cjson.null for convenience.


#### json.stringify

`json.stringify(value: any)`: string

Argument | Type | Description
-------- | ---- | -----------
  **value** | any | A lua boolean, number, string, table or nil

Will serialise a Lua value into a string containing the JSON representation.

