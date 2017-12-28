data:extend({
  {
    type = "technology",
    name = "cm-robots-3",
    icon = "__CMod__/graphics/icons/icon-cm-roboport3.png",
    icon_size = 32,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-logistic-robot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "cm-construction-robot-3"
      },
    },
    prerequisites = {"logistic-robotics"},
    unit =
    {
      count = 500000,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2},
		{"military-science-pack", 2},
		{"production-science-pack", 2},
		{"high-tech-science-pack", 2},
		{"space-science-pack", 1}
      },
      time = 60
    },
    order = "c-k-a",
  },
})