data:extend(
{
	{
		type = "technology",
		name = "cm-advanced-accumulators",
		icon = "__base__/graphics/technology/electric-energy-acumulators.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cm-advanced-accumulator"
			}
		},
		prerequisites = {"electric-energy-accumulators-1"},
		unit =
		{
			count = 150,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 45
		},
		order = "c-e-b",
	}
	
	{
		type = "technology",
		name = "cm-elite-accumulators",
		icon = "__base__/graphics/technology/electric-energy-acumulators.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cm-elite-accumulator"
			}
		},
		prerequisites = {"cm-advanced-accumulators"},
		unit =
		{
			count = 150,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 45
		},
		order = "c-e-c",
	}
	
	{
		type = "technology",
		name = "cm-ultimate-accumulators",
		icon = "__base__/graphics/technology/electric-energy-acumulators.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "cm-ultimate-accumulator"
			}
		},
		prerequisites = {"cm-elite-accumulators"},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1},
				{"alien-science-pack", 1}
			},
			time = 60
		},
		order = "c-e-c",
	}
}
)