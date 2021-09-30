data:extend({
-- Item
  {
    type = "item",
    name = "cm-mk3-transport-belt-to-ground-50",
    icon = "__CMod__/graphics/icons/icon_cm_ground-structure_3_50_.png",
    icon_size = 32,

    subgroup = "transport-ground-50",
    order = "c",
    place_result = "cm-mk3-transport-belt-to-ground-50",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "cm-mk3-transport-belt-to-ground-50",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-plate", 10},
      {"express-transport-belt", 50}
    },
    result_count = 2,
    result = "cm-mk3-transport-belt-to-ground-50"
  }
})

--Entity
local tempBelt = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
tempBelt.max_distance = 50
tempBelt.name = "cm-mk3-transport-belt-to-ground-50"
tempBelt.place_result = "cm-mk3-transport-belt-to-ground-50"
tempBelt.minable = {mining_time = 0.1, result = "cm-mk3-transport-belt-to-ground-50"}
data:extend({tempBelt})