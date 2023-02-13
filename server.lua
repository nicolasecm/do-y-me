local chatRadius = 50 -- radio de la zona de chat en metros

addCommandHandler("do", function(player, _, ...)
  local x, y, z = getElementPosition(player)
  local action = table.concat({...}, " ")
  local chatSphere = createColSphere(x, y, z, chatRadius)
  local nearbyPlayers = getElementsWithinColShape(chatSphere, "player")
  destroyElement(chatSphere)
  for _, nearbyPlayer in ipairs(nearbyPlayers) do
    outputChatBox("* " .. getPlayerName(player) .. " " .. action, nearbyPlayer, 255, 255, 255)
  end
end)

addCommandHandler("me", function(player, _, ...)
  local x, y, z = getElementPosition(player)
  local action = table.concat({...}, " ")
  local chatSphere = createColSphere(x, y, z, chatRadius)
  local nearbyPlayers = getElementsWithinColShape(chatSphere, "player")
  destroyElement(chatSphere)
  for _, nearbyPlayer in ipairs(nearbyPlayers) do
    outputChatBox("** " .. getPlayerName(player) .. " " .. action, nearbyPlayer, 255, 255, 255)
  end
end)