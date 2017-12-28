data:extend(
{
  {
    type = "item",
    name = "cm-energy-void",
    icon = "__CMod__/graphics/energy-void/energy-void-icon.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "e-c",
    place_result = "cm-energy-void",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "cm-energy-void",
    energy_required = 1,
    enabled = "true",
    ingredients =
    {
      {"copper-plate", 1}
    },
    result = "cm-energy-void"
  },
  {
    type = "accumulator",
    name = "cm-energy-void",
    icon = "__CMod__/graphics/energy-void/energy-void.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "cm-energy-void"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "50000GJ",
      usage_priority = "terciary",
      input_flow_limit = "3000GW",
      output_flow_limit = "1W"
    },
    picture =
    {
      filename = "__CMod__/graphics/energy-void/energy-void.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__CMod__/graphics/energy-void/energy-void-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__CMod__/graphics/energy-void/energy-void-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  }
}
)
