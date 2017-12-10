data:extend(
{
  {
    type = "item",
    name = "cm-advanced-solar",
    icon = "__CMod__/graphics/advanced-solar/advanced-solar-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "cm-advanced-solar",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "cm-advanced-solar",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 25},
      {"electronic-circuit", 15},
      {"solar-panel", 10}
    },
    result = "cm-advanced-solar"
  },
  {
    type = "solar-panel",
    name = "cm-advanced-solar",
    icon = "__CMod__/graphics/advanced-solar/advanced-solar.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "cm-advanced-solar"},
    max_health = 150,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__CMod__/graphics/advanced-solar/advanced-solar.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "600kW"
  }
}
)
