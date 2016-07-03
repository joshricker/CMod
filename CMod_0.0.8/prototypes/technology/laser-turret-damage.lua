data:extend({
  {
    type = "technology",
    name = "cm-laser-turret-damage-7",
    icon = "__base__/graphics/technology/laser-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = "0.5"
      }
    },
    prerequisites = {"laser-turret-damage-6"},
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
    order = "e-n-f"
  },
  {
    type = "technology",
    name = "cm-laser-turret-damage-8",
    icon = "__base__/graphics/technology/laser-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = "0.65"
      }
    },
    prerequisites = {"cm-laser-turret-damage-7"},
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
    order = "e-n-f"
  },
  {
    type = "technology",
    name = "cm-laser-turret-damage-9",
    icon = "__base__/graphics/technology/laser-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = "0.85"
      }
    },
    prerequisites = {"cm-laser-turret-damage-8"},
    unit =
    {
      count = 900,
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
    order = "e-n-f"
  },
  {
    type = "technology",
    name = "cm-laser-turret-damage-10",
    icon = "__base__/graphics/technology/laser-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = "1.1"
      }
    },
    prerequisites = {"cm-laser-turret-damage-9"},
    unit =
    {
      count = 1450,
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
    order = "e-n-f"
  },
    {
    type = "technology",
    name = "cm-laser-turret-damage-11",
    icon = "__base__/graphics/technology/laser-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = "1.4"
      }
    },
    prerequisites = {"cm-laser-turret-damage-10"},
    unit =
    {
      count = 1600,
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
    order = "e-n-f"
  },
    {
    type = "technology",
    name = "cm-laser-turret-damage-12",
    icon = "__base__/graphics/technology/laser-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = "2.5"
      }
    },
    prerequisites = {"cm-laser-turret-damage-11"},
    unit =
    {
      count = 3000,
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
    order = "e-n-f"
  },

})