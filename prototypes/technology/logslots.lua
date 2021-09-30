data:extend({
  {
    type = "technology",
    name = "cm-character-logistic-slots-7",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 12
      }
    },
    prerequisites = {"character-logistic-slots-6"},
    unit =
    {
      count = 1300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-e-d"
  }, 
  {
    type = "technology",
    name = "cm-character-logistic-slots-8",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 12
      }
    },
    prerequisites = {"cm-character-logistic-slots-7"},
    unit =
    {
      count = 1350,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-e-d"
  },
  {
    type = "technology",
    name = "cm-character-logistic-slots-9",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 12
      }
    },
    prerequisites = {"cm-character-logistic-slots-8"},
    unit =
    {
      count = 1450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-e-d"
  }, 
  {
    type = "technology",
    name = "cm-character-logistic-slots-10",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 256,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 12
      }
    },
    prerequisites = {"cm-character-logistic-slots-9"},
    unit =
    {
      count = 1650,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-k-e-d"
  }, 
}
)
