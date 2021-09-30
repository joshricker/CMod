data:extend({
-- Item
  {
    type = "item",
    name = "cm-mk2-transport-belt-to-ground-30",
    icon = "__CMod__/graphics/icons/icon_cm_ground-structure_2_30_.png",
    icon_size = 32,

    subgroup = "transport-ground-30",
    order = "b",
    place_result = "cm-mk2-transport-belt-to-ground-30",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "cm-mk2-transport-belt-to-ground-30",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-plate", 10},
      {"fast-transport-belt", 30}
    },
    result_count = 2,
    result = "cm-mk2-transport-belt-to-ground-30"
  }
})

--Entity
local tempBelt = util.table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
tempBelt.max_distance = 30
tempBelt.name = "cm-mk2-transport-belt-to-ground-30"
tempBelt.place_result = "cm-mk2-transport-belt-to-ground-30"
tempBelt.minable = {mining_time = 0.1, result = "cm-mk2-transport-belt-to-ground-30"}
tempBelt.next_upgrade = "cm-mk3-transport-belt-to-ground-30"
data:extend({tempBelt})