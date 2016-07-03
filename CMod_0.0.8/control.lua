script.on_event(defines.events.on_player_created, function(event)
	local items = {
        {"y_quantrinum_hammer", 20}
	}
	local player = game.players[event.player_index]
	for i, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end
end)
