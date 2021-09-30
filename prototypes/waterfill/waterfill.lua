data:extend({
{
    type = "item",
    name = "cm-waterfill",
    icon = "__CMod__/graphics/icons/water.png",
    icon_size = 32,
    subgroup = "terrain",
    order = "c[landfill]-a[dirt]",
    stack_size = 10000,
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
    enabled = true,
    category = "crafting-with-fluid",
    ingredients =
    {
      {type="fluid", name="water", amount=100}
    },
    result= "cm-waterfill",
    result_count = 1
  }
})