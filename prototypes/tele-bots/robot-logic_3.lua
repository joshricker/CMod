data:extend({
-- Item
  {
    type = "item",
    name = "cm-logistic-robot-3",
    icon = "__CMod__/graphics/icons/icon-cm-logistic-robot3.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "a[robot]-d[logistic-robot]",
    place_result = "cm-logistic-robot-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "cm-logistic-robot-3",
    enabled = "false",
    ingredients =
    {
      {"yi_logistic-robot", 5},
     {"battery-equipment", 5},
     {"solar-panel-equipment", 5},
      {"processing-unit", 20}
    },
    result = "cm-logistic-robot-3"
  },
  {
    type = "logistic-robot",
    name = "cm-logistic-robot-3",
    icon = "__CMod__/graphics/icons/icon-cm-logistic-robot3.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "cm-logistic-robot-3"},
    max_health = 500,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 10,
    speed = 100000.00,
    transfer_distance = 0.5,
    max_energy = "30kJ",
    energy_per_tick = "0.00kJ",
    speed_multiplier_when_out_of_energy = 1.00,
    energy_per_move = "0.00kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.85,
    idle =
    {
      filename = "__CMod__/graphics/icons/icon-cm_logistic-robot_3.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 42
    },
    idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16
    },
    in_motion =
    {
      filename = "__CMod__/graphics/icons/icon-cm_logistic-robot_3.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 126
    },
    in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 84
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  },
})