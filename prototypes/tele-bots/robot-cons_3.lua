local conBot = util.table.deepcopy(data.raw["construction-robot"]["construction-robot"])
conBot.name = "cm-construction-robot-3"
conBot.minable = {hardness = 0.1, mining_time = 0.1, result = "cm-construction-robot-3"}
conBot.icon = "__CMod__/graphics/icons/icon-cm-construction-robot3.png"
conBot.icon_size = 32
conBot.max_health = 5000
conBot.max_payload_size = 200
conBot.speed = 100000
conBot.transfer_distance = 0.5
conBot.max_energy = "30kJ"
conBot.energy_per_tick = "0.00kJ"
conBot.speed_multiplier_when_out_of_energy = 1.00
conBot.energy_per_move = "0.00kJ"
data:extend({conBot})

data:extend({
-- Item
  {
    type = "item",
    name = "cm-construction-robot-3",
    icon = "__CMod__/graphics/icons/icon-cm-construction-robot3.png",
    icon_size = 32,

    subgroup = "logistic-network",
    order = "a[robot]-c[logistic-robot]",
    place_result = "cm-construction-robot-3",
    stack_size = 100
  },
 {
    type = "recipe",
    name = "cm-construction-robot-3",
    enabled = "false",
    ingredients =
    {
      {"yi_construction-robot", 5},
     {"battery-equipment", 5},
     {"solar-panel-equipment", 5},
      {"processing-unit", 20}
    },
    result = "cm-construction-robot-3"
  }
})