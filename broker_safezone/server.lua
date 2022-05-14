local webhook = 'https://discord.com/api/webhooks/974690835939594250/9VK0GN2P9_tHoABHStZ8yFeUBXbJd_q3cl4yEepkiE4WAWwoJFuVpPulfdT_VuhmDCse'

function sendToDiscord(webhookUrl, avatar, title, message, color)
	local connect = {
		{
			["color"] = color,
			["title"] = "**".. title .."**\n",
			["description"] = message,
			["footer"] = {
			["text"] = "Broker-Safezone | "..os.date("%d/%m/20%y %X"),
			},
		  }
	  }
	PerformHttpRequest(webhookUrl, function(err, text, headers) end, 'POST', json.encode({username = 'Broker', embeds = connect, avatar_url = avatar}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent(''..Broker.Triggerlabel..':jumweujnzsen')
AddEventHandler(''..Broker.Triggerlabel..':jumweujnzsen', function(Zone)
    local src = source
    sendToDiscord(webhook, nil, 'Safezon-Logs', "steam: **"..GetPlayerName(src).. "**\n\n**```Has entered the Safezone: "..Zone.."```**", 65535)
end)

RegisterServerEvent(''..Broker.Triggerlabel..':jumweujnzsle')
AddEventHandler(''..Broker.Triggerlabel..':jumweujnzsle', function(Zone)
    local src = source
    sendToDiscord(webhook, nil, 'Safezon-Logs', "steam: **"..GetPlayerName(src).. "**\n\n**```Left the Safezone: "..Zone.."```**", 65535)
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    sendToDiscord(webhook, nil, 'Safezon-Logs', "```"..resourceName.." has been started successfully```", 65535)
    print('^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#')
    print('')
    print('^2Made By BROKER: ^8' .. resourceName .. ' ^2has been started successfully.')
    print('^3If you want more scripts join my Discord: ^4https://discord.gg/GeQeuM9qXm')
    print('')
    print('^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#^1#^9#')
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    sendToDiscord(webhook, nil, 'Safezon-Logs', "```"..resourceName.." has been stopped```", 65535)
end)
  
  