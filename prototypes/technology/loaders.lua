data:extend({
 {
    type = "technology",
    name = "cm-loader",
    icon = "__base__/graphics/technology/logistics.png",
    upgrade = true,
    order = "c-k-f-b",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "loader"
      },
    },
    prerequisites = 
	{
	  "logistics",
	},
    unit =
    {
      count = 25,
      time = 15,
      ingredients = 
	   {
         {"science-pack-1",1},
       },
    },
  },
  {
    type = "technology",
    name = "cm-loader-2",
    icon = "__base__/graphics/technology/logistics.png",
    upgrade = true,
    order = "c-k-f-b",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-loader"
      },
    },
    prerequisites = 
	{
	  "cm-loader",
	  "logistics-2",
	},
    unit =
    {
      count = 50,
      time = 30,
      ingredients = 
	   {
         {"science-pack-1",1},
         {"science-pack-2",1},
       },
    },
  },
  {
    type = "technology",
    name = "cm-loader-3",
    icon = "__base__/graphics/technology/logistics.png",
    upgrade = true,
    order = "c-k-f-b",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "express-loader"
      },
    },
    prerequisites = 
	{
	  "cm-loader-2",
	  "logistics-3",
	},
    unit =
    {
      count = 100,
      time = 30,
      ingredients = 
	   {
         {"science-pack-1",1},
         {"science-pack-2",1},
		 {"science-pack-3",1},
       },
    },
  },
})