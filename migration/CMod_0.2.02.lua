for i, player in ipairs(game.players) do
	player.force.resettechnologies()
	player.force.reset_recipes()
end
