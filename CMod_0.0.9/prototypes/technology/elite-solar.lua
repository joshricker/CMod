data:extend(
{
  {
    type = "technology",
    name = "cm-elite-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-elite-solar"
      }
    },
    prerequisites = {"cm-advanced-solar"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-h-c",
  }
}
)
