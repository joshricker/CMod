data:extend(
{
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
}
)
