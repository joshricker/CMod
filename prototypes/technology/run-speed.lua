data:extend({
  {
    type = "technology",
    name = "cm-running-speed-1",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-running-speed",
        modifier = "0.2"
      }
    },
    unit =
    {
      count = 20,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 10
    },
    upgrade = true,
    order = "b-a"
  },
  {
    type = "technology",
    name = "cm-running-speed-2",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-running-speed",
        modifier = "0.2"
      }
    },
    prerequisites = {"cm-running-speed-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 20
    },
    upgrade = true,
    order = "b-b"
  },
  {
    type = "technology",
    name = "cm-running-speed-3",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-running-speed",
        modifier = "0.2"
      }
    },
    prerequisites = {"cm-running-speed-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "b-b"
  },
})