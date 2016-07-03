data:extend({
  {
    type = "technology",
    name = "cm-running-speed-1",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    effects =
    {
      {
        type = "character-running-speed",
        modifier = "0.1"
      }
    },
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1}
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
    effects =
    {
      {
        type = "character-running-speed",
        modifier = "0.1"
      }
    },
    prerequisites = {"cm-running-speed-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1}
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
    effects =
    {
      {
        type = "character-running-speed",
        modifier = "0.1"
      }
    },
    prerequisites = {"cm-running-speed-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "b-b"
  },
})