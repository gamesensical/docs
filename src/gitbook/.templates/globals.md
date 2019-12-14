{{#description}}
---
description: {{{description}}}
---
{{/description}}

# {{global}}

### Functions:
{{#functions}}
#### {{name}}

{{{text}}}

{{#hint}}
{% hint style="{{style}}" %}
{{{text}}}
{% endhint %}

{{/hint}}
{{#arguments}}
Argument | Type | Description
-------- | ---- | -----------
{{#list}}
  **{{{name}}}** | {{type}}{{#type_description}} ({{{type_description}}}){{/type_description}} | {{{description}}}
{{/list}}

{{/arguments}}
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