# Client

Represented by `client`.

* **`client.set_event_callback(event_name: string, callback: function)`**
  - `event_name` - Name of the event.
  - `callback` - Lua function to call when this event occurs.

  Lets you set a lua callback to a game / cheat event. A list of them can be found [/events](here)
  Raises an error and prints a message in console upon failure.

  ```lua
  client.set_event_callback("player_death", function(e)
    client.log()
  end)
  ```
