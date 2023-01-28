local logBot = util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
logBot.name = "cm-logistic-robot-3"
logBot.minable = {hardness = 0.1, mining_time = 0.1, result = "cm-logistic-robot-3"}
logBot.icon = "__CMod__/graphics/icons/icon-cm-logistic-robot3.png"
logBot.icon_size = 32
logBot.max_health = 5000
logBot.max_payload_size = 200
logBot.speed = 100000
logBot.transfer_distance = 0.5
logBot.max_energy = "30kJ"
logBot.energy_per_tick = "0.00kJ"
logBot.speed_multiplier_when_out_of_energy = 1.00
logBot.energy_per_move = "0.00kJ"
data:extend({logBot})


data:extend({
  {
    type = "item",
    name = "cm-logistic-robot-3",
    icon = "__CMod__/graphics/icons/icon-cm-logistic-robot3.png",
    icon_size = 32,
    subgroup = "logistic-network",
    order = "a[robot]-d[logistic-robot]",
    place_result = "cm-logistic-robot-3",
    stack_size = 100
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
  }
})