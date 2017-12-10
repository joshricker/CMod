data.raw["technology"]["flamethrower-damage-2"].effects = {{type = "ammo-damage", ammo_category = "flame-thrower", modifier = "0.3"}, {type = "turret-attack", turret_id = "flamethrower-turret", modifier = "0.3"}}
data.raw["technology"]["flamethrower-damage-3"].effects = {{type = "ammo-damage", ammo_category = "flame-thrower", modifier = "0.4"}, {type = "turret-attack", turret_id = "flamethrower-turret", modifier = "0.4"}}
data.raw["technology"]["flamethrower-damage-4"].effects = {{type = "ammo-damage", ammo_category = "flame-thrower", modifier = "0.6"}, {type = "turret-attack", turret_id = "flamethrower-turret", modifier = "0.6"}}
data.raw["technology"]["flamethrower-damage-5"].effects = {{type = "ammo-damage", ammo_category = "flame-thrower", modifier = "0.8"}, {type = "turret-attack", turret_id = "flamethrower-turret", modifier = "0.8"}}
data.raw["technology"]["flamethrower-damage-6"].effects = {{type = "ammo-damage", ammo_category = "flame-thrower", modifier = "1.0"}, {type = "turret-attack", turret_id = "flamethrower-turret", modifier = "1.0"}}

data:extend(
{
  {
    type = "technology",
    name = "cm-flamethrower-damage-7",
    icon = "__base__/graphics/technology/flamethrower-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "1.5"
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = "1.5"
      }
    },
    prerequisites = {"flamethrower-damage-6"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"military-science-pack", 2},
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2}
      },
      time = 80
    },
    upgrade = true,
    order = "e-o-p-f"
  },
  {
    type = "technology",
    name = "cm-flamethrower-damage-8",
    icon = "__base__/graphics/technology/flamethrower-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "2.0"
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = "2.0"
      }
    },
    prerequisites = {"cm-flamethrower-damage-7"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"military-science-pack", 2},
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2}
      },
      time = 80
    },
    upgrade = true,
    order = "e-o-p-f"
  },
  {
    type = "technology",
    name = "cm-flamethrower-damage-9",
    icon = "__base__/graphics/technology/flamethrower-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "3.0"
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = "3.0"
      }
    },
    prerequisites = {"cm-flamethrower-damage-8"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"military-science-pack", 2},
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2}
      },
      time = 80
    },
    upgrade = true,
    order = "e-o-p-f"
  },
  {
    type = "technology",
    name = "cm-flamethrower-damage-10",
    icon = "__base__/graphics/technology/flamethrower-turret-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flame-thrower",
        modifier = "6.0"
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = "6.0"
      }
    },
    prerequisites = {"cm-flamethrower-damage-9"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"military-science-pack", 5},
        {"science-pack-1", 5},
        {"science-pack-2", 5},
        {"science-pack-3", 5}
      },
      time = 80
    },
    upgrade = true,
    order = "e-o-p-f"
  },
})