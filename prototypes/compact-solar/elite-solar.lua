data:extend(
{
  {
    type = "item",
    name = "cm-elite-solar",
    icon = "__CMod__/graphics/elite-solar/elite-solar-icon.png",
    icon_size = 32,

    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "cm-elite-solar",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "cm-elite-solar",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 25},
      {"advanced-circuit", 15},
      {"cm-advanced-solar", 10}
    },
    result = "cm-elite-solar"
  },
  {
    type = "solar-panel",
    name = "cm-elite-solar",
    icon = "__CMod__/graphics/elite-solar/elite-solar.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "cm-elite-solar"},
    max_health = 250,
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
      layers =
      {
        {
          filename = "__CMod__/graphics/elite-solar/elite-solar.png",
          priority = "high",
          width = 116,
          height = 112,
          shift = util.by_pixel(-3, 3),
          hr_version = {
            filename = "__CMod__/graphics/elite-solar/elite-solar-hr.png",
            priority = "high",
            width = 230,
            height = 224,
            shift = util.by_pixel(-3, 3.5),
            scale = 0.5
          }
        },
        {
          filename = "__CMod__/graphics/elite-solar/elite-solar-hr-shadow.png",
          priority = "high",
          width = 112,
          height = 90,
          shift = util.by_pixel(10, 6),
          draw_as_shadow = true,
          hr_version = {
            filename = "__CMod__/graphics/elite-solar/elite-solar-hr-shadow.png",
            priority = "high",
            width = 220,
            height = 180,
            shift = util.by_pixel(9.5, 6),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    overlay =
    {
      layers =
      {
        {
          filename = "__CMod__/graphics/elite-solar/elite-solar-hr-shadow-overlay.png",
          priority = "high",
          width = 108,
          height = 90,
          shift = util.by_pixel(11, 6),
          hr_version = {
            filename = "__CMod__/graphics/elite-solar/elite-solar-hr-shadow-overlay.png",
            priority = "high",
            width = 214,
            height = 180,
            shift = util.by_pixel(10.5, 6),
            scale = 0.5
          }
        }
      }
    },
    production = "6MW"
  }
}
)
