data.raw["technology"]["worker-robots-speed-2"].effects = {{type = "worker-robot-speed", modifier = 0.42}}
data.raw["technology"]["worker-robots-speed-3"].effects = {{type = "worker-robot-speed", modifier = 0.50}}
data.raw["technology"]["worker-robots-speed-4"].effects = {{type = "worker-robot-speed", modifier = 0.60}}
data.raw["technology"]["worker-robots-speed-5"].effects = {{type = "worker-robot-speed", modifier = 0.72}}

data:extend(
{
      {
    type = "technology",
    name = "cm-worker-robots-speed-6",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "0.87"
      }
    },
    prerequisites = {
      "worker-robots-speed-5"
    },
    unit = {
      count = 650,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
  {
    type = "technology",
    name = "cm-worker-robots-speed-7",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "1.04"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-6"
    },
    unit = {
      count = 800,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
  {
    type = "technology",
    name = "cm-worker-robots-speed-8",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "1.25"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-7"
    },
    unit = {
      count = 950,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
  {
    type = "technology",
    name = "cm-worker-robots-speed-9",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "1.50"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-8"
    },
    unit = {
      count = 1100,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
  {
    type = "technology",
    name = "cm-worker-robots-speed-10",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "1.81"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-9"
    },
    unit = {
      count = 1250,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
    {
    type = "technology",
    name = "cm-worker-robots-speed-11",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "2"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-10"
    },
    unit = {
      count = 1500,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
    {
    type = "technology",
    name = "cm-worker-robots-speed-12",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "2.25"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-11"
    },
    unit = {
      count = 1750,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
    {
    type = "technology",
    name = "cm-worker-robots-speed-13",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "2.5"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-12"
    },
    unit = {
      count = 2000,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
    {
    type = "technology",
    name = "cm-worker-robots-speed-14",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "2.75"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-13"
    },
    unit = {
      count = 2250,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
    {
    type = "technology",
    name = "cm-worker-robots-speed-15",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 128,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "6"
      }
    },
    prerequisites = {
      "cm-worker-robots-speed-14"
    },
    unit = {
      count = 2500,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "c-k-f-a",
  },
}  
  )