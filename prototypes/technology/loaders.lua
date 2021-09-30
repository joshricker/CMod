data:extend({
 {
    type = "technology",
    name = "cm-loader",
    icon = "__base__/graphics/technology/logistics.png",
    icon_size = 128,
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
         {"automation-science-pack",1},
       },
    },
  },
  {
    type = "technology",
    name = "cm-loader-2",
    icon = "__base__/graphics/technology/logistics.png",
    icon_size = 128,
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
         {"automation-science-pack",1},
         {"logistic-science-pack",1},
       },
    },
  },
  {
    type = "technology",
    name = "cm-loader-3",
    icon = "__base__/graphics/technology/logistics.png",
    icon_size = 128,
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
         {"automation-science-pack",1},
         {"logistic-science-pack",1},
		 {"chemical-science-pack",1},
       },
    },
  },
})