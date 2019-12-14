{{#description}}
---
description: {{{description}}}
---
{{/description}}

# {{global}}

### Functions:
{{#functions}}
#### {{display_name}}

`{{{name}}}({{#all_optional}}[{{/all_optional}}{{{args_text}}}{{#all_optional}}]{{/all_optional}})`{{#return_type}}: {{{return_type}}}{{#return_description}} ({{{return_description}}}){{/return_description}}{{/return_type}}

{{#hint}}
{% hint style="{{style}}" %}
{{{text}}}
{% endhint %}

{{/hint}}
{{#args}}
Argument | Type | Description
-------- | ---- | -----------
{{#list}}
  **{{{name}}}** | {{type}}{{#type_description}} ({{{type_description}}}){{/type_description}} | {{{description}}}
{{/list}}

{{/args}}
{{#description}}
{{{description}}}
{{/description}}

{{#page-ref}}
{% page-ref page="{{{page-ref}}}" %}
{{/page-ref}}

{{/functions}}
{{#examples}}
### Examples:

{% code-tabs %}
{{#list}}
{% code-tabs-item {{#title}}title="{{{title}}}" {{/title}}%}
{{#contents}}
{{{.}}}
{{/contents}}
{% endcode-tabs-item %}
{{/list}}
{% endcode-tabs %}
{{/examples}}
