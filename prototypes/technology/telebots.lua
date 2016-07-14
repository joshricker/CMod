data:extend({
  {
    type = "technology",
    name = "cm-robots-3",
    icon = "__CMod__/graphics/icon/icon-cm-roboport3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-roboport-3"
      },
      {
        type = "unlock-recipe",
        recipe = "cm-logistic-robot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "cm-construction-robot-3"
      },
    },
    prerequisites = {"robots-2"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"science-pack-1", 8},
        {"science-pack-2", 8},
		{"science-pack-3", 8}
      },
      time = 30
    },
    order = "c-k-a",
  },
})