---
description: List of events that you can listen to using client.set_event_callback
---
# Events

### List of events:

{{#events}}
#### {{name}}

{{#description}}
{{{description}}}
{{/description}}

{{#has_string_properties}}
 #  | Property
--- | --------
{{#string_properties}}
{{index}} | {{{prop}}}
{{/string_properties}}

{{/has_string_properties}}
{{#has_table_properties}}
{{#table_properties}}
Key | Description
--- | -----------
{{#.}}
**{{{key}}}** | {{{description}}}
{{/.}}

{{/table_properties}}
{{/has_table_properties}}


{{/events}}