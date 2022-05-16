
# json

### Functions:
#### json.parse

`json.parse(json_text: string)`

Argument | Type | Description
-------- | ---- | -----------
  **json_text** | string | JSON encoded UTF-8 string.

Will deserialise any UTF-8 JSON string into a Lua value or table.


#### json.stringify

`json.stringify(data: any)`

Argument | Type | Description
-------- | ---- | -----------
  **data** | any | Data what be converted to json.

Will serialise a Lua value into a string containing the JSON representation.

