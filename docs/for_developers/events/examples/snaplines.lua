local nLocalPlayer = nil
local nPlayerResource = nil
local tPlayers = {}
local nPlayersCount = 0

client.set_event_callback("player_connect_full", function(e)
  if entity.get_local_player() == client.userid_to_entindex(e.userid) then
    nLocalPlayer    = entity.get_local_player()
    nPlayerResource = entity.get_player_resource()
  end
end)

client.set_event_callback("level_init", function()
  nLocalPlayer    = nil
  nPlayerResource = nil
end)

client.set_event_callback("net_update_end", function()
  if not(nLocalPlayer and nPlayerResource) then
    nLocalPlayer    = entity.get_local_player()
    nPlayerResource = entity.get_player_resource()

    return
  end

  tEntities = entity.get_all()

  tPlayers = {}
  nPlayersCount = 0

  for nIter1 = 1, #tEntities do
    local nEntityIndex = tEntities[nIter1]
    if entity.get_classname(nEntityIndex) == "CCSPlayer" then
      nPlayersCount = nPlayersCount + 1
      tPlayers[nPlayersCount] = nEntityIndex
    end
  end
end)

client.set_event_callback("paint", function()
  tViewportDimensions = {client.screen_size()}

  if not(nLocalPlayer and nPlayerResource) then
    return
  end

  for nIter1 = 1, nPlayersCount do
    nEntityIndex = tPlayers[nIter1]

    tEntityWorldOrigin = {entity.get_prop(nEntityIndex, "m_vecOrigin")}

    tEntityScreenOrigin = {renderer.world_to_screen(unpack(tEntityWorldOrigin))}

    if tEntityScreenOrigin[1] and tEntityScreenOrigin[2] then
      renderer.line(tViewportDimensions[1] / 2, tViewportDimensions[2] / 2, tEntityScreenOrigin[1], tEntityScreenOrigin[2], 255, 255, 255, 255)
    end
  end
end)