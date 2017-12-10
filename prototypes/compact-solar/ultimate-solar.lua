data:extend(
{
  {
    type = "item",
    name = "cm-ultimate-solar",
    icon = "__CMod__/graphics/ultimate-solar/ultimate-solar-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "cm-ultimate-solar",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "cm-ultimate-solar",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 25},
      {"processing-unit", 5},
      {"cm-elite-solar", 10}
    },
    result = "cm-ultimate-solar"
  },
  {
    type = "solar-panel",
    name = "cm-ultimate-solar",
    icon = "__CMod__/graphics/ultimate-solar/ultimate-solar.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "cm-ultimate-solar"},
    max_health = 500,
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
      filename = "__CMod__/graphics/ultimate-solar/ultimate-solar.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "60MW"
  }

}
)
