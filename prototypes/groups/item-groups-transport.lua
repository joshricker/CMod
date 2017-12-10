data:extend({
  {
    type = "item-group",
    name = "transport",
    order = "gd",
    inventory_order = "gd",
	icon_size = 64,
    icon = "__CMod__/graphics/icons/transport.png",
  },
  {
    type = "item-subgroup",
    name = "transport-belt",
    group = "transport",
    order = "aa"
  },
  {
    type = "item-subgroup",
    name = "transport-loader",
    group = "transport",
    order = "ab"
  },
  {
    type = "item-subgroup",
    name = "transport-ground",
    group = "transport",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "transport-ground-30",
    group = "transport",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "transport-ground-50",
    group = "transport",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "transport-splitters",
    group = "transport",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "transport-tank",
    group = "transport",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "transport-pipe",
    group = "transport",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "transport-pipe-ground",
    group = "transport",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "transport-pipe-ground-30",
    group = "transport",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "transport-pipe-ground-50",
    group = "transport",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "fluid-tank",
    group = "transport",
    order = "k"
  },
})

data.raw.item["splitter"].subgroup = "transport-splitters"
data.raw.item["fast-splitter"].subgroup = "transport-splitters"
data.raw.item["express-splitter"].subgroup = "transport-splitters"
data.raw.item["transport-belt"].subgroup = "transport-belt"
data.raw.item["fast-transport-belt"].subgroup = "transport-belt"
data.raw.item["express-transport-belt"].subgroup = "transport-belt"
data.raw.item["underground-belt"].subgroup = "transport-ground"
data.raw.item["fast-underground-belt"].subgroup = "transport-ground"
data.raw.item["express-underground-belt"].subgroup = "transport-ground"
data.raw.item["pipe"].subgroup = "transport-pipe"
data.raw.item["pipe-to-ground"].subgroup = "transport-pipe-ground"
data.raw.item["splitter"].order = "a"
data.raw.item["fast-splitter"].order = "b"
data.raw.item["express-splitter"].order = "c"
data.raw.item["transport-belt"].order = "a"
data.raw.item["fast-transport-belt"].order = "b"
data.raw.item["express-transport-belt"].order = "c"
data.raw.item["underground-belt"].order = "a"
data.raw.item["fast-underground-belt"].order = "b"
data.raw.item["express-underground-belt"].order = "c"
data.raw.item["pipe"].order = "a"
data.raw.item["pipe-to-ground"].order = "a"
