---
summary: Configuration related lua functions
---

# config

### Functions:
#### config.export

`config.export()`

Returns the current config as a string


#### config.load

`config.load(name: string, tab: string, container: string)`

Argument | Type | Description
-------- | ---- | -----------
  **name** | string (menu item) | Name of the config
  **tab** | string (menu tab) | Name of the tab
  **container** | string (menu container) | Name of the container

To load the specified config: config.load('Config name here') To load a tab from the specified config: config.load('Config name here', 'Tab name here') To load a container from the specified config: config.load('Config name here', 'Tab name here', 'Container name here')

