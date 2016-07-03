data:extend(
{
  {
    type = "technology",
    name = "cm-advanced-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-advanced-solar"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 100,
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
