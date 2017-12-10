data:extend(
{
  {
    type = "technology",
    name = "cm-advanced-accumulators",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-advanced-accumulator"
      }
    },
    prerequisites = {"electric-energy-accumulators-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 45
    },
    order = "c-e-b",
  },
  {
    type = "technology",
    name = "cm-advanced-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-advanced-solar"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-h-c",
  },
  {
    type = "technology",
    name = "cm-elite-accumulators",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-elite-accumulator"
      }
    },
    prerequisites = {"cm-advanced-accumulators"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "c-e-c",
  },
  {
    type = "technology",
    name = "cm-elite-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-elite-solar"
      }
    },
    prerequisites = {"cm-advanced-solar"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-h-c",
  },
  {
    type = "technology",
    name = "cm-ultimate-accumulators",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-ultimate-accumulator"
      }
    },
    prerequisites = {"cm-elite-accumulators"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    order = "c-e-c",
  },
  {
    type = "technology",
    name = "cm-ultimate-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cm-ultimate-solar"
      }
    },
    prerequisites = {"cm-elite-solar"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    order = "a-h-c",
  },
}
)
