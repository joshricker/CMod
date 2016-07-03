data:extend({	
	{
        type = "technology",
        name = "cm-loaders-1",
        icon = "__base__/graphics/technology/logistics.png",
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "loader",
            },
        },
        unit = 
        {
            count = 25,
            ingredients = 
            {
                {"science-pack-1", 1},
            },
            time = 30,
        },
        order = "c",
    },
	{
        type = "technology",
        name = "cm-loaders-2",
        icon = "__base__/graphics/technology/logistics.png",
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "fast-loader",
            },
        },
        prerequisites = {"cm-loaders-1"},
        unit = 
        {
            count = 25,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
            },
            time = 30,
        },
        order = "c-a",
    },
	{
        type = "technology",
        name = "cm-loaders-3",
        icon = "__base__/graphics/technology/logistics.png",
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "express-loader",
            },
        },
        prerequisites = {"cm-loaders-2"},
        unit = 
        {
            count = 50,
            ingredients = 
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
				{"science-pack-3", 1},
            },
            time = 30,
        },
        order = "c-a",
  }, 
})
