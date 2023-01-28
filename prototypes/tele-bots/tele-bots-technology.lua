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
      count = 100000,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 2},
		{"military-science-pack", 2},
		{"production-science-pack", 2},
		{"utility-science-pack", 2},
		{"space-science-pack", 2}
      },
      time = 60
    },
    order = "c-k-a",
  },
})