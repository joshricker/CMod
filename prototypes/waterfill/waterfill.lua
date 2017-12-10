data:extend({
{
    type = "item",
    name = "cm-waterfill",
    icon = "__CMod__/graphics/icons/water.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "terrain",
    order = "c[landfill]-a[dirt]",
    stack_size = 1000,
    place_as_tile =
    {
      result = "water",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
    {
    type = "recipe",
    name = "cm-waterfill",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {type="fluid", name="water", amount=100}
    },
    result= "cm-waterfill",
    result_count = 1
  },
   {
    type = "technology",
    name = "cm-waterfill",
    icon = "__CMod__/graphics/icons/water.png",
    prerequisites = {"landfill"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 25
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-waterfill"
      }
    },
    order = "b-d"
  }
  })