data:extend({
 {
    type = "technology",
    name = "cm-bullet-damage-7",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.5"
      }
    },
    prerequisites = {"bullet-damage-6"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  
  {
    type = "technology",
    name = "cm-bullet-damage-8",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.6"
      }
    },
    prerequisites = {"cm-bullet-damage-7"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  
  {
    type = "technology",
    name = "cm-bullet-damage-9",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.7"
      }
    },
    prerequisites = {"cm-bullet-damage-8"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  
  {
    type = "technology",
    name = "cm-bullet-damage-10",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "1"
      }
    },
    prerequisites = {"cm-bullet-damage-9"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"alien-science-pack", 2},
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  
  {
    type = "technology",
    name = "cm-bullet-damage-11",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "1.5"
      }
    },
    prerequisites = {"cm-bullet-damage-10"},
    unit =
    {
      count = 4000,
      ingredients =
      {
        {"alien-science-pack", 4},
        {"science-pack-1", 4},
        {"science-pack-2", 4},
        {"science-pack-3", 4}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
  
  {
    type = "technology",
    name = "cm-bullet-damage-12",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "2"
      }
    },
    prerequisites = {"cm-bullet-damage-11"},
    unit =
    {
      count = 6000,
      ingredients =
      {
        {"alien-science-pack", 8},
        {"science-pack-1", 8},
        {"science-pack-2", 8},
        {"science-pack-3", 8}
      },
      time = 60
    },
    upgrade = true,
    order = "e-l-f"
  },
})