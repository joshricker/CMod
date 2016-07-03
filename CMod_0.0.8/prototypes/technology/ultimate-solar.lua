data:extend(
{
  {
    type = "technology",
    name = "cm-ultimate-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-ultimate-solar"
      }
    },
    prerequisites = {"cm-elite-solar"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 60
    },
    order = "a-h-c",
  }
}
)
