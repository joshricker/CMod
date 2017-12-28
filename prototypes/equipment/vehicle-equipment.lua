data:extend(
{
  {
    type = "equipment-category",
    name = "vehicle"
  },
  {
    type = "equipment-category",
    name = "farl-equipment"
  },
  {
    type = "equipment-grid",
    name = "vehicle-large-equipment-grid",
    width = 12,
    height = 12,
    equipment_categories = {"armor", "vehicle", "farl-equipment"}
  },
  {
    type = "item-subgroup",
    name = "cmod-vehicle-equipment",
    group = "combat",
    order = "z"
  },
  {
    type = "item",
    name = "cmod-vehicle-laser-defense-equipment",
    icon = "__CMod__/graphics/icons/vehicle-laser-defense-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-laser-defense-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "a",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-laser-defense-equipment",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"personal-laser-defense-equipment", 5},
      {"steel-plate", 25},
      {"advanced-circuit", 15}
    },
    result = "cmod-vehicle-laser-defense-equipment"
  },
  {
    type = "active-defense-equipment",
    name = "cmod-vehicle-laser-defense-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-laser-defense-equipment.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "4100KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 10,
      damage_modifier = 20.0,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 40,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "450KJ",
        projectile = "laser",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 3.75
              }
            }
          }
        }
      }
    },
    categories = {"vehicle"},
    automatic = true
  },
  {
    type = "item",
    name = "cmod-vehicle-laser-defense-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-laser-defense-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-laser-defense-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "b",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-laser-defense-equipment-mk2",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"cmod-vehicle-laser-defense-equipment", 2},
      {"effectivity-module-2", 25},
      {"productivity-module-2", 25}
    },
    result = "cmod-vehicle-laser-defense-equipment-mk2"
  },
  {
    type = "active-defense-equipment",
    name = "cmod-vehicle-laser-defense-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-laser-defense-equipment-mk2.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "4100KJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 5,
      damage_modifier = 30.0,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 55,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "850KJ",
        projectile = "laser",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 3.75
              }
            }
          }
        }
      }
    },
    categories = {"vehicle"},
    automatic = true
  },
  {
    type = "item",
    name = "cmod-vehicle-fusion-reactor-equipment",
    icon = "__CMod__/graphics/icons/vehicle-fusion-reactor-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-fusion-reactor-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "h",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-fusion-reactor-equipment",
    enabled = "true",
    energy_required = 15,
    ingredients =
    {
      {"steel-plate", 75},
      {"advanced-circuit", 200}
    },
    result = "cmod-vehicle-fusion-reactor-equipment"
  },
  {
    type = "generator-equipment",
    name = "cmod-vehicle-fusion-reactor-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-fusion-reactor-equipment.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    categories = {"vehicle"},
    power = "7000KW"
  },
    {
    type = "item",
    name = "cmod-vehicle-fusion-reactor-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-fusion-reactor-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-fusion-reactor-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "i",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-fusion-reactor-equipment-mk2",
    enabled = "true",
    energy_required = 15,
    ingredients =
    {
      {"cmod-vehicle-fusion-reactor-equipment", 2},
      {"productivity-module-2", 10},
      {"advanced-circuit", 250}
    },
    result = "cmod-vehicle-fusion-reactor-equipment-mk2"
  },
  {
    type = "generator-equipment",
    name = "cmod-vehicle-fusion-reactor-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-fusion-reactor-equipment-mk2.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    categories = {"vehicle"},
    power = "20000KW"
  },
  {
    type = "item",
    name = "cmod-vehicle-energy-shield-equipment",
    icon = "__CMod__/graphics/icons/vehicle-energy-sheild-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-energy-shield-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "n",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "CMod-vehicle-energy-shield-equipment",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"energy-shield-equipment", 1},
      {"advanced-circuit", 15}
    },
    result = "cmod-vehicle-energy-shield-equipment"
  },
  {
    type = "energy-shield-equipment",
    name = "cmod-vehicle-energy-shield-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-energy-sheild-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 4200,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5040KJ",
      input_flow_limit = "5040KW",
      usage_priority = "primary-input"
    },
    categories = {"vehicle"},
    energy_per_shield = "30KJ"
  },
   {
    type = "item",
    name = "cmod-vehicle-energy-shield-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-energy-shield-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-energy-shield-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "o",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "CMod-vehicle-energy-shield-equipment-mk2",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"cmod-vehicle-energy-shield-equipment", 2},
      {"effectivity-module-2", 40},
      {"productivity-module-2", 40}
    },
    result = "cmod-vehicle-energy-shield-equipment-mk2"
  },
  {
    type = "energy-shield-equipment",
    name = "cmod-vehicle-energy-shield-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-energy-shield-equipment-mk2.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 12000,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "15000KJ",
      input_flow_limit = "15000KW",
      usage_priority = "primary-input"
    },
    categories = {"vehicle"},
    energy_per_shield = "30KJ"
  },
  {
    type = "item",
    name = "cmod-vehicle-battery-equipment",
    icon = "__CMod__/graphics/icons/vehicle-battery-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-battery-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "q",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-battery-equipment",
    enabled = "true",
    energy_required = 40,
    ingredients =
    {
      {"battery-equipment", 1},
      {"advanced-circuit", 15}
    },
    result = "cmod-vehicle-battery-equipment"
  },
  {
    type = "battery-equipment",
    name = "cmod-vehicle-battery-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-battery-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    categories = {"vehicle"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "4800MJ",
      input_flow_limit = "750MW",
      output_flow_limit = "750MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "item",
    name = "cmod-vehicle-battery-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-battery-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-battery-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "r",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-battery-equipment-mk2",
    enabled = "true",
    energy_required = 20,
    ingredients =
    {
      {"cmod-vehicle-battery-equipment", 2},
      {"productivity-module-2", 15},
      {"effectivity-module-2", 15},
      {"speed-module-2", 15}
    },
    result = "cmod-vehicle-battery-equipment-mk2"
  },
  {
    type = "battery-equipment",
    name = "cmod-vehicle-battery-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-battery-equipment-mk2.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    categories = {"vehicle"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "15000MJ",
      input_flow_limit = "1750MW",
      output_flow_limit = "1750MW",
      usage_priority = "terciary"
    }
  },
 }
 )
