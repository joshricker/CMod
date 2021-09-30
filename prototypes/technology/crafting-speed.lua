data:extend({
  {
    type = "technology",
    name = "cm-crafting-speed-1",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = "2"
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
    order = "a-a"
  },
  {
    type = "technology",
    name = "cm-crafting-speed-2",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = "2"
      }
    },
    prerequisites = {"cm-crafting-speed-1"},
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
    order = "a-a"
  },
    {
    type = "technology",
    name = "cm-crafting-speed-3",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = "2"
      }
    },
    prerequisites = {"cm-crafting-speed-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "a-b"
  },
    {
    type = "technology",
    name = "cm-crafting-speed-4",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = "2"
      }
    },
    prerequisites = {"cm-crafting-speed-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "a-b"
  },
    {
    type = "technology",
    name = "cm-crafting-speed-5",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = "2"
      }
    },
    prerequisites = {"cm-crafting-speed-4"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "a-b"
  },
    {
    type = "technology",
    name = "cm-crafting-speed-6",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = "4"
      }
    },
    prerequisites = {"cm-crafting-speed-5"},
    unit =
    {
      count = 1250,
      ingredients =
      {
        {"automation-science-pack", 2},
		{"logistic-science-pack", 2},
		{"chemical-science-pack", 2},
		{"production-science-pack", 2}
      },
      time = 60
    },
    upgrade = true,
    order = "a-b"
  },
})