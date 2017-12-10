data:extend {
{
    type = "container",
    name = "cm-void-chest",
    icon = "__CMod__/graphics/icons/voidchesticon.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "cm-void-chest"},
    max_health = 200,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    picture =
    {
      filename = "__CMod__/graphics/entity/voidchest.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
   },
   {
    type = "item",
    name = "cm-void-chest",
    icon = "__CMod__/graphics/icons/voidchesticon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "a[items]-c[void-chest]",
    place_result = "cm-void-chest",
    stack_size = 50
   },
   {
    type = "recipe",
    name = "cm-void-chest",
    enabled = "true",
    ingredients =
    {
     {"iron-chest", 1},
     {"stone-furnace", 1}
    },
    result = "cm-void-chest"
   },
  
}