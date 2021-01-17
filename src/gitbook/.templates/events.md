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

{{#hint}}
{% hint style="{{style}}" %}
{{{text}}}
{% endhint %}

{{/hint}}
{{#has_string_properties}}
|| Property
------ | --------
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

{{#page-ref}}
{% page-ref page="{{{page-ref}}}" %}

{{/page-ref}}
{{#has_examples}}
**Examples:**

{% code-tabs %}
{{#examples}}
{% code-tabs-item %}
{{{.}}}
{% endcode-tabs-item %}
{{/examples}}
{% endcode-tabs %}
{{/has_examples}}

{{/events}}
