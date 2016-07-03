data:extend(
{
  {
    type = "accumulator",
    name = "cm-ultimate-accumulator",
    icon = "__CMod__/graphics/ultimate-accumulator/ultimate-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "cm-ultimate-accumulator"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5GJ",
      usage_priority = "terciary",
      input_flow_limit = "300MW",
      output_flow_limit = "300MW"
    },
    picture =
    {
      filename = "__CMod__/graphics/ultimate-accumulator/ultimate-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__CMod__/graphics/ultimate-accumulator/ultimate-accumulator-charge-animation.png",
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
      filename = "__CMod__/graphics/ultimate-accumulator/ultimate-accumulator-discharge-animation.png",
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
